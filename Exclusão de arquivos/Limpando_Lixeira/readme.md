# Limpeza da Lixeira no Windows - README

## Descrição do Script

Este é um script em lote (batch) para limpar a Lixeira no sistema operacional Windows. 

## Comando `del`

O comando `del` é utilizado para excluir arquivos no Windows. Os parâmetros utilizados são:
- `/f`: Força a exclusão dos arquivos, mesmo que eles sejam somente leitura ou estejam protegidos contra exclusão.
- `/s`: Faz com que o comando `del` opere de forma recursiva, excluindo arquivos de todos os subdiretórios também.
- `/q`: Opera em modo silencioso, sem pedir confirmação antes de excluir os arquivos.
- `C:\$Recycle.Bin\*.*`: Especifica o caminho para a pasta da Lixeira no sistema Windows. O asterisco (*) seguido de um ponto (.) indica que todos os tipos de arquivos serão excluídos.

## Redirecionamento de Saída

Os redirecionamentos `>nul` e `2>&1` são usados para suprimir qualquer mensagem de saída ou erro gerada pelo comando `del`:
- `>nul`: Redireciona a saída padrão do comando para o dispositivo NUL, descartando qualquer mensagem de saída.
- `2>&1`: Faz com que a saída de erro (geralmente impressa no STDERR) seja redirecionada para o mesmo lugar que a saída padrão (STDOUT), garantindo que qualquer mensagem de erro seja também descartada.

## Aviso

A exclusão de arquivos na Lixeira é irreversível. Certifique-se de que deseja excluir permanentemente os arquivos antes de usar este script.

## Código final:

````batch

del /f /s /q C:\$Recycle.Bin\*.* >nul 2>&1

````

