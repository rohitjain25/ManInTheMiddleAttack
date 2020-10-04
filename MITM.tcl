#create network simulator
set ns [new Simulator]
#create trace file
set tf [open lanout.tr w]
$ns trace-all $tf
#create nam file
set nf [open namfile1.nam w]
$ns namtrace-all $nf
#create 4 nodes give color red
set n0 [$ns node]
$n0 color "green"
set n1 [$ns node]
$n1 color "green"
set n2 [$ns node]
$n2 color "green"
#create node and give color blue
set n3 [$ns node]
$n3 color "blue"
set n4 [$ns node]
$n4 color "blue"
set n5 [$ns node]
$n5 color "blue"
#create attacker nod
set n6 [$ns node]
$n6 color "red"
#creation of LAN
$ns make-lan "$n0 $n1 $n2" 100Mb 30ms LL Queue/DropTail Mac/802_3
$ns make-lan "$n3 $n4 $n5" 100Mb 30ms LL Queue/DropTail Mac/802_3
#create a duplex link between 3 and 4
$ns duplex-link $n2 $n6 10Mb 1ms DropTail
$ns duplex-link $n6 $n5 10Mb 1ms DropTail
#set error rate
set err [new Error Model]
$ns loss model $err $n6 $n5
$err set rate_ 0.2
#create udp agent
set udp [new Agent/UDP]
$ns attach-agent $n0 $udp
#create null agent
set null [new Agent/Null]
$ns attach-agent $n3 $null
#create virtual connection
$ns connect $udp $null
#create application
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
#start the traffic
$ns at 0.5 "$cbr start"
$ns at 5.5 "finish"
#finish procedure
proc finish { } {
global ns nf tf
$ns flush-trace
close $nf
close $tf
exec nam namfile1.nam &
exec gedit lanout.tr &
exit 0
}
$ns run 