import Component from '@glimmer/component';
import type User from 'discord-clone/models/user';
import styles from './user-style.module.css';

interface Args {
  user: User;
}

/**
 * @extends {Component<{user: import('discord-clone/models/user').default}>}
 */
// eslint-disable-next-line ember/no-empty-glimmer-component-classes
export default class UserComponent extends Component<Args> {
  <template>
    <div class="sidebar__user">
      <div>
        <span class="status"></span>
        <img class={{styles.user}} src="/assets/images/{{@user.avatar}}" alt="avatar" />
      </div>
      <h4>{{@user.name}}</h4>
    </div>
  </template>
}
