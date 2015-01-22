require 'rdf'
require 'rdf/rdfxml'
require 'byebug'

statements = Array.new

RDF::RDFXML::Reader.open("news_ebucore_rdf.rdf")do |reader|
  reader.each_statement do |statement|
    statements << statement.inspect
  end
end
