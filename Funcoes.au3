
; Fun��o responsavel por gerar o log dos procedimentos no arquivo LogAmbienteAtualizacao
Func GeraLog($caminho)
; Criar arquivo de texto
; Come�ar a escrever no arquivo


EndFunc




;Parar servi�os
;Passamos como parametro o caminho do atalho do bat configurado para ser executado
;como administrador e o nome do execut�vel do processoDeve ser passado como parametro o caminho onde o atalho do  o bat  est�
Func ParaServico($pCaminhoBat,$pNomeExecutavel)

 If ProcessExists($pNomeExecutavel) Then ; Check if the Atualizador_web is running
    $pid = ProcessExists("Atualizador_Web.exe")
    ShellExecute($pCaminhoBat)
	Sleep(10000)
    MsgBox(1, "", "O Servi�o do "&$pNomeExecutavel&"  foi parado")
 Else
     MsgBox(1,"","O servi�o "&$pNomeExecutavel&" j� est� parado")

    EndIf

EndFunc

;Iniciar servi�o
; Passamos como parametro o caminho do atalho do bat configurado para ser executado
;como administrador e o nome do execut�vel do processo

Func IniciaServico($pCaminhoBat,$pNomeExecutavel)

   If ProcessExists($pNomeExecutavel) Then ; Check if the Atualizador_web is running
     MsgBox(1, "", "O servi�o "&$pNomeExecutavel&" j� est� iniciado")


 Else
      ShellExecute($pCaminhoBat)
	  Sleep(10000)
	  MsgBox(1, "", "O Servi�o do "&$pNomeExecutavel&"  foi inicializado")

    EndIf


EndFunc

;Fun�ao responsavel por fazer as c�pias dos bancos do Retaguarda
; Deve ser passado como par�metro o caminho do diret�rio onde est�o os bancos do Retaguarda
Func CopiaBanco($pCaminhoAmbienteDeTeste,$caminhoPadrao,$caminhoAlterado)

  ; Verifica se existe o banco que pretendemos copiar
  If  FileExists($pCaminhoAmbienteDeTeste) Then

    ; Verifica se j� temos o arquivo DB.FDB no diret�rio que pretendemos copiar
    If FileExists($caminhoPadrao) then



         ; Verifica se j� temos algum banco com o nome DB_AUTOIT.FDB,caso tenhamos ele � deletado
		 If FileExists($caminhoAlterado) then
			FileDelete($caminhoAlterado)

			;Renomeia banco de dados
            FileMove($caminhoPadrao,$caminhoAlterado)
            FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)


		 Else
			;Renomeia banco de dados
            FileMove($caminhoPadrao,$caminhoAlterado)
			;Copia o banco do ambiente de teste para o diret�rio padr�o
            FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)

		 EndIf

	  Else

		 if $caminhoPadrao == $DirRetaguardaGerencial then
            ; cria a pasta gerencial
			DirCreate($DirGerencial)
			Sleep(5000)
		    ; Copia banco do Retaguarda do ambiente de testes para o caminho padr�o
	       FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)
		Else
		    ; Copia banco do Retaguarda do ambiente de testes para o caminho padr�o
			FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)

		EndIf

	  EndIf





   Else
	 ; Aparece quando passamos o caminho errado do diret�tio do ambiente de teste
     MsgBox(1,"","Verifique o diret�rio de testes, banco n�o encontrado no diret�rio:"&$pCaminhoAmbienteDeTeste)


   EndIf


EndFunc








