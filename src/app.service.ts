import { Injectable } from '@nestjs/common';
import { PrismaService } from './prisma/prisma.service';

@Injectable()
export class AppService {
  constructor(private prisma: PrismaService) {}

  getHello(): string {
    return 'Hello World!';
  }

  async salvarDados(
    type: string,
    eixo_x: number,
    eixo_y: number,
    eixo_z: number,
  ) {
    if (type == 'pe_direito') {
      const novoRegistro: Awaited<
        ReturnType<typeof this.prisma.pe_direito.create>
      > = await this.prisma.pe_direito.create({
        data: {
          eixo_x,
          eixo_y,
          eixo_z,
        },
      });
      return { success: true, data: novoRegistro };
    } else if (type == 'pe_esquerdo') {
      const novoRegistro = await this.prisma.pe_esquerdo.create({
        data: {
          eixo_x,
          eixo_y,
          eixo_z,
        },
      });
      return { success: true, data: novoRegistro };
    } else if (type == 'mao_direita') {
      const novoRegistro = await this.prisma.mao_direita.create({
        data: {
          eixo_x,
          eixo_y,
          eixo_z,
        },
      });
      return { success: true, data: novoRegistro };
    } else if (type == 'mao_esquerda') {
      const novoRegistro = await this.prisma.mao_esquerda.create({
        data: {
          eixo_x,
          eixo_y,
          eixo_z,
        },
      });
      return { success: true, data: novoRegistro };
    } else {
      return { error: `Tipo '${type}' inválido` };
    }
  }
}
