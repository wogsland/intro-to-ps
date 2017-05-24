-- | This is the game state. This is very bare bones at present. During the
-- | workshop, you will add additional state into here to make the game
-- | more interesting.
module Game.State where
  -- import Data.Semigroup ((<>))

  -- EXERCISE SET 1 (1/2):
  data CharacterStatus = Content | Hungry | Tired

  -- EXERCISE SET 1 (2/2):
  describeCharacterStatus :: CharacterStatus -> String
  describeCharacterStatus Content = "Smiley as a clam"
  describeCharacterStatus Hungry = "Ready to kill something and eat it"
  describeCharacterStatus Tired = "Need. Sleep. Now."

  -- EXERCISE SET 2 (1/3):
  data CharacterStats = CharacterStats Int Int

  -- EXERCISE SET 2 (2/3):
  startingStats :: CharacterStats
  startingStats = CharacterStats 100 100

  -- EXERCISE SET 2 (3/3):
  healthOf :: CharacterStats -> Int
  healthOf (CharacterStats x _) = x
  strengthOf :: CharacterStats -> Int
  strengthOf (CharacterStats _ x) = x

  -- EXERCISE SET 3 (1/3):
  data Monster =
    Wolf CharacterStats
    | Ogre CharacterStats
    | Harpy CharacterStats

  -- EXERCISE SET 3 (2/3):
  bigBadWolf :: Monster
  bigBadWolf = Wolf (CharacterStats 100 100)
  fearfulOgre :: Monster
  fearfulOgre = Ogre (CharacterStats 10 1000)
  screamingHarpy :: Monster
  screamingHarpy = Harpy (CharacterStats 100 100)

  -- EXERCISE SET 3 (3/3):
  monsterStrength :: Monster -> Int
  monsterStrength (Wolf (CharacterStats _ x)) = x
  monsterStrength (Ogre (CharacterStats _ x)) = x
  monsterStrength (Harpy (CharacterStats _ x)) = x

  -- EXERCISE SET 4 (1/2)
  -- Add both playerStatus :: CharacterStatus and playerStats :: CharacterStats fields to State:
  type State = {
    playerStatus :: CharacterStatus,
    playerStats :: CharacterStats
  }

  -- EXERCISE SET 5 (1/2)
  -- Define `defeats` type:
  -- defeats :: ???

  -- EXERCISE SET 5 (2/2)
  -- Implement `defeats` with lambda:
  -- defeats = ???

  -- EXERCISE SET 6 (1/2)
  -- newtype Health = ???
  -- newtype Strength = ???

  -- EXERCISE SET 7 (2/2)
  -- type StatsModifier = ???

  -- EXERCISE SET 8 (1/2)
  -- data Inventory a b = ???

  -- EXERCISE SET 8 (1/2)
  -- isEmpty :: ???

  -- EXERCISE SET 9 (1/2)
  -- type NonPlayerCharacter = ???
  -- type Item = ???
  -- type PlayerCharacter = ???

  -- EXERCISE SET 9 (2/2)
  -- getName :: ???
  -- getName r = r.name

  -- EXERCISE SET 10 (1/3)
  -- data Location = ???

  -- EXERCISE SET 10 (2/3)
  -- data Connection = ???

  -- EXERCISE SET 10 (3/3)
  -- gameMap :: List Connection

  -- EXERCISE SET 11 (1/3)
  -- class Describable a where
  --   ???

  -- EXERCISE SET 11 (2/3)
  -- data Weapon = ???

  -- EXERCISE SET 11 (3/3)
  -- instance describableWeapon :: Describable Weapon where
  --   ???
