class TipsController < ApplicationController
    def index
      @tip = Tip.order("RANDOM()").first
    end

    def new
      @tip = Tip.new
    end

    def create
      @tip = Tip.create(tip_params)
      if @tip.invalid?
        flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
      end
      redirect_to root_path
    end

    def about

    end

    private

    def tip_params
      params.require(:tip).permit(:advice, :author)
    end
end
