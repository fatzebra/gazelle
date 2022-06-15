
class ZealFormBuilder < ActionView::Helpers::FormBuilder
  include ActionView::Helpers::TagHelper

  def label(attribute, *args, **options)
    super(attribute, *args, options.reverse_merge(class: "mb-2 font-bold block"))
  end

  def text_field(attribute, options={})
    super(attribute, options.reverse_merge(class: "disabled:cursor-not-allowed disabled:bg-gray-50 disabled:text-gray-500 disabled:border-gray-200 rounded h-10 w-full py-2 px-3 text-gray-700 focus:outline-1 border"))
  end
end
