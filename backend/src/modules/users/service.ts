// Dependencies
import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';

// Entities
import { UserEntity } from './entity';

// DTO's
import { CreateUserDTO } from './dtos';

@Injectable()
export class UsersService {
  private readonly _userRepository: Repository<UserEntity>;

  constructor(
    @InjectRepository(UserEntity) userRepository: Repository<UserEntity>
  ) {
    this._userRepository = userRepository;
  }

  async getByUsername(username: string) {
    return await this._userRepository.findOne({ where: { username } });
  }

  async create(createUserDTO: CreateUserDTO) {
    const user = createUserDTO as UserEntity;

    await this._userRepository.save(user);
  }
}
