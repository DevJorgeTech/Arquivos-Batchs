# Script em lote para limpeza de arquivos soltos na área de trabalho

Este script em lote, também conhecido como "script batch", foi desenvolvido para realizar a exclusão de arquivos "soltos" na área de trabalho do usuário. Isso é útil para manter a área de trabalho organizada e livre de arquivos desnecessários.

## Antes de usar

Antes de aplicar este código, é importante realizar algumas alterações para adaptá-lo ao seu ambiente:

* Substitua `"%desktopPath%\*"` pelo caminho completo da Área de trabalho do usuário onde você deseja realizar as exclusões. Por exemplo:

```batch
for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
    del /s /q "%%B" 2>nul
)
```

⚠️ Atenção: O código como está escrito acima excluirá TODOS os arquivos da área de trabalho sem nenhuma restrição.

# Adicionando condições de exclusão

Entendemos que nem sempre desejamos excluir literalmente todos os arquivos da área de trabalho. Podemos adicionar uma condição ao código para evitar a exclusão de certos tipos de arquivos. Por exemplo:

```batch

for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
    if not "%%~xB"==".extensão do arquivo que não queremos excluir" (
        del /s /q "%%B" 2>nul
    )
)

```

Essa condição permite que os arquivos com a extensão especificada não sejam excluídos. Isso é útil para preservar certos tipos de arquivos, como atalhos de aplicativos, documentos importantes, etc.

Basta substituir ".extensão do arquivo que não queremos excluir" pela extensão dos arquivos que você deseja preservar. Por exemplo:

* .lnk para atalhos de aplicativos
* .txt para arquivos de texto
* .word para documentos do Microsoft Word
* .pdf para arquivos PDF
  
Você pode especificar qualquer extensão de arquivo neste código.

## Exemplo final

Aqui está um exemplo final do código, onde excluímos todos os arquivos da área de trabalho, exceto os atalhos de aplicativos (.lnk):

````batch
for %%B in ("C:\Users\MeuUsuario\Desktop\*") do (
    if not "%%~xB"==".lnk" (
        del /s /q "%%B" 2>nul
    )
)

````

