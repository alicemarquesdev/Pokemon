using PokemonPOO.Core.Abstracoes;
using PokemonPOO.Core.Entities;
using PokemonPOO.Core.Entities.Pokemons;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PokemonPOO.Core.Services
{
    public class PokemonFactory
    {
        public PokemonBase CriarPokemon(string tipo, string nome)
        {
            switch (tipo.ToLower())
            {
                case "fogo":
                    return new PokemonFogo(nome);
                case "agua":
                    return new PokemonAgua(nome);
           
                default:
                    throw new ArgumentException($"Tipo de pokémon '{tipo}' não reconhecido.");
            }
        }
    }
}
