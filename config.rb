require 'govuk_tech_docs'

GovukTechDocs.configure(self)

configure :development do
end

configure :build do
  set :http_prefix, '/data-community-tech-docs'
  set :port, 8080
end
