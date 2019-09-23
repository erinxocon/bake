source ./_common.sh

@test "confirm works" {
    timeout 1 "bake -b confirm.Bakefile secure"
}

@test "confirm --yes works" {
    bake -b confirm.Bakefile secure --yes
}

@test "confirm:secure works" {
    timeout 1 "bake -b confirm.Bakefile secure/real"
}

@test "confirm:secure --yes don't work" {
    timeout 1 "bake -b confirm.Bakefile secure/real --yes"
}
