// Dependencies
import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class UserEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  firstName: string;

  @Column()
  lastName: string;

  @Column()
  birthdayDate: string;

  @Column()
  email: string;

  @Column()
  username: string;

  @Column()
  password: string;
}