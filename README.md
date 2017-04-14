# munky

*Munky is jekyll theme for portfolio websites*. It features a blog, project, photography and about page.

[Theme preview](https://www.geertarien.com)

![munky theme preview](/screenshot.png)

## Installation

Add this line to your Jekyll site's Gemfile:

```ruby
gem "jekyll-theme-munky"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-munky
```

And then execute:

    $ bundle

## Getting started

Wether you're using Munky theme as a theme gem or as a fork, the easiest way to
get started is to copy the content from the `demo` folder to your jekyll
website's root folder. It adds all the files and required settings
to get the most of out of the theme, as well as some example data to get started.

As a bare minimum for the theme to work properly you will need to add the
following configuration data to the `_config.yml` file:

```yaml
  defaults:
    - scope:
        path: ""
      values:
        image: /assets/images/logo.png
    -
      scope:
        path: ""
        type: "posts"
      values:
        type: "post"
    -
      scope:
        path: ""
        type: "projects"
      values:
        type: "project"
```

## Contents At-A-Glance

Minima has been scaffolded by the `jekyll new-theme` command and therefore has all the necessary files and directories to have a new Jekyll site up and running with zero-configuration.

### Layouts

Refers to files within the `_layouts` directory, that define the markup for your theme.

  - `default.html` &mdash; The base layout that lays the foundation for subsequent layouts. The derived layouts inject their contents into this file at the line that says ` {{ content }} ` and are linked to this file via [FrontMatter](https://jekyllrb.com/docs/frontmatter/) declaration `layout: default`.
  - `blog.html` &mdash; The layout for your landing-page / home-page / index-page.
  - `page.html` &mdash; The layout for your documents that contain FrontMatter, but are not posts.
  - `post.html` &mdash; The layout for your posts and projects.
  - `about.html` &mdash; The layout for your about-page.
  - `photography.html` &mdash; The layout for your photography-page.
  - `projects.html` &mdash; The layout for your projects-page.

### Includes

Refers to snippets of code within the `_includes` directory that can be inserted in multiple layouts (and another include-file as well) within the same theme-gem.

  - `disqus_comments.html` &mdash; Code to markup disqus comment box.
  - `footer.html` &mdash; Defines the site's footer section.
  - `google-analytics.html` &mdash; Inserts Google Analytics module (active only in production environment).
  - `head.html` &mdash; Code-block that defines the `<head></head>` in *default* layout.
  - `header.html` &mdash; Defines the site's main header section.
  - `sidebar.html` &mdash; Defines the site's sidebar section.
  - `github-buttons.html` &mdash; Inserts github repository buttons for projects.
  - `share-buttons.html` &mdash; Inserts social media share buttons for projects and posts.
  - `image.html` &mdash; Defines how are images are generated that are defined in markdown.

### Sass

Refers to `.scss` files within the `_sass` directory that define the theme's styles.

  - `munky.scss` &mdash; The core file imported by preprocessed `main.scss`, it defines the variable defaults for the theme and also further imports sass partials to supplement itself.
  - `munky/*.scss` &mdash; Sass partials that are imported by `munky.scss`.
  - `font-awesome/font-awesome.scss` &mdash; Imports sass partials for font-awesome icons.

### Assets

Refers to various asset files within the `assets` directory.
Contains the `main.scss` that imports sass files from within the `_sass`
directory. This `main.scss` is what gets processed into the theme's main
stylesheet `main.css` called by `_layouts/default.html` via `_includes/head.html`.

This directory can include sub-directories to manage assets of similar type,
and will be copied over as is, to the final transformed site directory.

The following sub-directories are required:

  - `css` &mdash; Contains the main `.scss` file as well as the `simplelightbox.scss` file for the configuration of the photo gallery.
  - `downloads` &mdash; Place downloadable content for projects in this directory.
  - `fonts` &mdash; Contains font-awesome font files for icons.
  - `javascripts` &mdash; Directory with jquery, simple-lightbox and custom javascript files.
  - `images` &mdash; The root directory contains side wide images such as logos and profile pictures.
    - `photography` &mdash; Place photographs with their thumbnails in this directory.
    - `posts` &mdash; Images for the posts, each post has his own sub-directory corresponding with the markdown filename.
    - `projects` &mdash; Images for the projects, each project has his own sub-directory corresponding with the markdown filename.

## Usage

### Pages

On top of the default jekyll frontmatter variables, munky theme also uses
the following variables:

```yaml
  order: 2        # Used for ordering page links in navigation menu's.
  sidebar: true   # Enable or disable the author info sidebar.
  text: true      # Set true to change the main content width to a more readable format.
  custom_css:     # Add custom css to a page.
  - simplelightbox
  custom_js:      # Add custom javascript to a page.
  - simple-lightbox.min
  - gallery
```

The following markdown files are required in your jekyll site's root folder:

  - `index.md` &mdash; The index for your website, uses `blog` as layout.
  - `projects.md` &mdash; Your projects page.
  - `photography.md` &mdash; Your photography-page.  
  - `about.md` &mdash; Your about page.
    - You can set the caption using frontmatter:
      ```yaml
        caption: Super awesome caption.
      ```

### Blogposts

### Projects

### Photography gallery

### Customization

To override the default structure and style of munky, simply create the
concerned directory at the root of your site, copy the file you wish to
customize to that directory, and then edit the file.
e.g., to override the [`_includes/head.html `](_includes/head.html) file to
 specify a custom style path, create an `_includes` directory, copy
 `_includes/head.html` from munky gem folder to `<yoursite>/_includes` and start
  editing that file.

To **override the default CSS**, the file has to exist at your site source. Do either of the following:
- Create a new instance of `main.scss` at site source.
  - Create a new file `main.scss` at `<your-site>/assets/`
  - Add the frontmatter dashes, and
  - Add `@import "munky";`, to `<your-site>/assets/main.scss`
  - Add your custom CSS.
- Download the file from this repo
  - Create  a new file `main.scss` at `<your-site>/assets/`
  - Copy the contents at [assets/main.scss](assets/main.scss) onto the `main.scss` you just created, and edit away!
- Copy directly from jekyll-theme-munky gem
  - Go to your local jekyll-theme-munky gem installation directory ( run `bundle show jekyll-theme-munky` to get the path to it ).
  - Copy the `assets/` folder from there into the root of `<your-site>`
  - Change whatever values you want, inside `<your-site>/assets/main.scss`

--

### Enabling comments (via Disqus)

Optionally, if you have a Disqus account, you can tell Jekyll to use it to show
a comments section below each post.

To enable it, add the following lines to your Jekyll site's `_config.yml`:

```yaml
  disqus:
    shortname: my_disqus_shortname
```

You can find out more about Disqus' shortnames [here](https://help.disqus.com/customer/portal/articles/466208).

Comments are enabled by default and will only appear in production, i.e., `JEKYLL_ENV=production`

--

### Enabling Google Analytics

To enable Google Anaytics, add the following lines to your Jekyll site's `_config.yml`:

```yaml
  google_analytics: UA-NNNNNNNN-N
```

Google Analytics will only appear in production, i.e., `JEKYLL_ENV=production`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GeertArien/jekyll-theme-munky.

## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
