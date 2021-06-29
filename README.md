<h1 align="center">
 Wabanex
 </h1>
<a href="#tecnologias">Tecnologias</a> | <a href="#projeto">Projetos</a> | <a href="#execute">Como executar</a>

<div >
<h1>Tecnologias</h1>
  <ul id="tecnologias">
    <li><a href="https://elixir-lang.org/">Elixir</a></li>
    <li><a href="https://phoenixframework.org/">Phoenix</a></li>
    <li><a href="https://graphql.org/">Graphql</a></li>
  </ul>
</div>

<div id="projeto">
<h1>Projeto</h1>
  <p>Consiste em uma API de gerenciamento de treinos de academia</p>
  <img src="/wabanex/assets/schema.png" alt="">
</div>

<div id="execute">
<h1>Como executar</h1>
<ul>
<li>Clone o repositório</li>
<li>Instale o phoenix <i>mix archive.install hex phx_new 1.5.9<i></li>
<li>Instale as dependencias do projeto <i>mix deps.get<i></li>
<li>Instale a database e rode as migrations <i>mix ecto.setup<i></li>
<li>Inicie o servidor do phoenix <i>mix phx.server<i></li>
<li>Por fim, caso precise você pode alterar as configurações do banco de dados pelo arquivo <i>dev.exs<i> e no arquivo <i>config/test.exs<i></li>
</ul>
</div>
