// Dependencies
import {
  Controller,
  Post,
  Body,
  InternalServerErrorException
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