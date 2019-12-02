my @initial_mem = lines.split(',');

for 0..99 X 0..99 -> ($noun, $verb) {
    my @mem = @initial_mem;
    @mem[1, 2] = $noun, $verb;
    my $pc = 0;

    until @mem[$pc] == 99 {
        given @mem[$pc] {
            when 1 { @mem[@mem[$pc+3]] = @mem[@mem[$pc+1]] + @mem[@mem[$pc+2]] }
            when 2 { @mem[@mem[$pc+3]] = @mem[@mem[$pc+1]] * @mem[@mem[$pc+2]] }
        }
        $pc += 4;
    }

    last if @mem[0] == 19690720;
    LAST { say 100 * $noun + $verb }
}
