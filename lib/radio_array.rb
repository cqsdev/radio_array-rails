module RadioArray
  module FormHelper
    def self.included(arg)
      ActionView::Helpers::FormBuilder.send(:include, RadioArray::FormBuilder)
    end

    def radio_array(object_name, object, fields = [], field_options = [], rails_options = {}, html_options = {})
      column_width = 100/(field_options.count+1)
      table = "<table class='radio_array_table'><thead><tr><th style='width:#{column_width}%'></th>"
      field_options.each do |option|
        table += "<th style='width:#{column_width}%' align='center'>"+option+"</th>"
      end
      table +="</tr></thead><tbody>"
      fields.each do |field|
        table += "<tr>"
        table += "<td style='width:#{column_width}%'>"+label(object_name, field)+"</td>"
        field_options.each do |option|
          table += "<td style='width:#{column_width}%' align='center'>"+radio_button(object_name, field, option, html_options)+"</td>"
        end
        table += "</tr>"
      end
      (table +="</tbody></table>").html_safe
    end
  end

  module FormBuilder
    def radio_array(fields = [], field_options = [], rails_options = {}, html_options = {})
      @template.radio_array(@object_name, @object, fields, field_options, rails_options, html_options)
    end
  end
end

ActionView::Base.send(:include, RadioArray::FormHelper)
