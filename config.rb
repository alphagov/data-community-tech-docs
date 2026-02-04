require 'govuk_tech_docs'

GovukTechDocs.configure(self)

# # https://tdt-documentation.london.cloudapps.digital/configure_project/global_configuration/#build-your-site-using-relative-links
# set :relative_links, true
# activate :relative_assets

set :markdown_engine, :kramdown