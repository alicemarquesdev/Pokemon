using PokemonPOO.Core.Abstracoes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PokemonPOO.Core.Entities
{
    public class Treinador : EntidadeBase
    {
        public string NomeTreinador { get; private set; }
        public int Idade { get; private set; }
        public string Regiao { get; private set; }

        private readonly List<PokemonBase> _pokemons = new();
        private readonly List<Insignia> _insignias = new();

        public IReadOnlyList<PokemonBase> Pokemons => _pokemons;
        public IReadOnlyList<Insignia> Insignias => _insignias;

        public Treinador(string nomeTreinador, int idade, string regiao)
            : base()
        {
            NomeTreinador = nomeTreinador;
            Idade = idade;
            Regiao = regiao;
        }

        public void CapturarPokemon(PokemonBase pokemon)
        {
            _pokemons.Add(pokemon);
            Console.WriteLine($"{NomeTreinador} capturou {pokemon.Nome}!");
        }

        public void ConquistarInsignia(Insignia insignia)
        {
            _insignias.Add(insignia);
            Console.WriteLine($"{NomeTreinador} conquistou a insígnia {insignia.NomeInsignia}!");
        }
    }
}
