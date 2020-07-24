class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    if params[:query].present?
      sql_query = " \
        gardens.city @@ :query \
        OR gardens.zipcode @@ :query \
        OR gardens.name @@ :query \
        OR gardens.description @@ :query \
      "
      @gardens = Garden.where(sql_query, query: "%#{params[:query]}%")
    else
      @gardens = Garden.all
    end
  end
end
