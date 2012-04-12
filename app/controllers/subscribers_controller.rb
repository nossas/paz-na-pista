class SubscribersController < InheritedResources::Base
  def create
    create! do |success, failure|
      success.html { redirect_to new_subscriber_path, :notice => "Valeu muleque! Entraremos em contato assim que houverem novidades..." }
    end
  end
end
