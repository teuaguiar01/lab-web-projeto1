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
import { UsersService } from '../users/service';

// DTO's
import { LoginDTO } from './dtos';

@Controller('auth')
export class AuthController {
  constructor(private readonly usersService: UsersService) {}

  @Post('login')
  @HttpCode(200)
  async login(@Body() loginDTO: LoginDTO) {
    const { username, password: loginDTOPassword } = loginDTO;

    const user = await this.usersService.getByUsername(username);

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