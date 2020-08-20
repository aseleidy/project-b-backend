class AddImgAndSummaryToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :img_url, :string
    add_column :courses, :summary, :string
  end
end
