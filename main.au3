#include<Funcoes.au3>

; Caminho dos bancos de teste

; Rataguarda uma empresa
Global $retaguardaUmaEmpresa = "D:\AutomacaoAmbienteAtualizacao\Empresa um banco\BancoRetaguarda\DB.FDB"
; Atualizador Limpo
Global $AtualizadorDB = "D:\AutomacaoAmbienteAtualizacao\Empresa um banco\BancoAtualizador\DB_ATUALIZADOR.FDB"



; Caminhos dos atalhos dos bats configurados para serem executados como administrador
Global $batParaServicoAtualizador = "D:\ScriptsAutoIt\ArquivosAutomacao\Bats\Atalhos\ParaAtualizador.bat.lnk"
Global $batIniciaServicoAtualizador = "D:\ScriptsAutoIt\ArquivosAutomacao\Bats\Atalhos\IniciaAtualizador.bat.lnk"
Global $batParaFireBird = "D:\ScriptsAutoIt\ArquivosAutomacao\Bats\Atalhos\ParaFirebird.bat.lnk"
Global $batIniniaFirebird = "D:\ScriptsAutoIt\ArquivosAutomacao\Bats\Atalhos\IniciaFirebird.bat.lnk"

; Nome dos executáveis responsaveis pelos serviços

Global $AtualizadorExe = "Atualizador_Web.exe"
Global $Firebird = "fbserver.exe"

 ; Automatiazacao da preparacao do ambiente de atualização automática

; 1 : Parar o serviço do Atualizador
    ;ParaServico($batParaServicoAtualizador,$AtualizadorExe)
; 2 : Parar o Firebird
    ;ParaServico($batParaFireBird,$Firebird)
; 3 : Copiar o banco(s) do Retaguarda para o caminho padrão
    ;CopiaBancoDoRetaguarda($retaguardaUmaEmpresa)
; 4 : Copiar o banco do Atualizador da pasta de testes para a pasta do banco do atualizador

; 5 : Iniciar o firebird

; 6 ; verificar se tem alguma pasta versões no caminho padrão se tiver deletar a pasta

; 7 ; Iniciar o serviço do atualizador