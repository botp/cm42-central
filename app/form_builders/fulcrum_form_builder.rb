class FulcrumFormBuilder < ActionView::Helpers::FormBuilder
  def initialize(*args)
    original_proc = ActionView::Base.field_error_proc
    ActionView::Base.field_error_proc = proc { |input, instance| input }

    super(*args)
  ensure
    ActionView::Base.field_error_proc = original_proc
  end

  def text_field(attribute, **options)
    super(attribute, options)
  end
end
