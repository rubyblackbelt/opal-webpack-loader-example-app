# generate requires with:
# bundle exec rails c
# system requires:
# > Hyperloop.generate_requires(:client, true, __FILE__)
require 'opal'
require 'browser' # CLIENT ONLY
require 'browser/delay' # CLIENT ONLY
require 'hyperloop-config'
require 'hyperloop/autoloader'
require 'hyperloop/autoloader_starter'
require 'hyper-store'
require 'hyper-component'
require 'hyper-react'
require 'hyper-operation'
require 'hyper-model'
require 'hyper-router'
require 'reactrb/auto-import'

require_tree 'stores'
require_tree 'models'
require_tree 'operations'
require_tree 'components'
