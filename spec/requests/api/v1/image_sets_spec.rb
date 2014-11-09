describe "Image Sets API" do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it "lists all image sets" do
      FactoryGirl.create_list(:image_set, 10)

      get '/api/v1/image-sets'

      expect(response).to be_success
      expect(json['image_sets'].length).to eq 10
    end
  end

  describe '#show' do
    it "shows the specified image set" do
      image_set = FactoryGirl.create(:image_set)

      get "/api/v1/image-sets/#{image_set.id}"

      expect(response).to be_success
      expect(json['id']).to eq image_set.id
    end
  end

  describe '#create' do

    image_set = FactoryGirl.attributes_for(:image_set)

    context 'when signed in' do
      post :create, image_set: image_set

      expect(response).to be_success
    end
    context 'when not signed in' do
      post :create, image_set: image_set

      expect(response).to be_success
    end
  end

end