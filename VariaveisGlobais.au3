;;;;;;Variaveis mais utilizadas;;;;;;;;;



;;;; Caminho dos bancos de teste;;;;;;;;;;;;;;;;;;;;;;;;

; Rataguarda uma empresa
Global $retaguardaUmaEmpresa = "D:\AutomacaoAmbienteAtualizacao\Empresa um banco\BancoRetaguarda\DB.FDB"
; Atualizador Limpo
Global $AtualizadorDB = "D:\AutomacaoAmbienteAtualizacao\Empresa um banco\BancoAtualizador\DB_ATUALIZADOR.FDB"
;Retaguarda multiempresa
Global $retaguardaMultiEmpresaOrigem = "D:\AutomacaoAmbienteAtualizacao\Multiempresa\Origem\DB.FDB"
Global $retaguardaMultiEmpresaDestino = "D:\AutomacaoAmbienteAtualizacao\Multiempresa\Destino\DB.FDB"


;;;;;;;;;;;;;;;;;;; Caminhos dos atalhos dos bats configurados para serem executados como administrador;;;;;;;;;;;;;;;

D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos

Global $batParaServicoAtualizador = "D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos\ParaAtualizador.bat.lnk"
Global $batIniciaServicoAtualizador = "D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos\IniciaAtualizador.bat.lnk"
Global $batParaFireBird = "D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos\ParaFirebird.bat.lnk"
Global $batIniciaFirebirdServer = "D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos\IniciaFirebirdServer.bat.lnk"
Global $batIniciaFirebirdGuardian = "D:\ScriptsAutoIt\PreparaAmbienteAtualizacao\ArquivosAutomacao\Bats\Atalhos\IniciaFirebirdGuardian.bat.lnk"

;;;;;;; Nome dos executáveis responsaveis pelos serviços;;;;;;;;;;;

Global $AtualizadorExe = "Atualizador_Web.exe"
Global $FirebirdServer = "fbserver.exe"
Global $FirebirdGuardian = "fbguard.exe"
;;;;;Diretórios padrões;;;;;;;;;

Global $DirRetaguarda = "C:\Facil\Retaguarda\DB\DB.FDB"
Global $DirRetaguardaGerencial = "C:\Facil\Retaguarda\DB\Gerencial\DB.FDB"
Global $DirGerencial = "C:\Facil\Retaguarda\DB\Gerencial"
Global $DirAtualizador = "C:\Facil\Retaguarda\DB\ATUALIZADOR\DB_ATUALIZADOR.FDB"
Global $DirLog = "C:\Facil\Retaguarda\DB\DB_LOG.FDB"
Global $DirRetaguardaAlterado = "C:\Facil\Retaguarda\DB\DB_AUTOIT.FDB"
Global $DirRetaguardaGerencialAlterado = "C:\Facil\Retaguarda\DB\Gerencial\DB_AUTOIT.FDB.FDB"
Global $DirAtualizadorAlterado = "C:\Facil\Retaguarda\DB\ATUALIZADOR\DB_ATUALIZADOR_AUTOIT.FDB"
Global $DirLogAlterado = "C:\Facil\Retaguarda\DB\DB_LOG_AUTOIT.FDB"

Global $versoes = "C:\Facil\Retaguarda\versoes"