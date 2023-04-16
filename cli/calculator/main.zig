const std = @import("std");

fn getInput() !i64 {
    const stdin = std.io.getStdIn().reader();

    var buf: [10]u8 = undefined;

    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        const line = std.mem.trimRight(u8, user_input[0..], "\r\n");

        return std.fmt.parseInt(i64, line, 10);
    } else {
        return @as(i64, 0);
    }
}

fn divide(a: i64, b: i64) i64 {
    return @divTrunc(a, b);
}

pub fn main() !void {
    std.debug.print("Enter first value: ", .{});
    var num1 = try getInput();

    std.debug.print("Enter second value: ", .{});
    var num2 = try getInput();

    std.debug.print("\nSelect operation:\n1) Addition\n2) Subtraction\n3) Multiplication\n4) Division\n\n", .{});
    std.debug.print("Operation: ", .{});
    const operation = try getInput();
    var result: i64 = 0;

    switch (operation) {
        1 => result = num1 + num2,
        2 => result = num1 - num2,
        3 => result = num1 * num2,
        4 => result = divide(num1, num2),
        else => std.debug.panic("\nIncorrect operation {}", .{operation}),
    }

    std.debug.print("\nThe result is {}\n", .{result});
}
