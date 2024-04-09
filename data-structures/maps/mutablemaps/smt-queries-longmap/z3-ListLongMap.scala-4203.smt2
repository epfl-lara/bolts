; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57452 () Bool)

(assert start!57452)

(declare-fun b!635498 () Bool)

(declare-fun e!363496 () Bool)

(declare-fun e!363497 () Bool)

(assert (=> b!635498 (= e!363496 e!363497)))

(declare-fun res!411254 () Bool)

(assert (=> b!635498 (=> (not res!411254) (not e!363497))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38198 0))(
  ( (array!38199 (arr!18322 (Array (_ BitVec 32) (_ BitVec 64))) (size!18686 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38198)

(assert (=> b!635498 (= res!411254 (= (select (store (arr!18322 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293898 () array!38198)

(assert (=> b!635498 (= lt!293898 (array!38199 (store (arr!18322 a!2986) i!1108 k0!1786) (size!18686 a!2986)))))

(declare-fun b!635499 () Bool)

(declare-fun e!363500 () Bool)

(assert (=> b!635499 (= e!363500 e!363496)))

(declare-fun res!411257 () Bool)

(assert (=> b!635499 (=> (not res!411257) (not e!363496))))

(declare-datatypes ((SeekEntryResult!6769 0))(
  ( (MissingZero!6769 (index!29380 (_ BitVec 32))) (Found!6769 (index!29381 (_ BitVec 32))) (Intermediate!6769 (undefined!7581 Bool) (index!29382 (_ BitVec 32)) (x!58153 (_ BitVec 32))) (Undefined!6769) (MissingVacant!6769 (index!29383 (_ BitVec 32))) )
))
(declare-fun lt!293906 () SeekEntryResult!6769)

(assert (=> b!635499 (= res!411257 (or (= lt!293906 (MissingZero!6769 i!1108)) (= lt!293906 (MissingVacant!6769 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38198 (_ BitVec 32)) SeekEntryResult!6769)

(assert (=> b!635499 (= lt!293906 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!635500 () Bool)

(declare-fun res!411253 () Bool)

(assert (=> b!635500 (=> (not res!411253) (not e!363500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635500 (= res!411253 (validKeyInArray!0 k0!1786))))

(declare-fun b!635501 () Bool)

(declare-fun res!411248 () Bool)

(assert (=> b!635501 (=> (not res!411248) (not e!363500))))

(declare-fun arrayContainsKey!0 (array!38198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635501 (= res!411248 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635502 () Bool)

(declare-fun res!411252 () Bool)

(assert (=> b!635502 (=> (not res!411252) (not e!363496))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!635502 (= res!411252 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18322 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635504 () Bool)

(declare-fun res!411256 () Bool)

(assert (=> b!635504 (=> (not res!411256) (not e!363496))))

(declare-datatypes ((List!12416 0))(
  ( (Nil!12413) (Cons!12412 (h!13457 (_ BitVec 64)) (t!18652 List!12416)) )
))
(declare-fun arrayNoDuplicates!0 (array!38198 (_ BitVec 32) List!12416) Bool)

(assert (=> b!635504 (= res!411256 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12413))))

(declare-fun b!635505 () Bool)

(declare-fun e!363498 () Bool)

(declare-fun e!363502 () Bool)

(assert (=> b!635505 (= e!363498 e!363502)))

(declare-fun res!411249 () Bool)

(assert (=> b!635505 (=> res!411249 e!363502)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293903 () (_ BitVec 64))

(declare-fun lt!293902 () (_ BitVec 64))

(assert (=> b!635505 (= res!411249 (or (not (= (select (arr!18322 a!2986) j!136) lt!293903)) (not (= (select (arr!18322 a!2986) j!136) lt!293902)) (bvsge j!136 index!984)))))

(declare-fun b!635506 () Bool)

(declare-fun e!363504 () Bool)

(assert (=> b!635506 (= e!363497 e!363504)))

(declare-fun res!411245 () Bool)

(assert (=> b!635506 (=> (not res!411245) (not e!363504))))

(declare-fun lt!293904 () SeekEntryResult!6769)

(assert (=> b!635506 (= res!411245 (and (= lt!293904 (Found!6769 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18322 a!2986) index!984) (select (arr!18322 a!2986) j!136))) (not (= (select (arr!18322 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38198 (_ BitVec 32)) SeekEntryResult!6769)

(assert (=> b!635506 (= lt!293904 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18322 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635507 () Bool)

(declare-fun res!411250 () Bool)

(assert (=> b!635507 (=> (not res!411250) (not e!363496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38198 (_ BitVec 32)) Bool)

(assert (=> b!635507 (= res!411250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635508 () Bool)

(declare-fun res!411260 () Bool)

(assert (=> b!635508 (=> (not res!411260) (not e!363500))))

(assert (=> b!635508 (= res!411260 (validKeyInArray!0 (select (arr!18322 a!2986) j!136)))))

(declare-fun b!635509 () Bool)

(declare-fun res!411247 () Bool)

(assert (=> b!635509 (=> (not res!411247) (not e!363500))))

(assert (=> b!635509 (= res!411247 (and (= (size!18686 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18686 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18686 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635510 () Bool)

(declare-fun e!363505 () Bool)

(assert (=> b!635510 (= e!363504 (not e!363505))))

(declare-fun res!411244 () Bool)

(assert (=> b!635510 (=> res!411244 e!363505)))

(declare-fun lt!293897 () SeekEntryResult!6769)

(assert (=> b!635510 (= res!411244 (not (= lt!293897 (Found!6769 index!984))))))

(declare-datatypes ((Unit!21434 0))(
  ( (Unit!21435) )
))
(declare-fun lt!293900 () Unit!21434)

(declare-fun e!363503 () Unit!21434)

(assert (=> b!635510 (= lt!293900 e!363503)))

(declare-fun c!72494 () Bool)

(assert (=> b!635510 (= c!72494 (= lt!293897 Undefined!6769))))

(assert (=> b!635510 (= lt!293897 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293903 lt!293898 mask!3053))))

(declare-fun e!363495 () Bool)

(assert (=> b!635510 e!363495))

(declare-fun res!411259 () Bool)

(assert (=> b!635510 (=> (not res!411259) (not e!363495))))

(declare-fun lt!293899 () (_ BitVec 32))

(declare-fun lt!293901 () SeekEntryResult!6769)

(assert (=> b!635510 (= res!411259 (= lt!293901 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293899 vacantSpotIndex!68 lt!293903 lt!293898 mask!3053)))))

(assert (=> b!635510 (= lt!293901 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293899 vacantSpotIndex!68 (select (arr!18322 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635510 (= lt!293903 (select (store (arr!18322 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293905 () Unit!21434)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38198 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21434)

(assert (=> b!635510 (= lt!293905 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293899 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635510 (= lt!293899 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635511 () Bool)

(declare-fun Unit!21436 () Unit!21434)

(assert (=> b!635511 (= e!363503 Unit!21436)))

(assert (=> b!635511 false))

(declare-fun b!635512 () Bool)

(declare-fun Unit!21437 () Unit!21434)

(assert (=> b!635512 (= e!363503 Unit!21437)))

(declare-fun b!635513 () Bool)

(declare-fun e!363494 () Bool)

(assert (=> b!635513 (= e!363494 (arrayContainsKey!0 lt!293898 (select (arr!18322 a!2986) j!136) index!984))))

(declare-fun b!635514 () Bool)

(assert (=> b!635514 (= e!363495 (= lt!293904 lt!293901))))

(declare-fun b!635503 () Bool)

(assert (=> b!635503 (= e!363502 e!363494)))

(declare-fun res!411255 () Bool)

(assert (=> b!635503 (=> (not res!411255) (not e!363494))))

(assert (=> b!635503 (= res!411255 (arrayContainsKey!0 lt!293898 (select (arr!18322 a!2986) j!136) j!136))))

(declare-fun res!411246 () Bool)

(assert (=> start!57452 (=> (not res!411246) (not e!363500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57452 (= res!411246 (validMask!0 mask!3053))))

(assert (=> start!57452 e!363500))

(assert (=> start!57452 true))

(declare-fun array_inv!14096 (array!38198) Bool)

(assert (=> start!57452 (array_inv!14096 a!2986)))

(declare-fun b!635515 () Bool)

(declare-fun e!363501 () Bool)

(assert (=> b!635515 (= e!363501 (or (bvsge (size!18686 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18686 a!2986))))))

(assert (=> b!635515 (arrayContainsKey!0 lt!293898 (select (arr!18322 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293907 () Unit!21434)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21434)

(assert (=> b!635515 (= lt!293907 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293898 (select (arr!18322 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635516 () Bool)

(assert (=> b!635516 (= e!363505 e!363501)))

(declare-fun res!411258 () Bool)

(assert (=> b!635516 (=> res!411258 e!363501)))

(assert (=> b!635516 (= res!411258 (or (not (= (select (arr!18322 a!2986) j!136) lt!293903)) (not (= (select (arr!18322 a!2986) j!136) lt!293902)) (bvsge j!136 index!984)))))

(assert (=> b!635516 e!363498))

(declare-fun res!411251 () Bool)

(assert (=> b!635516 (=> (not res!411251) (not e!363498))))

(assert (=> b!635516 (= res!411251 (= lt!293902 (select (arr!18322 a!2986) j!136)))))

(assert (=> b!635516 (= lt!293902 (select (store (arr!18322 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!57452 res!411246) b!635509))

(assert (= (and b!635509 res!411247) b!635508))

(assert (= (and b!635508 res!411260) b!635500))

(assert (= (and b!635500 res!411253) b!635501))

(assert (= (and b!635501 res!411248) b!635499))

(assert (= (and b!635499 res!411257) b!635507))

(assert (= (and b!635507 res!411250) b!635504))

(assert (= (and b!635504 res!411256) b!635502))

(assert (= (and b!635502 res!411252) b!635498))

(assert (= (and b!635498 res!411254) b!635506))

(assert (= (and b!635506 res!411245) b!635510))

(assert (= (and b!635510 res!411259) b!635514))

(assert (= (and b!635510 c!72494) b!635511))

(assert (= (and b!635510 (not c!72494)) b!635512))

(assert (= (and b!635510 (not res!411244)) b!635516))

(assert (= (and b!635516 res!411251) b!635505))

(assert (= (and b!635505 (not res!411249)) b!635503))

(assert (= (and b!635503 res!411255) b!635513))

(assert (= (and b!635516 (not res!411258)) b!635515))

(declare-fun m!609893 () Bool)

(assert (=> b!635513 m!609893))

(assert (=> b!635513 m!609893))

(declare-fun m!609895 () Bool)

(assert (=> b!635513 m!609895))

(declare-fun m!609897 () Bool)

(assert (=> start!57452 m!609897))

(declare-fun m!609899 () Bool)

(assert (=> start!57452 m!609899))

(assert (=> b!635508 m!609893))

(assert (=> b!635508 m!609893))

(declare-fun m!609901 () Bool)

(assert (=> b!635508 m!609901))

(declare-fun m!609903 () Bool)

(assert (=> b!635501 m!609903))

(declare-fun m!609905 () Bool)

(assert (=> b!635499 m!609905))

(assert (=> b!635515 m!609893))

(assert (=> b!635515 m!609893))

(declare-fun m!609907 () Bool)

(assert (=> b!635515 m!609907))

(assert (=> b!635515 m!609893))

(declare-fun m!609909 () Bool)

(assert (=> b!635515 m!609909))

(declare-fun m!609911 () Bool)

(assert (=> b!635507 m!609911))

(assert (=> b!635503 m!609893))

(assert (=> b!635503 m!609893))

(declare-fun m!609913 () Bool)

(assert (=> b!635503 m!609913))

(assert (=> b!635505 m!609893))

(declare-fun m!609915 () Bool)

(assert (=> b!635510 m!609915))

(declare-fun m!609917 () Bool)

(assert (=> b!635510 m!609917))

(assert (=> b!635510 m!609893))

(declare-fun m!609919 () Bool)

(assert (=> b!635510 m!609919))

(declare-fun m!609921 () Bool)

(assert (=> b!635510 m!609921))

(assert (=> b!635510 m!609893))

(declare-fun m!609923 () Bool)

(assert (=> b!635510 m!609923))

(declare-fun m!609925 () Bool)

(assert (=> b!635510 m!609925))

(declare-fun m!609927 () Bool)

(assert (=> b!635510 m!609927))

(declare-fun m!609929 () Bool)

(assert (=> b!635500 m!609929))

(declare-fun m!609931 () Bool)

(assert (=> b!635506 m!609931))

(assert (=> b!635506 m!609893))

(assert (=> b!635506 m!609893))

(declare-fun m!609933 () Bool)

(assert (=> b!635506 m!609933))

(assert (=> b!635498 m!609921))

(declare-fun m!609935 () Bool)

(assert (=> b!635498 m!609935))

(declare-fun m!609937 () Bool)

(assert (=> b!635502 m!609937))

(assert (=> b!635516 m!609893))

(assert (=> b!635516 m!609921))

(declare-fun m!609939 () Bool)

(assert (=> b!635516 m!609939))

(declare-fun m!609941 () Bool)

(assert (=> b!635504 m!609941))

(check-sat (not b!635510) (not b!635506) (not start!57452) (not b!635504) (not b!635499) (not b!635500) (not b!635508) (not b!635503) (not b!635513) (not b!635515) (not b!635501) (not b!635507))
(check-sat)
