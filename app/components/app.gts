import Sidebar from './sidebar';

<template>
  <div class="servers">
    <div class="logo">
      <img src="assets/logo.jpg" alt="Discord" />
    </div>
    <div class="server-logo">
      <span class="message__count">8</span>
      <img src="assets/server1.jpg" alt="server" />
    </div>
    <div class="server-logo">
      <span class="message__count">50</span>
      <img src="assets/server2.jpg" alt="server" />
    </div>
    <div class="server-logo">
      <span class="message__count">120</span>
      <img src="assets/server3.jpg" alt="server" />
    </div>
    <div class="server-logo">
      <span class="message__count">20</span>
      <img src="assets/server4.jpg" alt="server" />
    </div>
    <div class="server-logo">
      <span class="message__count">25</span>
      <img src="assets/server5.jpg" alt="server" />
    </div>
  </div>

  <Sidebar />

  <div class="chat">
    <div>
      <div class="chatHeader">
        <div class="chatHeader__left">
          <span class="chatHeader__Dm">@</span>
          <h3>ManInBlack</h3>
        </div>
        <div class="chatHeader__right">
          <i class="fas fa-phone-volume fa-lg"></i>
          <i class="fas fa-video fa-lg"></i>
          <i class="fas fa-thumbtack fa-lg"></i>
          <i class="fas fa-user-plus fa-lg"></i>

          <div class="search">
            <input type="text" placeholder="search" />
            <i class="fas fa-search fa-lg"></i>
          </div>
          <i class="fas fa-inbox fa-lg"></i>
          <i class="fas fa-question-circle fa-lg"></i>
        </div>
      </div>
    </div>
    <div class="chat__messages">
      <div class="message">
        <img src="assets/user3.jpg" alt="avatar" />
        <div class="message__info">
          <h4>
            ManInBlack
            <span class="message__timestamp">04/28/2022</span>
          </h4>
          <p>Hello</p>
        </div>
      </div>
    </div>

    <div class="chat__input">
      <i class="fas fa-plus-circle fa-lg"></i>
      <form>
        <input class="sendMessage" type="text" placeholder="send message" />
        <button class="chat__inputButton" type="submit">Send</button>
      </form>
      <div class="chat__inputIcons">
        <i class="fas fa-gift fa-lg"></i>
        <i class="fas fa-file-image fa-lg"></i>
        <i class="fas fa-laugh fa-lg"></i>
      </div>
    </div>
  </div>
</template>
