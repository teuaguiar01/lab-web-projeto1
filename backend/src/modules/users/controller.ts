// Dependencies
import {
  Controller,
  Post,
  Body,
  HttpCode,
  UnauthorizedException,
  NotFoundException,
  InternalServerErrorException
} from '@nestjs/common';

// Services
import { UserService } from './service';

// DTO's
import { LoginDTO, CreateUserDTO } from './dtos';

@Controller()
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Post('login')
  @HttpCode(200)
  async login(@Body() loginDTO: LoginDTO) {
    const { username, password: loginDTOPassword } = loginDTO;

    const user = await this.userService.getByUsername(username);

    if (user) {
      const { id, password } = user;

      if (loginDTOPassword === password) {
        return {
          success: true,
          data: {
            id,
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

  @Post('user/create')
  async create(@Body() createUserDTO: CreateUserDTO) {
    try {
      this.userService.create(createUserDTO);

      return {
        success: true,
        data: null,
        error: null,
      };
    } catch(error) {
      throw new InternalServerErrorException({
        success: false,
        data: null,
        error: {
          message: 'Oops... Houve algum problema. Tente novamente mais tarde.'
        },
      })
    }
  }
}