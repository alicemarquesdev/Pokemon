using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PokemonPOO.Core.Abstracoes;
using PokemonPOO.Core.Interfaces;

namespace PokemonPOO.Core.Entities.Pokemons
{
    public class PokemonFogo : PokemonBase, IPokemon
    {
        public int TemperaturaChama { get; private set; }

        public PokemonFogo(string nome)
            : this(0, nome, 1, 12, 15, 800)
        {
        }
        public PokemonFogo(int id,string nome, int nivel = 1, int velocidade = 12, int forca = 15, int temperaturaChama = 800)
          : base(id, nome, TipoPokemon.Fogo, nivel, velocidade, forca)
        {
            TemperaturaChama = temperaturaChama;
        }

        public override void Atacar()
        {
            Console.WriteLine($"{Nome} lança uma rajada de fogo a {TemperaturaChama}°C!");
        }

        public override void Defender()
        {
            Console.WriteLine($"{Nome} criou uma barreira de chamas para se defender!");
        }

        public override void Evoluir()
        {
            Nivel++;
            Forca += 8;
            Velocidade += 4;
            TemperaturaChama += 200;

            Console.WriteLine($"{Nome} evoluiu para o nível {Nivel}! Chama agora chega a {TemperaturaChama}°C.");
        }
    }
}
