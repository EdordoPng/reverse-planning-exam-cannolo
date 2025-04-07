# cannolo-reverse-planning
This repository contains a problem developed to show a Universally Reversible Action

This project explores various tools and techniques for solving **Reverse Planning** problems by modeling a domain inspired by the preparation of the *Sicilian cannolo* 🍩🇮🇹.  
The objective is to compare approaches using PDDL (STRIPS), Answer Set Programming (ASP), epistemic reasoning (Eclingo), and planning in **K language** with **DLV^k**.

The project includes both **simple** and **complex** domain versions, showcasing multiple workflows for translation and execution.

🔗 **For detailed explanation and analysis, please refer to the `Report.pdf` file included in this repository.**

## 🎓 Educational Purpose

This project is valuable for academic and practical learning in the following areas:

Automated Planning in Artificial Intelligence

Domain modeling using PDDL

Reasoning with ASP and Epistemic ASP

Declarative languages for planning (e.g., K language)
---

## 🗂️ Project Overview

| Section | Description | Report Reference |
|--------|-------------|------------------|
| 🛠️ **1. Resources** | List of tools and utilities used in this project. | Section 1 |
| 🧠 **2. Problem Domain** | Problem modeling and transition graphs. | Section 2 |
| 🧾 **3. PDDL with STRIPS** | Domain definitions in `.pddl` files. | Section 3 |
| 🔄 **4. Plasp Translation** | Converting PDDL to ASP using `plasp`. | Section 4 |
| 🧮 **5. Clingo & Eclingo Usage** | Execution commands and screenshots. | Section 5 |
| 💡 **6. ASP(Q) Execution** | Use of `.aspq` files with `qasp.jar`. | Section 6 |
| 🔤 **7. K Language & DLV^k** | Planning with K language and reverse planning. | Section 7 |

---

## 🔗 Download the Required Tools

To properly run the project, make sure the following software is installed:

- **Clingo** (ASP grounder and solver)  
  📥 [https://potassco.org/clingo/](https://potassco.org/clingo/)

- **Eclingo** (epistemic extension of Clingo)  
  📥 [https://potassco.org/eclingo/](https://potassco.org/eclingo/)

- **Plasp** (PDDL to ASP translator)  
  📥 [https://github.com/potassco/plasp](https://github.com/potassco/plasp)

- **DLV^k** (for K language planning)  
  📥 [https://www.dlvsystem.com/dlvk/](https://www.dlvsystem.com/dlvk/)

---

## ▶️ Example Commands

### ✔️ Clingo
```bash
clingo ./sequential-horizon.uurev.sat.lp cannolo_plasp.lp
clingo ./sequential-horizon.uurev.sat.lp cannolo_plasp_hard.lp
```

### ✔️ Eclingo

```bash
eclingo 0 ./sequential-horizon.uurev.eclingo cannolo_plasp.lp -c horizon=2
eclingo 0 ./sequential-horizon.uurev.eclingo cannolo_plasp_hard.lp -c horizon=6
```

### ✔️ ASP(Q)

```bash
java -jar ./qasp.jar -n -1 -m cannolo_simple_qasp.aspq
java -jar ./qasp.jar -n -1 -m cannolo_hard_qasp.aspq
```

### ✔️ DLV^k (K Language)

```bash
dlv -FP cannolo_simple_k.plan -planlength=3
dlv -FPopt cannolo_hard_k.plan -planlength=4
```



