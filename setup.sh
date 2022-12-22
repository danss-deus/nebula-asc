#!bin/bash

# Nebula Autoscript Multi Ports Installer

import_strings() {
  export DANSS_URL="https://autosc.danss.my.id/nebula"
  export RED="\033[0;31m"
  export GREEN="\033[0;32m"
  export YELLOW="\033[0;33m"
  export BLUE="\033[0;34m"
  export PURPLE="\033[0;35m"
  export CYAN="\033[0;36m"
  export LIGHT="\033[0;37m"
  export BOLD="\e[1m"
  export NC="\033[0m"
  export ERROR="[${RED}${BOLD} ERROR ${NC}]"
  export WARN="[${YELLOW}${BOLD} WARNING ${NC}]"
  export INFO="[${CYAN}${BOLD} INFO ${NC}]"
  export FAIL="[${RED}${BOLD} FAIL ${NC}]"
  export OK="[${GREEN}${BOLD} OK ${NC}]"
  export RED_BG="\e[41m"
  export BLUE_BG="\e[44m"
  export WARNING="${RED}\e[5m"
  export UNDERLINE="\e[4m"
}
nebula_info() {
  myIP=$(curl -sS ipv4.icanhazip.com)
  currentVer='0.1-BETA'
  title='Nebula Autoscript Multi Ports'

  echo -e "${BLUE}${BOLD}${title} Installer ${NC}"
  echo -e "${BLUE}${BOLD}${currentVer} ${NC}"
  echo -e "${BLUE}${BOLD}Public IPv4 ${NC}: ${myIP}"
  echo -e "     --------------------------------------------------------     " #50
  echo -e "        Welcome to ${title} Installer"
  echo ""
  echo -e "      ${BOLD}[ Developer Contacts ]${NC}"
  echo -e "      - Github   : github.com/danss-deus"
  echo -e "      - Telegram : @archdeus"
  echo -e "     --------------------------------------------------------     " #50
  read -p "  Press enter to continue installation..."
  echo ""
}
nebula_syschk() {
  # Root
  if [[ $(whoami) == 'root' ]]; then
  export root_chk='true'
  else
  export root_chk='false'
  fi
  # Virtualization
  if [[ $(systemd-detect-virt) != 'openvz' ]]; then
  export virt_chk='true'
  else
  export virt_chk='false'
  fi
  # Architecture
  if [[ $(uname -m) == 'x86_64' ]]; then
  export arch_chk='true'
  else
  export arch_chk='false'
  fi
  # Operating System
  if command -V apt > /dev/null 2>&1; then
  cmd='apt'
  export os_chk='true'
  elif command -V yum > /dev/null 2>&1; then
  cmd='yum'
  export os_chk='true'
  else
  export os_chk='false'
  fi  
  # Scripts
  if [[ -f "/usr/local/etc/xray/domain.conf" ]]; then
  export script_chk='true'
  else
  export script_chk='false'
  fi
}
nebula_check() {
  if [[ $root_chk != 'true' ]]; then 
  echo -e "${FAIL} Please run scripts as Root!"
  sleep 1
  echo ""
  echo -e "${BOLD}Scripts Installation Cancelled.${NC}"
  exit 1
  elif [[ $virt_chk != 'true' ]]; then
  echo -e "  ${FAIL} Virtualization not Supported!"
  sleep 1
  echo ""
  echo -e "${BOLD}Scripts Installation Cancelled.${NC}"
  exit 1
  elif [[ $arch_chk != 'true' ]]; then
  echo -e "  ${FAIL} Architecture not Supported!"
  sleep 1
  echo ""
  echo -e "${BOLD}Scripts Installation Cancelled.${NC}"
  exit 1
  elif [[ $os_chk != 'true' ]]; then
  echo -e "  ${FAIL} Operating System not Supported."
  sleep 1
  echo ""
  echo -e "${BOLD}Scripts Installation Cancelled."
  exit 1
  elif [[ $script_chk != 'false' ]]; then
  echo -e "  ${FAIL} Scripts already installed!"
  sleep 1
  echo ""
  echo -e "${BOLD}Scripts Installation Cancelled.${NC}"
  exit 1
  else
  echo -e "  ${OK} Scripts Requirements Check Completed..."
  sleep 1
  fi
}
nebula_setup() {
  echo -e "  ${OK} Nebula Autoscript Installation Completed.."
  sleep 1
}
nebula_autosc() {
  import_strings
  nebula_info
  nebula_syschk
  nebula_check
  nebula_setup
}

# Kiana Kaslana
nebula_autosc
