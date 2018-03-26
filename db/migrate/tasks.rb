class Tasks < ActiveRecord::Migration[5.1]
  def change
    #drop_table :tasks
    create_table :tasks, id: false do |t|
      t.string :name
      t.string :description
      t.boolean :isChecked
      t.integer :key
     # t.timestamps
    end
  end

  def primary_key(name, type = :primary_key, options = {})
    column(name, type, options.merge(:primary_key => true))
  end

  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end 
end
