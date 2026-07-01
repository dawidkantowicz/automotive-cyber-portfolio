# Threat Modeling

## Chapter 1 - The Car Hacker's Handbook

### Data Flow Diagrams (DFD)
Threat modeling uses diagrams built in levels:
- **Level 0** - high level, the whole system in one bubble
- **Level 1** - breaks into subsystems and connections between them
- **Level 2** - specific components, e.g. bluez, wpa_supplicant, HSI, udev, kvaser

### Key components mentioned
- **udev** - module that loads USB devices
- **HSI** - serial driver handling cellular communication
- **Kvaser** - vehicle network driver
- **bluez** - Bluetooth stack
- **wpa_supplicant** - WiFi

### Threat identification
- Best done on a whiteboard or brainstorming with a group
- Be creative - think like a James Bond villain
- Many traditional computer attacks apply directly to automotive (e.g. ransomware)
- Traditional pentesting mindset transfers well

### Threat rating systems
- **DREAD** - older, subjective: Damage, Reproducibility, Exploitability, Affected users, Discoverability
- **CVSS** - industry standard now, more detailed and objective. Reference: first.org/cvss
- **ASIL** - safety integrity levels A-D (D = most critical, e.g. brakes, steering). From ISO 26262
- **MIL-STD-882E** - military standard for system safety (better than ASIL)

### Key takeaway
Reverse engineering is essential in automotive security - you often have 
no documentation, so you have to figure out how systems work yourself 
before you can find vulnerabilities in them.
