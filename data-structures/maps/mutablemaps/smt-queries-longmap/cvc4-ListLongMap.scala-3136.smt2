; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44126 () Bool)

(assert start!44126)

(declare-fun b!485921 () Bool)

(declare-fun res!289679 () Bool)

(declare-fun e!286023 () Bool)

(assert (=> b!485921 (=> (not res!289679) (not e!286023))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31454 0))(
  ( (array!31455 (arr!15122 (Array (_ BitVec 32) (_ BitVec 64))) (size!15486 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31454)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!485921 (= res!289679 (and (= (size!15486 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15486 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15486 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!485922 () Bool)

(declare-fun e!286022 () Bool)

(assert (=> b!485922 (= e!286023 e!286022)))

(declare-fun res!289678 () Bool)

(assert (=> b!485922 (=> (not res!289678) (not e!286022))))

(declare-datatypes ((SeekEntryResult!3596 0))(
  ( (MissingZero!3596 (index!16563 (_ BitVec 32))) (Found!3596 (index!16564 (_ BitVec 32))) (Intermediate!3596 (undefined!4408 Bool) (index!16565 (_ BitVec 32)) (x!45723 (_ BitVec 32))) (Undefined!3596) (MissingVacant!3596 (index!16566 (_ BitVec 32))) )
))
(declare-fun lt!219590 () SeekEntryResult!3596)

(assert (=> b!485922 (= res!289678 (or (= lt!219590 (MissingZero!3596 i!1204)) (= lt!219590 (MissingVacant!3596 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31454 (_ BitVec 32)) SeekEntryResult!3596)

(assert (=> b!485922 (= lt!219590 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!485923 () Bool)

(declare-fun res!289673 () Bool)

(assert (=> b!485923 (=> (not res!289673) (not e!286023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!485923 (= res!289673 (validKeyInArray!0 (select (arr!15122 a!3235) j!176)))))

(declare-fun res!289674 () Bool)

(assert (=> start!44126 (=> (not res!289674) (not e!286023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44126 (= res!289674 (validMask!0 mask!3524))))

(assert (=> start!44126 e!286023))

(assert (=> start!44126 true))

(declare-fun array_inv!10896 (array!31454) Bool)

(assert (=> start!44126 (array_inv!10896 a!3235)))

(declare-fun b!485924 () Bool)

(declare-fun res!289676 () Bool)

(assert (=> b!485924 (=> (not res!289676) (not e!286023))))

(assert (=> b!485924 (= res!289676 (validKeyInArray!0 k!2280))))

(declare-fun b!485925 () Bool)

(assert (=> b!485925 (= e!286022 (and (bvsle #b00000000000000000000000000000000 (size!15486 a!3235)) (bvsge (size!15486 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!485926 () Bool)

(declare-fun res!289677 () Bool)

(assert (=> b!485926 (=> (not res!289677) (not e!286022))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31454 (_ BitVec 32)) Bool)

(assert (=> b!485926 (= res!289677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!485927 () Bool)

(declare-fun res!289675 () Bool)

(assert (=> b!485927 (=> (not res!289675) (not e!286023))))

(declare-fun arrayContainsKey!0 (array!31454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!485927 (= res!289675 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44126 res!289674) b!485921))

(assert (= (and b!485921 res!289679) b!485923))

(assert (= (and b!485923 res!289673) b!485924))

(assert (= (and b!485924 res!289676) b!485927))

(assert (= (and b!485927 res!289675) b!485922))

(assert (= (and b!485922 res!289678) b!485926))

(assert (= (and b!485926 res!289677) b!485925))

(declare-fun m!465987 () Bool)

(assert (=> start!44126 m!465987))

(declare-fun m!465989 () Bool)

(assert (=> start!44126 m!465989))

(declare-fun m!465991 () Bool)

(assert (=> b!485922 m!465991))

(declare-fun m!465993 () Bool)

(assert (=> b!485927 m!465993))

(declare-fun m!465995 () Bool)

(assert (=> b!485924 m!465995))

(declare-fun m!465997 () Bool)

(assert (=> b!485926 m!465997))

(declare-fun m!465999 () Bool)

(assert (=> b!485923 m!465999))

(assert (=> b!485923 m!465999))

(declare-fun m!466001 () Bool)

(assert (=> b!485923 m!466001))

(push 1)

(assert (not start!44126))

(assert (not b!485927))

(assert (not b!485924))

(assert (not b!485926))

(assert (not b!485923))

(assert (not b!485922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77341 () Bool)

(assert (=> d!77341 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!485924 d!77341))

(declare-fun b!485954 () Bool)

(declare-fun e!286046 () Bool)

(declare-fun call!31259 () Bool)

(assert (=> b!485954 (= e!286046 call!31259)))

(declare-fun b!485955 () Bool)

(declare-fun e!286048 () Bool)

(assert (=> b!485955 (= e!286048 e!286046)))

(declare-fun c!58397 () Bool)

(assert (=> b!485955 (= c!58397 (validKeyInArray!0 (select (arr!15122 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!485956 () Bool)

(declare-fun e!286047 () Bool)

(assert (=> b!485956 (= e!286047 call!31259)))

(declare-fun d!77343 () Bool)

(declare-fun res!289697 () Bool)

(assert (=> d!77343 (=> res!289697 e!286048)))

(assert (=> d!77343 (= res!289697 (bvsge #b00000000000000000000000000000000 (size!15486 a!3235)))))

(assert (=> d!77343 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286048)))

(declare-fun b!485957 () Bool)

(assert (=> b!485957 (= e!286046 e!286047)))

(declare-fun lt!219608 () (_ BitVec 64))

(assert (=> b!485957 (= lt!219608 (select (arr!15122 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14158 0))(
  ( (Unit!14159) )
))
(declare-fun lt!219606 () Unit!14158)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31454 (_ BitVec 64) (_ BitVec 32)) Unit!14158)

(assert (=> b!485957 (= lt!219606 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219608 #b00000000000000000000000000000000))))

(assert (=> b!485957 (arrayContainsKey!0 a!3235 lt!219608 #b00000000000000000000000000000000)))

(declare-fun lt!219607 () Unit!14158)

(assert (=> b!485957 (= lt!219607 lt!219606)))

(declare-fun res!289696 () Bool)

(assert (=> b!485957 (= res!289696 (= (seekEntryOrOpen!0 (select (arr!15122 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3596 #b00000000000000000000000000000000)))))

(assert (=> b!485957 (=> (not res!289696) (not e!286047))))

(declare-fun bm!31256 () Bool)

(assert (=> bm!31256 (= call!31259 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!77343 (not res!289697)) b!485955))

(assert (= (and b!485955 c!58397) b!485957))

(assert (= (and b!485955 (not c!58397)) b!485954))

(assert (= (and b!485957 res!289696) b!485956))

(assert (= (or b!485956 b!485954) bm!31256))

(declare-fun m!466017 () Bool)

(assert (=> b!485955 m!466017))

(assert (=> b!485955 m!466017))

(declare-fun m!466019 () Bool)

