quotes = 15.times.map do
  quote = nil
  while quote.nil? || quote.size > 60
    quote = Faker::Quotes::Shakespeare.hamlet_quote
  end
  quote
end

Quote.delete_all

quotes.uniq.first(6).each do |quote|
  Quote.create!(name: quote)
end

ap "Seed ok 👌"
