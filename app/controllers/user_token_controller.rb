class UserTokenController < Knock::AuthTokenController
    include Knock::Authenticable
    def create
        render json: {"user": current_user, "data": auth_token}
    end

    private
        def auth_token
            super
        end
end
