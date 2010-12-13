class ZeroSixNine < ActiveRecord::Migration
  def self.up
    # Add a new setting that lets users move folders 
    Setting.create(:name => "let_users_move_folders", :title => "Let Users Move Folders",  :value => "1", :setting_type => "Folder", :description => "If enabled, users will be able to move folders into other folders.", :item_type => "bool")             
  end

  def self.down
  end
end 
