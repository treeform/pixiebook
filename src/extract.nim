import strutils

proc extract(fileName: string) =
  ## Extracts code from md files.

  var
    md = readFile(fileName)
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

  writeFile("src/" & fileName.replace(".md", ".nim"), code)

extract("tutorial.md")
extract("context.md")
extract("blending.md")
