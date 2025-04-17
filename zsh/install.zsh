#!/bin/zsh

SOURCE_FILE="$HOME/.config/zsh/.zshrc"
DEST_FILE="$HOME/.zshrc"

if command -v brew >/dev/null 2>&1; then
  echo "Homebrew is installed."
else
  echo "Error: Homebrew is not installed. Please install Homebrew from https://brew.sh/"
  exit 1
fi

if [ ! -f "$DEST_FILE" ]; then
    if [ -f "$SOURCE_FILE" ]; then
        echo "No ~/.zshrc found. Copying from ~/.config/.zshrc..."
        cp "$SOURCE_FILE" "$DEST_FILE"
        echo "Done! ~/.zshrc has been created."
    else
        echo "Error: Source file ~/.config/.zshrc does not exist."
        exit 1
    fi
else
    echo "~/.zshrc already exists."
    echo "Would you like to replace it (y), open it in your editor (o), or do nothing (n)?"
    read choice

    case "$choice" in
        y|Y)
            echo "Replacing ~/.zshrc with ~/.config/.zshrc..."
            cp "$SOURCE_FILE" "$DEST_FILE"
            echo "Done! ~/.zshrc has been replaced."
            ;;
        o|O)
            # Use the EDITOR environment variable if set, otherwise fall back to common editors
            if [ -n "$EDITOR" ]; then
                $EDITOR "$DEST_FILE"
            elif command -v vi &> /dev/null; then
                vi "$DEST_FILE"
            elif command -v vim &> /dev/null; then
                vim "$DEST_FILE"
            elif command -v nano &> /dev/null; then
                nano "$DEST_FILE"
            else
                echo "No editor found. Please set your EDITOR environment variable."
                exit 1
            fi
            ;;
        *)
            echo "No action taken."
            ;;
    esac
fi
