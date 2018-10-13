class ReportsController < ApplicationController
    def index
       @general = General.all
    end
end