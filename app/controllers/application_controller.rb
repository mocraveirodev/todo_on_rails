class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale

    if params[:locale]
      cookies[:locale] = locale
    end
    if cookies[:locale]
      if I18n.locale.to_s != cookies[:locale]
        I18n.locale = cookies[:locale]
      end
    end

    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
