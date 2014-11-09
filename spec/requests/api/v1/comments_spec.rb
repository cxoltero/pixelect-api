describe "Comments API" do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it "lists all comments in image set" do
      image_set = FactoryGirl.create(:image_set)

      FactoryGirl.create_list(:comment, 10)

      get "/api/v1/image-sets/#{image_set.id}/comments"

      expect(response).to be_success
      expect(json['comments'].length).to eq 10
    end
  end

  describe '#show' do
    it "shows the specified comment" do
      comment = FactoryGirl.create(:comment)

      get "/api/v1/image-sets/#{comment.image_set.id}/comments/#{comment.id}"

      expect(response).to be_success
      expect(json['id']).to eq comment.id
    end
  end

  describe '#create' do

    comment = FactoryGirl.create(comment)

    context 'when signed in' do
      post :create, comment: comment
      expect(response).to be_success
    end
    context 'when not signed in' do
      post :create, comment: comment
      expect(response).to respond_with 401
    end
  end

  describe '#update' do
    context 'when signed in' do

    end
    context 'when not signed in' do
      expect(response).to respond_with 401
    end
  end

  describe '#delete' do
    context 'when signed in' do

    end
    context 'when not signed in' do
      expect(response).to respond_with 401
    end
  end

end