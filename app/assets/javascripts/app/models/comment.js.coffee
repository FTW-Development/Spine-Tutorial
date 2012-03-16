class App.Comment extends Spine.Model
  @configure 'Comment', 'user', 'text'
  @extend Spine.Model.Ajax