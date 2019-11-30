module ApplicationHelper
  def image_link_to(image_path, url, image_tag_options = { }, link_to_options = { })
    link_to url, link_to_options do
      image_tag image_path, image_tag_options
    end
  end

  # Definition adapted from file_field helper present in rails https://apidock.com/rails/ActionView/Helpers/FormHelper/file_field
  # def image_input_field(image_path,object_name,method,image_tag_options = { },options = {})
  #   image_tag image_path, image_tag_options
  #   Tags::FileField.new(object_name, method, self, convert_direct_upload_option_to_url(options.dup)).render
  # end

  

  def user_avatar(user,size=40)
      if user.avatar.attached?
        user.avatar.variant(resize: "#{size}x#{size}!")
      end
  end
end
