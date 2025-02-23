class OmnicalcController < ApplicationController

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

  def random_new
    
    render ({ :template => "omnicalc_templates/random_new" })
  
  end

  def random_results
    
    @num_user_min_input = params.fetch("user_min")
    @num_user_max_input = params.fetch("user_max")
    @num_random_result = rand(@num_user_min_input.to_f..@num_user_max_input.to_f)

    render ({ :template => "omnicalc_templates/random_results" })
  
  end

  def payment_new
    
    render ({ :template => "omnicalc_templates/payment_new" })
  
  end

  def payment_results
    
    @user_apr_input = params.fetch("user_apr").to_f
    @monthly_apr = @user_apr_input / 100 / 12
    @user_years_input = params.fetch("user_years").to_i
    @months = @user_years_input * 12
    @user_pv_input = params.fetch("user_pv").to_f
    @numerator = @monthly_apr * @user_pv_input
    @denominator = 1 - (1 + @monthly_apr) ** (@months * (-1))
    @payment_result = @numerator / @denominator

    render ({ :template => "omnicalc_templates/payment_results" })
  
  end

  def homepage

    render ({ :template => "omnicalc_templates/square_new" })
  
  end

end
