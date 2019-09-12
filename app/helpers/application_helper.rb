module ApplicationHelper
  def full_title(page_title = '')
    base_title = "QA ENGINE"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def tag_hot
    tags = QuestionTag.joins(:tag).group(:name).count.sort_by {|name,total| total}.reverse
  end
end
