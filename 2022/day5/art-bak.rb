1.tap { R=3 }
p 1 & . +1
p R
__END__
$stdin = open 'day5.txt'

t=(o = $stdin
  .gets("\n\n")
  .lines[..-3]
  .map{_1.scan(/.(.)../m).flatten}
  .transpose
  .map{_1.grep_v ?\s}
).map(&:dup)

$<.map{
  /(\d+) from (\d) to (\d)/=~_1
  o[x=$3.to_i-1]+=o[y=$2.to_i-1].shift z=$1.to_i
  t[x].prepend *t[y].shift(z)
}

p o.map{_1[0]}*''
p t.map{_1[0]}*''

__END__

    ###################################
  ##  ##  ##  ##  ##  ##  ##  ##  ##  ##
#########################################
   #   #                 ##   ##   #####
   #   #                ########   #####
   #   #                  ######   
    ###                   ######   
     #                    ######   
 #########                ######    
 #########                ######    
 #########                ######    
                          ######    
                          ######    
                          ######        
                          ######        
                          ######        
                          ######        
                       ############    
                      ##############    
##########################################
