@echo off
setlocal

:: Configurações
set "EMAIL=jjose150697@gmail.com"
set "PROJETO_DIR=C:\caminho\para\seu\projeto"
set "REPO_SSH=git@github.com:josejfs/API_Django_Rest_Framework.git"

:: Gerar chave SSH
ssh-keygen -t rsa -b 4096 -C "%EMAIL%" -f %USERPROFILE%\.ssh\id_rsa -N ""

:: Adicionar chave SSH ao agente
start-ssh-agent.cmd
ssh-add %USERPROFILE%\.ssh\id_rsa

:: Exibir chave SSH pública
type %USERPROFILE%\.ssh\id_rsa.pub
pause
echo Copie a chave acima e adicione ao GitHub: https://github.com/settings/keys
pause

:: Navegar até o diretório do projeto
cd /d "%PROJETO_DIR%"

:: Inicializar repositório Git
git init
git add .
git commit -m "Primeiro commit"

:: Adicionar repositório remoto
git remote add origin %REPO_SSH%

:: Enviar commits para o GitHub
git push -u origin master

echo Publicação concluída com sucesso!
pause
endlocal
