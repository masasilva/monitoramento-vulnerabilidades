# 🛡️ Monitoramento de Vulnerabilidades com PowerShell + SCCM

Automação para verificação de vulnerabilidades em softwares amplamente utilizados como WinRAR, Adobe Reader, 7-Zip e outros, via **web scraping com PowerShell**, com integração ao **Microsoft SCCM** para ações corretivas.

---

## 🔍 O que esse projeto faz

- Realiza varreduras em sites de fornecedores em busca de alertas de segurança.
- Gera **logs diários** com os resultados.
- Permite **integração com SCCM** para identificar e atualizar softwares vulneráveis.
- Fácil de adaptar para novos aplicativos.

---

## 🧰 Tecnologias utilizadas

- PowerShell
- Microsoft SCCM (System Center Configuration Manager)
- Web Scraping (Invoke-WebRequest / Regex)

---

## 📂 Estrutura

monitoramento-vulnerabilidades/ │ ├── scripts/ │ ├── check-winrar.ps1 │ ├── check-adobe.ps1 │ ├── check-7zip.ps1 │ └── integracao-sccm.ps1 │ ├── logs/ │ └── log_YYYYMMDD.txt │ ├── docs/ │ └── como-funciona.md

---

## 👤 Autor

Matheus Antonio da Silva  
🔗 [LinkedIn](https://www.linkedin.com/in/matheus-s-6a6b0734b)  
🐙 [GitHub](https://github.com/masasilva)  
📧 mas.asilva@outlook.com



