describe "Images API" do



  let(:json) { JSON.parse(response.body) }

  describe '#index' do
  end

  describe '#show' do

  end

  describe '#create' do
    context 'when signed in' do

    end
    context 'when not signed in' do
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