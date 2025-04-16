SPACESHIP_N11="#BF616A"
SPACESHIP_N12="#D08770"
SPACESHIP_N13="#EBCB8B"
SPACESHIP_N14="#A3BE8C"

spaceship_customuser() {
    local _me="%B%U%{$fg[cyan]%}richard%b%u %{$fg[magenta]%}@fragile"
    spaceship::section::v4 \
        --suffix "\n" \
        "$_me"
}

spaceship add customuser

spaceship_modgit() {
    git status 2>/dev/null
    if [ $? = 0 ]; then
        local _s="$(git status -s | sed -E '/([A-Z])\s*/s// \1  /' | grep -v '\.\.\/' | sort)"
        spaceship::section::v4 \
            --color "$SPACESHIP_N11" \
            --suffix "\n" \
            "$_s"
    fi;
}

spaceship add modgit

SPACESHIP_GIT_PREFIX=""

SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_BRANCH_SUFFIX="\n"
SPACESHIP_GIT_BRANCH_COLOR="$SPACESHIP_N12"

SPACESHIP_GIT_STATUS_COLOR="$SPACESHIP_N13"
SPACESHIP_GIT_STATUS_PREFIX="\t"
SPACESHIP_GIT_STATUS_SUFFIX="\n"
SPACESHIP_GIT_STATUS_STASHED="staged "
SPACESHIP_GIT_STATUS_ADDED="added "
SPACESHIP_GIT_STATUS_MODIFIED="modified "
SPACESHIP_GIT_STATUS_AHEAD="commits "
SPACESHIP_GIT_STATUS_BEHIND="pull "

SPACESHIP_DIR_COLOR="$SPACESHIP_N14"
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_SUFFIX=" --> "

SPACESHIP_PROMPT_ORDER=(
    customuser
    git_branch
    git_status
    dir
)
