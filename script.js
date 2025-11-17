var app = angular.module("Pokemon", ['ngCookies']);

app.controller("MainController", function ($scope, $http, $cookies) {

  const savedPokemons = $cookies.getObject('listaPokemons');
  $scope.pokemons = Array.isArray(savedPokemons) ? savedPokemons : [];
  $scope.displaySprite = '';
  $scope.error = null;

  var onPokemonComplete = function (response) {
    $scope.pokemon = response.data;
    $scope.displaySprite = $scope.pokemon.sprites.front_default;
    $scope.error = null;

    const name = $scope.pokemon.name;

    if (!$scope.pokemons.includes(name)) {
      $scope.pokemons.push(name);
      $cookies.putObject('listaPokemons', $scope.pokemons);
    }

    $scope.name = '';
  };

  var onError = function () {
    $scope.error = "Não foi possível carregar os dados do Pokémon!";
    $scope.pokemon = null;
    $scope.displaySprite = '';
  };

  $http.get('translations.json').then(function (response) {
    $scope.translations = response.data;
  });

  $scope.search = function (name) {
    if (!name) return;

    const pokemonName = name.toLowerCase();
    const translated =
      $scope.translations && $scope.translations[pokemonName]
        ? $scope.translations[pokemonName].toLowerCase()
        : pokemonName;

    $http.get("https://pokeapi.co/api/v2/pokemon/" + translated)
      .then(onPokemonComplete, onError);
  };

  $scope.changeSprite = function (type) {
    if ($scope.pokemon && $scope.pokemon.sprites[type]) {
      $scope.displaySprite = $scope.pokemon.sprites[type];
    }
  };

  $scope.clearList = function () {
    $scope.pokemons = [];
    $cookies.remove("listaPokemons");
  };

});