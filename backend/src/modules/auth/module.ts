// Dependencies
import { Module } from '@nestjs/common';

// Modules
import { UserModule } from '../users';

// Controllers
import { AuthController } from './controller';

@Module({
  imports: [UserModule],
  controllers: [AuthController],
})

export class AuthModule {};