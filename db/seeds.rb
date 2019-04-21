listas =
  {
    'Ceci' => [
      'Viserion Zombie',
      'Rhaegal',
      'Ghost',
      'Nymeria',
      'Euron Greyjoy',
      'Qyburn',
      'The Mountain',
      'Beric Dondarion',
      'Varys',
      'Melisandre'
    ],
    'Ivan' => [
      'Jaime Lannister',
      'The Mountain',
      'The Hound',
      'Arya Stark',
      'Cercei Lannister',
      'Euron Greyjoy',
      'Night`s King',
      'Grey Worm',
      'Brienne de Tarth',
      'Jon Snow'
    ],
    'Fede' => [
      'Cercei Lannister',
      'Euron Greyjoy',
      'Viserion Zombie',
      'Night`s King',
      'Qyburn',
      'The Mountain',
      'Varys',
      'Melisandre',
      'Beric Dondarion',
      'Jorah Mormont'
    ],
    'Liza' => [
      'Eddison Tollett',
      'Cercei Lannister',
      'Jaime Lannister',
      'Tormund Giantsbane',
      'Gosht',
      'Euron Greyjoy',
      'Melisandre',
      'Jorah Mormont',
      'Tyrion Lannister',
      'Arya Stark'
    ],
    'Noe' => [
      'The Mountain',
      'Grey Worm',
      'Jaime Lannister',
      'Jaqen H`ghar',
      'Jorah Mormont',
      'Missandei',
      'Theon Greyjoy'
    ],
    'Marian' => [
      'Cercei Lannister',
      'Jaime Lannister',
      'Tyrion Lannister',
      'Qyburn',
      'The Mountain',
      'Eddison Tollett',
      'Viserion Zombie',
      'Night`s King',
      'Beric Dondarion',
      'Podrick Payne'
    ],
    'Pablo' => [
      'Ned Stark',
      'Cercei Lannister',
      'Davos Seaworth',
      'The Mountain',
      'Jorah Mormont',
      'Lyanna Mormont',
      'Ned Umber',
      'The Hound',
      'Qyburn',
      'Theon Greyjoy'
    ]
  }

listas.each do |nombre, characters|
  list = List.create name: nombre
  characters.each do |character|
    list.characters << Character.find_or_create_by(name: character)
  end
end
