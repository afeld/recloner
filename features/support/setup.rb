require 'recloner'
require 'couchrest_model'

COUCHDB_SERVER = CouchRest.new "http://admin:password@localhost:5984"
CLONING_DB = COUCHDB_SERVER.database!('recloner_test')

class Book < CouchRest::Model::Base
  include Recloner
  use_database CLONING_DB
  
  property :title
  view_by :title
end

Before do |scenario|
  CLONING_DB.create!
end

After do |scenario|
  CLONING_DB.delete!
end