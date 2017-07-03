class TipsController < ApplicationController
    def index
      @tip = Tip.order("RANDOM()").first
    end

    def new
      @tip = Tip.new
    end
end
