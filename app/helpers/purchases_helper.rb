module PurchasesHelper
  def success_tag(text)
    zeal_tag(text, additional_classes: "bg-success-100 text-success-800")
  end

  def flag_tag(text)
    zeal_tag(text, additional_classes: "bg-flag-100 text-flag-800")
  end

  def zeal_tag(text, additional_classes: )
    tag.span(class: "inline-flex items-center h-8 px-2.5 py-0.5 rounded font-medium text-xs mr-2 " + additional_classes) { text }
  end

end
