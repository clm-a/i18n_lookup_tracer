I18nLookupTracer
----------------

Traces I18n translation keys lookup.

Works with Rails 3.1.3

Just doing something like what is shown in [this post from Tilo Sloboda](http://unixgods.org/~tilo/Rails/where_is_Rails_trying_to_lookup_L10N_strings.html), kind of gemified.

Usage
-----

    #Gemfile
    gem 'i18n_lookup_tracer'

    #config/initializers/i18n_lookup_tracer.rb
    I18nLookupTracer.setup if Rails.env.development?

As it's very bad for the rendering speed, you may want to add an extra condition.

Then, calling the label related to the *name* attribute of an *Organization* model in a form builder, you're going to see in your in console :

     I18n key lookup: fr.helpers.label.organization.name
     I18n key lookup: fr.activerecord.attributes.organization.name
     I18n key lookup: fr.attributes.name

License
-------

Feel free to contribute and just say hi [@clmntlxndr](http://www.twitter.com/clmntlxndr)
