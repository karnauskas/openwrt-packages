m = Map("tailscale", translate("Tailscale"), translate("Tailscale VPN"))

s = m:section(TypedSection, "main", "Main")
s.anonymous = true

dns = s:option(Flag, "dns", "accept DNS configuration from the admin panel")
dns.rmempty = false

exit = s:option(Flag, "exit", "offer to be an exit node for internet traffic for the tailnet")
dns.rmempty = false

return m
