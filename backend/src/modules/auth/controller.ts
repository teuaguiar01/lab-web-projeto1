// Dependencies
import {
  Controller,
  Post,
  Body,
  HttpCode,
  UnauthorizedException,
  NotFoundException
} from '@nestjs/common';

// Services
import { UserService } from '../users/service';

// DTO's
import { LoginDTO } from './dtos';

@Controller()
export class AuthController {
  constructor(private readonly userService: UserService) {}

  @Post('login')
  @HttpCode(200)
  async login(@Body() loginDTO: LoginDTO) {
    const { username, password: loginDTOPassword } = loginDTO;

    const user = await this.userService.getByUsername(username);

    if (user) {
      const { password } = user;

      if (loginDTOPassword === password) {
        return {
          success: true,
          data: {
            username,
          },
          error: null,
        };
      }

      throw new UnauthorizedException({
        success: false,
        data: null,
        error: {
          message: 'Credenciais inválidas.',
        },
      })
    }

    throw new NotFoundException({
      success: false,
      data: null,
      error: {
        message: 'Usuário não encontrado.',
      },
    })
  }
}