using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PokemonPOO.Core.Abstracoes;
using PokemonPOO.Core.Entities;
using System.Threading;

namespace PokemonPOO.Core.Services
{
    public class TreinadorService
    {
        public void CapturarPokemon(Treinador treinador, PokemonBase pokemon)
        {
            if (treinador == null || pokemon == null)
                throw new ArgumentNullException("Treinador ou Pokémon inválido.");

            treinador.CapturarPokemon(pokemon);
        }

        public void ListarPokemons(Treinador treinador)
        {
            Console.WriteLine($"\nPokémons de {treinador.NomeTreinador}:");

            if (treinador.Pokemons.Count == 0)
            {
                Thread.Sleep(800);
                Console.WriteLine("Nenhum pokémon capturado ainda!");
                return;
            }

            foreach (var p in treinador.Pokemons)
            {
                Thread.Sleep(600); // passando pelos pokemons devagarinho
                Console.Write("- ");
                p.ExibirInformacoes();
            }
        }

        public void ListarInsignias(Treinador treinador)
        {
            Console.WriteLine($"\nInsígnias de {treinador.NomeTreinador}:");

            if (treinador.Insignias.Count == 0)
            {
                Thread.Sleep(800);
                Console.WriteLine("Nenhuma insígnia conquistada ainda.");
                return;
            }

            foreach (var i in treinador.Insignias)
            {
                Thread.Sleep(600);
                i.ExibirDetalhes();
            }
        }
    }
}
