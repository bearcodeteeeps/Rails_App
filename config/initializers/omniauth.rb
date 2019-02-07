OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1060276372939-88eat3i5ofl87btc4nocd3oubig2vqva.apps.googleusercontent.com', 'bJxpxqzO1dGycxsj8VYzZI35', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end