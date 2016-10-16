$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'dry-validation'
require 'dry-logic'
require 'base'
require 'raw'
require 'result'
