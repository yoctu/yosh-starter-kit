printf "
    var connect=
"

if Session::check; then
    Session::read
    Json::create SESSION
fi

