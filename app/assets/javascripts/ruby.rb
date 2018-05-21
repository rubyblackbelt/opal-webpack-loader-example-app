require 'opal'
require 'browser' # CLIENT ONLY
require 'browser/delay' # CLIENT ONLY
require 'hyperloop-config'
require 'hyperloop/autoloader'
require 'hyperloop/autoloader_starter'
require 'reactrb/auto-import'
require 'hyper-component'
require 'hyper-react'
require 'hyper-model'
require 'hyper-store'
require 'hyper-operation'
require 'hyper-router'
require 'hyperloop_webpack_loader'

puts "Loaded!!"

require_tree 'ruby_tree'

puts "after require tree!"