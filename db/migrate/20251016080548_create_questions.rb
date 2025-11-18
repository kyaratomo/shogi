class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :pattern
      t.string :option1
      t.string :option2
      t.integer :correct
      t.text :explanation
      t.string :e_imageseiko1
      t.string :e_imageseiko2
      t.string :e_imageseiko3
      t.string :e_imageseiko4
      t.string :e_imageseiko5
      t.string :e_imageseiko6
      t.string :e_imageseiko7
      t.string :e_imageseiko8
      t.string :e_imageseiko9
      t.string :e_imageseiko10
      t.string :e_imageseiko11
      t.string :e_imageseiko12
      t.string :e_imageseiko13
      t.string :e_imageseiko14
      t.string :e_imageseiko15
      t.string :e_imageseiko16
      t.string :e_imageseiko17
      t.string :e_imageseiko18
      t.string :e_imageseiko19
      t.string :e_imageseiko20
      t.string :e_imageseiko21
      t.string :e_imageseiko22
      t.string :e_imageseiko23
      t.string :e_imageseiko24
      t.string :e_imageseiko25
      t.string :e_imagesippai1
      t.string :e_imagesippai2
      t.string :e_imagesippai3
      t.string :e_imagesippai4
      t.string :e_imagesippai5
      t.string :e_imagesippai6
      t.string :e_imagesippai7
      t.string :e_imagesippai8
      t.string :e_imagesippai9
      t.string :e_imagesippai10
      t.string :e_imagesippai11
      t.string :e_imagesippai12
      t.string :e_imagesippai13
      t.string :e_imagesippai14
      t.string :e_imagesippai15
      t.string :e_imagesippai16
      t.string :e_imagesippai17
      t.string :e_imagesippai18
      t.string :e_imagesippai19
      t.string :e_imagesippai20
      t.string :e_imagesippai21
      t.string :e_imagesippai22
      t.string :e_imagesippai23
      t.string :e_imagesippai24
      t.string :e_imagesippai25
      t.timestamps
    end
  end
end
