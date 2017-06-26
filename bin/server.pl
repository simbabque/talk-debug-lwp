use Dancer2;

get '/json' => sub {
    content_type 'application/json';
    return encode_json {
        foo => "bar",
    };
};

get '/xml' => sub {
    content_type 'text/xml';
    return "<foo><bar>baz</bar></foo>";
};

dance;
