# rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
module StoriesHelper
  def flash_class(notice)
    case notice
    when '新增成功！'
      'is-primary'
    when '更新成功！'
      'is-primary'
    when '文章已刪除！'
      'is-danger'
    when '成功登出了。'
      'is-primary'
    when '或密碼錯誤。'
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

# rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength
