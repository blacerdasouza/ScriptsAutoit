#include<Funcoes.au3>
#include<VariaveisGlobais.au3>


 ; Automatiazacao da preparacao do ambiente de atualização automática

; 1 : Parar o serviço do Atualizador
    ParaServico($batParaServicoAtualizador,$AtualizadorExe)
; 2 : Parar o Firebird
    ParaServico($batParaFirebird,$FirebirdServer)
; 3 : Copiar o banco(s) do Retaguarda para o caminho padrão
    CopiaBanco($retaguardaMultiEmpresaOrigem,$DirRetaguarda,$DirRetaguardaAlterado)

; 4 : Copiar o banco(s) do Retaguarda para o caminho padrão
    CopiaBanco($retaguardaMultiEmpresaOrigem,$DirRetaguarda,$DirRetaguardaAlterado)

; 5 : Copiar o banco do Atualizador da pasta de testes para a pasta do banco do atualizador
    CopiaBanco($retaguardaMultiEmpresaDestino,$DirRetaguardaGerencial,$DirRetaguardaGerencialAlterado)
; 6 : Iniciar o firebird Server
    IniciaServico($batIniciaFirebirdServer,$firebirdServer)

; 7 : Inicia firebird Guardian
	 IniciaServico($batIniciaFirebirdGuardian,$FirebirdGuardian)



; 8 ; verificar se tem alguma pasta versões no caminho padrão se tiver deletar a pasta
      FileDelete($versoes)
	  Sleep(5000)
	  MsgBox(1,"","Pasta versoes deletada")
; 9 ; Iniciar o serviço do atualizador
     IniciaServico($batIniciaServicoAtualizador,$AtualizadorExe)

; 10 processo realizado com sucesso
   MsgBox(1,"","O Ambiente de atualização foi preparado com sucesso")