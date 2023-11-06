class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name

      t.timestamps
    end

    require 'faker'
    10.times do
      name = Faker::Address.country
      countries = Country.new(
        name: name
      )
      countries.save
    end
  end
end
