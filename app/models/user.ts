import { tracked } from '@glimmer/tracking';

export default class User {
  @tracked name: string;
  @tracked userid: string[];
  @tracked avatar: string;

  constructor({ name, userid, avatar }: { name: string; userid: string[]; avatar: string }) {
    this.name = name;
    this.userid = userid;
    this.avatar = avatar;
  }
}
