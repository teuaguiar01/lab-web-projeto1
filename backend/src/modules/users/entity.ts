// Dependencies
import { Column, Entity, PrimaryColumn } from 'typeorm';

@Entity()
export class UserEntity {
  @Column()
  firstName: string;

  @Column()
  lastName: string;

  @Column()
  birthdayDate: string;

  @Column()
  email: string;

  @PrimaryColumn()
  username: string;

  @Column()
  password: string;
}