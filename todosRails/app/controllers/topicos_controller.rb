class TopicosController < ApplicationController
  # execute o set_topico antes das ações show, edit e update      - pq este método é privado
  before_action :set_topico, only: %i[ show edit update destroy ]

  def index
    @topicos = Topico.all
    # usamos o @ para possibilitar a interação entre controller e view[html.erb]
  end

  def show
    set_topico
    #@topico = Topico.find(params[:id])  - substituimos pelo set_topico para evitar repetição de código
  end

  def new
    @topico = Topico.new
  end

  def edit
    set_topico
    #@topico = Topico.find(params[:id])
  end

  def create
    # topico_params = params.require(:topico).permit(:titulo)  - substituimos pelo metodo params
    @topico = Topico.new(topico_params)
    if @topico.save
      redirect_to topico_url(@topico), notice: "Tópico criado"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    set_topico
    # topico_params = params.require(:topico).permit(:titulo)  - substituimos pelo metodo params sendo usado como parametro no if

    if @topico.update(topico_params)
      # O flash permite empurrar alguns primitivos do ruby até a proxima action q será executada(string, array e hash..)
      # e aí posso guardar dentro uma msg de sucesso pro usuario. Depois usamos lá na view

      redirect_to topico_url(@topico), notice:"Tópico atualizado!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topico.destroy
    redirect_to topicos_url, notice: "Tópico Removido"
  end

  private

  # criamos o metodo set_topico para não repetirmos código. Como os metodos edit, show e delete localizam pelo id, ficaria repetitivo
  def set_topico
    @topico = Topico.find(params[:id])
  end

  def topico_params
    params.require(:topico).permit(:titulo)
  end
end
