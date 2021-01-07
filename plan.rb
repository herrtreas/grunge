Grunge.plan do 

  act "Health Req" do
    method :get
    path "https://cat-fact.herokuapp.com/facts"

    expect status: 200
  end

end

## Grunge.plan do
## 
##   context "As a User" do
## 
##     act "Given a User" do
##       method :get
##       path "/v1/xxx"
## 
##       expect status: 200
##     end
## 
##     scene "Creating a Conversation" do
## 
##       act "Given a Profile" do
##         method :get
##         path "/v1/xxx"
## 
##         expect status: 200
##       end
## 
##     end
## 
##   end
## 
## end
