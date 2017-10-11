region_array = ["北欧", "南欧"]
region_array.each do |region_s|
  Region.create(name: region_s)
end

country = ["イギリス", "イタリア"]
Region.first.countries.create(name: "イギリス")
Region.second.countries.create(name: "イタリア")

Country.first.abroad_universities.create(name: "ブリティッシュ大学")
Country.second.abroad_universities.create(name: "メイモンスクール")
