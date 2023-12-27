# rubocop:disable Metrics/MethodLength
module UsersHelper
  def flash_class(alert)
    case alert
    when '成功登出了。'
      'is-primary'
    when 'invalid'
      'is-danger'
    when '已成功登入。'
      'is-primary'
    when '註冊成功，歡迎！'
      'is-warning'
    else
      'is-info'
    end
  end
end

# rubocop:enable Metrics/MethodLength
