const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    zine.website(b, .{
        .title = "gasinfinity",
        .host_url = "https://gasinfinity.dev",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .assets_dir_path = "assets",
        .static_assets = &.{
            "CNAME",

            // Fonts referenced by css
            "fonts/Oxanium-VariableFont_wght.ttf",
        },
        .debug = true,
    });
}
