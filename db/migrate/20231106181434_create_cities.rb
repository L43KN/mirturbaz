class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end

    require 'faker'
    200.times do
      name = Faker::Address.city
      id = Faker::Number.between(from: 1, to: 100)
      cities = City.new(
        name: name,
        region_id: id
      )
      cities.save
    end
  end
end
