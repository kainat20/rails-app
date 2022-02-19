# frozen_string_literal: true

module Api
  module V1
    class ProductsController < Auth::BaseController
      before_action :authenticate_user!, except: :index

      def index
        Product.skip_authorization = true

        super
      end
    end
  end
end
