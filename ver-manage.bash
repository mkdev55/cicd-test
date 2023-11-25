previus_v=$(docker images --format '{{.Tag}}' cicd-test | head -n 1)

if [ z "$previus_v"]; then
    echo "Variable 't' is null or unset."
    previus=1.0
fi


next_ver=$( echo "$previus + 0.1" | bc)

echo $next_ver >> version.txt

