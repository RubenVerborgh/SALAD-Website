---
title: Menu
order: 3
---

## Keynote
[Autonomous Agents on the Web: Beyond Linking and Meaning](/aperitif/)
<br>
by Mike Amundsen, Principal API Architect for Layer 7 Technologies

## Accepted papers
<ul>
<%
  papers = @items.find_all{ |i| i.identifier =~ /^\/papers\/.+/ }
  papers.each do |paper|
%>
<li itemscope itemtype="http://schema.org/ScholarlyArticle">
  <span itemprop="name"><%= h paper[:title] %></span>
  <%=
    authors = paper[:author]
    authors.to_a.map{ |a| h "#{a.first} #{a.prefix} #{a.last} #{a.suffix}".strip }.
      map{ |a| "<span itemprop='author'>#{a}</span>" }.
      join(authors.length <= 2 ? ' and ' : ', ').
      sub(/, ([^,]+)$/, ', and \1')
  %>
</li>
<%
  end
%>
</ul>

## Target audience
We welcome *people from different fields*,
even though the core audience of our workshop consists of
people with *interdisciplinary experience* in both Linked Data and Web APIs.
However, we encourage people with *various backgrounds* to participate,
since we envision that *interesting cross-domain discussions* will arise
when participants actively discover differences and similarities.
