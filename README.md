<a href="https://www.buymeacoffee.com/medheeraj"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=medheeraj&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff"></a>

![Follow on Twitter](https://img.shields.io/twitter/follow/Dheerajmadhukar?style=social)
## What is this?
**KARMA_v1**
is a simple bash script automation that can talk to [Shodan](https://shodan.io) Premium API and find active IPs, ASN, Common Vulnerabilities, CVEs &amp; Open Ports, Products, Hostname, Server Details. 


## What's special about this tool?

* Powerful and flexible results via Shodan Dorks
* Only hit In-Scope IPs
* Verify each IP with SSL/TLS certificate issuer match RegEx
* Find out all ports includes well known/uncommon
* Grab all target vulnerabilities related to CVEs
* Banner grab for each IPs' server as well as version of product.


***Its (karma_v1) a bit slow due to shodan API rate limit.***


#### **This VERSION (karma_v1) limit to 1000 IPs/Results only. NEW UPDATES WILL BE ADDED SOON ;)**



## Installation
### 1. Clone the repo
 ```bash
# git clone https://github.com/Dheerajmadhukar/karma.git
```
### 2. Install shodan python module
```bash
# pip3 install shodan
```
### 3. Install JSON Parser [JQ]
```bash
# apt install jq -y
```
### 4. Install httpx [@pdiscoveryio](https://github.com/projectdiscovery/httpx) to probe the requests
```bash
# GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
```
### 5. Install Interlace [@codingo](https://github.com/codingo/Interlace.git) to multithread [Follow the codingo interlace repo instructions]
```bash
Clone https://github.com/codingo/Interlace.git & install accordingly. 
```

## Ok, how do I use it?
```bash
# cat > .token
<SHODAN_PREMIUM_API_HERE>
```
```bash
# bash karma_v1 target.tld

Output will be saved in output/target.tld-YYY-MM-DD directory
```
<h1 align="left">
  <img src="karma_v1.png" alt="Dheerajmadhukar" width="700px"></a>
  <br>
</h1>

Some example usage:

```bash
# bash karma_v1 target.tld
```
##### Requirements
- shodan python module [ pip3 install shodan ]
- jq [ apt install jq -y ]
- httpx [@pdiscoveryio](https://github.com/projectdiscovery/httpx)
- Interlace [@codingo](https://github.com/codingo/Interlace.git)
