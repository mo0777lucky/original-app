import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    //const html = `<li class="comments_list"><%= comment.text %>
    //<%= link_to comment.user.nickname, user_path(comment.user.id), class: :comment_user %>
  //</li>`;
    //const comments = document.getElementById('comments');
    //const newComment = document.getElementById('comment_text');
    //comments.insertAdjacentHTML('afterbegin', html);
    //newComment.value='';
  }
});
