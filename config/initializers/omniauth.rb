Rails.application.config.middleware.use OmniAuth::Builder do
  KEY = '450005928376623'
  SECRET = 'eb81fee07e234c3b6b454445b40ac488'
  provider :facebook, KEY, SECRET, :scope => 'name', :display => 'popup'
end