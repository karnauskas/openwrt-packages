module("luci.controller.tailscale", package.seeall)

function index()
    local page

    if not nixio.fs.access("/etc/config/tailscale") then
        nxfs.writefile("/etc/config/tailscale", "")
    end

    page = entry({"admin", "vpn", "tailscale"}, cbi("tailscale/main"), _("Tailscale"))
    page.acl_depends = { "luci-app-tailscale" }
end
