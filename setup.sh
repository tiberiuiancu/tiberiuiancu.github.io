#!/bin/bash
set -euo pipefail

# Trampoline for https://tiberiu.nl/setup.sh
# Reconnects stdin to the terminal so interactive prompts work even when
# this script is piped via wget/curl | bash.
exec < /dev/tty
exec bash <(curl -fsSL https://raw.githubusercontent.com/tiberiuiancu/dotfiles/main/install.sh)
