require "i18n_lookup_tracer/version"

module I18nLookupTracer
  def self.setup
    I18n::Backend::Simple::Implementation.class_eval do
      alias :old_lookup :lookup
      protected
      def lookup(locale, key, scope = [], options = {})
        init_translations unless initialized?
        keys = I18n.normalize_keys(locale, key, scope, options[:separator])
        Rails.logger.info "I18n key lookup: #{keys.join(".")}"
        old_lookup(locale, key, scope, options)
      end
    end
  end
end
