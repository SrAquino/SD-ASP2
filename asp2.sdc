# Criando um clock virtual chamado "virtclk"

create_clock -name clock -period 0.101 [get_ports {clock}] 

# Configurando delay de entrada e de saida

set_input_delay -clock clock 0.1 [all_inputs]

set_output_delay -clock clock 0.1 [all_outputs]