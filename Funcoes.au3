









;Parar servi�o do atualizador
;Deve ser passado como parametro o caminho onde o atalho do  o bat  est�
Func ParaServicoDoAtualizador($pCaminho)

 If ProcessExists("Atualizador_Web.exe") Then ; Check if the Atualizador_web is running
    $pid = ProcessExists("Atualizador_Web.exe")
    ShellExecute($pCaminho)
    MsgBox($MB_SYSTEMMODAL, "", "O Servi�o do tualizador foi parado")
 Else
     MsgBox($MB_SYSTEMMODAL, "", "O servi�o do atualizador j� est� parado")

    EndIf

EndFunc

;Iniciar servi�o do atualizador

Func IniciaServicoDoAtualizador($pCaminho)

   If ProcessExists("Atualizador_Web.exe") Then ; Check if the Atualizador_web is running
    $pid = ProcessExists("Atualizador_Web.exe")
    ShellExecute($pCaminho)
    MsgBox($MB_SYSTEMMODAL, "", "O Servi�o do tualizador foi inicializado")
 Else
     MsgBox($MB_SYSTEMMODAL, "", "O servi�o do atualizador j� est� iniciado")

    EndIf


EndFunc