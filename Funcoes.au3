
; Função responsavel por gerar o log dos procedimentos no arquivo LogAmbienteAtualizacao
Func GeraLog($caminho)
; Criar arquivo de texto
; Começar a escrever no arquivo


EndFunc




;Parar serviços
;Passamos como parametro o caminho do atalho do bat configurado para ser executado
;como administrador e o nome do executável do processoDeve ser passado como parametro o caminho onde o atalho do  o bat  está
Func ParaServico($pCaminhoBat,$pNomeExecutavel)

 If ProcessExists($pNomeExecutavel) Then ; Check if the Atualizador_web is running
    $pid = ProcessExists("Atualizador_Web.exe")
    ShellExecute($pCaminhoBat)
	Sleep(10000)
    MsgBox(1, "", "O Serviço do "&$pNomeExecutavel&"  foi parado")
 Else
     MsgBox(1,"","O serviço "&$pNomeExecutavel&" já está parado")

    EndIf

EndFunc

;Iniciar serviço
; Passamos como parametro o caminho do atalho do bat configurado para ser executado
;como administrador e o nome do executável do processo

Func IniciaServico($pCaminhoBat,$pNomeExecutavel)

   If ProcessExists($pNomeExecutavel) Then ; Check if the Atualizador_web is running
     MsgBox(1, "", "O serviço "&$pNomeExecutavel&" já está iniciado")


 Else
      ShellExecute($pCaminhoBat)
	  Sleep(10000)
	  MsgBox(1, "", "O Serviço do "&$pNomeExecutavel&"  foi inicializado")

    EndIf


EndFunc

;Funçao responsavel por fazer as cópias dos bancos do Retaguarda
; Deve ser passado como parâmetro o caminho do diretório onde estão os bancos do Retaguarda
Func CopiaBanco($pCaminhoAmbienteDeTeste,$caminhoPadrao,$caminhoAlterado)

  ; Verifica se existe o banco que pretendemos copiar
  If  FileExists($pCaminhoAmbienteDeTeste) Then

    ; Verifica se já temos o arquivo DB.FDB no diretório que pretendemos copiar
    If FileExists($caminhoPadrao) then



         ; Verifica se já temos algum banco com o nome DB_AUTOIT.FDB,caso tenhamos ele é deletado
		 If FileExists($caminhoAlterado) then
			FileDelete($caminhoAlterado)

			;Renomeia banco de dados
            FileMove($caminhoPadrao,$caminhoAlterado)
            FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)


		 Else
			;Renomeia banco de dados
            FileMove($caminhoPadrao,$caminhoAlterado)
			;Copia o banco do ambiente de teste para o diretório padrão
            FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)

		 EndIf

	  Else

		 if $caminhoPadrao == $DirRetaguardaGerencial then
            ; cria a pasta gerencial
			DirCreate($DirGerencial)
			Sleep(5000)
		    ; Copia banco do Retaguarda do ambiente de testes para o caminho padrão
	       FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)
		Else
		    ; Copia banco do Retaguarda do ambiente de testes para o caminho padrão
			FileCopy($pCaminhoAmbienteDeTeste,$caminhoPadrao)

		EndIf

	  EndIf





   Else
	 ; Aparece quando passamos o caminho errado do diretótio do ambiente de teste
     MsgBox(1,"","Verifique o diretório de testes, banco não encontrado no diretório:"&$pCaminhoAmbienteDeTeste)


   EndIf


EndFunc








