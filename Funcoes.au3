
;comentário de teste








;Parar serviço do atualizador
;Deve ser passado como parametro o caminho onde o atalho do  o bat  está
Func ParaServicoDoAtualizador($pCaminho)

 If ProcessExists("Atualizador_Web.exe") Then ; Check if the Atualizador_web is running
    $pid = ProcessExists("Atualizador_Web.exe")
    ShellExecute($pCaminho)
    MsgBox($MB_SYSTEMMODAL, "", "O Serviço do tualizador foi parado")
 Else
     MsgBox(1,"","O serviço do atualizador já está parado",200)

    EndIf

EndFunc

;Iniciar serviço do atualizador

Func IniciaServicoDoAtualizador($pCaminho)

   If ProcessExists("Atualizador_Web.exe") Then ; Check if the Atualizador_web is running
     MsgBox($MB_SYSTEMMODAL, "", "O serviço do atualizador já está iniciado")
   )

 Else
      ShellExecute($pCaminho)
	  MsgBox($MB_SYSTEMMODAL, "", "O Serviço do tualizador foi inicializado")
    EndIf


EndFunc