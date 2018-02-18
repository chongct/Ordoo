class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :rating
      t.string :comment
      t.references :ratable, polymorphic: true

      t.timestamps
    end
  end
end
