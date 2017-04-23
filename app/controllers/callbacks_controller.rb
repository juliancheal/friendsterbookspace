class CallbacksController < ApplicationController
  include ActionView::Helpers::DateHelper

  def amazon
    token = AccessToken.create_from_amazon(code: token_params["code"], user: current_user)
    flash_message(notice: "Token expires at #{token.expires_at.localtime}")

    redirect_to room_path(Room.default)
  end

  def token_params
    params.permit(:code)
  end

  private

  def build_flash_message(token)
  end
end
