previus_v=$(docker images --format '{{.Tag}}' cicd-test | head -n 1)

next_ver=$( echo "$previus + 0.1" | bc)

echo $next_ver

