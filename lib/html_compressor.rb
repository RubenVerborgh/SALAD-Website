require 'html_compressor'

class NanocHtmlCompressor < Nanoc3::Filter
  identifier :html_compressor

  def run(content, params = {})
    compressor = HtmlCompressor::HtmlCompressor.new
    compressor.compress content
  end
end
