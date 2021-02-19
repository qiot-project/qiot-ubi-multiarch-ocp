# QIoT Multiarch OCP

This repository contains scripts and manifests to deploy qemu-user-static as a daemonset on Openshift. This enables Openshift with x86_64 nodes to run multiarch container images.

## Installation

1. Clone the repo
2. Make the install.sh script executable
3. Ensure you have the oc client installed on the machine where you are running the script from
4. Ensure the user account you are logged in to Openshift has cluster admin permissions
5. Run the script