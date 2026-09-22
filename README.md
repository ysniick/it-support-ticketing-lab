# IT Support & Ticketing Home Lab

A self-hosted IT help desk environment built to practice IT support, Linux server administration, networking, containerization, and structured troubleshooting.

The lab runs **osTicket** and **MariaDB** using Docker Compose inside an Ubuntu Server virtual machine hosted on a Proxmox VE. Simulated support tickets are used to practice diagnosing technical issues and documenting the troubleshooting process from initial report through resolution.

## 🛠️ Technologies

- Proxmox VE
- Ubuntu Server
- Docker
- Docker Compose
- osTicket 1.18.4
- MariaDB
- TP-Link Omada
- Git / GitHub

## 🏗️ Architecture

```text
Proxmox VE
│
└── TICKET01 - Ubuntu Server
    │
    └── Docker Compose
        │
        ├── osTicket
        │
        └── MariaDB
            │
            └── Persistent Docker Volume
