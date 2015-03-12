class HomesController < ApplicationController
  def index
  end

  def about_us
  end

  def services
  end

  def cloud_services
  end

  def application_development
  end

  def products

  end



  def contact_01
  end

  def contact
    if params[:name].present? and params[:email].present? and params[:subject].present? and params[:message].present?
     ContactMailer.comment_contact(params[:name], params[:email], params[:subject], params[:message]).deliver
    respond_to do |format|
      format.js
    end
    end    
  end


  def cloud_architech
  end

  def cloud_consultancy
  end

  def cloud_saas
  end

  def cloud_consult
  end


  def product_development
  end

  def saas_development
  end

  def product_support

  end

  def web_services_development
  end

  def web_design_development
  end

  def wireframe_development
  end


  def chti
  end

  def security_legal
  end

  def privacy_policy
  end

  def terms_conditions
  end

  def shipping
  end

  def quick_contact
  end

  def contact_us
    unless request.get?
     params[:name_error] = "Your name can't be blank" if params[:name].to_s.blank?
     params[:email_error] = "Your email can't be blank" if params[:email].to_s.blank?
      
     params[:message_error] = "Message can't be blank." if params[:message].to_s.blank?
    # @status = false
      if !params[:name].to_s.blank? || !params[:email].to_s.blank? || !params[:subject].to_s.blank? || !params[:message].to_s.blank?
       if ContactMailer.comment_contact(params[:name], params[:email], params[:subject], params[:message]).deliver
         flash[:success] = "Your message has been successfully sent"
            params[:name] = params[:email] = params[:subject] = params[:message] =  " "
            #@status = true
          else
            flash[:danger] = "Error while sending email. Please submit again"
            redirect_to :back
          end
    end
    end
  end

end
