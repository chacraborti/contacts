class ContactsController < ApplicationController

  def index
    @contact = Contact.all
  end
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      flash[:notice] = "Your contact was successfully created."
      redirect_to contacts_path
    else
      render :new
    end
  end

    def edit
      @contact = Contact.find(params[:id])
    end
  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Your contact was successsfully updated."
      redirect_to contacts_path
    else
      render :edit
    end

    def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy
      flash[:notice] = "Your contact was successfully deleted."
      redirect_to contacts_path
    end

  end
end
