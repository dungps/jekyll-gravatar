# Jekyll Gravatar

A new filter for Jekyll that parses your email address and returns the link to your Gravatar.
=================

## Installation
Place `jekyll-gravatar.rb` into your site `_plugins` directory

## Usage
Just use `{{ 'admin@example.com' | gravatar }}`. It'll return the link to your Gravatar

### Example:
```html
<img src="{{ 'admin@example.com' | gravatar }}" atl="My Gravatar">
```
