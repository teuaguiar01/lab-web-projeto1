// Dependencies
import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

// Modules
import { UsersModule, AuthModule } from './modules';

// Entities
import { UserEntity } from './modules/users/entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'sqlite',
      database: 'database.db',
      entities: [UserEntity],
      synchronize: true,
    }),
    UsersModule,
    AuthModule,
  ],
})

export class AppModule {}
