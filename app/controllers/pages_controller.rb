#!/usr/bin/env ruby
# coding: utf-8

require 'rubygems'

require 'open-uri' # http://ruby-doc.org/stdlib-2.2.2/libdoc/open-uri/rdoc/OpenURI.html

class PagesController < ApplicationController
  def home
    #
    #
    # Source pdf  http://publicdocs.courts.mi.gov:81/Opinions/Final/SCt/20150729_S149073_83_01_Lockridge-OP.pdf
    def PDFsource

      receiver = PDF::Reader::RegisterReceiver.new
      @PDFsource ||= File.dirname("http://publicdocs.courts.mi.gov:81/Opinions/Final/SCt/20150729_S149073_83_01_Lockridge-OP.pdf")
      end

    def PDFmeta
    @PDFmeta ||= PDF::Reader.open(@PDFsource) do |reader|
      puts reader.info.inspect
      puts reader.metadata.inspect
      end
    end

  end
end
