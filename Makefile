PHONY: clean
clean:
	cabal clean

.PHONY: build
build:
	cabal build --enable-tests --write-ghc-environment-files=always

.PHONY: test-all
test-all:
	cabal test all --enable-tests --test-show-details=direct

.PHONY: test-part1
test-part1:
	cabal test doctest-part1 --enable-tests --test-show-details=direct
	cabal run exercises-test --enable-tests -- -m "Part 1"