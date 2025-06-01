DOTFILES_DIR="$HOME/.dotfiles"

if [[ -f "$HOME/.zshrc" && ! -L "$HOME/.zshrc" ]]; then
  echo "Existing .zshrc found, moving to .zshrc.backup"
  mv "$HOME/.zshrc" "$HOME/.zshrc.backup"
fi

[[ -L "$HOME/.zshrc" ]] && rm "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

echo "Symlinked ~/.zshrc to ~/.dotfiles/zshrc"
