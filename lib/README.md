# `lib`

This directory includes supplementary files for Markcop. This file includes an overview of how to navigate and edit these.

## `dictionary`

[`dictionary`](dictionary) contains the supplemental dictionary that Markcop uses for spell checking. Markcop uses `aspell` for spell checking and, as a result, the dictionary must follow `aspell`'s required format.

The first line tells `aspell` what the dictionary is for. Every line that follows is an alphabetically sorted list of words to include in the dictionary.

If a word is lowercase, `aspell` considers both a lowercase and uppercase version of that word valid. Example: adding `advisor` allows both `advisor` and `Advisor` to be considered correct.

If a word is uppercase, `aspell` assumes that only the uppercase version of the word is allowed. Example: adding `Airbnb` only allows `Airbnb` to be considered correct, `airbnb` is wrong.

### Adding a New Word to the Dictionary

Run the following command in this directory, replacing `ORPHEUS` with the actual word you want to add. 

```sh
$ echo "ORPHEUS" >> dictionary
$ (head -n 1 dictionary && tail -n +2 dictionary | LC_ALL=C sort -u) > dictionary.sorted && mv dictionary.sorted dictionary
```

If you'd like to use a different method to add a word to the dictionary, the important thing to know is that it should follow the same sorting method already used in the dictionary to reduce merge conflicts.
