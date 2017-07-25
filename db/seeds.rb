# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

listas =
  {
    'Ceci' => [
      'Beric Dondarion',
      'Dragón (a determinar)',
      'Eddison Tollett',
      'Litlefingher',
      'Nymeria (lobo)',
      'Nymeria Sand',
      'Obara Sand',
      'Olena Tyrell',
      'Randyll Tarly',
      'Tyene Sand'
    ],
    'Ivan' => [
      'Asha Greyjoy',
      'Brienne de Tarth',
      'Euron Greyjoy',
      'Gusano Gris',
      'Melisandre',
      'Nymeria Arena',
      'Obara Sand',
      'Sansa Stark',
      'Tormund Giantsbane',
      'Tyene Arena'
    ],
    'Fede' => [
      'Beric Dondarion',
      'Crows Eyes',
      'Edd El Penas',
      'Elaria Sand',
      'Kevan Lanister',
      'La Montaña',
      'Nymeria Sand',
      'Olena Tyrell',
      'Qyburn',
      'Robyn Arryn'
    ],
    'Liza' => [
      'Cercei',
      'Davos',
      'Edd El Penas',
      'El Perro',
      'Gilli',
      'Gosht',
      'La Montaña',
      'Litlefingher',
      'Misandei',
      'Obara Sand'
    ],
    'Noe' => [
    ],
    'Marian' => [
      'Asha Greyjoy',
      'Beric Dondarion',
      'Edd El Penas',
      'Ellaria Sand',
      'Gusano Gris',
      'Litlefingher',
      'Thoros de Myr',
      'Tormund',
      'Un caminante Blanco',
      'Viserion'
    ],
    'Pablo' => [
      'Nuevo Personaje que aparezca',
      'Cercei',
      'La Montaña',
      'El Perro',
      'Qyburn',
      'La monja Shame',
      'Davos',
      'Jorah',
      'Lyanna Mormont',
      'Theon Greyjoy'
    ]
  }

listas.each do |nombre, characters|
  list = List.create name: nombre
  characters.each do |character|
    list.characters << Character.find_or_create_by(name: character)
  end
end
