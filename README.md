# Romara Numeral

Romara Numeral is a simple terminal application written in Bash. It allows users to quickly convert Roman numerals into Arabic numbers directly from the command line.

## Features

- Converts Roman numeral strings (e.g., `xxv`) into Arabic numbers (e.g., `25`)
- Lightweight and easy to use
- No dependencies beyond Bash

## Usage

Simply type `romara` in your terminal followed by a Roman numeral string:

```bash
romara xxv
```

**Output:**
```
25
```

## Example

```bash
$ romara iv
4

$ romara XLII
42

$ romara mcmxcix
1999
```

## Notes

- Input is case-insensitive (`XXV`, `xxv`, and `XxV` all work).
- Only valid Roman numerals will be converted; invalid input may result in an error or incorrect output.
