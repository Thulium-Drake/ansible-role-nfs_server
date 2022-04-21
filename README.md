# Kerberized NFS server
This role provides a means to configure an NFS server that is integrated with FreeIPA/Red Hat IdM.

It will install and configure the following:

* Kerberos service credentials
* Exports file
* Local folders that are exported

Check [defaults/main.yml](the defaults file) for more details about the configuration.

## Homedirs
This role can also provide a few scripts that I used in a situation where all Linux users were housed in
Active Directory and provided access to Linux systems via a trust.

In this specific scenario there's no clear way to pre-populate the NFS server with all homedirs.

This was addressed by setting up the following:

* Profile scripts on the NFS server to create any missing homedirs
* Sudo & HBAC rules on the IPA server to allow users to run these scripts
* Instructions for users to first log in via SSH to the NFS system in order to create their homedir

The role can set up the scripts I used as well, but they are currently hardcoded to work from /exports/home.
