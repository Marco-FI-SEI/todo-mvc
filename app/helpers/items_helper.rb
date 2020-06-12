module ItemsHelper
  def li_class_for_item(item)
    "completed" if item.complete?
  end

  def li_for_item(item)
    content_tag :li, item, class: li_class_for_item(item) do
      yield
    end
  end

  def form_for_item_status(item)
    form_with model: [item.list, item], local: true do |f|
      hidden_field_tag("item[status]", "0") + 
      check_box_tag("item[status]", "1", item.complete?, class: "toggle") +
      label_tag("item[status]", "#{item.description}")
    end
  end
end
