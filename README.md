# IT Support & Ticketing Home Lab

A self-hosted IT help desk environment built to practice IT support, Linux server administration, networking, containerization, and structured troubleshooting.

The lab runs **osTicket** and **MariaDB** using Docker Compose inside an Ubuntu Server virtual machine hosted on Proxmox VE. Simulated support tickets are used to practice diagnosing technical issues and documenting the troubleshooting process from initial report through resolution.

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
        ├── osTicket Web Container
        ├── MariaDB Container
```

## 🎟️ Practice Tickets

### [Ticket #1 - Network Connectivity](tickets/ticket-01.md)

Diagnosed a help desk connectivity issue caused by the server receiving a new IP address through DHCP. Created a DHCP reservation to prevent future address changes and verified that the help desk was accessible again.

### [Ticket #2 - Help Desk Website Not Loading](tickets/ticket-02.md)

Diagnosed an application outage by verifying network connectivity and inspecting the Docker containers. Identified that the osTicket web container had stopped, restarted the service, and verified that access was restored.

## 💻 Skills Practiced

- IT support ticket documentation
- Structured troubleshooting
- Root cause analysis
- Linux server administration
- Docker container management
- DHCP and network troubleshooting
- Virtual machine administration
- Git and GitHub version control