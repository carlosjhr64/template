require 'template'
include TEMPLATE

# IRB Tools
require 'irbtools/configure'
_ = TEMPLATE::VERSION.split('.')[0..1].join('.')
Irbtools.welcome_message = "### TEMPLATE(#{_}) ###"
require 'irbtools'
IRB.conf[:PROMPT][:TEMPLATE] = {
  PROMPT_I:    '> ',
  PROMPT_N:    '| ',
  PROMPT_C:    '| ',
  PROMPT_S:    '| ',
  RETURN:      "=> %s \n",
  AUTO_INDENT: true,
}
IRB.conf[:PROMPT_MODE] = :TEMPLATE
