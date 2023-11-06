class CreateRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end

    require 'faker'
    100.times do
      name = Faker::Address.state
      id = Faker::Number.between(from: 1, to: 10)
      regions = Region.new(
        name: name,
        country_id: id
      )
      regions.save
    end
  end
end
