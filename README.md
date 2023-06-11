# Technical Documentation

This project uses the [Tech Docs Template][template], which is a [Middleman template][mmt] that you can use to build technical documentation using a GOV.UK style.

👉 To find out more about setting up and managing content for a website using this template, see the [Tech Docs Template documentation][tdt-docs].

## Before you start

To use the Tech Docs Template you need:

- [Ruby][install-ruby]
- [Middleman][install-middleman]

The [tech docs template
documentation](https://tdt-documentation.london.cloudapps.digital/create_project/get_started/#install-ruby)
says to install the latest 2.7.x version listed at
https://www.ruby-lang.org/en/downloads/ which is 2.7.8, but that page says that
2.7.8 is no longer maintained, and rbenv will only install 2.7.6.  The
documentation also says to use RVM to install Ruby, but the [GDS
Way](https://gds-way.cloudapps.digital/manuals/programming-languages/ruby.html#conventional-tooling)
recommends rbenv.

## Create a new website

- Install rbenv
- Install Ruby version 2.7.6 `rbenv install 2.7.6`
- Activate Ruby version 2.7.6 in your current terminal `rbenv shell 2.7.6`
- Install an old version of a dependency `rbenv exec gem install contracts -v 0.16.1`
- Install middleman `rbenv exec gem install middleman`
- Use middleman to create a new website `rbenv exec middleman init <folder-name> -T alphagov/tech-docs-template`
- Change directory into the new website `cd <folder-name>`
- Install packages that the website requires `rbenv exec bundle install`

## Making changes

To make changes to the content of this website, edit files in the `source` folder of this repository.

You can add content by editing the `.html.md.erb` files. These files support content in:

- Markdown
- HTML
- Ruby

👉 You can use Markdown and HTML to [generate different content types][example-content] and [Ruby partials to manage content][partials].

👉 Learn more about [producing more complex page structures][multipage] for your website.

## Preview your changes locally

- Install rbenv
- Install Ruby version 2.7.6 `rbenv install 2.7.6`
- Activate Ruby version 2.7.6 in your current terminal `rbenv shell 2.7.6`
- Install an old version of a dependency `rbenv exec gem install contracts -v 0.16.1`
- Install middleman `rbenv exec gem install middleman`
- Change directory into the website `cd <folder-name>`
- Install packages that the website requires `rbenv exec bundle install`
- View the website on your device `bundle exec middleman server`

👉 See the generated website on `http://localhost:4567` in your browser. Any content changes you make to your website will be updated in real time.

To shut down the Middleman instance running on your machine, use `ctrl+C`.

If you make changes to the `config/tech-docs.yml` configuration file, you need to restart Middleman to see the changes.

## Build

To build the HTML pages from content in your `source` folder, run:

```
bundle exec middleman build
```

Every time you run this command, the `build` folder gets generated from scratch. This means any changes to the `build` folder that are not part of the build command will get overwritten.

## Troubleshooting

Do not run `bundle update` because the website only builds with the current
package versions, given the old version of ruby.  You could try using a more
recent version of ruby, and recent versions of all the packages.

Run `bundle exec middleman build --verbose` to get detailed error messages to help with finding the problem.

## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms of the [Open Government 3.0][ogl] licence.

[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[mmt]: https://middlemanapp.com/advanced/project_templates/
[tdt-docs]: https://tdt-documentation.london.cloudapps.digital
[config]: https://tdt-documentation.london.cloudapps.digital/configuration-options.html#configuration-options
[frontmatter]: https://tdt-documentation.london.cloudapps.digital/frontmatter.html#frontmatter
[multipage]: https://tdt-documentation.london.cloudapps.digital/multipage.html#build-a-multipage-site
[example-content]: https://tdt-documentation.london.cloudapps.digital/content.html#content-examples
[partials]: https://tdt-documentation.london.cloudapps.digital/single_page.html#add-partial-lines
[install-ruby]: https://tdt-documentation.london.cloudapps.digital/install_macs.html#install-ruby
[install-middleman]: https://tdt-documentation.london.cloudapps.digital/install_macs.html#install-middleman
[gem]: https://github.com/alphagov/tech-docs-gem
[template]: https://github.com/alphagov/tech-docs-template
