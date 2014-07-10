class CustomFormBuilder < ActionView::Helpers::FormBuilder
 
 	%w[text_field url_field date_field].each do |method_name|
 		define_method(method_name) do |name, *args|
 			options = args.extract_options!
 			@template.content_tag(:div, :class => "form-group #{'has-error' unless @object.errors[name].blank?}") do
	      @template.concat(label name, :class => "control-label")
	      @template.concat(super name, {:class => "form-control"}.merge!(options))
	      if @object.errors[name].present?
	        @template.concat(@template.content_tag(:p, @object.errors[name].first, :class => 'help-block'))
	      end
	    end
 		end
 	end

end