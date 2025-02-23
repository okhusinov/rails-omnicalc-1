class DiceController < ApplicationController

  def square_new
    
    render ({ :template => "omnicalc_templates/square_new" })
  
  end

  def square_results
    
    @num_square_input = params.fetch("number")
    @num_square_result = @num_square_input.to_f ** 2

    render ({ :template => "omnicalc_templates/square_results" })
  
  end

  def square_root_new
    
    render ({ :template => "omnicalc_templates/square_root_new" })
  
  end

  def square_root_results
    
    @num_square_root_input = params.fetch("user_number")
    @num_square_root_result = @num_square_root_input.to_f ** 0.5

    render ({ :template => "omnicalc_templates/square_root_results" })
  
  end

  def homepage

    render ({ :template => "dice_templates/home" })
  
  end

end
