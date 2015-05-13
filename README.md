# SwaggerEngine

Include [swagger-ui](https://github.com/swagger-api/swagger-ui) as rails engine.

## Swagger specifications

https://github.com/swagger-api/swagger-spec/blob/master/versions/2.0.md

## Install

Add to Gemfile
`gem 'swagger_engine', git: 'https://github.com/batdevis/swagger_engine.git'`

Add to your config/routes.rb
`mount SwaggerEngine::Engine, at: "/api-docs"`

### Protect your route

#### Devise

```
authenticate :user do
  mount SwaggerEngine::Engine, at: "/api-docs"
end
```

or

```
authenticate :user, lambda { |u| u.admin } do
  mount SwaggerEngine::Engine, at: "/api-docs"
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

## Developed in collaboration with

[Rawfish](http://rawfishindustries.com)

[![Rawfish Logo](http://rawfishindustries.com/wp-content/uploads/2015/03/logo_rawfish_WEB.jpg)](http://rawfishindustries.com)
