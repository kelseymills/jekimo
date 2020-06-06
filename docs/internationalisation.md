Jekimo aims to be a fully internationalised application, with first-class support for locales (not regions). It uses features of Rails [I18n support](https://guides.rubyonrails.org/i18n.html).  

## Pirate language
A made up language for the developer. It is primarily meant to ensure that translations are used where needed by providing an alternative language to English that is (hopefully) different enough to help spot untranslated phrases.

## `locale` URL parameter
If a URL parameter of `locale` is set to a valid locale the application supports (e.g. `?locale=en`) then the application will render views in this locale.

## User setting
If the user has updated their locale setting, the application will render views in this locale as long as a URL parameter of `locale` is not set.

## `Accept-Language` header
The locale is inferred from the `Accept-Language` header via the [locale rack-contrib](https://github.com/rack/rack-contrib/blob/master/lib/rack/contrib/locale.rb) middleware. This is overridden if the URL parameter of `locale` is set or a user is authenticated with a locale setting.
