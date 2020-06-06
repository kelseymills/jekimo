module ApplicationHelper
  FLASH_KEY_TO_BOOTSTRAP_ALERT_MODIFIER = {
    alert: 'danger',
    notice: 'warning'
  }.freeze

  PAGE_TITLE_SEPARATOR = '-'.freeze

  def page_title(title)
    return nil if title.blank?

    [PAGE_TITLE_SEPARATOR, title].join(' ')
  end

  def flash_key_to_bootstrap_alert_modifier(key)
    FLASH_KEY_TO_BOOTSTRAP_ALERT_MODIFIER.fetch(key.to_sym)
  end
end
