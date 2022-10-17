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
end
