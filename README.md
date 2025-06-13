# VENT_ESX_Scripts – Community Continuation

> **Fork & Revival – 2025-present**  
> **Original Author:** [HumanTree92](https://github.com/HumanTree92)  
> **Current Maintainer:** [Mlcastor](https://github.com/Mlcastor) (open to co-maintainers & PRs)

---

## ✨ Mission
This repository keeps the legendary collection of ESX resources alive while modernising the codebase, adopting industry best-practices and welcoming community collaboration.  
Our goal is to deliver **production-ready, performant and fully-documented scripts** for FiveM servers, all while paying full respect to the original work of HumanTree92.

## 📌 Why Another Fork?
1. **Preservation.** Ensure a proven codebase does not vanish after archive status.
2. **Modernisation.** Apply clean-code principles, strong typing, CI/CD and automated testing to legacy scripts.
3. **Performance & Security.** Profiling, zero-allocation hot-paths and exploit-resistant patterns.
4. **Community Growth.** Provide docs, issue templates and mentorship to newcomers.

## 🗺️ Strategic Roadmap (10 Days)
| Phase | Timeframe | Focus | Key Deliverable |
|-------|-----------|-------|-----------------|
| **1** | Day 1-2 | Resource Template & Tooling | Standardised template repo w/ Stylua, Luacheck, CI |
| **2** | Day 3-4 | Independent Repo Migration | Each script migrated to separate repo preserving history |
| **3** | Day 5-6 | Per-Resource CI/CD & Versioning | Semantic release pipeline per repo |
| **4** | Day 7-8 | Bundle Repo & Release Pipeline | Submodule integration + automated bundle zip |
| **5** | Day 9-10 | Docs & Community Launch | Docs site, install script, onboarding |

<details>
<summary>Click to expand full roadmap</summary>

### **Phase 0 – Project Bootstrap** (Day 0)
- Create **meta distribution repo** `vent_esx_bundle`.
- Add root GPL copy, Code of Conduct, central README (this file).
- Configure issue templates & discussion board.

### **Phase 1 – Resource Template & Tooling** (Day 1-2)
- Build **GitHub repo template** containing:
  - `fxmanifest.lua` skeleton.
  - Stylua & Luacheck configs.
  - Reusable GitHub Action (`ci.yml`) running lint + tests.
- Publish the template and write `init-resource.sh` scaffold script.

### **Phase 2 – Independent Repo Migration** (Day 3-4)
- Import each legacy script with `git filter-repo` (keeps history).
- Apply template, fix lint errors, add basic tests.
- Tag first semantic version (`v1.0.0`).

### **Phase 3 – Per-Resource CI/CD & Versioning** (Day 5-6)
- Integrate **Conventional Commits** + `release-please` for auto-changelogs.
- Add headless FXServer test harness for smoke tests.
- Publish releases with zipped assets & checksum.

### **Phase 4 – Bundle Repo & Release Pipeline** (Day 7-8)
- Add **git submodules** (or subtrees) pointing to each script at the latest tag.
- Introduce `bundle.yml` manifest and `assemble-bundle.sh`.
- GitHub Action builds nightly & on tag, uploads `VENT_ESX_Bundle_<date>.zip`.

### **Phase 5 – Documentation & Community Launch** (Day 9-10)
- Generate docs site with **Docusaurus** from bundle repo.
- Write install guide, migration docs, contribution handbook.
- Announce 1.0 launch on Cfx.re forums, Discord & Twitter.

</details>

## 🚀 Quick Start
```bash
# 1. Clone the repo (or use Git submodules in your resources folder)
git clone https://github.com/Mlcastor/VENT_ESX_Scripts.git vent_esx_scripts

# 2. Add resources to your server.cfg (order matters!)
ensure es_extended  # or your ESX fork
ensure oxmysql      # database driver
ensure vent_esx_scripts/esx_advancedbanking
# ...add the rest as you need

# 3. Optional alignment (menu position)
setr esx_MenuAlign "top-right"   # top-left | top-right | bottom-left | bottom-right
```

### Requirements
- **FXServer** latest artifact  
- **ESX Legacy ≥ 1.6** (or compatible fork)  
- **oxmysql** @ `^1.8.0`  
- Basic understanding of resource installation & configuration

## 🙌 Contributing
We follow the [GitHub Flow](https://guides.github.com/introduction/flow/) and encourage pull requests.
1. Fork → feature branch → PR.  
2. Respect code style (`lua-format`, `stylua`, Prettier for web UI).  
3. Include descriptive commit messages and update docs/tests.  
4. Be kind & constructive in reviews.

### Issue Reporting
Before opening an issue:
- Search **closed & existing issues**
- Verify you have not modified anything except `config.lua`
- Provide reproduction steps, screenshots/logs & FiveM artifact version

## 🏛️ Acknowledgements
This project would not exist without the extensive work of **HumanTree92**. All original licenses, credits and attributions remain intact.

## 📜 License (GPL-3.0)
```
VENT_ESX_Scripts – Community Continuation
Copyright (C) 2025  Your Name

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```

---
*Made with ❤️ for the FiveM community – contributions welcome!*
