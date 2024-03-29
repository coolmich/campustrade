class Admins::RegistrationsController < Devise::RegistrationsController
  def new
    super
    @user = User.new
  end

  def create
    devise_parameter_sanitizer.for(:sign_up) << :name
    super
    #Bookprice.find(cookies.signed[:tempPrice]).update_attribute(:user_id, current_user.id) unless cookies.signed[:tempPrice].nil?
    # if not cookies.signed[:tempPrice].nil?
      # bookprice = Bookprice.find(cookies.signed[:tempPrice])
      # bookprice.update_attribute(:user_id, current_user.id)
      # flash[:success] = "Success! Your offer is saved! #{view_context.link_to('VIEW', school_book_path(@school.name, bookprice.book))}"
      # cookies.signed[:tempPrice] = nil
    # end
    flash[:success] = "Welcome to Moorgoo! Please check your mailbox to verify your account!"
  end

  def cancel
    super
  end

  def edit
    super
  end

  def update
    devise_parameter_sanitizer.for(:account_update) << :name
    super
  end

  def destroy
    super
  end

end
