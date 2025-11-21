using PokemonPOO.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PokemonPOO.Core.Interfaces
{
    public interface IInsigniaConquistavel
    {
        string Nome { get; }

        void Conquistar();
    }

}
