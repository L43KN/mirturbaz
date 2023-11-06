class CreateCamps < ActiveRecord::Migration[7.1]
  def change
    create_table :camps do |t|
      t.string :name
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end

    require 'faker'
    400.times do
      name = Faker::Address.city
      id = Faker::Number.between(from: 1, to: 200)
      camps = Camp.new(
        name: name,
        city_id: id
      )
      camps.save
    end
  end
end
