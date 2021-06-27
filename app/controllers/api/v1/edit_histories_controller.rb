module Api
  module V1
    class EditHistoriesController < ApplicationController
      protect_from_forgery with: :null_session
      def create
        edit_history = EditHistory.new(edit_params)
        if contact.save
          render json: EditHistorySerializer.new(edit_history).serialized_json
        else
          render json: { error: edit_history.errors.messages }, status:422
        end
      end

      private

      def edit_params
        params.require(:edit_history).permit(:first_name, :last_name, :phone_number, :email, :edit_date})
      end
    end
  end
end