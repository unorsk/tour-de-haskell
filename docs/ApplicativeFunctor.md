## Applicative Functors

```

class Functor f => Applicative f where
  pure  :: a -> f a
  (<*>) :: f(a -> b) -> f a -> f b

```

###  Example: Maybe

```

instance Applicative Maybe where
  pure x = Just x
  Nothing   <*> mx = Nothing
  (Just g)  <*> mx = fmap g mx

```

### Example: Errors handling

```
> pure (+) <*> Just 1 <*> Just 2
Just 3
```

### Example: Lists

```
instance Applicative [] where
  pure l = [l]
  gs <*> xs = [g x | g <- gs, x <- xs]
```