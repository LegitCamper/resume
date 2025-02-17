#let font = "New Computer Modern"
#let accent-color = "#26428b"


== Certifications
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
  developer: true,
  admin: true,
) = {
  import "@preview/basic-resume:0.1.3": work, project, dates-helper, resume

  show: resume.with(
    author: "Sawyer Bristol",
    location: "Colorado Springs, Co",
    email: "SawyerBristol@gmail.com",
    github: "github.com/LegitCamper",
    linkedin: "linkedin.com/in/sawyerbristol",
    personal-site: "sawyer.services",
    accent-color: accent-color,
    font: font,
  )

  if badges {
    figure(
      grid(
        columns: 3,
        gutter: 0mm,
        [ #image("assets/security_plus.png", width: 40%) ],
        [ #image("assets/ccna.png", width: 40%) ],
        [ #image("assets/itf_plus.png", width: 40%) ],
      ),
    )
  }

  if certs {
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
  [- Supporting Azure application deployments by utilizing the Azure App Services platform]
  [- Debugging and resolving deployment and pipeline issues related to GitHub Actions and Azure DevOps]
  [- Collaborating with customers to migrate and convert existing Python and C\# applications to Azure serverless environments]
  [- Analyzing logs and monitoring runtime issues in serverless and function environments, ensuring seamless performance for clients]
  [- Proactively addressing customer challenges, resulting in consistent performance and earning a 5-star rating from each client every month over the past two years]

  work(
    title: "Azure Support Engineer (User Management) ",
    location: "Colorado Springs",
    company: "Tek Experts",
    dates: dates-helper(start-date: "Sep 2021", end-date: "Jun 2022"),
  )
  [- Streamlined Azure tenant migration processes for customers, ensuring a seamless transition to new environments]
  [- Exceeded customer expectations by adhering to recommended account safety configurations]
  [- Acquired deep expertise in the Azure platform to bridge gaps between multiple Azure products and better support customer needs]
  [- Successfully enhanced a training program, leading to a 15% increase in department-wide CSAT scores compared to previous months]

  work(
    title: "Geek Squad Agent",
    location: "Colorado Springs",
    company: "Geek Squad / Best Buy",
    dates: dates-helper(start-date: "Jun 2022", end-date: "Aug 2022"),
  )
  [- Identified hardware and software issues using diagnostic tools and troubleshooting techniques, ensuring accurate problem resolution]
  [- Provided exceptional customer service by addressing inquiries, concerns, and technical questions with patience, professionalism, and clear communication]
  [- Assisted clients in resolving issues promptly while maintaining high operational standards forGeeksquad's services]
  [- Continuously updated knowledge on best practices to ensure efficient troubleshooting and problem-solving]

  if developer or admin {
    [== Projects]

    if developer {
      project(
        role: "Maintainer",
        name: "Icy Browser",
        url: "github.com/LegitCamper/icy_browser",
      )
      [- Used Iced-rs to create modular compostable widgets to assist iced developers with embedding webpages/web views inside iced applications]
      [- Leveraged CPU bounds rendering into an off screen buffer to provide a smooth interface]
      [- Interacted with Ultralight and Web Kit with Rust FFI to create safe abstractions over C based browser engines]
      [- Used the Elm architecture to structure widgets in a idiomatic and event driven manner]
    }

    if admin {
      project(
        name: "Homelab",
        url: "github.com/LegitCamper/homelab",
      )
      [- Reverse Proxy: Traefik securing services with automatic https redirection and ssl certifications via Lets Encrypt]
      [- Security: Enhanced security with Crowdsec IDS and Crowdsec boucer ensuring all public facing sites are secured and monitored]
      [- Networking: Separate Docker networks providing isolation for the internal and public facing networks]
      [- Loki (Central Logging Service): Collects and stores detailed logs from various sources within the server, providing insights into container operations and system metrics.]
      [- Prometheus: Aggregates metrics such as CPU usage, memory consumption, request rates, etc., offering a comprehensive view of system performance through these data points.]
      [- Grafana (Dashboard Tool): Displays Prometheus data in visual charts and graphs, making it easier to monitor systems by presenting raw metrics in an accessible format.]
      [- Monitoring and Alerting: Utilizes Loki's logs to send real-time alerts when issues arise, enabling quick identification of problems.]
      [- Volumes and File Paths: Consistent volume management ensures that files are stored in predictable locations, avoiding conflicts or inconsistencies due to varied storage setups.]
      [- Fedora Atomic/Ublue ucore: Provides a reliable robust platform reducing downtime associated update conflicts, or system behavior.]
    }
  }

  [== Skills and Interests]
  if support {
    [- *Customer Support*: Problem-Solving, Patience, Empathy, Time Management, Attention to Detail]
  }
  if developer {
    [- *Programming Languages*: Bash, Rust, Golang, C, Python, Lua, Nix/NixOs]
  }
  if admin {
    [- *Deployment Technologies*: Kubernetes, Docker, GitHub Actions, Azure Dev Ops, Ansible, CI/CD]
    [- *Networking*: Nginx/Traefik(HTTP & HTTPS, TCP & UDP routing), IPTables, Tailscaile, Split DNS]
  }
  [- *Infrastructure*: AWS, Azure, Google Cloud, Digital Ocean]
  [- *Interests*: Systems & Embedded programming, Cyber-security, and self-hosting]
}
