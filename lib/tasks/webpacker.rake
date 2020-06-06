# lib/tasks/webpacker.rake

namespace :webpacker do
  desc 'Checks if NPM is ready.'
  task check_npm: :environment do
    npm_version = `npm --version`
    raise Errno::ENOENT if npm_version.blank?

    version = Gem::Version.new(npm_version)

    package_json_path = Rails.root.join('package.json').realpath
    npm_requirement = JSON.parse(package_json_path.read).dig('engines', 'npm')
    requirement = Gem::Requirement.new(npm_requirement)

    unless requirement.satisfied_by?(version)
      warn "Webpacker requires npm #{requirement} and you are using #{version}" && exit!
    end
  rescue Errno::ENOENT
    warn 'npm not installed'
    warn 'Install NPM https://www.npmjs.com/get-npm' && exit!
  end

  desc 'Install packages'
  task npm_install: :environment do
    system 'npm install'
  end
end
