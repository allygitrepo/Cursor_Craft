# CursorCraft

<p align="center">
  <img src="cursorcraft/icons/icon128.png" alt="CursorCraft Logo" width="96" height="96" />
</p>

<p align="center">
  <strong>An Interactive Browser Experience Engineered by <a href="https://allysoftsolutions.com/">AllySoft Solutions</a></strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Version-1.1.0-blue.svg?style=flat-square" alt="Version" />
  <img src="https://img.shields.io/badge/Manifest-V3-success.svg?style=flat-square" alt="Manifest V3" />
  <img src="https://img.shields.io/badge/Platform-Chrome%20Extension-orange.svg?style=flat-square" alt="Chrome Extension" />
  <img src="https://img.shields.io/badge/Developed%20By-AllySoft%20Solutions-brightgreen.svg?style=flat-square" alt="AllySoft Solutions" />
  <img src="https://img.shields.io/badge/Privacy-100%25%20Client--Side-blueviolet.svg?style=flat-square" alt="Privacy First" />
  <img src="https://img.shields.io/badge/License-MIT-green.svg?style=flat-square" alt="License" />
</p>

---

## 🌟 Overview

**CursorCraft** is a cutting-edge Chrome extension that reimagines how web experiences can be visually deconstructed and rebuilt. With a single click or keystroke, CursorCraft wipes any live webpage down to a clean canvas and deploys an autonomous team of multiplayer cursors that reconstruct the entire page element by element before your eyes.

Watch real-time design in action: boxes dragged out with crosshair precision, headings and body text typed with live carets, pen-tool vectors drawn on the fly, and layout guides dynamically snapped into place—all accompanied by a rich, procedurally synthesized soundscape.

![CursorCraft Demo](media/demo.gif)

🎬 **Watch the Demos:**
- [Full Demo Video (36s)](media/demo.mp4)
- [Full Demo with Spatial Sound (60s)](media/demo-with-sound.mp4)

---

## 🏢 About AllySoft Solutions

> **Innovative IT Solutions · Custom Software Engineering · Next-Gen Digital Products**

**CursorCraft** is proudly engineered, designed, and maintained by **[AllySoft Solutions](https://allysoftsolutions.com/)**.

At **AllySoft Solutions**, we are a full-cycle IT services and software development powerhouse dedicated to transforming ideas into scalable, high-impact digital products. From bespoke enterprise applications to sleek web extensions and immersive interactive systems, we deliver craftsmanship and technical excellence across every project.

### 🚀 What We Do at AllySoft Solutions
- **Enterprise Software Development:** Scalable, secure, and modern cloud applications tailored to your business operations.
- **Custom Web & Mobile Engineering:** Ultra-responsive web platforms and native/cross-platform mobile apps built with modern tech stacks.
- **Chrome Extensions & Tooling:** High-performance browser extensions, automated scrapers, and developer productivity tools.
- **UI/UX Design & Motion Engineering:** Human-centered, visually stunning interfaces paired with fluid motion design and micro-interactions.
- **Cloud Infrastructure & DevOps:** Robust CI/CD pipelines, cloud migrations, monitoring, and automated infrastructure management.
- **AI & Automation Integration:** Intelligent automation, LLM workflows, and data-driven solutions for modern digital workflows.

🌐 **Website:** [https://allysoftsolutions.com/](https://allysoftsolutions.com/)  
📫 **Partner with Us:** Get in touch with our engineering team for enterprise software, product engineering, or custom development.

---

## ✨ Key Features

- **Instant DOM Snapshotting:** Parses and captures any live webpage—including open Shadow DOMs, complex typography, gradients, shadows, and media elements—into a rebuild blueprint.
- **Autonomous Multi-Cursor Orchestration:** Emulates a collaborative design team with smooth cursor flocking physics, crosshairs, pen tools, ruler guides, and drag-and-drop cloning.
- **Synthesized Procedural Audio Engine:** Powered entirely by the browser’s Web Audio API with zero external audio assets:
  - Tactile mechanical keyboard feedback with deep spacebar thocks.
  - Crisp ruler-snap and drag clicks.
  - Harmonic glass-piano notes mapped to an E-major pentatonic scale with stereo spatial panning relative to active cursors.
- **Speed & Flow Controls:**
  - **1× / 2× / 3× Speeds:** Accelerate or slow down the build choreography.
  - **Tour Mode:** Automated smooth scroll matching cursor reconstruction speeds—ideal for high-quality screen captures and presentations.
  - **Live Return:** Smoothly fades back to the interactive, fully functional webpage when the build completes.
- **100% Privacy-Preserving & Local:** Never transmits data to external servers. Everything happens strictly inside your local browser tab.

---

## 🚀 Installation Guide

CursorCraft is built on **Manifest V3** and can be loaded directly into any Chromium-based browser (Chrome, Brave, Edge):

1. **Clone or Download Repository:**
   ```bash
   git clone https://github.com/DhvanilPatel/Cursor_Craft.git
   ```
2. Open your browser and navigate to:
   ```text
   chrome://extensions
   ```
3. Enable **Developer mode** using the toggle in the top-right corner.
4. Click the **Load unpacked** button.
5. Select the [`cursorcraft/`](cursorcraft) folder from this project directory.
6. Pin the **CursorCraft** extension icon to your browser toolbar for quick access.

---

## 🎮 How to Use

| Action | Shortcut / Trigger | Description |
| :--- | :--- | :--- |
| **Start Rebuild** | `Alt + Shift + S` or Toolbar Icon | Fades the active tab to a clean canvas and launches the cursor reconstruction team. |
| **Speed Adjustment** | Click `1×`, `2×`, or `3×` | Toggles the reconstruction playback velocity. |
| **Auto-Tour** | Click `Tour` | Autonomously scrolls the page at an optimal viewing pace. |
| **Toggle Audio** | Press `M` or click 🔊 | Mutes or unmutes the real-time synthesized soundscape. |
| **Go Live** | Click `Go live` | Returns you immediately to the real, interactive page. |
| **Replay** | Click `Replay` | Restarts the reconstruction from the top. |
| **Exit** | `Esc` or `✕` | Instantly aborts CursorCraft and restores your original page state. |

> **Local File Testing:** To test local HTML files (e.g., [`demo/index.html`](demo/index.html)), open `chrome://extensions`, click **Details** under CursorCraft, and enable **"Allow access to file URLs"**.

---

## 🛠️ Architecture & Under the Hood

```
┌─────────────────┐       ┌────────────────────┐       ┌────────────────────────┐
│   Live Webpage  │ ────> │  DOM Blueprinting  │ ────> │   Shadow DOM Canvas    │
│  (DOM + Media)  │       │     (swarm.js)     │       │ (Multi-Cursor Physics) │
└─────────────────┘       └────────────────────┘       └────────────────────────┘
                                                                   │
                                                                   ▼
                                                       ┌────────────────────────┐
                                                       │ Live Synthesized Audio │
                                                       │    (Web Audio API)     │
                                                       └────────────────────────┘
```

1. **DOM Blueprint Engine:** [`swarm.js`](cursorcraft/swarm.js) analyzes computed CSS properties, text nodes, pseudo-elements (`::before`/`::after`), vector SVGs, and responsive media, converting them into an organized build queue.
2. **Media Capture Pipeline:** Captures local screenshots of visible WebGL canvases, videos, and embedded iframes without external network roundtrips.
3. **Multi-Agent Cursor Simulation:** Dispatches specialized worker cursor instances that execute procedural building scripts (drawing bounding rectangles, snapping typography to ruler guides, and duplicating recurring items with `⌥-drag` visual effects).
4. **Spatial Audio Synthesis:** Real-time synthesis creates audio frequencies and spatial stereo panning calculated directly from the coordinates of each active cursor.

---

## 📁 Project Structure

```text
Cursor_Craft/
├── cursorcraft/              # Core Chrome Extension (Manifest V3)
│   ├── manifest.json         # Extension configuration & permissions
│   ├── background.js         # Service worker handling tab capture & injection
│   ├── swarm.js              # Core animation engine, DOM parser & audio synthesizer
│   └── icons/                # Extension branding and high-res assets
├── demo/                     # Local test suites & responsive edge-case layouts
│   └── index.html            # Standalone test sandbox
├── media/                    # Showcase recordings and animated previews
│   ├── demo.gif              # Quick preview animation
│   ├── demo.mp4              # 36s high-definition demo
│   └── demo-with-sound.mp4   # 60s demonstration with spatial audio
├── store/                    # Chrome Web Store distribution assets & documentation
├── scripts/                  # Automated build and packaging scripts
├── PRIVACY.md                # Privacy statement & data commitments
└── README.md                 # Project documentation
```

---

## 🔒 Privacy & Security

At **AllySoft Solutions**, user privacy and data security are core design principles:

- **Zero Data Collection:** CursorCraft does not collect, record, log, or transmit any user data or browsing activity.
- **Local Tab Execution:** Operates strictly within the tab you activate, utilizing Chrome's strict `activeTab` security model.
- **No Third-Party Analytics:** No telemetry, tracking beacons, or third-party dependencies.
- **Offline First:** Works seamlessly offline; requires no external API connections.

Review our full [Privacy Policy](PRIVACY.md) for detailed permission breakdowns.

---

## 🤝 Connect with AllySoft Solutions

Looking to build transformative web applications, custom browser tooling, or enterprise software? We’d love to collaborate with you.

- 🌐 **Company Website:** [allysoftsolutions.com](https://allysoftsolutions.com/)
- 💼 **Services:** Full-Stack Web Development, Mobile Apps, Cloud Engineering, Browser Extensions
- 📬 **Inquiries:** Contact us through our website for enterprise consultations and project inquiries.

---

## 📄 License

Distributed under the **MIT License**. Created and maintained with ❤️ by **[AllySoft Solutions](https://allysoftsolutions.com/)**.
