# 2-entrega-P.I
ANDREZA MARIANNO UCHOA
LETICIA JOVANI DE CARVALHO
LUIGI TESGUZZA
RAFAEL JOSE NEDEL

Instruções para Instanciar o MySQL e Carregar Scripts

Requisitos do Sistema:
Sistema operacional compatível com MySQL.
Espaço em disco suficiente para a instalação.
Conexão com a internet para baixar o instalador.

Configuração Inicial:
Verifique se o serviço do MySQL está sendo executado. Você pode verificar isso abrindo o "Gerenciador de Serviços" no Windows ou usando o comando sudo systemctl status mysql no Linux.
Se o serviço não estiver sendo executado, inicie-o manualmente usando o comando apropriado para o seu sistema operacional.

Acesso ao MySQL
Abra um terminal ou prompt de comando.
Use o cliente MySQL para se conectar ao servidor MySQL digitando o seguinte comando:
"mysql -u root -p"
Você será solicitado a digitar a senha do usuário root que você configurou durante a instalação.

Carregamento de Scripts SQL:
Coloque seus scripts SQL em um local acessível pelo sistema operacional.
No cliente MySQL, use o comando source seguido do caminho completo para o seu arquivo SQL para carregar o script. Por exemplo:
"source /caminho/para/seu/arquivo.sql"
