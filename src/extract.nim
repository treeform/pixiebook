import strutils

# Extracts code from md files.

var
  md = readFile("tutorial.md")
  code = ""
  inCode = false

for line in md.split("\n"):
  if line.strip() == "```nim":
    inCode = true
    continue
  if line.strip() == "```":
    inCode = false
    continue

  if inCode:
    code.add line
    code.add "\n"
  else:
    code.add "# "
    code.add line
    code.add "\n"

writeFile("src/tutorial.nim", code)
