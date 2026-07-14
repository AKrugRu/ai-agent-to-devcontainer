#!/bin/sh
set -eu

# Function to install opencode CLI
install_opencode() {
    echo "Installing OpenCode CLI..."
    npm i -g opencode-ai@${VERSION}

    if command -v opencode >/dev/null; then
        echo "opencode CLI installed successfully!"
        opencode --version
        return 0
    else
        echo "ERROR: opencode CLI installation failed!"
        return 1
    fi
}

# Print error message about requiring Node.js feature
print_nodejs_requirement() {
    cat <<EOF

ERROR: Node.js and npm are required but could not be installed!
Please add the Node.js feature to your devcontainer.json:

  "features": {
    "ghcr.io/devcontainers/features/node:latest": {}
  }

EOF
    exit 1
}

# Main script starts here
main() {
    echo "Activating feature 'opencode'"

    # Check node
    if ! command -v node >/dev/null || ! command -v npm >/dev/null; then
        echo "Node.js or npm not found"
        print_nodejs_requirement
    fi

    # Install opencode
    install_opencode || exit 1
}

# Execute main function
main