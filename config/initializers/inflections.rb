# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.clear

  inflect.plural /^([a-zA-z]*)a$/i, '\1as'
  inflect.plural /^([a-zA-z]*)e$/i, '\1es'
  inflect.plural /^([a-zA-z]*)i$/i, '\1is'
  inflect.plural /^([a-zA-z]*)o$/i, '\1os'
  inflect.plural /^([a-zA-z]*)u$/i, '\1us'
  inflect.plural /^([a-zA-z]*)r$/i, '\1res'
  inflect.plural /^([a-zA-z]*)z$/i, '\1zes'
  inflect.plural /^([a-zA-z]*)al$/i, '\1ais'
  inflect.plural /^([a-zA-z]*)el$/i, '\1eis'
  inflect.plural /^([a-zA-z]*)ol$/i, '\1ois'
  inflect.plural /^([a-zA-z]*)ul$/i, '\1uis'
  inflect.plural /^([a-zA-z]*)il$/i, '\1is'
  inflect.plural /^([a-zA-z]*)m$/i, '\1ns'
  inflect.plural /^([a-zA-z]*)ao$/i, '\1oes'
  
  # ###########################
  # singularize rules         #
  # ###########################
  
  inflect.singular /^([a-zA-z]*)as$/i, '\1a'
  inflect.singular /^([a-zA-z]*)es$/i, '\1e'
  inflect.singular /^([a-zA-z]*)is$/i, '\1i'
  inflect.singular /^([a-zA-z]*)os$/i, '\1o'
  inflect.singular /^([a-zA-z]*)us$/i, '\1u'
  inflect.singular /^([a-zA-z]*)res$/i, '\1r'
  inflect.singular /^([a-zA-z]*)zes$/i, '\1z'
  inflect.singular /^([a-zA-z]*)is$/i, '\1il'
  inflect.singular /^([a-zA-z]*)ais$/i, '\1al'
  inflect.singular /^([a-zA-z]*)eis$/i, '\1el'
  inflect.singular /^([a-zA-z]*)ois$/i, '\1ol'
  inflect.singular /^([a-zA-z]*)uis$/i, '\1ul'
  inflect.singular /^([a-zA-z]*)ns$/i, '\1m'
  inflect.singular /^([a-zA-z]*)oes$/i, '\1ao'
  inflect.singular /^([a-zA-z]*)aes$/i, '\1ao'
  inflect.singular /^([a-zA-z]*)aos$/i, '\1ao'
end
