<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes2.aspx.cs" Inherits="WebApplication2.Detalhes2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Problemas P vs NP</title>
    <style>
        body {
            font-family: Arial;
            margin: 30px;
            line-height: 1.6;
        }

        .container {
            max-width: 900px;
            margin: auto;
            font-size: 18px;
            text-align: justify;
            background-color: #f9f9f9; 
            padding: 30px;             
            border-radius: 8px;       
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2, h3 {
            text-align: center;
        }

        ul {
            margin-left: 20px;
        }

        p.center {
            text-align: center;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Problemas P vs NP</h2>

            <p>
                Um dos maiores mistérios ainda não resolvidos na ciência da computação e na matemática é a questão conhecida como <strong>P vs NP</strong>. Trata-se de um problema fundamental que não apenas desafia o entendimento teórico dos algoritmos e da complexidade computacional, mas também carrega implicações práticas imensuráveis para áreas como criptografia, segurança digital, logística, medicina, inteligência artificial, finanças e muito mais.
            </p>

            <p>
                A questão central pode ser enunciada da seguinte forma: <em>todo problema cuja solução pode ser verificada rapidamente por um computador (NP) também pode ser resolvido rapidamente por um computador (P)?</em>
            </p>

            <h3>Entendendo as classes P e NP</h3>

            <p>
                A classe <strong>P</strong> (de "Polynomial time") representa o conjunto de problemas que podem ser resolvidos por um algoritmo determinístico em tempo polinomial. Ou seja, problemas para os quais se conhece um procedimento eficiente (com tempo de execução razoável mesmo para entradas grandes) capaz de encontrar a solução.
            </p>

            <p>
                Já a classe <strong>NP</strong> (de "Nondeterministic Polynomial time") inclui os problemas cujas soluções podem ser verificadas rapidamente por um computador, ainda que não se conheça um algoritmo eficiente para encontrá-las. Em outras palavras, se alguém apresentar uma solução, ela pode ser checada em tempo polinomial, mesmo que o processo de encontrar essa solução seja extremamente difícil e demorado.
            </p>

            <p>
                Um ponto essencial é que <strong>todo problema em P também está em NP</strong>, porque se um problema pode ser resolvido rapidamente, então certamente sua solução pode ser verificada rapidamente. A grande dúvida é se todo problema em NP também pode ser resolvido rapidamente, ou seja, se <strong>P = NP</strong>.
            </p>

            <h3>Por que esse problema é importante?</h3>

            <p>
                Resolver a questão de P vs NP mudaria radicalmente a forma como a computação é compreendida. Se um dia for provado que <strong>P = NP</strong>, isso significaria que problemas hoje considerados difíceis e demorados — como quebra de senhas, decodificação de criptografias, otimização de rotas, design de fármacos, verificação de circuitos eletrônicos — poderiam ser resolvidos com algoritmos eficientes.
            </p>

            <p>
                Isso causaria uma revolução tecnológica, mas também colocaria em risco praticamente todos os sistemas de segurança digital que dependem da dificuldade computacional para proteger informações. Por outro lado, se for provado que <strong>P ≠ NP</strong>, haverá a confirmação de que existem problemas cuja solução jamais será acessível de forma eficiente, por mais avançado que o hardware se torne.
            </p>

            <h3>Exemplos de problemas P</h3>

            <ul>
                <li>Ordenação de listas (como bubble sort, quick sort)</li>
                <li>Busca binária em arrays ordenados</li>
                <li>Cálculo do caminho mais curto entre dois pontos em um grafo (como o algoritmo de Dijkstra)</li>
                <li>Multiplicação de matrizes</li>
                <li>Verificação se um número é primo (com o algoritmo AKS, de tempo polinomial)</li>
            </ul>

            <h3>Exemplos de problemas NP (mas não se sabe se estão em P)</h3>

            <ul>
                <li><strong>Problema do Caixeiro Viajante (TSP)</strong>: encontrar o menor caminho que visita um conjunto de cidades e retorna ao ponto de partida.</li>
                <li><strong>Problema da Satisfatibilidade Booleana (SAT)</strong>: determinar se existe uma atribuição de valores verdadeiro/falso que torna uma fórmula booleana verdadeira.</li>
                <li><strong>Problema da Mochila</strong>: escolher itens com pesos e valores para maximizar o valor total sem exceder a capacidade de uma mochila.</li>
                <li><strong>Coloração de grafos</strong>: determinar se um grafo pode ser colorido com k cores sem que vértices adjacentes compartilhem a mesma cor.</li>
                <li><strong>Quebra de criptografia RSA</strong>: baseada na dificuldade de fatorar grandes números primos, cuja verificação é rápida, mas a resolução parece impossível em tempo polinomial.</li>
            </ul>

            <h3>Problemas NP-completos</h3>

            <p>
                Dentre os problemas NP, existe um subconjunto especial chamado de <strong>NP-completos</strong>. Esses problemas são os mais difíceis de toda a classe NP, no sentido de que, se um único problema NP-completo for resolvido em tempo polinomial, então todos os problemas em NP também podem ser resolvidos eficientemente — o que implicaria que P = NP.
            </p>

            <p>
                O primeiro problema provado como NP-completo foi o <strong>SAT</strong>, demonstrado por Stephen Cook em 1971. Desde então, muitos outros problemas foram reduzidos a ele e mostraram-se igualmente difíceis, como o problema do caixeiro viajante em sua versão de decisão, o problema da clique máxima, entre outros.
            </p>

            <h3>Os Problemas do Milênio</h3>

            <p>
                Em 2000, o <strong>Clay Mathematics Institute</strong>, dos Estados Unidos, lançou a lista dos sete <strong>Problemas do Milênio</strong>, selecionando os desafios matemáticos mais profundos e relevantes ainda não resolvidos. Um deles é exatamente a questão de <strong>P vs NP</strong>.
            </p>

            <p>
                Para cada um desses problemas, o instituto oferece um <strong>prêmio de 1 milhão de dólares</strong> para quem apresentar uma prova rigorosa e aceita pela comunidade científica. Até hoje, apenas um dos sete foi resolvido (a Conjectura de Poincaré, por Grigori Perelman, que recusou o prêmio).
            </p>

            <p>
                A resolução de P vs NP não só renderia esse prêmio milionário, mas também marcaria um dos maiores avanços da história na ciência da computação e na matemática. É um problema de enorme peso teórico, mas com consequências diretas e concretas no mundo real.
            </p>

            <p>
                Além de sua importância científica, o problema ilustra o profundo mistério que envolve a própria natureza do conhecimento computacional: há perguntas que podem ser verificadas com facilidade, mas cuja resposta talvez seja inalcançável em tempo útil? Ou será que ainda não se descobriu o algoritmo certo?
            </p>

            <p class="center">
                A resposta a essas perguntas ainda é desconhecida, e continua sendo um dos maiores desafios do pensamento humano.
            </p>
        </div>
    </form>
</body>
</html>