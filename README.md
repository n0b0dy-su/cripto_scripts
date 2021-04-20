# Scripts for crypto stuff

Shell scripts for consult data about cryptocurrencies

## cripto_query: 

It's a script that uses the [Bitso API](https://bitso.com/api_info?shell#ticker) to conlsult data from specified book

```json
{
	"success": true,
	"payload": {
		"high": "28.9899",
		"last": "27.8970",
		"created_at": "2021-04-20T23:28:57+00:00",
		"book": "xrp_mxn",
		"volume": "5582769.23662053",
		"vwap": "26.2323678573",
		"low ": "23.5000 ",
		"ask ": "27.8999 ",
		"bid ": "27.6215 ",
		"change_24 ": "1.6572 "
	}
}
```

**Script requeriments:** Please install [jq](https://linuxhint.com/bash_jq_command/).

**To Use It:** Just execute the script with the book that you want as a parameter 

Example

```bash
./cripto_query.sh xrp_mxn

# Output
xrp_mxn -> change: 1.8395 · price: $27.9696
```

If the Response is BAD the output is `NO DATA`
