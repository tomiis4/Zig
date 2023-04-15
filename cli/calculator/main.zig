const fmt = std.fmt;
const std = @import("std");
const printf = std.debug.print;

pub fn main() !void {
    const stdin = std.io.getStdIn();

    printf("Calculator - Zig\n", .{});

    var line_buf: [20]u8 = undefined;

    const amt = try stdin.read(&line_buf);
    if (amt == line_buf.len) {
        printf("Input too long.\n", .{});
    }
    const line = std.mem.trimRight(u8, line_buf[0..amt], "\r\n");

    const guess = fmt.parseUnsigned(u8, line, 10) catch {
        printf("Invalid number.\n", .{});
    };

    printf("%d", guess);
}
