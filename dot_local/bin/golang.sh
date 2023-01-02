export GOPATH="${HOME}/ghq"

typeset -gU path
path=(
    ${GOPATH}/bin
    $path
)

export GOROOT=$(go env GOROOT)
