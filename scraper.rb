#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new('Category:Montenegrin_politicians_by_party').subcategories.map { |c|
  WikiData::Category.new(c).member_titles
}.flatten.uniq
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })


