echo 'htmls' | grep id= | awk '{ printf "%s\n", $2 }'
echo 'id="service-name"
    id="service-type"
    class="col-md-4"
    class="input-group
    <input
    id="appointment-hour"
    id="appointment-minute"
    id="appointment-half"
    id="assigned-to"
    id="address"
    id="city"
    id="state"
    id="zip"' | tr '=' ' '

echo 'id "service-name"
    id "service-type"
    class "col-md-4"
    class "input-group
    <input
    id "appointment-hour"
    id "appointment-minute"
    id "appointment-half"
    id "assigned-to"
    id "address"
    id "city"
    id "state"
    id "zip"' | tr '"' '\'' | awk '{ printf "%s => \'\',\n", $2}' | pbcopy