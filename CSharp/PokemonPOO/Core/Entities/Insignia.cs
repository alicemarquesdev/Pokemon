using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using PokemonPOO.Core.Abstracoes;

namespace PokemonPOO.Core.Entities
{
    public class Insignia : EntidadeBase
    {
        public string NomeInsignia { get; private set; }
        public string Ginasio { get; private set; }
        public TipoPokemon TipoPrincipal { get; private set; }

        public Insignia(int id, string nomeInsignia, string ginasio, TipoPokemon tipo)
            :base()
        {
            NomeInsignia = nomeInsignia;
            Ginasio = ginasio;
            TipoPrincipal = tipo;
        }

        public void ExibirDetalhes()
        {
            Console.WriteLine($"Insígnia: {NomeInsignia} | Ginásio: {Ginasio} | Tipo: {TipoPrincipal}");
        }
    }
}
