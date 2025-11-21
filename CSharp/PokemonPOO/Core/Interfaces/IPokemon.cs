using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PokemonPOO.Core.Interfaces
{
    public interface IPokemon
    {
        string Nome { get; }
        int Nivel { get; }
        int Forca { get; }
        int Velocidade { get; }

        void Atacar();
        void Defender();
        void Evoluir();
    }


}
