class Api::V1::ContactsController < ApplicationController
      protect_from_forgery with: :null_session
      skip_before_action :verify_authenticity_token

      def index
        contacts = Contact.all

        render json: ContactSerializer.new(contacts).serialized_json
      end

      def show
        contact = Contact.find_by(id: params[:id])

        render json: ContactSerializer.new(contact).serialized_json
      end

      def create
        contact = Contact.create!(contact_params)
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

      def contact_history
        contact_found = Contact.find_by(id: params[:id])
        contact = contact_found.versions
        render json: {body: contact}

        # contact = Contact.find(contact_item_id)
        # render json: ContactSerializer.new(contact).serialized_json
      end

      def destroy
        contact = Contact.find_by(id: params[:id])
        
        if contact.destroy
          render json: ContactSerializer.new(contact).serialized_json
        else
          render json: { error: contact.errors.messages }, status:422
        end
      end

      private

      def contact_params
        params.require(:contact).permit(:first_name, :last_name, :phone_number, :email)
      end
    end

