require 'rails_admin/config/actions/base'

module RailsAdmin
    class Demo < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection do
            true
        end
    end
end
