module StoriesHelper
  def flash_class(notice)
    case notice
    when '新增成功！'
      'is-primary'
    when '更新成功！'
      'is-primary'
    when '文章已刪除！'
      'is-danger'
    else
      'is-info'
    end
  end
end
