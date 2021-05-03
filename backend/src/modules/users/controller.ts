// Dependencies
import {
  Controller,
  Post,
  Body,
  BadRequestException
} from '@nestjs/common';

// Services
import { UsersService } from './service';

// DTO's
import { CreateUserDTO } from './dtos';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post()
  async create(@Body() createUserDTO: CreateUserDTO) {
    const { username } = createUserDTO;

    const user = await this.usersService.getByUsername(username);

    if (!user) {
      this.usersService.create(createUserDTO);

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