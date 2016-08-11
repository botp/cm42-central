module FlashHelper
  def flash_key_to_bootstrap_class(key)
    {
      alert:  'alert-warning',
      notice: 'alert-info',
      error:  'alert-danger'
    }[key]
  end
end
