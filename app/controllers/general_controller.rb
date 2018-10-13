class GeneralController < ApplicationController
    def new
     @general = General.all
    end
end
