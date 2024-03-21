Este script em lote, também conhecido como "script batch", realiza a exclusão de arquivos "soltos" na área de trabalho por meio de um loop For.

Antes de aplicar esse código realize as devidas alterações:

* Substitua "%desktopPath%\*" pelo caminhado da Área de trabalho do usuário que você gostaria de realizar as exclusões exemplo:

for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
        del /s /q "%%B" 2>nul
)

                          Atenção! O código como está escrito a cima excluíra TODOS os arquivos da área de trabalho sem nenhuma restrição

Acredito que nem sempre queremos excluir literalmente todos os arquivos para isso podemos acrescentar essa condicional no nosso código! 


for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
    if not "%%~xB"==".extensão do arquivo que não queremos excluir" (
        del /s /q "%%B" 2>nul
    )
)

Essa condicional permite que os arquivos com a extensão escolhida não sejam excluídos como por exemplos atalhos de softwares que estão presentes na área de trabalho;

Basta substituir o texto ".extensão do arquivo que não queremos excluir" pela extenção dos arquivos que não queremos excluir como por exemplo:

.lnk == Atalhos de aplicativos
.txt  
.word
.pdf

Qualquer extensão se encaixa nesse código!!!

Código final:

for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
    if not "%%~xB"==".lnk" (
        del /s /q "%%B" 2>nul
    )
)

====================================================================================================================================================================================

                                                                          Explicação mais detalhada do código
