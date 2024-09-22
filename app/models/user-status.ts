import { tracked } from '@glimmer/tracking';
import type { default as User } from './user';

export default class UserStatus {
  @tracked user: User;
  @tracked status: string;

  constructor({ status, user }: { status: string; user: User }) {
    this.status = status;
    this.user = user;
  }
}
