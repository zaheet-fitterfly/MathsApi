class ApplicationController < ActionController::API
    def has_sufficient_params(params_list)
        params_list.each do |param|
            unless params[param].present?
                render_error_json "#{param.gsub("_"," ")} is mandatory".camelize
                return false
            end
        end
        return true
    end

    def render_error_json message
        response = {status: "error", message: message}
        render json: response
    end
end
