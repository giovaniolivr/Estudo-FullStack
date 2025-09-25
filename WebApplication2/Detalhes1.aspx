<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes1.aspx.cs" Inherits="WebApplication2.Detalhes1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Monte Carlo e Caixeiro Viajante</title>
    <style>
        body {
            font-family: Arial;
            margin: 30px;
        }

        .content-wrapper {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .texto {
            max-width: 800px;
        }

        .mapas {
            display: flex;
            gap: 40px;
        }

        canvas {
            border: 1px solid #ccc;
        }

        .background {
            background-color: #f9f9f9;
            padding: 30px;
            margin: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
            font-size: 18px;
            line-height: 1.6;
            text-align: justify;
        }
    </style>
</head>
<body>
    <div style="display: flex; justify-content: center;">
        <div style="margin: 20px; text-align: center;">
            <h2>Problema do Caixeiro Viajante</h2>
        </div>
    </div>

    <div style="display: flex; justify-content: space-around;">
        <canvas id="canvas" width="600" height="600" style="border: 1px solid black;"></canvas>
    </div>

    <script>
        async function carregarJSON(nomeArquivo) {
            const resposta = await fetch(nomeArquivo);
            return await resposta.json();
        }

        function desenharPonto(ctx, x, y, id, cor = 'black') {
            ctx.beginPath();
            ctx.arc(x, y, 5, 0, 2 * Math.PI);
            ctx.fillStyle = cor;
            ctx.fill();
            ctx.fillStyle = 'red';
            ctx.font = 'bold 14px Arial';
            ctx.fillText(id, x + 6, y - 6);
        }

        function sleep(ms) {
            return new Promise(resolve => setTimeout(resolve, ms));
        }

        async function animarCaminho(ctx, pontos, ordem, cor = 'red') {
            ctx.clearRect(0, 0, 600, 600);
            pontos.forEach(p => desenharPonto(ctx, p.x * 600, p.y * 600, p.id, 'black'));

            for (let i = 0; i < ordem.length - 1; i++) {
                const a = pontos.find(p => p.id === ordem[i]);
                const b = pontos.find(p => p.id === ordem[i + 1]);

                ctx.beginPath();
                ctx.moveTo(a.x * 600, a.y * 600);
                ctx.lineTo(b.x * 600, b.y * 600);
                ctx.strokeStyle = cor;
                ctx.lineWidth = 2;
                ctx.stroke();

                await sleep(150);
            }
        }

        window.onload = async () => {
            const canvas = document.getElementById("canvas");
            const ctx = canvas.getContext("2d");

            const pontos = await carregarJSON("pontos.json");
            const ordemOriginal = pontos.map(p => p.id);
            const ordemOtimizada = await carregarJSON("ordem.json");

            while (true) {
                await animarCaminho(ctx, pontos, ordemOriginal, 'gray');
                await sleep(1000);
                await animarCaminho(ctx, pontos, ordemOtimizada, 'blue');
                await sleep(5000);
            }
        };
    </script>
    <br />
    <br />

    <div class="background">
        <p>
            O <strong>Problema do Caixeiro Viajante</strong> (conhecido como "Traveling Salesman Problem" ou TSP) é um dos problemas clássicos mais estudados na área de ciência da computação, matemática e otimização. Ele é simples de entender, mas extremamente desafiador de resolver com exatidão para um número grande de cidades.
        </p>

        <p>
            A proposta é a seguinte: dado um conjunto de cidades e a distância entre cada par delas, qual é o menor caminho possível que permite ao caixeiro (ou vendedor) visitar todas as cidades exatamente uma vez e retornar ao ponto de partida? Apesar de parecer simples à primeira vista, a complexidade do problema cresce exponencialmente com o número de cidades.
        </p>

        <p>
            O problema foi simulado com <strong>20 cidades</strong> posicionadas aleatoriamente em um plano bidimensional. O objetivo é encontrar uma rota eficiente que minimize a distância total percorrida pelo caixeiro ao visitar todas as cidades.
        </p>

        <h3>Aplicação do Algoritmo de Monte Carlo Metropolis</h3>

        <p>
            Para encontrar uma boa solução para o problema, foi utilizado o <strong>algoritmo de Monte Carlo Metropolis</strong>, uma técnica inspirada em métodos probabilísticos aplicados na física estatística. Trata-se de um algoritmo que busca soluções aproximadas em problemas de otimização complexos, como o TSP.
        </p>

        <p>
            O funcionamento do algoritmo pode ser entendido como uma busca inteligente por soluções melhores: ele começa com uma rota inicial aleatória (ou parcialmente otimizada), e em cada iteração realiza pequenas modificações na ordem das cidades visitadas. A cada mudança, ele calcula a nova distância total e decide se aceita ou não essa alteração com base em uma probabilidade controlada por um parâmetro conhecido como <strong>"temperatura"</strong>.
        </p>

        <p>
            Se a nova rota for melhor (isto é, mais curta), ela é aceita imediatamente. Caso contrário, pode ainda ser aceita com certa probabilidade — o que permite ao algoritmo escapar de mínimos locais (soluções ruins que parecem boas) e continuar explorando o espaço de possibilidades em busca de uma solução melhor. Com o tempo, a "temperatura" vai diminuindo, e o algoritmo vai se tornando mais seletivo, convergindo para uma boa solução.
        </p>

        <p>
            Esse processo é semelhante ao recozimento de metais (por isso, o Monte Carlo Metropolis é também base para o famoso algoritmo <strong>Simulated Annealing</strong>), onde átomos vão se acomodando em posições de menor energia.
        </p>

        <h3>Resultados e Visualização</h3>

        <p>
            A simulação que você verá nesta página representa visualmente a rota encontrada pelo algoritmo para o conjunto de 20 cidades. A cada execução, o algoritmo percorre milhares de tentativas de pequenas trocas entre pares de cidades e avalia se vale a pena adotá-las. Com isso, a solução final é uma rota bastante eficiente, próxima da ideal, mesmo que o problema original seja computacionalmente difícil de resolver com precisão total.
        </p>

        <p>
            O uso de algoritmos estocásticos como o Monte Carlo Metropolis mostra como podemos resolver problemas complexos de forma criativa, combinando matemática, programação e visualização interativa.
        </p>
    </div>
</body>
</html>
