class Company < ApplicationRecord
  # has_many :stocks

  def liabilities
    assets-equity
  end

  def net_debt
    gross_debt-cash_and_cash_equivalents
  end

  def enterprise_value
    market_value-net_debt
  end

  def net_income
    first_stock.roe * equity
  end

  def net_revenue
    net_income / first_stock.net_margin
  end

  def market_value
    first_stock.price * first_stock.number_of_papers
  end

  def enterprise_value
    market_value + net_debt
  end

  def ebit
    enterprise_value/first_stock.ev_to_ebit_ratio
  end

  def ebitda
    enterprise_value/first_stock.ev_to_ebitda_ratio
  end

  private
  
  def first_stock
    stocks.first
  end
end

=begin
    EMPRESA
    pat liq
    ativos
    div bruta
    num de acoes
    disponibilidades
    
    EMPRESA
    div liq = divida bruta - disponibilidades
    passivos = ativos - pat liq [✔]
    lucro liq = roe * pat liq [✔]
    receita liq = lucro liq / margem liq [✔]
    valor de mercado = cotação * num de papeis [✔]
    ev = valor de mercado + div liq [✔]
    ebit = ev / ev/ebit [✔]
    ebitda = ev / ev/ebitda [✔]
=end
