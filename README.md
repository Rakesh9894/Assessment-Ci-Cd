# DevOps Engineer – Junior Assignment

This repository contains the solution for the DevOps Engineer assignment.  
It includes a Node.js application deployed on an Azure VM with Jenkins CI/CD, Nginx reverse proxy with SSL, and Prometheus monitoring.

## Project Overview
1. **Node.js application** running with **PM2**.  
2. **Jenkins CI/CD pipeline** that pulls from GitHub, installs dependencies, runs tests, and deploys the app via PM2.  
3. **Nginx reverse proxy** with **Let's Encrypt SSL** securing a DuckDNS domain.  
4. **Matrix-based security** in Jenkins (admin/developer roles).  
5. **Monitoring with Prometheus + Node Exporter** for CPU, memory, disk, and process health.  

---

## 🖥Environment
- **Cloud Provider**: Azure VM (Ubuntu 22.04 LTS)  
- **VM Size**: Standard B2s (2 vCPU, 4GB RAM)  
- **Public IP**: 
- **Domain**: `https://rakesh9894.duckdns.org`  

---

## ⚙️ Setup Steps

### 1. VM Setup
- Created Ubuntu 22.04 VM in Azure.  
- Opened ports **22, 80, 443, 8080, 9090** in NSG.  






