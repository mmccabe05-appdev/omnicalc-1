class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    @num = params.fetch("user_input").to_f
    @square = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb" })
  end
end
