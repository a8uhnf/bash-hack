echo '\'ServiceCode\',
            \'ServiceName\',
            \'SubscriberID\',' | tr -d , | awk '{ printf "%s => $req(%s),\n", $1, $1}'