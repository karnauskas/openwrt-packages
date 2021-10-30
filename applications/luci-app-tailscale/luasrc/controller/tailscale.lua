module("luci.controller.tailscale", package.seeall)

function index()
    page = entry({"admin", "vpn", "tailscale"}, alias("admin", "vpn", "tailscale", "main"), _("Tailscale"))
    page.dependent = true
    page.acl_depends = { "luci-app-tailscale" }
end
