listas =
  {
    'Ceci' => [
      'Beric Dondarion',
      'Dragon (a determinar)',
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
      'Grey Worm',
      'Melisandre',
      'Nymeria Sand',
      'Obara Sand',
      'Sansa Stark',
      'Tormund Giantsbane',
      'Tyene Sand'
    ],
    'Fede' => [
      'Beric Dondarion',
      'Crows Eyes',
      'Eddison Tollett',
      'Elaria Sand',
      'Gregor Clegane',
      'Nymeria Sand',
      'Olena Tyrell',
      'Qyburn',
      'Randy Tarly',
      'Robyn Arryn'
    ],
    'Liza' => [
      'Cercei Lannister',
      'Davos Seaworth',
      'Eddison Tollett',
      'Gilli',
      'Gosht',
      'Gregor Clegane',
      'Litlefingher',
      'Missandei',
      'Obara Sand',
      'Sandor Clegane'
    ],
    'Noe' => [
      'Ellaria Sand',
      'Gregor Clegane',
      'Grey Worm',
      'Jaime Lannister',
      'Jaqen H`ghar',
      'Jorah Mormont',
      'Litlefingher',
      'Missandei',
      'Ollena Tyrell',
      'Theon Greyjoy'
    ],
    'Marian' => [
      'Asha Greyjoy',
      'Beric Dondarion',
      'Eddison Tollett',
      'Ellaria Sand',
      'Grey Worm',
      'Litlefingher',
      'Thoros de Myr',
      'Tormund Giantsbane',
      'White Walker',
      'Viserion'
    ],
    'Pablo' => [
      'Cercei Lannister',
      'Davos Seaworth',
      'Gregor Clegane',
      'Jorah Mormont',
      'Lyanna Mormont',
      'Ned Umber',
      'Sandor Clegane',
      'Qyburn',
      'Unella',
      'Theon Greyjoy'
    ]
  }

listas.each do |nombre, characters|
  list = List.create name: nombre
  characters.each do |character|
    list.characters << Character.find_or_create_by(name: character)
  end
end
