+++
title = 'Using Shortcodes in Hugo to Resize Images'
date = 2024-09-01T20:15:20-05:00
draft = false
tags = ["hugo"]
+++

Hugo is a powerful static site generator that offers a lot of flexibility through its templating system. One of the features that makes Hugo so versatile is the ability to create and use shortcodes. In this post, we'll explore how to create a shortcode to resize images and use it in your content pages.

### Why Use Shortcodes for Image Resizing?

Imagine you're creating multiple blog posts and need to resize images to fit onto each page. You could whip up your favorite photo editor, but why not take advantage of Hugo's built-in image resizing? Unfortunately, it can't be used directly on your content pages without *shortcodes*.

[Shortcodes](https://gohugo.io/templates/shortcode/) in Hugo allow you to encapsulate complex logic in a simple, reusable format. This is particularly useful for image resizing, as it lets you maintain a consistent look and feel across your site without manually editing each image.

### Setting Up Your Hugo Project

Before we dive into creating the shortcode, make sure you have Hugo installed and a project set up. If you haven't done this yet, you can follow the [Hugo Quick Start Guide](https://gohugo.io/getting-started/quick-start/).

### Creating the Image Resize Shortcode

1. **Create the Shortcode File**

    First, create a new file in the `layouts/shortcodes` directory of your Hugo project. Let's name it `resize-image.html`.

    ```html
    {{ $src := .Get "src" }}
    {{ $image := resources.Get $src }}

    {{ $alt := .Get "alt" | default "" }}
    {{ $width := .Get "width" | default "" }}
    {{ $height := .Get "height" | default "" }}

    {{ $resized := $image.Resize (printf "%sx%s" $width $height) }}
    <img src="{{ $resized.RelPermalink }}" alt="{{ $alt }}">

2. **Using the Shortcode in Content Pages**
    
    Now that we have our shortcode, we can use it in our content pages. Open any Markdown file in the content directory and add the following shortcode:

    ```html
    {{</* resize-image src="example.jpg" width="600" height="400" alt="An example image" */>}}

### Conclusion

That's it! Now you have a simple way to resize images on any of your content pages using Hugo's built-in image resizing capabilities.

Using shortcodes in Hugo to resize images is a powerful way to manage your site’s media. It keeps your content clean and consistent while providing flexibility for future enhancements. Experiment with different configurations and see what works best for your project!