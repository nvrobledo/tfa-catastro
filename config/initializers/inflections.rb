# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'jurisdiccion', 'jurisdicciones'
  inflect.irregular 'visador', 'visadores'
  inflect.irregular 'parcela', 'parcelas'
  inflect.irregular 'propiedad', 'propiedades'
  inflect.irregular 'iniciador', 'iniciadores'
  inflect.irregular 'logs_accion', 'logs_acciones'
  inflect.irregular 'origenes_accion', 'origenes_acciones'
  inflect.irregular 'tipos_origenes_accion', 'tipos_origenes_acciones'
	
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
