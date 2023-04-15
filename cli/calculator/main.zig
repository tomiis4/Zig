const std = @import("std");

fn getInput() !i64 {
    const stdin = std.io.getStdIn().reader();

    var buf: [10]u8 = undefined;

    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\r')) |user_input| {
        return std.fmt.parseInt(i64, user_input, 10);
    } else {
        return @as(i64, 0);
    }
}

pub fn main() !void {
    std.debug.print("Enter first value: ", .{});
    const num1 = try getInput();

    std.debug.print("Enter second value: ", .{});
    const num2 = try getInput();

    const result: i64 = num1 + num2;

    std.debug.print("The value is {}\n", .{result});
}
