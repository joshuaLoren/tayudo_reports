class PreciosController < ApplicationController
    def index
       @precios = Precios.all
    end
end