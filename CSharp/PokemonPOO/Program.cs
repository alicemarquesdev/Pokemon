using System;
using System.Threading;
using PokemonPOO.Core.Entities;
using PokemonPOO.Core.Services;

class Program
{
    static void Main()
    {
        var factory = new PokemonFactory();
        var batalhaService = new BatalhaService();
        var treinadorService = new TreinadorService();

        var ash = new Treinador("Ash", 12, "Kanto");

        // Criando Pokémons
        var charmander = factory.CriarPokemon("fogo", "Charmander");
        var squirtle = factory.CriarPokemon("agua", "Squirtle");

        // Capturando
        treinadorService.CapturarPokemon(ash, charmander);
        Thread.Sleep(800);
        treinadorService.CapturarPokemon(ash, squirtle);
        Thread.Sleep(800);

        // Listando Pokémons do treinador
        treinadorService.ListarPokemons(ash);

        Thread.Sleep(1200);
        Console.WriteLine("\nUma batalha está prestes a começar...\n");
        Thread.Sleep(1200);

        // Iniciar batalha
        batalhaService.IniciarBatalha(charmander, squirtle);

        Console.WriteLine("\nFim do programa.");
    }
}
