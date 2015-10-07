require 'open-uri' # http://ruby-doc.org/stdlib-2.2.2/libdoc/open-uri/rdoc/OpenURI.html
require 'pdf-reader'

class PagesController < ApplicationController
  def home
    receiver = PDF::Reader::RegisterReceiver.new
    pdf_source = open("http://publicdocs.courts.mi.gov:81/Opinions/Final/SCt/20150729_S149073_83_01_Lockridge-OP.pdf")

    PDF::Reader.open(pdf_source) do |reader|
      @pdf_info = reader.info.inspect
      @pdf_metadata =  reader.metadata.inspect
    end
  end
end
