<h1 align="center">
 Wabanex
 </h1>
<a href="#tecnologias">Tecnologias</a> | <a href="#projeto">Projetos</a> | <a href="#execute">Como executar</a>

<hr>
  <ul id="tecnologias">
    <li><a href="https://elixir-lang.org/">Elixir</a></li>
    <li><a href="https://phoenixframework.org/">Phoenix</a></li>
    <li><a href="https://graphql.org/">Graphql</a></li>
  </ul>
<hr>
<div id="projeto">
  <p>Consiste em uma API de gerenciamento de treinos de academia</p>
  <img src="/assets/schema.png" alt="">
</div>
<hr>
<div id="execute">
<ul>
<li>Clone o repositório</li>
<li>Instale o phoenix mix archive.install hex phx_new 1.5.9</li>
<li>Instale as dependencias do projeto mix deps.get</li>
<li>Instale a database e rode as migrations mix ecto.setup</li>
<li>Inicie o servidor do phoenix mix phx.server</li>
<li>Por fim, caso precise você pode alterar as configurações do banco de dados pelo arquivo dev.exs e no arquivo config/test.exs</li>
</ul>
</div>
