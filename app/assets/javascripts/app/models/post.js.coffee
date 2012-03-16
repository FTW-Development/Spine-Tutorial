class App.Post extends Spine.Model
  @configure 'Post', 'name', 'content'
  @extend Spine.Model.Ajax

  @hasMany 'comments', 'Comment'
