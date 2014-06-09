class TestsuitesController < ApplicationController
  before_action :set_testsuite, only: [:show, :edit, :update, :destroy]

  # GET /testsuites
  # GET /testsuites.json
  def index
    @testsuites = Testsuite.all
  end

  # GET /testsuites/1
  # GET /testsuites/1.json
  def show
    @testcases = Testcase.find(@testsuite.data)
  end

  # GET /testsuites/new
  def new
    @testsuite = Testsuite.new
  end

  # GET /testsuites/1/edit
  def edit
    @testcases = Testcase.all
  end

  # GET /testsuites/1/add_testcases
  def testcases
    @testcases = Testcase.all
  end

  # POST /testsuites
  # POST /testsuites.json
  def create
    @testsuite = Testsuite.new(testsuite_params)

    respond_to do |format|
      if @testsuite.save
        format.html { redirect_to @testsuite, notice: 'Testsuite was successfully created.' }
        format.json { render :show, status: :created, location: @testsuite }
      else
        format.html { render :new }
        format.json { render json: @testsuite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testsuites/1
  # PATCH/PUT /testsuites/1.json
  def update
    respond_to do |format|
      if @testsuite.update_with_data(testsuite_params)
        format.html { redirect_to @testsuite, notice: 'Testsuite was successfully updated.' }
        format.json { render :show, status: :ok, location: @testsuite }
      else
        format.html { render :edit }
        format.json { render json: @testsuite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testsuites/1
  # DELETE /testsuites/1.json
  def destroy
    @testsuite.destroy
    respond_to do |format|
      format.html { redirect_to testsuites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testsuite
      @testsuite = Testsuite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testsuite_params
      params[:testsuite][:data].collect! &:to_i if params[:testsuite][:data]
      params.require(:testsuite).permit(:title, :description, {data: []})
    end
end
