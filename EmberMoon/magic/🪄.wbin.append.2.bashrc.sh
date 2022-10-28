# /root/.bashrc

if [ "$color_prompt" = yes ]; then
    PS1='🖴 [${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m]🥞 '
else    
    PS1='🖴 [${debian_chroot:+($debian_chroot)}\u@\h:]\w🥞 '
fi  
unset color_prompt force_color_prompt