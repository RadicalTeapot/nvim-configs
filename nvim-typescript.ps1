# Set path to vim config folder
$env:XDG_CONFIG_HOME = Resolve-Path "./typescript";
# Set path to root vim configs folder (used by vim config files to source other configs)
$env:VIM_CONFIGS_ROOT = "C:/Users/MathiasCapdet/AppData/Local/_software/Neovim/.scripts";
# Start vim
if ($Args[0]) { 
    Start-Process "nvim-qt.exe" -NoNewWindow -ArgumentList $Args[0] -WorkingDirectory (((Get-Item $Args).Directory).FullName); 
}
else {
    Start-Process "nvim-qt.exe" -NoNewWindow
};
