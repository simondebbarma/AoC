require_relative '../submitter'
data = download!

# p (1 - 3)%3 * 3
# p (1 - 2)%3 * 3
# p (1 - 1)%3 * 3
# __END__
# 1 1 = 3
# 1 2 = 6
# 1 3 = 0
data.tr! 'ABCXYZ','123321'
p data.each_line.map { |l|
  x,y = l.split.map(&:to_i)

  ((x - y) % 3) * 3  + y
}.sum

exit
{
  'A' => ''
}

p data.each_line.map(&:chomp)
p data.each_line.map {
  next ' ABC'.index(data[0]) + 3 if data.tr('XYZ', 'ABC').chars.uniq.length == 2
  ans = (_1['Y'] ? 2 : _1['X'] ? 1 : 3) + (_1[{'Y'=>'A','X'=>'C','Z'=>'B'}[_1.chomp[-1]]] ? 6 : _1.chomp.gsub(' ','').tr('ABC','XYZ').chars.uniq.length == 1 ? 3 : 0)
}.sum

# 13009
exit

p data

# p 'BCA'.chars.rotate(-'XYZ'.index('X')).join
# exit
# p data.each_line.map(&:chomp).map {
#   case
#   when _1['X'] then 0 + {'A'=>3,'B'=>1,'C'=>2}[_1[0]] #BCA
#   when _1['Y'] then 3 + {'A'=>1,'B'=>2,'C'=>3}[_1[0]] #
#   when _1['Z'] then 6 + {'A'=>2,'B'=>3,'C'=>1}[_1[0]]
#   end
# }.sum
# p data.each_line.map {
#   (_1['Y'] ? {'A'=>1,'B'=>2,'C'=>3}[_1[0]] +3: _1['X'] ? {'A'=>3,'B'=>1,'C'=>2}[_1[0]] : 6 + {'A'=>2,'B'=>3,'C'=>1}[_1[0]])
# }.sum
puts data.each_line.map {
  _1.chomp!
  [_1.tr('ABCXYZ','1-31-3'), (_1['Y'] ? 2 : _1['X'] ? 1 : 3) + (_1[{'Y'=>'A','X'=>'C','Z'=>'B'}[_1.chomp[-1]]] ? 6 : _1.chomp.gsub(' ','').tr('ABC','XYZ').chars.uniq.length == 1 ? 3 : 0)]
}.map { _1.join ': ' }

# # submit! 'answer', 1
# # submit! 'answer', 2



__END__
p data.each_line.map(&:chomp).map {
  (_1['Y'] ? {'A'=>1,'B'=>2,'C'=>3}[_1[0]] +3: _1['X'] ? {'A'=>3,'B'=>1,'C'=>2}[_1[0]] : 6 + {'A'=>2,'B'=>3,'C'=>1}[_1[0]])
}.sum
p data.each_line.map {
  (_1['Y'] ? {'A'=>1,'B'=>2,'C'=>3}[_1[0]] +3: _1['X'] ? {'A'=>3,'B'=>1,'C'=>2}[_1[0]] : 6 + {'A'=>2,'B'=>3,'C'=>1}[_1[0]])
}.sum
# submit! data.each_line.map {
#   (_1['Y'] ? 2 : _1['X'] ? 1 : 3) + (_1[{'Y'=>'A','X'=>'C','Z'=>'B'}[_1.chomp[-1]]] ? 6 : _1.chomp.gsub(' ','').tr('ABC','XYZ').chars.uniq.length == 1 ? 3 : 0)
# }.sum

# # submit! 'answer', 1
# # submit! 'answer', 2

