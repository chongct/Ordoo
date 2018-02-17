# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# clears the database
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'
  ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table} RESTART IDENTITY CASCADE")
end

random_delivery_order = []
5.times do |index|
  repeat = Random.new.rand(1..5)
  repeat.times do |time|
    random_delivery_order.push(index + 1)
  end
end

random_meal = []
10.times do |index|
  repeat = Random.new.rand(1..5)
  repeat.times do |time|
    random_meal.push(index + 1)
  end
end

# meal data
10.times do |index|
  new_meal = Meal.new
  if (index + 1) < 10
    new_meal.meal_id = "ML00#{index + 1}"
  else
    new_meal.meal_id = "ML0#{index + 1}"
  end
  new_meal.name = "#{Faker::Food.dish} with #{Faker::Food.dish} meal"
  new_meal.description = Faker::Coffee.notes
  new_meal.save
end

#delivery order data
5.times do |index|
  new_delivery_order = DeliveryOrder.new
  new_delivery_order.order_id = "GO12#{index + 1}"
  new_delivery_order.serving_datetime = Faker::Time.forward(30, :day).beginning_of_hour
  new_delivery_order.save
end

# order item data
50.times do |index|
  new_order_item = OrderItem.new
  if (index + 1) < 10
    new_order_item.item_id = "OI00#{index + 1}"
  else
    new_order_item.item_id = "OI0#{index + 1}"
  end
  new_order_item.name = Faker::Food.dish
  new_order_item.quantity = Random.new.rand(1..10)
  new_order_item.unit_price = Random.new.rand(100..1000)
  new_order_item.delivery_order_id = random_delivery_order[index]
  new_order_item.meal_id = random_meal[index]
  new_order_item.save
end
