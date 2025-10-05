#let font = "New Computer Modern"
#let accent-color = "#26428b"
#let author = "Sawyer Bristol"
#let location = "Colorado Springs, Co"
#let email = "SawyerBristol@gmail.com"
#let github = "github.com/LegitCamper"
#let linkedin = "linkedin.com/in/sawyerbristol"
#let personal-site = "sawyer.services"

#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  pad[
    *#name*, #issuer (#link("https://" + url)[#url]) #h(1fr) #date
  ]
}

#let resume(
  badges: true,
  certs: true,
  support: false,
  developer: false,
  admin: false,
) = {
  import "@preview/basic-resume:0.2.4": work, project, dates-helper, resume

  show: resume.with(
    author: author,
    location: location,
    email: email,
    github: github,
    linkedin: linkedin,
    personal-site: personal-site,
    accent-color: accent-color,
    font: font,
  )

  if badges {
    figure(
      grid(
        columns: 4,
        gutter: 0mm,
        [ #image("assets/linux_plus.png", width: 50%) ],
        [ #image("assets/security_plus.png", width: 50%) ],
        [ #image("assets/ccna.png", width: 45%) ],
        [ #image("assets/itf_plus.png", width: 55%) ],
      ),
    )
  }

  if certs {
    certificates(
      name: "Linux+",
      issuer: "CompTIA",
      url: "sawyer.services/linuxplus",
      date: "May 2025",
    )

    certificates(
      name: "Security+",
      issuer: "CompTIA",
      url: "sawyer.services/secplus",
      date: "June 2024",
    )

    certificates(
      name: "CCNA: Switching, Routing, and Wireless Essentials",
      issuer: "Cisco",
      url: "sawyer.services/ccna",
      date: "Oct 2020",
    )

    certificates(
      name: "Azure App Service Cong & Mgmt Specialist",
      issuer: "Microsoft",
      url: "sawyer.services/conf",
      date: "Apr 2023",
    )

    certificates(
      name: "Azure App Service OSS Specialist",
      issuer: "Microsoft",
      url: "sawyer.services/oss",
      date: "Apr 2023",
    )

    certificates(
      name: "IT Fundamentals (ITF+)",
      issuer: "CompTIA",
      url: "sawyer.services/itfplus",
      date: "July 2020",
    )
  }

  [== Work Experience]

  work(
    title: "Cloud Support Engineer Tier 2",
    location: "Colorado Springs",
    company: "Tek Experts",
    dates: dates-helper(start-date: "Jun 2022", end-date: "Feb 2024"),
  )
  [
    - Supporting Azure application deployments by utilizing the Azure App Services platform
  ]
  [
    - Debugging and resolving deployment and pipeline issues related to GitHub Actions and Azure DevOps
  ]
  [
    - Collaborating with customers to migrate and convert existing Rust, Python and C\# applications to Azure serverless environments
  ]
  [
    - Analyzing logs and monitoring runtime issues in serverless and function environments, ensuring seamless performance for clients
  ]
  [
    - Proactively addressing customer challenges, resulting in consistent performance and earning a 5-star rating from each client every month over the past two years
  ]

  work(
    title: "Azure Support Engineer (User Management) ",
    location: "Colorado Springs",
    company: "Tek Experts",
    dates: dates-helper(start-date: "Sep 2021", end-date: "Jun 2023"),
  )
  [
    - Streamlined Azure tenant migration processes for customers, ensuring a seamless transition to new environments
  ]
  [
    - Exceeded customer expectations by adhering to recommended account safety configurations
  ]
  [
    - Acquired deep expertise in the Azure platform to bridge gaps between multiple Azure products and better support customer needs
  ]
  [
    - Successfully enhanced a training program, leading to a 15% increase in department-wide CSAT scores compared to previous months
  ]

  work(
    title: "Geek Squad Agent",
    location: "Colorado Springs",
    company: "Geek Squad / Best Buy",
    dates: dates-helper(start-date: "May 2021", end-date: "Aug 2021"),
  )
  [
    - Identified hardware and software issues using diagnostic tools and troubleshooting techniques, ensuring accurate problem resolution
  ]
  [
    - Provided exceptional customer service by addressing inquiries, concerns, and technical questions with patience, professionalism, and clear communication
  ]
  [
    - Assisted clients in resolving issues promptly while maintaining high operational standards for Geeksquad's services
  ]
  [
    - Continuously updated knowledge on best practices to ensure efficient troubleshooting and problem-solving
  ]

  if developer or admin {
    [== Projects]

    if developer {
      project(
        role: "Maintainer",
        name: "PicoCalc OS",
        url: "github.com/LegitCamper/picocalc-os-rs",
      )
      [
        - Designed and maintained a custom kernel targeting the RP2040, written in Rust with a focus on safety and performance
      ]
      [
        - Implemented a tile-based framebuffer driver to efficiently render graphics with limited RAM
      ]
      [
        - Built low-level system call interfaces and userland abstractions for graphics, input, and process management
      ]
      [
        - Developed bootstrapping, binary loading, and relocation support for running user programs on bare metal
      ]
      [
        - Debugged complex issues including PIO, DMA, and hardfault handling in a constrained embedded environment
      ]

      project(
        role: "Maintainer",
        name: "Icy Browser",
        url: "github.com/LegitCamper/icy_browser",
      )
      [
        - Used Iced-rs to create modular compostable widgets to assist iced developers with embedding webpages/web views inside iced applications
      ]
      [
        - Leveraged CPU rendering into an off screen buffer to provide a smooth interface
      ]
      [
        - Interacted with Ultralight and Web Kit with Rust FFI to create safe abstractions over C based browser engines
      ]
      [
        - Used the Elm architecture to structure widgets in a idiomatic and event driven manner
      ]
    }

    if admin {
      project(
        name: "Homelab Server",
        url: "github.com/LegitCamper/homelab",
      )
      [
        - Reverse Proxy: Traefik securing services with automatic https redirection and ssl certifications via Lets Encrypt
      ]
      [
        - Security: Enhanced security with Crowdsec IDS and Crowdsec boucer ensuring all public facing sites are secured and monitored
      ]
      [
        - Networking: Separate Docker networks providing isolation for the internal and public facing networks
      ]
      [
        - Loki (Central Logging Service): Collects and stores detailed logs from various sources within the server, providing insights into container operations and system metrics.
      ]
      [
        - Prometheus: Aggregates metrics such as CPU usage, memory consumption, request rates, etc., offering a comprehensive view of system performance through these data points.
      ]
      [
        - Grafana (Dashboard Tool): Displays Prometheus data in visual charts and graphs, making it easier to monitor systems by presenting raw metrics in an accessible format.
      ]
      [
        - Monitoring and Alerting: Utilizes Loki's logs to send real-time alerts when issues arise, enabling quick identification of problems.
      ]
      [
        - Volumes and File Paths: Consistent volume management ensures that files are stored in predictable locations, avoiding conflicts or inconsistencies due to varied storage setups.
      ]
      [
        - Fedora Atomic/Ublue ucore: Provides a reliable robust platform reducing downtime associated update conflicts, or system behavior.
      ]
    }
  }

  [== Skills and Interests]
  if support {
    [
      - *Soft Skills*: Problem-Solving, Patience, Empathy, Time Management, Attention to Detail
    ]
  }
  if developer {
    [- *Programming Languages*: Bash, Rust, Golang, C, Python, Lua, Nix/NixOs]
  }
  if admin {
    [
      - *Deployment Technologies*: Kubernetes, Docker, GitHub Actions, Azure Dev Ops, Ansible, CI/CD
    ]
    [
      - *Networking*: Nginx/Traefik(HTTP & HTTPS, TCP & UDP routing), IPTables, Tailscaile, Split DNS
    ]
  }
  if developer or admin {
    [- *Infrastructure*: AWS, Azure, Google Cloud, Digital Ocean]
  }
  [
    - *Interests*: Systems & Embedded programming, Cyber-security, and self-hosting
  ]
}

#let input(input) = {
  return sys.inputs.at(input, default: "false").contains("true")
}

#resume(
  support: input("support"),
  developer: input("developer"),
  admin: input("admin"),
)
