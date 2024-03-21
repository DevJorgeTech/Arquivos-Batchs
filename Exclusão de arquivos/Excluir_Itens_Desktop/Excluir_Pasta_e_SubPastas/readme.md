# Script em lote para limpeza de pastas na área de trabalho

Este script em lote foi criado com o propósito de limpar pastas na área de trabalho do usuário, excluindo todas as pastas, exceto aquelas especificadas para não serem excluídas.

# Antes de usar:
Antes de aplicar este código, é importante entender como adaptá-lo ao seu ambiente:

* Substitua "%USERPROFILE%\Desktop\*" pelo caminho completo da área de trabalho que você deseja limpar exemplo:

````batch
  for /d %%A in ("C:\Caminho\Para\Sua\AreaDeTrabalho\*") do (
        rd /s /q "%%A" 2>nul
  )

````

⚠️ Atenção: O script excluirá todas as pastas da área de trabalho especificada sem nenhuma restrição!

Sabemos que nem sempre desejamos excluir literalmente todas as pasta da área de trabalho para isso podemos adicionar uma condição. 

# Adicionando condições de exclusão

Podemos adicionar uma condição ao código para evitar a exclusão de certos tipos de pastas. Por exemplo:
````batch
    if /I not "%%~nxA"=="Pasta_Importante" (
        rd /s /q "%%A" 2>nul
    )
````

Essa condição impede que nosso código exclua uma pasta importante! Não esqueça de substituir "Pasta_Importante" pelo nome da sua pasta.

# Código final:

````batch

for /d %%A in ("C:\Caminho\Para\Sua\AreaDeTrabalho\*") do (
    if /I not "%%~nxA"=="Importante" (
        rd /s /q "%%A" 2>nul
    )
)

````
