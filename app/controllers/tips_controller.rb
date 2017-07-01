class TipsController < ApplicationController
    def index
      @tip = Tip.order("RANDOM()").first
    end
end
