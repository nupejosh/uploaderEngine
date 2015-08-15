class UploaderCreate<%= table_name.camelize %> < ActiveRecord::Migration
  def change
    create_table(:<%= table_name %>) do |t|
      <%= migration_data -%>
      <% attributes.each do |attribute| -%>
      t.<%= attribute.type %> :<%= attribute.name %>
      <% end -%>
      t.timestamps null: false
    end
    add_index :<%= table_name %>, :<%= table_name %>, unique: true
  end
end
