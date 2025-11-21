using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PokemonPOO.Core.Abstracoes
{
    public enum TipoPokemon
    {
        Agua,
        Fogo
    }

    public abstract class PokemonBase : EntidadeBase
    {
        public string Nome { get; protected set; }
        public int Nivel { get; protected set; }
        public TipoPokemon Tipo { get; protected set; }
        public int Velocidade { get; protected set; }
        public int Forca { get; protected set; }

        protected PokemonBase(int id, string nome, TipoPokemon tipo, int nivel = 1, int velocidade = 10, int forca = 10)
            : base()
        {
            Nome = nome;
            Tipo = tipo;
            Nivel = nivel;
            Velocidade = velocidade;
            Forca = forca;
        }

        public abstract void Atacar();
        public abstract void Defender();
        public abstract void Evoluir();

        public virtual void ExibirInformacoes()
        {
            Console.WriteLine($"- {Nome} | Tipo: {Tipo} | Nível: {Nivel} | Força: {Forca} | Velocidade: {Velocidade}");
        }
    }
}

