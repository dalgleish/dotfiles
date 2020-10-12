## docker plugin patch

# delete all images, containers, cache, builds ...
alias docker-prune-all="docker system prune --all && docker image prune -a"

# delete only dangling images without tag
alias docker-delete-dangling="docker rmi $(docker images --filter "dangling=true" -q --no-trunc) --force"

# docker ps
alias dps="docker ps"

# exec bash in docker e.g. dbash web 
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; } 

# docker-compose
alias dc="docker-compose "
alias dcup="docker-compose up -d"
alias dcstop="docker-compose stop"
alias dclogs="docker-compose logs -t -f --tail 30"

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'
