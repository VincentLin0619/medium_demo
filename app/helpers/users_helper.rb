# rubocop:disable Metrics/MethodLength
module UsersHelper
  def alert_class(alert)
    case alert
    when '電子信箱或密碼錯誤。'
      'is-danger'
    when '成功登出了。'
      'is-primary'
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
