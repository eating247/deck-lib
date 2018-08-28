# Deck of cards

A nice, simple deck of cards library.

## Installation
To get started right away:
```
git clone
bundle install
pry
require './lib/deck.rb
```
`rspec` to run tests :]

## Tutorial
Create a new deck:
```
deck = Deck.new
```
Shuffle your deck!
```
deck.shuffle
```
To deal a hand of cards, just specify how many you'd like. A default hand is 5 cards.
```
deck.deal(10)
```
To find how many cards are left in your deck, just count.
```
deck.count
```
To see a card, just flip it over!
```
card = card.flip
```
If you're guessing a card, just input its rank and suit.
```
card.match?('Q', 'spades')
```

## Todos

 1. Add some type of sorting mechanism. Didn't attempt this as I believe sorting varies from game to game
 2. Expand to accommodate different card systems (tarot, hanafuda, etc). Tried to take this into consideration which is why I chose to modularize the Ranks/Suits values. I imagine that module could grow to include different customizations for different decks.
 3. Add a separate Hand class. Given the parameters of this project I chose not to implement it as I couldn't really think of any functionality apart from sorting (see #1).
 4. Gemify this!
