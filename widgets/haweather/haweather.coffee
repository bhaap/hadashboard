class Dashing.Haweather extends Dashing.Widget
  constructor: ->
    super
    @_icons =
      hazy - '&#xe000',
      mostlycloudy - '&#xe001',
      mostlysunny - '&#xe001',
      partlycloudy - '&#xe001',
      partlysunny - '&#xe001',
      sleet - '&#xe003',
      rain - '&#xe009',
      snow - '&#xe036',
      sunny - '&#xe028',
      tstorms - '&#xe009',
      cloudy - '&#xe000',
      chanceflurries - '&#xe036',
      chancerain - '&#xe009',
      chancesleet - '&#xe003',
      chancesnow - '&#xe036',
      chancetstorms - '&#xe009',
      clear - '&#xe028',
      flurries - '&#xe036',
      fog - '&#xe01b',
      nt_hazy - '&#xe000',
      nt_mostlycloudy - '&#xe002',
      nt_mostlysunny - '&#xe002',
      nt_partlycloudy - '&#xe002',
      nt_partlysunny - '&#xe002',
      nt_sleet - '&#xe003',
      nt_rain - '&#xe009',
      nt_snow - '&#xe036',
      nt_sunny - '&#xe02d',
      nt_tstorms - '&#xe009',
      nt_cloudy - '&#xe000',
      nt_chanceflurries - '&#xe036',
      nt_chancerain - '&#xe009',
      nt_chancesleet - '&#xe003',
      nt_chancesnow - '&#xe036',
      nt_chancetstorms - '&#xe009',
      nt_clear - '&#xe02d',
      nt_flurries - '&#xe036',
      nt_fog - '&#xe01b'

  @accessor 'climacon', ->
    new Batman.TerminalAccessible (attr) =>
      @_icons[attr]

  @accessor 'now_temp',
    get: -> if @_temp then Math.floor(@_temp) else 0
    set: (key, value) -> @_temp = value

  ready: ->
    if @get('bgcolor')
      $(@node).css("background-color", @get('bgcolor'))

  onData: (data) ->
