class TestRunsController < ApplicationController
  before_action :set_test_run, only: [:show, :edit, :update, :destroy, :revise]
  before_action :set_title, only: [:index, :show, :edit, :update, :destroy, :revise]

  # GET /test_runs
  # GET /test_runs.json
  def index
    @test_runs = TestRun.all
    @test_run = TestRun.new
  end

  # GET /test_runs/1
  # GET /test_runs/1.json
  def show
    @test_results = @test_run.test_results
  end

  # GET /test_runs/new
  def new
    @test_run = TestRun.new
  end

  # GET /test_runs/1/edit
  def edit
  end

  # POST /test_runs
  # POST /test_runs.json
  def create
    @test_run = TestRun.new(test_run_params)

    respond_to do |format|
      if @test_run.save
        format.html { redirect_to @test_run, notice: 'Test run was successfully created.' }
        format.json { render :show, status: :created, location: @test_run }
        format.js   { render action: 'show', status: :created, location: @test_run }
      else
        format.html { render :new }
        format.json { render json: @test_run.errors, status: :unprocessable_entity }
        format.js   { render json: @test_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_runs/1
  # PATCH/PUT /test_runs/1.json
  def update
    respond_to do |format|
      if @test_run.update(test_run_params)
        format.html { redirect_to @test_run, notice: 'Test run was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_run }
      else
        format.html { render :edit }
        format.json { render json: @test_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /test_runs/1
  # GET /test_runs/1.json
  def revise
    respond_to do |format|
      if @test_run.revise_testcases
        format.html { redirect_to @test_run, notice: 'Test run was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_run }
      else
        format.html { render :edit }
        format.json { render json: @test_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_runs/1
  # DELETE /test_runs/1.json
  def destroy
    @test_run.destroy
    respond_to do |format|
      format.html { redirect_to test_runs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_run
      @test_run = TestRun.find(params[:id])
    end

    def set_title
      @title = "Test Run"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_run_params
      params.require(:test_run).permit(:testsuite_id)
    end
end
