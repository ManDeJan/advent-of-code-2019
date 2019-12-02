my @mem = lines.split(',');
my $pc = 0;
@mem[1, 2] = 12, 2;

until @mem[$pc] == 99 {
    given @mem[$pc] {
        when 1 { @mem[@mem[$pc+3]] = @mem[@mem[$pc+1]] + @mem[@mem[$pc+2]] }
        when 2 { @mem[@mem[$pc+3]] = @mem[@mem[$pc+1]] * @mem[@mem[$pc+2]] }
    }
    $pc += 4;
}

@mem[0].say;
