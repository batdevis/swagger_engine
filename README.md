# SwaggerEngine

Include [swagger-ui](https://github.com/swagger-api/swagger-ui) as rails engine.

## Install

Add to Gemfile
`gem 'swagger-ui-rails'`

Add to your config/routes.rb
`mount SwaggerEngine::Engine, at: "/swagger_engine"`

### Protect your route

#### Devise

```
authenticate :user do
  mount SwaggerEngine::Engine, at: "/swagger_engine"
end
```

or

```
authenticate :user, lambda { |u| u.admin } do
  mount SwaggerEngine::Engine, at: "/swagger_engine"
end
```

## Configure

### Place json file

Set the url of your json file in the environment variable `ENV['SWAGGER_JSON_URL']`,
or place it in `app/assets/javascripts/swagger_engine/swagger.json`.

### Edit your json file

Use [Swagger editor](https://github.com/swagger-api/swagger-editor).

## License

This project rocks and uses MIT-LICENSE.
