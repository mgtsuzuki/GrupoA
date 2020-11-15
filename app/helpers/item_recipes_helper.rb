module ItemRecipesHelper
    def button_select(model_name, target_property, button_source)
        html=''
        list = button_source.sort
        if list.length < 4
            html << '<div  class="custom-control custom-radio"><legend>Tipo de Quantidade</legend>'
            list.each do |x|
                html << radio_button(model_name, target_property, x[1])
                html << "  " + (x[0])
                html << '<br>'
            end
            html << '</div>'
        else
            html << ' <label for="tipos_de_quantidade">Tipo de Quantidade</label><br>'
            html << select(model_name, target_property, list)
        end
        return html.html_safe
    end
end
