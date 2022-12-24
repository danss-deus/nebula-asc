# Nebula Autoscript Installer
### System Requirements
- Ubuntu 22.04
- 1GB RAM

### Services
|      Service Name      |      Port      |
|------------------------|----------------|
| OpenSSH                | 22, 80, 443    |
| Dropbear               | 109, 143, 443  |
| Dropbear Websocket     | 109, 443       |
| SSH Websocket SSL      | 443            |
| SSH Websocket          | 80             |
| OpenVPN SSL            | 443            |
| OpenVPN Websocket SSL  | 443            |
| OpenVPN TCP            | 443, 1194      |
| OpenVPN UDP            | 2200           |
| Nginx Webserver        | 80, 81, 443    |
| DNS Server             | 22, 52, 443    |
| DNS Client             | 88, 443        |
| XRay DNS (SlowDNS)     | 53, 80, 443    |
| XRay VMess TLS         | 443            |
| XRay VMess gRPC        | 443            |
| XRay VMess None TLS    | 80             |
| XRay VLess TLS         | 443            |
| XRay VLess gRPC        | 443            |
| XRay VLess None TLS    | 80             |
| Trojan gRPC            | 443            |
| Trojan WS              | 443            |
| Shadowsocks gRPC       | 443            |
| Shadowsocks WS         | 433            |
| Proxy Squid            | 3128           |
| BadVPN                 | 7100-7300      |

### Features
- Auto Delete Expired Account
- Auto Reboot On 05:00 GMT +7
- Backup Data & Restore Data
- Fully Automatic Script
- Timezone Asia/Jakarta (GMT +7)