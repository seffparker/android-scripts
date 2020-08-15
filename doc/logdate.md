# logdate

Prefix current date for logging

## Usage

```
$ logdate message
[2020-08-15 19:41:36 IST] - message

$ echo "$(logdate) message"
[2020-08-15 19:42:23 IST] - message

echo -e "message1\nmessage2" | logdate
[2020-08-15 19:51:32 IST] - message1
[2020-08-15 19:51:32 IST] - message2
```
