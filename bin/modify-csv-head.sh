cat ~/Downloads/Provider\ Numbers\ Daily.csv | head -n 1 | tr -d ' '
cat ~/Downloads/Provider\ Numbers\ Daily.csv | head -n 1 | tr ',' '\n' | tr -d ' ' | tr -d '\"' | sed 's/Progressnote/ProgressNote/' | awk '{ printf "\'%s\',\n", $1 }'

echo '| Provider        | varchar(255)     | YES  |     | NULL    |                |
    | Facility        | varchar(255)     | YES  |     | NULL    |                |
    | PatientType     | varchar(255)     | YES  |     | NULL    |                |
    | Scheduled       | int(11)          | YES  |     | NULL    |                |
    | Show            | int(11)          | YES  |     | NULL    |                |
    | Flags           | int(11)          | YES  |     | NULL    |                |
    | Discharge       | int(11)          | YES  |     | NULL    |                |
    | AuthPaperwork   | int(11)          | YES  |     | NULL    |                |
    | NoShow          | int(11)          | YES  |     | NULL    |                |
    | Rescheduled     | int(11)          | YES  |     | NULL    |                |
    | PatientCancel   | int(11)          | YES  |     | NULL    |                |
    | ClinicCancel    | int(11)          | YES  |     | NULL    |                |
    | ProgressNote    | int(11)          | YES  |     | NULL    |                |
    | ProviderCancel  | int(11)          | YES  |     | NULL    |                |
    | ProgressNoteDue | int(11)          | YES  |     | NULL    |                |
    | NoStatus        | int(11)          | YES  |     | NULL    |                |
    | New             | int(11)          | YES  |     | NULL    |                |
    | ServiceDate     | datetime         | YES  |     | NULL    |                |
    | SubscriberID    | int(11)          | NO   |     | NULL    |                |' | awk '{ printf "\'%s\' => $d[\'%s\']\n", $2, $2}'
