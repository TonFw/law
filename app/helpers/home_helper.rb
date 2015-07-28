module HomeHelper
  def fill_up_showcases(objs)
    showcases = []
    objs.each do |obj|
      showcases << {
          name:         obj.name,
          img:          obj.cover,
          description:  obj.description
      }
    end

    showcases
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end