# Como Funciona o Monitoramento de Vulnerabilidades

Este projeto tem como objetivo detectar vulnerabilidades em aplicativos instalados em estações de trabalho e servidores, permitindo a tomada de decisão e ações automatizadas via SCCM.

## Softwares Monitorados

- WinRAR
- Adobe Reader
- 7-Zip
- Microsoft Office (em breve)
- Outros sob demanda

## Funcionamento

1. O PowerShell acessa o site oficial de cada fabricante.
2. Faz uma varredura textual buscando termos como "vulnerability", "CVE", "security update".
3. Salva logs na pasta `/logs/`.
4. Caso detectado, o log pode ser interpretado por um script do SCCM que aciona atualizações.

## Integração com SCCM

Scripts como `integracao-sccm.ps1` permitem verificar quais pacotes estão desatualizados e programar redistribuições ou reimplantação automática.

## Agendamento

Os scripts podem ser agendados via Task Scheduler ou Software Deployment (SCCM).
