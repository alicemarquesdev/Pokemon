using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PokemonPOO.Core.Abstracoes;
using System.Threading;

namespace PokemonPOO.Core.Services
{
    public class BatalhaService
    {
        private void Pausar(int ms = 800)
        {
            Thread.Sleep(ms);
        }

        public void IniciarBatalha(PokemonBase pokemon1, PokemonBase pokemon2)
        {
            if (pokemon1 == null || pokemon2 == null)
                throw new ArgumentNullException("Pokémons inválidos para a batalha.");

            Console.WriteLine("------------ BATALHA INICIADA ------------");
            Pausar();

            Console.WriteLine($"{pokemon1.Nome} (Força: {pokemon1.Forca}, Velocidade: {pokemon1.Velocidade}) VS " +
                              $"{pokemon2.Nome} (Força: {pokemon2.Forca}, Velocidade: {pokemon2.Velocidade})");
            Pausar();

            Console.WriteLine("------------------------------------------");
            Pausar(600);

            PokemonBase atacante = pokemon1.Velocidade >= pokemon2.Velocidade ? pokemon1 : pokemon2;
            PokemonBase defensor = atacante == pokemon1 ? pokemon2 : pokemon1;

            Console.WriteLine($"{atacante.Nome} é mais rápido e ataca primeiro!");
            Pausar();

            atacante.Atacar();
            Pausar();

            defensor.Defender();
            Pausar();

            PokemonBase vencedor = atacante.Forca >= defensor.Forca ? atacante : defensor;

            Console.WriteLine($"\nO vencedor da batalha é {vencedor.Nome}!!!");
            Pausar();

            Console.WriteLine("------------------------------------------");
            Pausar(600);

            vencedor.Evoluir();
        }
    }
}
