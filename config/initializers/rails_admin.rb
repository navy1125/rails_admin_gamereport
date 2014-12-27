#require 'rails_admin/demo'

RailsAdmin.config do |config|

  config.main_app_name = ['ZqgameReport', 'Navy']
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    charts
    #demo do
    #    only User
    #end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  config.model User do
    visible false
  end

  config.model BraveBrigage::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model BraveBrigage::UserLogin do
    exclude_fields :id,:created_at,:updated_at
    export do
      field :number_of_lanes
    end
  
  end
  config.model BraveBrigage::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model BraveBrigage::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  config.model SoulGuardian::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model SoulGuardian::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model SoulGuardian::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model SoulGuardian::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  config.model PocketKnight::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model PocketKnight::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model PocketKnight::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model PocketKnight::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end

  config.model CaptainHero::UserStar do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model CaptainHero::UserLogin do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model CaptainHero::UserSummary do
    exclude_fields :id,:created_at,:updated_at
  end
  config.model CaptainHero::UserTrack do
    exclude_fields :id,:created_at,:updated_at
  end
end
