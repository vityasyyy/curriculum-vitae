# Muhammad Argya Vityasy — CV

This repository contains the LaTeX source files for Muhammad Argya Vityasy's curriculum vitae.

## Compiled CV
[CV](./Muhammad_Argya_Vityasy_CV.pdf)

## Quick Start

There are three ways to get the PDF:

### 1. Download the pre-built PDF

The latest compiled PDF is available in this repository:

- **[Muhammad_Argya_Vityasy_CV.pdf](./Muhammad_Argya_Vityasy_CV.pdf)** — click to view/download

> If you clone or fork this repo, you can always find the latest pre-built PDF at the root.

---

### 2. Compile locally

You need a working LaTeX distribution (e.g., TeX Live or MiKTeX) and `make` installed.

**Requirements:**
- `pdflatex` (part of any standard LaTeX distribution)
- `make` (optional but recommended)

**Steps (with Make):**

```bash
git clone https://github.com/vityasyyy/curriculum-vitae.git
cd curriculum-vitae
make
```

**Steps (without Make):**

```bash
git clone https://github.com/vityasyyy/curriculum-vitae.git
cd curriculum-vitae
mkdir -p build
pdflatex -output-directory=build -jobname=Muhammad_Argya_Vityasy_CV src/main.tex
pdflatex -output-directory=build -jobname=Muhammad_Argya_Vityasy_CV src/main.tex
cp build/Muhammad_Argya_Vityasy_CV.pdf .
```

Run twice to resolve hyperlinks and outlines.

#### Platform-specific notes

**macOS (TeX Live / MacTeX):**
If `pdflatex` is not found, ensure it is in your `PATH`:
```bash
export PATH="/Library/TeX/texbin:/usr/local/texlive/2026/bin/universal-darwin:$PATH"
make
```

**Linux (TeX Live):**
Install via your package manager (e.g., `sudo apt install texlive-full` on Debian/Ubuntu), then run:
```bash
make
```

**Windows (MiKTeX / TeX Live):**
Open Command Prompt or PowerShell in the repo folder and run:
```powershell
make
```

---

### 3. Compile with Docker (no local LaTeX needed)

If you do not want to install a full LaTeX distribution, use the Makefile target:

```bash
make docker
```

Or manually:

```bash
docker run --rm -v "$(pwd):/workspace" -w /workspace texlive/texlive:latest \
  pdflatex -output-directory=build -jobname=Muhammad_Argya_Vityasy_CV src/main.tex
docker run --rm -v "$(pwd):/workspace" -w /workspace texlive/texlive:latest \
  pdflatex -output-directory=build -jobname=Muhammad_Argya_Vityasy_CV src/main.tex
cp build/Muhammad_Argya_Vityasy_CV.pdf .
```

> **Note:** The first run may take a while as Docker pulls the `texlive/texlive` image (~4 GB). Subsequent runs will be fast.

---

## Project Structure

```
.
├── .gitignore                         # Ignores LaTeX build artifacts
├── Makefile                           # Build automation
├── Muhammad_Argya_Vityasy_CV.pdf      # Pre-built PDF (tracked)
├── README.md                          # This file
├── build/                             # Build output directory (gitignored)
└── src/
    ├── main.tex                       # CV content — edit this
    └── settings.tex                   # Preamble, packages, macros — rarely edited
```

### Separation of Concerns

- **`src/settings.tex`** — All LaTeX boilerplate: package imports, page geometry, custom macros, section formatting, and styling. You should rarely need to edit this.
- **`src/main.tex`** — The actual curriculum vitae content (heading, education, work experience, projects, skills). This is where you make content updates.

---

## Customization

To update your CV, edit **`src/main.tex`** and recompile with `make`.

If you want to change fonts, margins, colors, or add new section macros, edit **`src/settings.tex`**.

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| `pdflatex: command not found` | Install a LaTeX distribution or use `make docker`. |
| Overfull hbox warnings | Usually cosmetic; shorten text or adjust column widths in `settings.tex`. |
| Hyperlinks not resolved | Run `pdflatex` twice (or just use `make`, which does this automatically). |

---

## License

This CV template and content are provided for personal use.
