import { Body, Controller, Get, Post } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }

  @Post('/inserir_dados')
  inserirDados(
    @Body()
    body: {
      ax: string;
      ay: string;
      az: string;
      type: string;
      ecg?: string;
    },
  ) {
    try {
      const { ax, ay, az, type, ecg } = body;
      console.log(body);

      if (!ax || !ay || !az || !type) {
        return { error: 'Parâmetros incompletos' };
      }

      return this.appService.salvarDados(
        type,
        parseFloat(ax),
        parseFloat(ay),
        parseFloat(az),
        parseFloat(ecg ? ecg : '0'),
      );
    } catch (error) {
      console.error('Erro ao inserir dados:', error);
      return { error: 'Erro ao processar a solicitação' };
    }
  }
}
