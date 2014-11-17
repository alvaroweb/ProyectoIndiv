json.array!(@foo_bars) do |foo_bar|
  json.extract! foo_bar, :id, :name, :surname, :phone
  json.url foo_bar_url(foo_bar, format: :json)
end
