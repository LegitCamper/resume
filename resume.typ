#import "@preview/basic-resume:0.1.3": work, project, dates-helper, resume

#let font = "New Computer Modern"
#let accent-color = "#26428b"

#show: resume.with(
  author: "Sawyer Bristol",
  location: "Colorado Springs, Co",
  email: "SawyerBristol@gmail.com",
  github: "github.com/LegitCamper",
  linkedin: "linkedin.com/in/sawyerbristol",
  personal-site: "sawyer.services",
  accent-color: accent-color,
  font: font,
)

#figure(
    grid(
        columns: 3,
        gutter: 0mm,
        [ #image("assets/security_plus.png", width: 40%) ],
        [ #image("assets/ccna.png", width: 40%) ],
        [ #image("assets/itf_plus.png", width: 40%) ],
    ),
)


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

#certificates(
  name: "Security+",
  issuer: "CompTIA",
  url: "sawyer.services/secplus",
  date: "June 2024"
)

#certificates(
  name: "CCNA: Switching, Routing, and Wireless Essentials",
  issuer: "Cisco",
  url: "sawyer.services/ccna",
  date: "Oct 2020"
)

#certificates(
  name: "Azure App Service Cong & Mgmt Specialist",
  issuer: "Microsoft",
  url: "sawyer.services/conf",
  date: "Apr 2023"
)

#certificates(
  name: "Azure App Service OSS Specialist",
  issuer: "Microsoft",
  url: "sawyer.services/oss",
  date: "Apr 2023"
)

#certificates(
  name: "IT Fundamentals (ITF+)",
  issuer: "CompTIA",
  url: "sawyer.services/itfplus",
  date: "July 2020"
)

== Projects

#project(
  role: "Maintainer",
  name: "Icy Browser",
  url: "github.com/LegitCamper/icy_browser",
)
- Used Iced-rs to create modular compostable widgets to assist iced developers with embedding webpages/web views inside iced applications
- Leveraged CPU bounds rendering into an off screen buffer to provide a smooth interface
- Interacted with Ultralight and Web Kit with Rust FFI to create safe abstractions over C based browser engines
- Used the Elm architecture to structure widgets in a idiomatic and event driven manner

#project(
  role: "Maintainer",
  name: "Homelab",
  url: "github.com/LegitCamper/homelab",
)
- Leveraged GitHub actions to automate server deployments
- Configured Traefik to redirect all HTTP traffic to HTTP and support DNS-over-HTTPS/TLS
- Control access to sensitive/administrative pages with Google SSO and Traefik 

== Work Experience

#work(
  title: "Cloud Support Engineer Tier 2",
  location: "Colorado Springs",
  company: "Tek Experts",
  dates: dates-helper(start-date: "Jun 2022", end-date: "Feb 2024"),
)
- Assisting customers in application deployments to the Azure app services platform
- Help debug deployment and pipeline issues related to GitHub actions and Azure Dev Ops
- Worked with customers to rewrite existing Python and C\# applications to run on azure server-less
- Work with customers to analyze logs and runtime issues in server-less and function environments
- Worked quickly and diligently to fix and solve customer issues leading to a customer rating of 5 stars every month for 2 years

#work(
  title: "Azure Support Engineer (User Management) ",
  location: "Colorado Springs",
  company: "Tek Experts",
  dates: dates-helper(start-date: "Sep 2021", end-date: "Jun 2022"),
)
- Helped customer quickly facing Azure tenant migration issues
- Went above and beyond to ensure the issue was not only solved but their configuration abided the recommend account safety configurations
- Learned the Azure platform to better assist customer issues bridging several Azure products
- Helped fix the training program to prepare engineers for Azure support Increased department CSAT by 15% compared to previous months

#work(
  title: "Geek Squad Agent",
  location: "Colorado Springs",
  company: "Geek Squad / Best Buy",
  dates: dates-helper(start-date: "Jun 2022", end-date: "Aug 2022"),
)
- Diagnosed hardware and software issues using diagnostic tools and troubleshooting techniques, ensuring accurate problem identification.
- Provided exceptional customer service by addressing inquiries, concerns, and technical questions with patience and professionalism.

== Skills and Interests
- *Programming Languages*: Bash, Rust, Golang, C, Python, Lua, Nix/NixOs
- *Deployment Technologies*:  Kubernetes, Docker, GitHub Actions, Azure Dev Ops, Ansible, CI/CD
- *Infrastructure*: AWS, Azure, Google Cloud, Digital Ocean
- *Networking*: Nginx/Traefik(HTTP, HTTPS, TCP, UDP routing), IPTables, Tailscale
- *Interests*: Systems & Embedded programming, Cyber-security, and self-hosting
