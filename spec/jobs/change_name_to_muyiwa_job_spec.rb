require 'rails_helper'

RSpec.describe ChangeNameToMuyiwaJob, type: :job do
  describe '#perform_later' do
    it 'enqueues job' do
      expect do
        described_class.perform_later(User.first)
      end.to have_enqueued_job
    end
  end
end
