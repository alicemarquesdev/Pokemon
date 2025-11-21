using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PokemonPOO.Core.Abstracoes;
using PokemonPOO.Core.Interfaces;

namespace PokemonPOO.Core.Entities.Pokemons
{
    public class PokemonAgua : PokemonBase, IPokemon
    {
        public int VolumeDeAgua { get; private set; }

        public PokemonAgua(string nome)
    :       this(0, nome, 1, 10, 13, 15)
        {
        }


        public PokemonAgua(int id, string nome, int nivel = 1, int velocidade = 10, int forca = 13, int volumeDeAgua = 15)
        : base(id, nome, TipoPokemon.Agua, nivel, velocidade, forca)
        {
            VolumeDeAgua = volumeDeAgua;
        }

        public override void Atacar()
        {
            Console.WriteLine($"{Nome} dispara um jato de {VolumeDeAgua} litros de água!");
        }

        public override void Defender()
        {
            Console.WriteLine($"{Nome} cria uma barreira de água para se proteger!");
        }

        public override void Evoluir()
        {
            Nivel++;
            Forca += 5;
            Velocidade += 3;
            VolumeDeAgua += 10;

            Console.WriteLine($"{Nome} evoluiu! Agora no nível {Nivel} com jatos de {VolumeDeAgua} litros.");
        }
    }
}
