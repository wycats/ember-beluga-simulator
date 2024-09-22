import users from 'discord-clone/data/users';
import UserComponent from './sidebar/user';

<template>
  <div class="sidebar">
    <div class="sidebar__top">
      <input type="text" placeholder="Find or start a conversation" />
    </div>
    <div class="sidebar__icon">
      <i class="fas fa-user-friends fa-lg"></i>
      <span>Friends</span>
    </div>
    <div class="sidebar__icon">
      <i class="fas fa-compact-disc fa-lg"></i>
      <span>Nitro</span>
    </div>
    <div class="sidebar__users">
      <div class="sidebar__usersHeader">
        <div class="sidebar__header">
          <h4>Direct messages</h4>
        </div>
        <i class="fas fa-plus sidebar__addUser"></i>
      </div>
      <div>
        {{#each users as |user|}}
          <UserComponent @user={{user}} />
        {{/each}}
      </div>
    </div>
    <div class="sidebar__profile">
      <div>
        <span class="status"></span>
        <img src="assets/beluga.jpg" alt="avatar" />
      </div>
      <div class="sidebar__profileInfo">
        <h3>Gamer</h3>
        <p>#1234</p>
      </div>
      <div class="sidebar__profileIcons">
        <i class="fas fa-microphone"></i>
        <i class="fas fa-headset"></i>
        <i class="fas fa-cog"></i>
      </div>
    </div>
  </div>
</template>
