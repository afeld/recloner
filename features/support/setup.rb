require 'recloner'
require 'couchrest_model'

COUCHDB_SERVER = CouchRest.new "http://admin:password@localhost:5984"
CLONING_DB = COUCHDB_SERVER.database!('recloner_test')

class Book < CouchRest::Model::Base
  include Recloner
  use_database CLONING_DB
  
  property :name
  view_by :name
end

Before do |scenario|
  VERSIONING_DB.create!
end

After do |scenario|
  VERSIONING_DB.delete!
end