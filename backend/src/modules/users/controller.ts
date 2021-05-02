// Dependencies
import {
  Controller,
  Post,
  Body,
  BadRequestException
} from '@nestjs/common';

// Services
import { UserService } from './service';

// DTO's
import { CreateUserDTO } from './dtos';

@Controller()
export class UserController {
  constructor(private readonly userService: UserService) {}

  @Post('user/create')
  async create(@Body() createUserDTO: CreateUserDTO) {
    const { username } = createUserDTO;

    const user = await this.userService.getByUsername(username);

    if (!user) {
      this.userService.create(createUserDTO);

      return {
        success: true,
        data: null,
        error: null,
      };
    }

    throw new BadRequestException({
      success: false,
      data: null,
      error: {
        message: 'Usuário existente.',
      },
    })
  }
}