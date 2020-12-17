Grunge.plan do

  context "As a User" do

    scene "Creating a Conversation" do

      act "Given a User" do
        method :get
        path "/v1/xxx"

        expect status: 200
      end

      act "Given a Profile" do
        method :get
        path "/v1/xxx"

        expect status: 200
      end

    end

  end

end
