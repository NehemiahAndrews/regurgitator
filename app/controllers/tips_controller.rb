class TipsController < ApplicationController
    def index
      @tip = Tip.order("RANDOM()").first
    end

    def new
      @tip = Tip.new
    end

    def create
      Tip.create(tip_params)
      redirect_to root_path
    end

    private

    def tip_params
      params.require(:tip).permit(:advice, :author)
    end
end
