class ContactsController < ApplicationController
  def index
    @contacts = Contact.all

    render(:template => "contacts/index")
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new

    render(:template => "contacts/new")
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to contact_path(@contact)
    else
      render(:template => "contacts/new")
    end
  end

  def edit
    @contact = Contact.find(params[:id])

    render(:templace => "contacts/edit")
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to contact_path(@contact)
    else
      render(:template => "contacts/edit")
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy!
    redirect_to contacts_path
  end

  def contact_params
    params.require(:contact).permit!
  end
end
