class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    @num = params.fetch("user_input").to_f
    @square = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb" })
  end

  def calculate_random
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @rand_between = rand(@user_min..@user_max)

    render({ :template => "calculation_templates/random_results.html.erb" })
  end

  def blank_square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  def calculate_square_root
    @user_input = params.fetch("user_input").to_f
    @square_root = @user_input ** 0.5

    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  def blank_payments_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def calculate_payment
    @user_apr = params.fetch("user_apr").to_f.round(5) / 100
    @user_years = params.fetch("user_years").to_f
    @user_principal = params.fetch("user_principal").to_f

    @numerator = ((@user_apr / 12) * @user_principal)
    @denominator = (1 - (1 + @user_apr / 12) ** (-12 * @user_years))
    @user_payment = @numerator / @denominator

    render({ :template => "calculation_templates/payment_results.html.erb" })
  end
end
