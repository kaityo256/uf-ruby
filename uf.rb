L = 8
N = L*L

def get_root(i,t)
  while i != t[i]
    i = t[i]
  end
  i
end

def show(t,s)
  N.times do |i|
    puts if (i != 0 && i % L) == 0
    if s[i]
      printf "%02d ",get_root(i,t)
    else
      print "   "
    end
  end
  puts
end

def connect(x1, y1, x2, y2, t, s)
  return if x2 == L
  return if y2 == L
  i1 = x1 + L * y1
  i2 = x2 + L * y2
  return if !s[i1]
  return if !s[i2]
  c1 = get_root(i1, t)
  c2 = get_root(i2, t)
  if c1 < c2
    t[c2] = c1
  else
    t[c1] = c2
  end
end

def clustering(t,s)
  L.times do |y|
    L.times do |x|
      connect(x,y,x+1,y  , t, s)
      connect(x,y,x  ,y+1, t, s)
    end
  end
end

t = Array.new(N){|i| i}
s = Array.new(N){(rand < 0.5)}
clustering(t,s)
show(t,s)
