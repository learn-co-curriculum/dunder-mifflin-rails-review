class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update]
    
    def index
        @dogs = Dog.all 
    end

    def show
        @dog = Dog.find(params[:id])
        @employees = @dog.employees
    end

    def sort_index
        @dogs = Dog.sort_by_employees
        render :index
    end

    private 

    def find_dog
        @dog = Dog.find(params[:id])
    end

    # ayyy we did it

end
