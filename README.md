# Quake Parser

## Como fazer o setup

``` 
$ git clone https://github.com/COAB1/quake_parser.git
$ cd quake_parser
$ gem install sinatra
$ ruby server.rb
```
Abra o seu servidor favorito no localhost:4567, e digite o id desejado para ver o retorno do game, conforme gif abaixo:

![quake_parser](https://github.com/COAB1/quake_parser/blob/master/quake_parser.gif)

Página do meu Projeto Final.

## Explicação da solução proposta

	Este problema foi resolvido utilizando a linguagem ruby. A tentativa foi quebrar o problema em diversas partes e ir resolvendo passo a passo, como pode ser visto pelos commits.
	Passo a passo do que foi feito:
	- Li o arquivo;
	- Separei os jogos pela palavra chave 'InitGame';
	- Criei uma classe Game, para identificar o objeto Game e seus métodos;
	- Identifiquei o nome de cada jogador por jogo, como havia mudança de jogador durante o jogo, utilizei a palavra chave 'ClientUserinfoChanged';
	- Identifiquei cada morte por jogo;
	- Criei um método para identificar os que mataram (killer) e  os que morreram (killed);
	- Adicionei as regras do exercício sobre as mortes causada pelo <world> e removi o <world> da lista de players;
	- Contabilizei o total de mortes por jogo;
	- Associei as Kiils aos Players;
	- Tornei os players únicos por array;
	- Incluí o número do game para impressão de JSON, como pedido na Task 2;
	- Criei os arquivos para a API e coloquei os scripts do arquivo parser.rb dentro de uma função, e incluí dentro da função o array para receber todos os games;
	- Configurei a requisição na API e converti para cantent_type :json para uma melhor visualização;
	- Intalei a gem do sinatra e subi a aplicação para o servidor no localhost:4567;

	Todos os arquivos do código contém comentários para melhor entendimento de outros desenvolvedores.