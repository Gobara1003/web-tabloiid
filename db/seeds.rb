# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |n|
  Tabloiid.create(
    file_name: "ファイル#{n + 1}",
    file_path: "pdf/ファイル#{n + 1}.pdf",
    date: "2021/08/25",
    image_path: "images/ファイル#{n + 1}.jpg"
  )
end