<necro-list>
  <div class="col-md-4 necro-list" each={ players }>
    <h1>
      { name }
      <span class="label label-default">{ total }</span>
    </h1>

    <ul class='list-group'>
      <li class={'list-group-item': true, alive: alive, death: !alive} each={characters}>
        <a onClick={toggleLive}>{name}</a>
        <img src='/alive_token.png' if={alive}>
        <img src='/death_token.png' if={!alive}>
      </li>
    </ul>
  </div>

  <script>
    this.players = []

    let self = this

    this.on('mount', function(){
      $.get( '/lists.json', function( data ) { self.update({players: data}) })
    })

    toggleLive(e){
      let item = e.item
      item.alive = !item.alive
      $.get( '/characters/' + item.id + '/toggle_live', function( data ) {
        $.get( '/lists.json', function( data ) { self.update({players: data}) })
      })
    }
  </script>
</necro-list>
