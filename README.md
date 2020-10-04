# Man In The MiddleAttack
Pre-Final Year Mini Project.
I. INTRODUCTION
A Man-in-the-Middle attack (MitM) is where a malicious
Third party takes control of a communication channel between
Two or more endpoints by intercepting and forwarding the
Traffic in transit. An attacker in the middle has the capability
of harming the confidentiality, integrity, and availability of the
User’s content, by eavesdropping, manipulating, crafting, and
dropping traffic on the network. In general, the MitM attack
model on a local area network (LAN) has three steps: (1) gain
access to the network, (2) intercept traffic in transit, and (3)
manipulate, craft, or drop traffic.
Depending on the scenario, access can be achieved by
connecting to a public Wi-Fi access point (e.g. at a café,
airport...) or by connecting physically to an exposed network
cable or network switch. The attacker can also conduct this
Attack remotely via a malware which has infected a trusted
Computer within the existing network .After gaining access,
Interception can be achieved by exploiting known vulnerabilities
in network protocols. For example, the attacker can poison
a host’s address resolution protocol (ARP) table to capture
Local traffic, or spoofing a domain name server (DNS)
to intercept all web traffic . The attacker can easily
exploit these vulnerabilities with free tools which work out-of
thebox such as Ettercap, Cain and Abel, Evilgrade, arpspoof, dsniff,
and many others. Although MitM attacks on LANs have been
known for some time, they are still considered a significant threat
and have gained academic attention over the years. This is likely
because the attack is relatively easy to achieve, yet challenging to 
detect . Encryption can protect the integrity and confidentiality of
the traffic in transit. However, according to, 30% of the world’s
web traffic is not encrypted. Furthermore, in many cases
networked systems do not encrypt their traffic by default (e.g.,
SCADA control system. Moreover, even if the traffic is encrypted,
encryption protocols may have flaws be misconfigured, or simply
left out by a manufacturer (e.g. CVE-2017-15643). We also note
that LAN-based MitM attacks are used in APTs to achieve lateral
movement. Therefore, there is a need for detecting the presence of
a MitM, even when encryption is employed.
