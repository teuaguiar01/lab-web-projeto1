// Dependencies
import { Module } from '@nestjs/common';

// Modules
import { UsersModule } from '../users';

// Controllers
import { AuthController } from './controller';

@Module({
  imports: [UsersModule],
  controllers: [AuthController],
})

export class AuthModule {};