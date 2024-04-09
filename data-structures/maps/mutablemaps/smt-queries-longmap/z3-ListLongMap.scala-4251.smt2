; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58994 () Bool)

(assert start!58994)

(declare-fun b!650209 () Bool)

(declare-fun res!421559 () Bool)

(declare-fun e!373036 () Bool)

(assert (=> b!650209 (=> (not res!421559) (not e!373036))))

(declare-datatypes ((array!38531 0))(
  ( (array!38532 (arr!18466 (Array (_ BitVec 32) (_ BitVec 64))) (size!18830 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38531)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650209 (= res!421559 (validKeyInArray!0 (select (arr!18466 a!2986) j!136)))))

(declare-fun b!650210 () Bool)

(declare-datatypes ((Unit!22150 0))(
  ( (Unit!22151) )
))
(declare-fun e!373030 () Unit!22150)

(declare-fun Unit!22152 () Unit!22150)

(assert (=> b!650210 (= e!373030 Unit!22152)))

(declare-fun b!650211 () Bool)

(declare-fun e!373028 () Bool)

(declare-fun e!373038 () Bool)

(assert (=> b!650211 (= e!373028 e!373038)))

(declare-fun res!421563 () Bool)

(assert (=> b!650211 (=> (not res!421563) (not e!373038))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!650211 (= res!421563 (= (select (store (arr!18466 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!302140 () array!38531)

(assert (=> b!650211 (= lt!302140 (array!38532 (store (arr!18466 a!2986) i!1108 k0!1786) (size!18830 a!2986)))))

(declare-fun b!650212 () Bool)

(declare-fun Unit!22153 () Unit!22150)

(assert (=> b!650212 (= e!373030 Unit!22153)))

(declare-fun lt!302142 () Unit!22150)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22150)

(assert (=> b!650212 (= lt!302142 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302140 (select (arr!18466 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650212 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302126 () Unit!22150)

(declare-datatypes ((List!12560 0))(
  ( (Nil!12557) (Cons!12556 (h!13601 (_ BitVec 64)) (t!18796 List!12560)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38531 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12560) Unit!22150)

(assert (=> b!650212 (= lt!302126 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12557))))

(declare-fun arrayNoDuplicates!0 (array!38531 (_ BitVec 32) List!12560) Bool)

(assert (=> b!650212 (arrayNoDuplicates!0 lt!302140 #b00000000000000000000000000000000 Nil!12557)))

(declare-fun lt!302133 () Unit!22150)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38531 (_ BitVec 32) (_ BitVec 32)) Unit!22150)

(assert (=> b!650212 (= lt!302133 (lemmaNoDuplicateFromThenFromBigger!0 lt!302140 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650212 (arrayNoDuplicates!0 lt!302140 j!136 Nil!12557)))

(declare-fun lt!302141 () Unit!22150)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38531 (_ BitVec 64) (_ BitVec 32) List!12560) Unit!22150)

(assert (=> b!650212 (= lt!302141 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302140 (select (arr!18466 a!2986) j!136) j!136 Nil!12557))))

(assert (=> b!650212 false))

(declare-fun b!650213 () Bool)

(assert (=> b!650213 (= e!373036 e!373028)))

(declare-fun res!421570 () Bool)

(assert (=> b!650213 (=> (not res!421570) (not e!373028))))

(declare-datatypes ((SeekEntryResult!6913 0))(
  ( (MissingZero!6913 (index!30001 (_ BitVec 32))) (Found!6913 (index!30002 (_ BitVec 32))) (Intermediate!6913 (undefined!7725 Bool) (index!30003 (_ BitVec 32)) (x!58816 (_ BitVec 32))) (Undefined!6913) (MissingVacant!6913 (index!30004 (_ BitVec 32))) )
))
(declare-fun lt!302128 () SeekEntryResult!6913)

(assert (=> b!650213 (= res!421570 (or (= lt!302128 (MissingZero!6913 i!1108)) (= lt!302128 (MissingVacant!6913 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38531 (_ BitVec 32)) SeekEntryResult!6913)

(assert (=> b!650213 (= lt!302128 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!650214 () Bool)

(declare-fun res!421566 () Bool)

(assert (=> b!650214 (=> (not res!421566) (not e!373028))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!650214 (= res!421566 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18466 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650215 () Bool)

(declare-fun e!373041 () Bool)

(declare-fun e!373032 () Bool)

(assert (=> b!650215 (= e!373041 e!373032)))

(declare-fun res!421565 () Bool)

(assert (=> b!650215 (=> res!421565 e!373032)))

(declare-fun lt!302139 () (_ BitVec 64))

(declare-fun lt!302137 () (_ BitVec 64))

(assert (=> b!650215 (= res!421565 (or (not (= (select (arr!18466 a!2986) j!136) lt!302139)) (not (= (select (arr!18466 a!2986) j!136) lt!302137)) (bvsge j!136 index!984)))))

(declare-fun b!650216 () Bool)

(declare-fun res!421576 () Bool)

(assert (=> b!650216 (=> (not res!421576) (not e!373036))))

(assert (=> b!650216 (= res!421576 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650217 () Bool)

(declare-fun e!373034 () Bool)

(assert (=> b!650217 (= e!373038 e!373034)))

(declare-fun res!421560 () Bool)

(assert (=> b!650217 (=> (not res!421560) (not e!373034))))

(declare-fun lt!302127 () SeekEntryResult!6913)

(assert (=> b!650217 (= res!421560 (and (= lt!302127 (Found!6913 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18466 a!2986) index!984) (select (arr!18466 a!2986) j!136))) (not (= (select (arr!18466 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38531 (_ BitVec 32)) SeekEntryResult!6913)

(assert (=> b!650217 (= lt!302127 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18466 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650218 () Bool)

(declare-fun e!373039 () Bool)

(assert (=> b!650218 (= e!373039 true)))

(assert (=> b!650218 (arrayNoDuplicates!0 lt!302140 #b00000000000000000000000000000000 Nil!12557)))

(declare-fun lt!302138 () Unit!22150)

(assert (=> b!650218 (= lt!302138 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12557))))

(assert (=> b!650218 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302131 () Unit!22150)

(assert (=> b!650218 (= lt!302131 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302140 (select (arr!18466 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373040 () Bool)

(assert (=> b!650218 e!373040))

(declare-fun res!421562 () Bool)

(assert (=> b!650218 (=> (not res!421562) (not e!373040))))

(assert (=> b!650218 (= res!421562 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) j!136))))

(declare-fun res!421574 () Bool)

(assert (=> start!58994 (=> (not res!421574) (not e!373036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58994 (= res!421574 (validMask!0 mask!3053))))

(assert (=> start!58994 e!373036))

(assert (=> start!58994 true))

(declare-fun array_inv!14240 (array!38531) Bool)

(assert (=> start!58994 (array_inv!14240 a!2986)))

(declare-fun b!650219 () Bool)

(declare-fun e!373037 () Bool)

(declare-fun e!373031 () Bool)

(assert (=> b!650219 (= e!373037 e!373031)))

(declare-fun res!421569 () Bool)

(assert (=> b!650219 (=> res!421569 e!373031)))

(assert (=> b!650219 (= res!421569 (or (not (= (select (arr!18466 a!2986) j!136) lt!302139)) (not (= (select (arr!18466 a!2986) j!136) lt!302137))))))

(assert (=> b!650219 e!373041))

(declare-fun res!421564 () Bool)

(assert (=> b!650219 (=> (not res!421564) (not e!373041))))

(assert (=> b!650219 (= res!421564 (= lt!302137 (select (arr!18466 a!2986) j!136)))))

(assert (=> b!650219 (= lt!302137 (select (store (arr!18466 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!650220 () Bool)

(declare-fun res!421577 () Bool)

(assert (=> b!650220 (=> (not res!421577) (not e!373036))))

(assert (=> b!650220 (= res!421577 (and (= (size!18830 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18830 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18830 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650221 () Bool)

(assert (=> b!650221 (= e!373040 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) index!984))))

(declare-fun b!650222 () Bool)

(declare-fun e!373035 () Unit!22150)

(declare-fun Unit!22154 () Unit!22150)

(assert (=> b!650222 (= e!373035 Unit!22154)))

(declare-fun b!650223 () Bool)

(declare-fun e!373033 () Bool)

(declare-fun lt!302135 () SeekEntryResult!6913)

(assert (=> b!650223 (= e!373033 (= lt!302127 lt!302135))))

(declare-fun b!650224 () Bool)

(assert (=> b!650224 (= e!373034 (not e!373037))))

(declare-fun res!421571 () Bool)

(assert (=> b!650224 (=> res!421571 e!373037)))

(declare-fun lt!302132 () SeekEntryResult!6913)

(assert (=> b!650224 (= res!421571 (not (= lt!302132 (Found!6913 index!984))))))

(declare-fun lt!302130 () Unit!22150)

(assert (=> b!650224 (= lt!302130 e!373035)))

(declare-fun c!74692 () Bool)

(assert (=> b!650224 (= c!74692 (= lt!302132 Undefined!6913))))

(assert (=> b!650224 (= lt!302132 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302139 lt!302140 mask!3053))))

(assert (=> b!650224 e!373033))

(declare-fun res!421572 () Bool)

(assert (=> b!650224 (=> (not res!421572) (not e!373033))))

(declare-fun lt!302136 () (_ BitVec 32))

(assert (=> b!650224 (= res!421572 (= lt!302135 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302136 vacantSpotIndex!68 lt!302139 lt!302140 mask!3053)))))

(assert (=> b!650224 (= lt!302135 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302136 vacantSpotIndex!68 (select (arr!18466 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650224 (= lt!302139 (select (store (arr!18466 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!302129 () Unit!22150)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22150)

(assert (=> b!650224 (= lt!302129 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302136 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650224 (= lt!302136 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650225 () Bool)

(declare-fun res!421561 () Bool)

(assert (=> b!650225 (=> (not res!421561) (not e!373036))))

(assert (=> b!650225 (= res!421561 (validKeyInArray!0 k0!1786))))

(declare-fun e!373042 () Bool)

(declare-fun b!650226 () Bool)

(assert (=> b!650226 (= e!373042 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) index!984))))

(declare-fun b!650227 () Bool)

(assert (=> b!650227 (= e!373031 e!373039)))

(declare-fun res!421573 () Bool)

(assert (=> b!650227 (=> res!421573 e!373039)))

(assert (=> b!650227 (= res!421573 (bvsge index!984 j!136))))

(declare-fun lt!302134 () Unit!22150)

(assert (=> b!650227 (= lt!302134 e!373030)))

(declare-fun c!74693 () Bool)

(assert (=> b!650227 (= c!74693 (bvslt j!136 index!984))))

(declare-fun b!650228 () Bool)

(declare-fun res!421567 () Bool)

(assert (=> b!650228 (=> (not res!421567) (not e!373028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38531 (_ BitVec 32)) Bool)

(assert (=> b!650228 (= res!421567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650229 () Bool)

(declare-fun Unit!22155 () Unit!22150)

(assert (=> b!650229 (= e!373035 Unit!22155)))

(assert (=> b!650229 false))

(declare-fun b!650230 () Bool)

(declare-fun res!421575 () Bool)

(assert (=> b!650230 (=> (not res!421575) (not e!373028))))

(assert (=> b!650230 (= res!421575 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12557))))

(declare-fun b!650231 () Bool)

(assert (=> b!650231 (= e!373032 e!373042)))

(declare-fun res!421568 () Bool)

(assert (=> b!650231 (=> (not res!421568) (not e!373042))))

(assert (=> b!650231 (= res!421568 (arrayContainsKey!0 lt!302140 (select (arr!18466 a!2986) j!136) j!136))))

(assert (= (and start!58994 res!421574) b!650220))

(assert (= (and b!650220 res!421577) b!650209))

(assert (= (and b!650209 res!421559) b!650225))

(assert (= (and b!650225 res!421561) b!650216))

(assert (= (and b!650216 res!421576) b!650213))

(assert (= (and b!650213 res!421570) b!650228))

(assert (= (and b!650228 res!421567) b!650230))

(assert (= (and b!650230 res!421575) b!650214))

(assert (= (and b!650214 res!421566) b!650211))

(assert (= (and b!650211 res!421563) b!650217))

(assert (= (and b!650217 res!421560) b!650224))

(assert (= (and b!650224 res!421572) b!650223))

(assert (= (and b!650224 c!74692) b!650229))

(assert (= (and b!650224 (not c!74692)) b!650222))

(assert (= (and b!650224 (not res!421571)) b!650219))

(assert (= (and b!650219 res!421564) b!650215))

(assert (= (and b!650215 (not res!421565)) b!650231))

(assert (= (and b!650231 res!421568) b!650226))

(assert (= (and b!650219 (not res!421569)) b!650227))

(assert (= (and b!650227 c!74693) b!650212))

(assert (= (and b!650227 (not c!74693)) b!650210))

(assert (= (and b!650227 (not res!421573)) b!650218))

(assert (= (and b!650218 res!421562) b!650221))

(declare-fun m!623485 () Bool)

(assert (=> b!650221 m!623485))

(assert (=> b!650221 m!623485))

(declare-fun m!623487 () Bool)

(assert (=> b!650221 m!623487))

(assert (=> b!650219 m!623485))

(declare-fun m!623489 () Bool)

(assert (=> b!650219 m!623489))

(declare-fun m!623491 () Bool)

(assert (=> b!650219 m!623491))

(declare-fun m!623493 () Bool)

(assert (=> b!650214 m!623493))

(declare-fun m!623495 () Bool)

(assert (=> b!650224 m!623495))

(declare-fun m!623497 () Bool)

(assert (=> b!650224 m!623497))

(declare-fun m!623499 () Bool)

(assert (=> b!650224 m!623499))

(declare-fun m!623501 () Bool)

(assert (=> b!650224 m!623501))

(assert (=> b!650224 m!623485))

(assert (=> b!650224 m!623489))

(assert (=> b!650224 m!623485))

(declare-fun m!623503 () Bool)

(assert (=> b!650224 m!623503))

(declare-fun m!623505 () Bool)

(assert (=> b!650224 m!623505))

(assert (=> b!650211 m!623489))

(declare-fun m!623507 () Bool)

(assert (=> b!650211 m!623507))

(assert (=> b!650226 m!623485))

(assert (=> b!650226 m!623485))

(assert (=> b!650226 m!623487))

(assert (=> b!650215 m!623485))

(declare-fun m!623509 () Bool)

(assert (=> b!650225 m!623509))

(declare-fun m!623511 () Bool)

(assert (=> b!650213 m!623511))

(assert (=> b!650209 m!623485))

(assert (=> b!650209 m!623485))

(declare-fun m!623513 () Bool)

(assert (=> b!650209 m!623513))

(declare-fun m!623515 () Bool)

(assert (=> b!650217 m!623515))

(assert (=> b!650217 m!623485))

(assert (=> b!650217 m!623485))

(declare-fun m!623517 () Bool)

(assert (=> b!650217 m!623517))

(declare-fun m!623519 () Bool)

(assert (=> b!650228 m!623519))

(declare-fun m!623521 () Bool)

(assert (=> b!650216 m!623521))

(declare-fun m!623523 () Bool)

(assert (=> start!58994 m!623523))

(declare-fun m!623525 () Bool)

(assert (=> start!58994 m!623525))

(assert (=> b!650231 m!623485))

(assert (=> b!650231 m!623485))

(declare-fun m!623527 () Bool)

(assert (=> b!650231 m!623527))

(declare-fun m!623529 () Bool)

(assert (=> b!650230 m!623529))

(declare-fun m!623531 () Bool)

(assert (=> b!650218 m!623531))

(assert (=> b!650218 m!623485))

(assert (=> b!650218 m!623527))

(assert (=> b!650218 m!623485))

(declare-fun m!623533 () Bool)

(assert (=> b!650218 m!623533))

(declare-fun m!623535 () Bool)

(assert (=> b!650218 m!623535))

(assert (=> b!650218 m!623485))

(declare-fun m!623537 () Bool)

(assert (=> b!650218 m!623537))

(assert (=> b!650218 m!623485))

(assert (=> b!650212 m!623485))

(declare-fun m!623539 () Bool)

(assert (=> b!650212 m!623539))

(assert (=> b!650212 m!623531))

(declare-fun m!623541 () Bool)

(assert (=> b!650212 m!623541))

(assert (=> b!650212 m!623485))

(assert (=> b!650212 m!623485))

(declare-fun m!623543 () Bool)

(assert (=> b!650212 m!623543))

(declare-fun m!623545 () Bool)

(assert (=> b!650212 m!623545))

(assert (=> b!650212 m!623485))

(declare-fun m!623547 () Bool)

(assert (=> b!650212 m!623547))

(assert (=> b!650212 m!623535))

(check-sat (not b!650230) (not b!650209) (not b!650221) (not b!650216) (not b!650217) (not b!650231) (not start!58994) (not b!650213) (not b!650224) (not b!650226) (not b!650225) (not b!650218) (not b!650228) (not b!650212))
(check-sat)
