# 2-entrega-P.I
ANDREZA MARIANNO UCHOA
LETICIA JOVANI DE CARVALHO
LUIGI TESGUZZA
RAFAEL JOSE NEDEL

Instruções para Instanciar o MySQL e Carregar Scripts
Este guia fornece instruções passo a passo para instanciar o MySQL em seu sistema e carregar os scripts necessários para configurar o banco de dados.

Requisitos do Sistema
Sistema operacional compatível com MySQL.
Espaço em disco suficiente para a instalação.
Conexão com a internet para baixar o instalador.
Instalação do MySQL
Baixe o instalador do MySQL do site oficial da Oracle.
Execute o instalador baixado e siga as instruções na tela para concluir a instalação.
Durante a instalação, você será solicitado a configurar uma senha para o usuário root do MySQL. Anote essa senha, pois será necessária posteriormente.
Configuração Inicial
Verifique se o serviço do MySQL está sendo executado. Você pode verificar isso abrindo o "Gerenciador de Serviços" no Windows ou usando o comando sudo systemctl status mysql no Linux.
Se o serviço não estiver sendo executado, inicie-o manualmente usando o comando apropriado para o seu sistema operacional.
Acesso ao MySQL
Abra um terminal ou prompt de comando.
Use o cliente MySQL para se conectar ao servidor MySQL digitando o seguinte comando:
"mysql -u root -p"

Você será solicitado a digitar a senha do usuário root que você configurou durante a instalação.
Carregamento de Scripts SQL
Coloque seus scripts SQL em um local acessível pelo sistema operacional.
No cliente MySQL, use o comando source seguido do caminho completo para o seu arquivo SQL para carregar o script. Por exemplo:
"source /caminho/para/seu/arquivo.sql"
Teste e Verificação
Após carregar os scripts SQL, execute consultas e verifique se os dados foram carregados corretamente e se o banco de dados está funcionando conforme esperado.
Manutenção Contínua
Faça backups regulares do banco de dados, aplique atualizações de segurança e monitore o desempenho do MySQL para garantir um funcionamento suave e seguro do sistema.
