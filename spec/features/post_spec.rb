require "rails_helper"

describe "navigate" do
    describe "index" do
      it "can be reached successfully" do
        visit posts_path
        expect(page.status_code).to eq(200)
      end

      it "should have content post" do
        visit posts_path
        expect(page).to have_content(/Posts/)
      end
    end

    describe "create new post" do
        before do
          user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", fisrt_name: "Jon", last_name: "Snow")
          login_as(user, :scope => :user)
          visit new_post_path
        end

        it "should have a new post route" do
            expect(page.status_code).to eq(200)
        end

        it 'can be created from new form page' do
          fill_in 'post[date]', with: Date.today
          fill_in 'post[rationale]', with: "Some rationale"
          click_on "Save"
    
          expect(page).to have_content("Some rationale")
        end
    end

      

   
end