class MissingPeopleController < ApplicationController
  before_action :set_missing_person, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /missing_people
  # GET /missing_people.json
  def index
    if params[:q].nil?
        @missing_people = MissingPerson.all
    else
        @missing_people = MissingPerson.find_by_fuzzy_full_name(params[:q]);
    end
  end
  # GET /missing_people/1
  # GET /missing_people/1.json
  def show
  end

  # GET /missing_people/new
  def new
    @missing_person = MissingPerson.new
  end

  # GET /missing_people/1/edit
  def edit
  end

  # POST /missing_people
  # POST /missing_people.json
  def create
    input_json = params[:data]
    json = JSON.parse(input_json)

    @missing_person = MissingPerson.new
    @submitter = Submitter.new
    @submitter.first_name = json["submitter"]["first_name"]
    @submitter.middle_name = json["submitter"]["middle_name"]
    @submitter.last_name = json["submitter"]["last_name"]
    @submitter.phone_number = json["submitter"]["phone"]
    @submitter.email = json["submitter"]["email"]
    @submitter.save!

    @missing_person.found = false
    @missing_person.status = ""
    @missing_person.first_name = json["first_name"]
    @missing_person.middle_name = json["middle_name"]
    @missing_person.last_name = json["last_name"]
    @missing_person.age = json["age"]
    @missing_person.height = json["height"]
    @missing_person.weight = json["weight"]
    @missing_person.sex = json["sex"]
    @missing_person.hair_color = json["hair_color"]
    @missing_person.eye_color = json["eye_color"]
    @missing_person.race = json["race"]
    @missing_person.description = json["description"]
    @missing_person.initial_location_lat = json["initial_location"]["lat"]
    @missing_person.initial_location_long = json["initial_location"]["long"]
    @missing_person.found_location_lat = nil
    @missing_person.found_location_long = nil
    @missing_person.submitter_id = @submitter.id

    @missing_person.save!

    json["pictures"].each do |photo|
      @new_photo = Photo.new
      @new_photo.missing_person_id = @missing_person.id
      @new_photo.mobile = photo["mobile"]
      @new_photo.web = photo["web"]
      @new_photo.thumb = photo["thumb"]
      @new_photo.save!
    end

    respond_to do |format|
      if @missing_person.valid?
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @missing_person }
      else
        format.html { render action: 'new' }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /missing_people/1
  # PUT /missing_people/1.json
  def update
    input_json = params[:data]
    json = JSON.parse(input_json)

    @missing_person = MissingPerson.find(params[:id])
    @missing_person.found = json["found"]
    @missing_person.status = json["status"]
    @missing_person.found_location_lat = json["found_location"]["lat"]
    @missing_person.found_location_long = json["found_location"]["long"]

    respond_to do |format|
      if @missing_person.save!
        format.html { redirect_to @missing_person, notice: 'Missing person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missing_people/1
  # DELETE /missing_people/1.json
  def destroy
    @missing_person.destroy
    respond_to do |format|
      format.html { redirect_to missing_people_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missing_person
      @missing_person = MissingPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def missing_person_params
      params.require(:missing_person).permit(:found, :status, :first_name, :middle_name, :last_name, :age, :height, :weight, :sex, :hair_color, :eye_color, :race, :description, :initial_location_lat, :initial_location_long, :found_location_lat, :found_location_long, :submitter_id)
    end
end
