# Muhammad Argya Vityasy — CV

This repository contains the LaTeX source files for Muhammad Argya Vityasy's curriculum vitae.

## Quick Start

There are three ways to get the PDF:

### 1. Download the pre-built PDF
The latest compiled PDF is available in this repository:

- **[Muhammad_Argya_Vityasy_CV.pdf](./Muhammad_Argya_Vityasy_CV.pdf)** — click to view/download

> If you clone or fork this repo, you can always find the latest pre-built PDF at the root.

---

### 2. Compile locally

You need a working LaTeX distribution (e.g., TeX Live or MiKTeX) installed on your system.

**Requirements:**
- `pdflatex` (part of any standard LaTeX distribution)

**Steps:**

```bash
# Clone the repository
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>

# Compile the CV
pdflatex main.tex

# Optional: run twice to resolve hyperlinks and outlines
pdflatex main.tex
```

The output will be `main.pdf`.

#### Platform-specific notes

**macOS (TeX Live / MacTeX):**
If `pdflatex` is not found, ensure it is in your `PATH`:
```bash
export PATH="/Library/TeX/texbin:/usr/local/texlive/2026/bin/universal-darwin:$PATH"
pdflatex main.tex
```

**Linux (TeX Live):**
Install via your package manager (e.g., `sudo apt install texlive-full` on Debian/Ubuntu), then run:
```bash
pdflatex main.tex
```

**Windows (MiKTeX / TeX Live):**
Open Command Prompt or PowerShell in the repo folder and run:
```powershell
pdflatex main.tex
```

---

### 3. Compile with Docker (no local LaTeX needed)

If you do not want to install a full LaTeX distribution, use the official TeX Live Docker image:

```bash
# Build the PDF inside a container
docker run --rm -v "$(pwd):/workspace" -w /workspace texlive/texlive:latest pdflatex main.tex

# Optional: run twice to resolve hyperlinks and outlines
docker run --rm -v "$(pwd):/workspace" -w /workspace texlive/texlive:latest pdflatex main.tex
```

The output `main.pdf` will appear in your current directory.

> **Note:** The first run may take a while as Docker pulls the `texlive/texlive` image (~4 GB). Subsequent runs will be fast.

---

## Project Structure

```
.
├── main.tex                          # CV content only
├── settings.tex                      # Preamble, packages, custom commands
├── Muhammad_Argya_Vityasy_CV.pdf    # Pre-built PDF
└── README.md                         # This file
```

### Separation of Concerns

- **`settings.tex`** — All LaTeX boilerplate: package imports, page geometry, custom macros, section formatting, and styling. You should rarely need to edit this.
- **`main.tex`** — The actual curriculum vitae content (heading, education, work experience, projects, skills). This is where you make content updates.

---

## Customization

To update your CV, edit **`main.tex`** and recompile with any of the methods above.

If you want to change fonts, margins, colors, or add new section macros, edit **`settings.tex`**.

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| `pdflatex: command not found` | Install a LaTeX distribution or use the Docker method. |
| Overfull hbox warnings | Usually cosmetic; caused by long lines in tabular environments. Shorten text or adjust column widths in `settings.tex` if needed. |
| `main.out` changed warning | Run `pdflatex` a second time to resolve PDF outlines and hyperlinks. |

---

## License

This CV template and content are provided for personal use.
