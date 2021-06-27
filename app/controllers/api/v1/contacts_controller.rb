module Api
  module V1
    class ContactsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        contacts = Contact.all

        render json: ContactSerializer.new(contacts).serialized_json
      end

      def show
        contact = Contact.find_by(id: params[:id])

        render json: ContactSerializer.new(contact).serialized_json
      end

      def create
        contact = Contact.new(contact_params)
        if contact.save
          render json: ContactSerializer.new(contact).serialized_json
        else
          render json: { error: contact.errors.messages }, status:422
        end
      end

      def update
        contact = Contact.find_by(id: params[:id])
        if contact.update(contact_params)
          render json: ContactSerializer.new(contact).serialized_json
          
        else
          render json: { error: contact.errors.messages }, status:422
        end
      end

      def destroy
        contact = Contact.find_by(id: params[:id])
        
        if contact.destroy
          head  :no_content
        else
          render json: { error: contact.errors.messages }, status:422
        end
      end

      private

      def contact_params
        params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, edit_history_attributes: %i{first_name, last_name, phone_number, email, edit_date})
      end
    end
  end
end

