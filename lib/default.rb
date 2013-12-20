include Nanoc3::Helpers::LinkTo
require 'nanoc/data_sources/bibtex_data_source'
require 'erb'
require 'html5small/nanoc'

def show_paper id
  paper = @items["/papers/#{id}/"]
  authors = paper[:author]
  '<dd itemscope itemtype="http://schema.org/ScholarlyArticle">' +
  "<a href='/papers/salad2013-#{h id[/\d+$/]}.pdf'>" +
  "<span itemprop='name'>#{paper[:title]}</span></a>" +
      authors.to_a.map{ |a| h "#{a.first} #{a.prefix} #{a.last} #{a.suffix}".strip }.
        map{ |a| "<span itemprop='author'>#{a}</span>" }.
        join(authors.length <= 2 ? ' and ' : ', ').
        sub(/, ([^,]+)$/, ', and \1') +
  (paper[:slides] ? " <span class='details'><a href='#{h paper[:slides]}'>slides</a></span>" : '') +
  '</dd>'
end
