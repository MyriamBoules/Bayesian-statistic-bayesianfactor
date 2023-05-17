b.a=1
b.b=9
c=0
n=5
g1=gamma(b.a+b.b)
g2=(gamma(b.a)*gamma(b.b))
function1=function(x){
  
      out=(x^(b.a-1))*((1-x)^(b.b-1))*(g1/g2)
    
}  
y=integrate(function1,lower = 0,upper = 0.1)
p_h0=y$value
p_h0
p_ha=1-p_h0
p_ha
function2=function(x){
  out=(1-x)^5
}
multip=function(a,b){
  force(a)
  force(b)
  function(x){
    a(x)*b(x)
  }
}
post=multip(function1,function2)
y2=integrate(post,lower = 0,upper = 0.1)
p_h0_x=y2$value
p_h0_x
p_ha_x=1-p_h0_x
p_ha_x
b_f=(p_h0_x/p_ha_x)*(p_h0/p_ha)
b_f
if(b_f>1){
  print('dont reject h0')
  
}else{
  print('reject h0')
}


