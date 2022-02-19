# frozen_string_literal: true

module Api
  module V1
    class CustomersController < BaseController
      before_action :authenticate_user!
      include Pundit::Authorization

      def create
        authorize Customer

        customer = Customer.create!(permitted_params)

        render json: customer
      end

      private

        def permitted_params
          Customers::ParamsValidators::Create.new(params).execute
        end
    end
  end
end
