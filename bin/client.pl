use Dancer2;
use LWP::UserAgent;


get '/json' => sub {
    my $ua = LWP::UserAgent->new;
    my $res = $ua->get("http://localhost:5001/json");
    return $res->decoded_content;
};

get '/xml' => sub {
    my $ua = LWP::UserAgent->new;
    my $res = $ua->get("http://localhost:5001/xml");
    return $res->decoded_content;
};

dance;
