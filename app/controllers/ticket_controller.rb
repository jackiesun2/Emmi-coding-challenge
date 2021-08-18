class TicketController < ApplicationController
    before_action :set_ticket, only: [:show, :update, :destroy]

def index
    @tickets = Ticket.all
    render json: @tickets
end

def show 
    render json: @ticket
end

def create
    @new_ticket = Ticket.create(ticket_params)
    render json: @new_ticket
end

def update
    @ticket.update(ticket_params)
    render json: @ticket
end

def destroy
    @ticket.destroy
    render json: @ticket
end

private

def ticket_params
    params.require(:ticket).permit(:title, :description, :date, :open)
end

def set_ticket
    @ticket = Ticket.find_by(id: params[:id])
end

end
