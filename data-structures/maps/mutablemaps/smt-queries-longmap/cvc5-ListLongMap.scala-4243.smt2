; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58764 () Bool)

(assert start!58764)

(declare-fun b!647562 () Bool)

(declare-fun res!419645 () Bool)

(declare-fun e!371360 () Bool)

(assert (=> b!647562 (=> res!419645 e!371360)))

(declare-datatypes ((List!12535 0))(
  ( (Nil!12532) (Cons!12531 (h!13576 (_ BitVec 64)) (t!18771 List!12535)) )
))
(declare-fun noDuplicate!418 (List!12535) Bool)

(assert (=> b!647562 (= res!419645 (not (noDuplicate!418 Nil!12532)))))

(declare-fun b!647563 () Bool)

(declare-datatypes ((Unit!22000 0))(
  ( (Unit!22001) )
))
(declare-fun e!371354 () Unit!22000)

(declare-fun Unit!22002 () Unit!22000)

(assert (=> b!647563 (= e!371354 Unit!22002)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300553 () Unit!22000)

(declare-datatypes ((array!38475 0))(
  ( (array!38476 (arr!18441 (Array (_ BitVec 32) (_ BitVec 64))) (size!18805 (_ BitVec 32))) )
))
(declare-fun lt!300557 () array!38475)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> b!647563 (= lt!300553 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300557 (select (arr!18441 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38475 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!647563 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!300559 () Unit!22000)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12535) Unit!22000)

(assert (=> b!647563 (= lt!300559 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12532))))

(declare-fun arrayNoDuplicates!0 (array!38475 (_ BitVec 32) List!12535) Bool)

(assert (=> b!647563 (arrayNoDuplicates!0 lt!300557 #b00000000000000000000000000000000 Nil!12532)))

(declare-fun lt!300560 () Unit!22000)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38475 (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> b!647563 (= lt!300560 (lemmaNoDuplicateFromThenFromBigger!0 lt!300557 #b00000000000000000000000000000000 j!136))))

(assert (=> b!647563 (arrayNoDuplicates!0 lt!300557 j!136 Nil!12532)))

(declare-fun lt!300555 () Unit!22000)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38475 (_ BitVec 64) (_ BitVec 32) List!12535) Unit!22000)

(assert (=> b!647563 (= lt!300555 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300557 (select (arr!18441 a!2986) j!136) j!136 Nil!12532))))

(assert (=> b!647563 false))

(declare-fun b!647564 () Bool)

(declare-fun res!419633 () Bool)

(declare-fun e!371355 () Bool)

(assert (=> b!647564 (=> (not res!419633) (not e!371355))))

(assert (=> b!647564 (= res!419633 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12532))))

(declare-fun b!647565 () Bool)

(declare-fun e!371353 () Bool)

(declare-fun e!371356 () Bool)

(assert (=> b!647565 (= e!371353 e!371356)))

(declare-fun res!419643 () Bool)

(assert (=> b!647565 (=> res!419643 e!371356)))

(assert (=> b!647565 (= res!419643 (bvsge index!984 j!136))))

(declare-fun lt!300552 () Unit!22000)

(assert (=> b!647565 (= lt!300552 e!371354)))

(declare-fun c!74332 () Bool)

(assert (=> b!647565 (= c!74332 (bvslt j!136 index!984))))

(declare-fun b!647566 () Bool)

(declare-fun e!371357 () Bool)

(declare-fun e!371349 () Bool)

(assert (=> b!647566 (= e!371357 e!371349)))

(declare-fun res!419650 () Bool)

(assert (=> b!647566 (=> res!419650 e!371349)))

(declare-fun lt!300549 () (_ BitVec 64))

(declare-fun lt!300561 () (_ BitVec 64))

(assert (=> b!647566 (= res!419650 (or (not (= (select (arr!18441 a!2986) j!136) lt!300561)) (not (= (select (arr!18441 a!2986) j!136) lt!300549)) (bvsge j!136 index!984)))))

(declare-fun b!647567 () Bool)

(declare-fun Unit!22003 () Unit!22000)

(assert (=> b!647567 (= e!371354 Unit!22003)))

(declare-fun b!647569 () Bool)

(assert (=> b!647569 (= e!371356 e!371360)))

(declare-fun res!419639 () Bool)

(assert (=> b!647569 (=> res!419639 e!371360)))

(assert (=> b!647569 (= res!419639 (or (bvsge (size!18805 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18805 a!2986))))))

(assert (=> b!647569 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300550 () Unit!22000)

(assert (=> b!647569 (= lt!300550 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300557 (select (arr!18441 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!371348 () Bool)

(assert (=> b!647569 e!371348))

(declare-fun res!419654 () Bool)

(assert (=> b!647569 (=> (not res!419654) (not e!371348))))

(assert (=> b!647569 (= res!419654 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) j!136))))

(declare-fun b!647570 () Bool)

(declare-fun e!371352 () Bool)

(assert (=> b!647570 (= e!371352 e!371355)))

(declare-fun res!419647 () Bool)

(assert (=> b!647570 (=> (not res!419647) (not e!371355))))

(declare-datatypes ((SeekEntryResult!6888 0))(
  ( (MissingZero!6888 (index!29895 (_ BitVec 32))) (Found!6888 (index!29896 (_ BitVec 32))) (Intermediate!6888 (undefined!7700 Bool) (index!29897 (_ BitVec 32)) (x!58709 (_ BitVec 32))) (Undefined!6888) (MissingVacant!6888 (index!29898 (_ BitVec 32))) )
))
(declare-fun lt!300554 () SeekEntryResult!6888)

(assert (=> b!647570 (= res!419647 (or (= lt!300554 (MissingZero!6888 i!1108)) (= lt!300554 (MissingVacant!6888 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38475 (_ BitVec 32)) SeekEntryResult!6888)

(assert (=> b!647570 (= lt!300554 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!647571 () Bool)

(declare-fun res!419652 () Bool)

(assert (=> b!647571 (=> res!419652 e!371360)))

(declare-fun contains!3158 (List!12535 (_ BitVec 64)) Bool)

(assert (=> b!647571 (= res!419652 (contains!3158 Nil!12532 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647572 () Bool)

(declare-fun e!371359 () Bool)

(assert (=> b!647572 (= e!371355 e!371359)))

(declare-fun res!419636 () Bool)

(assert (=> b!647572 (=> (not res!419636) (not e!371359))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!647572 (= res!419636 (= (select (store (arr!18441 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647572 (= lt!300557 (array!38476 (store (arr!18441 a!2986) i!1108 k!1786) (size!18805 a!2986)))))

(declare-fun b!647573 () Bool)

(declare-fun res!419638 () Bool)

(assert (=> b!647573 (=> (not res!419638) (not e!371355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38475 (_ BitVec 32)) Bool)

(assert (=> b!647573 (= res!419638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!647574 () Bool)

(assert (=> b!647574 (= e!371348 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) index!984))))

(declare-fun b!647575 () Bool)

(declare-fun e!371350 () Bool)

(assert (=> b!647575 (= e!371350 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) index!984))))

(declare-fun b!647576 () Bool)

(declare-fun e!371362 () Unit!22000)

(declare-fun Unit!22004 () Unit!22000)

(assert (=> b!647576 (= e!371362 Unit!22004)))

(assert (=> b!647576 false))

(declare-fun b!647577 () Bool)

(declare-fun res!419651 () Bool)

(assert (=> b!647577 (=> (not res!419651) (not e!371352))))

(assert (=> b!647577 (= res!419651 (and (= (size!18805 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18805 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18805 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!647578 () Bool)

(declare-fun res!419634 () Bool)

(assert (=> b!647578 (=> res!419634 e!371360)))

(assert (=> b!647578 (= res!419634 (contains!3158 Nil!12532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!647568 () Bool)

(declare-fun e!371358 () Bool)

(assert (=> b!647568 (= e!371359 e!371358)))

(declare-fun res!419646 () Bool)

(assert (=> b!647568 (=> (not res!419646) (not e!371358))))

(declare-fun lt!300558 () SeekEntryResult!6888)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!647568 (= res!419646 (and (= lt!300558 (Found!6888 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18441 a!2986) index!984) (select (arr!18441 a!2986) j!136))) (not (= (select (arr!18441 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38475 (_ BitVec 32)) SeekEntryResult!6888)

(assert (=> b!647568 (= lt!300558 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18441 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!419653 () Bool)

(assert (=> start!58764 (=> (not res!419653) (not e!371352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58764 (= res!419653 (validMask!0 mask!3053))))

(assert (=> start!58764 e!371352))

(assert (=> start!58764 true))

(declare-fun array_inv!14215 (array!38475) Bool)

(assert (=> start!58764 (array_inv!14215 a!2986)))

(declare-fun b!647579 () Bool)

(declare-fun e!371351 () Bool)

(declare-fun lt!300564 () SeekEntryResult!6888)

(assert (=> b!647579 (= e!371351 (= lt!300558 lt!300564))))

(declare-fun b!647580 () Bool)

(declare-fun res!419649 () Bool)

(assert (=> b!647580 (=> (not res!419649) (not e!371352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!647580 (= res!419649 (validKeyInArray!0 k!1786))))

(declare-fun b!647581 () Bool)

(assert (=> b!647581 (= e!371349 e!371350)))

(declare-fun res!419641 () Bool)

(assert (=> b!647581 (=> (not res!419641) (not e!371350))))

(assert (=> b!647581 (= res!419641 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) j!136))))

(declare-fun b!647582 () Bool)

(declare-fun res!419644 () Bool)

(assert (=> b!647582 (=> (not res!419644) (not e!371352))))

(assert (=> b!647582 (= res!419644 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!647583 () Bool)

(assert (=> b!647583 (= e!371360 (not (contains!3158 Nil!12532 k!1786)))))

(declare-fun b!647584 () Bool)

(declare-fun res!419637 () Bool)

(assert (=> b!647584 (=> (not res!419637) (not e!371352))))

(assert (=> b!647584 (= res!419637 (validKeyInArray!0 (select (arr!18441 a!2986) j!136)))))

(declare-fun b!647585 () Bool)

(declare-fun res!419635 () Bool)

(assert (=> b!647585 (=> (not res!419635) (not e!371355))))

(assert (=> b!647585 (= res!419635 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18441 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647586 () Bool)

(declare-fun e!371361 () Bool)

(assert (=> b!647586 (= e!371358 (not e!371361))))

(declare-fun res!419642 () Bool)

(assert (=> b!647586 (=> res!419642 e!371361)))

(declare-fun lt!300563 () SeekEntryResult!6888)

(assert (=> b!647586 (= res!419642 (not (= lt!300563 (Found!6888 index!984))))))

(declare-fun lt!300556 () Unit!22000)

(assert (=> b!647586 (= lt!300556 e!371362)))

(declare-fun c!74333 () Bool)

(assert (=> b!647586 (= c!74333 (= lt!300563 Undefined!6888))))

(assert (=> b!647586 (= lt!300563 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300561 lt!300557 mask!3053))))

(assert (=> b!647586 e!371351))

(declare-fun res!419648 () Bool)

(assert (=> b!647586 (=> (not res!419648) (not e!371351))))

(declare-fun lt!300551 () (_ BitVec 32))

(assert (=> b!647586 (= res!419648 (= lt!300564 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 lt!300561 lt!300557 mask!3053)))))

(assert (=> b!647586 (= lt!300564 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 (select (arr!18441 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!647586 (= lt!300561 (select (store (arr!18441 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300562 () Unit!22000)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> b!647586 (= lt!300562 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!647586 (= lt!300551 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!647587 () Bool)

(declare-fun Unit!22005 () Unit!22000)

(assert (=> b!647587 (= e!371362 Unit!22005)))

(declare-fun b!647588 () Bool)

(assert (=> b!647588 (= e!371361 e!371353)))

(declare-fun res!419632 () Bool)

(assert (=> b!647588 (=> res!419632 e!371353)))

(assert (=> b!647588 (= res!419632 (or (not (= (select (arr!18441 a!2986) j!136) lt!300561)) (not (= (select (arr!18441 a!2986) j!136) lt!300549))))))

(assert (=> b!647588 e!371357))

(declare-fun res!419640 () Bool)

(assert (=> b!647588 (=> (not res!419640) (not e!371357))))

(assert (=> b!647588 (= res!419640 (= lt!300549 (select (arr!18441 a!2986) j!136)))))

(assert (=> b!647588 (= lt!300549 (select (store (arr!18441 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!58764 res!419653) b!647577))

(assert (= (and b!647577 res!419651) b!647584))

(assert (= (and b!647584 res!419637) b!647580))

(assert (= (and b!647580 res!419649) b!647582))

(assert (= (and b!647582 res!419644) b!647570))

(assert (= (and b!647570 res!419647) b!647573))

(assert (= (and b!647573 res!419638) b!647564))

(assert (= (and b!647564 res!419633) b!647585))

(assert (= (and b!647585 res!419635) b!647572))

(assert (= (and b!647572 res!419636) b!647568))

(assert (= (and b!647568 res!419646) b!647586))

(assert (= (and b!647586 res!419648) b!647579))

(assert (= (and b!647586 c!74333) b!647576))

(assert (= (and b!647586 (not c!74333)) b!647587))

(assert (= (and b!647586 (not res!419642)) b!647588))

(assert (= (and b!647588 res!419640) b!647566))

(assert (= (and b!647566 (not res!419650)) b!647581))

(assert (= (and b!647581 res!419641) b!647575))

(assert (= (and b!647588 (not res!419632)) b!647565))

(assert (= (and b!647565 c!74332) b!647563))

(assert (= (and b!647565 (not c!74332)) b!647567))

(assert (= (and b!647565 (not res!419643)) b!647569))

(assert (= (and b!647569 res!419654) b!647574))

(assert (= (and b!647569 (not res!419639)) b!647562))

(assert (= (and b!647562 (not res!419645)) b!647578))

(assert (= (and b!647578 (not res!419634)) b!647571))

(assert (= (and b!647571 (not res!419652)) b!647583))

(declare-fun m!621027 () Bool)

(assert (=> b!647588 m!621027))

(declare-fun m!621029 () Bool)

(assert (=> b!647588 m!621029))

(declare-fun m!621031 () Bool)

(assert (=> b!647588 m!621031))

(declare-fun m!621033 () Bool)

(assert (=> b!647571 m!621033))

(declare-fun m!621035 () Bool)

(assert (=> b!647580 m!621035))

(assert (=> b!647575 m!621027))

(assert (=> b!647575 m!621027))

(declare-fun m!621037 () Bool)

(assert (=> b!647575 m!621037))

(declare-fun m!621039 () Bool)

(assert (=> b!647570 m!621039))

(declare-fun m!621041 () Bool)

(assert (=> b!647573 m!621041))

(declare-fun m!621043 () Bool)

(assert (=> b!647585 m!621043))

(assert (=> b!647584 m!621027))

(assert (=> b!647584 m!621027))

(declare-fun m!621045 () Bool)

(assert (=> b!647584 m!621045))

(assert (=> b!647569 m!621027))

(assert (=> b!647569 m!621027))

(declare-fun m!621047 () Bool)

(assert (=> b!647569 m!621047))

(assert (=> b!647569 m!621027))

(declare-fun m!621049 () Bool)

(assert (=> b!647569 m!621049))

(assert (=> b!647569 m!621027))

(declare-fun m!621051 () Bool)

(assert (=> b!647569 m!621051))

(declare-fun m!621053 () Bool)

(assert (=> b!647568 m!621053))

(assert (=> b!647568 m!621027))

(assert (=> b!647568 m!621027))

(declare-fun m!621055 () Bool)

(assert (=> b!647568 m!621055))

(declare-fun m!621057 () Bool)

(assert (=> b!647562 m!621057))

(declare-fun m!621059 () Bool)

(assert (=> b!647586 m!621059))

(declare-fun m!621061 () Bool)

(assert (=> b!647586 m!621061))

(assert (=> b!647586 m!621027))

(declare-fun m!621063 () Bool)

(assert (=> b!647586 m!621063))

(declare-fun m!621065 () Bool)

(assert (=> b!647586 m!621065))

(declare-fun m!621067 () Bool)

(assert (=> b!647586 m!621067))

(assert (=> b!647586 m!621027))

(declare-fun m!621069 () Bool)

(assert (=> b!647586 m!621069))

(assert (=> b!647586 m!621029))

(declare-fun m!621071 () Bool)

(assert (=> b!647578 m!621071))

(declare-fun m!621073 () Bool)

(assert (=> b!647582 m!621073))

(assert (=> b!647581 m!621027))

(assert (=> b!647581 m!621027))

(assert (=> b!647581 m!621051))

(assert (=> b!647563 m!621027))

(declare-fun m!621075 () Bool)

(assert (=> b!647563 m!621075))

(declare-fun m!621077 () Bool)

(assert (=> b!647563 m!621077))

(assert (=> b!647563 m!621027))

(declare-fun m!621079 () Bool)

(assert (=> b!647563 m!621079))

(declare-fun m!621081 () Bool)

(assert (=> b!647563 m!621081))

(assert (=> b!647563 m!621027))

(declare-fun m!621083 () Bool)

(assert (=> b!647563 m!621083))

(assert (=> b!647563 m!621027))

(declare-fun m!621085 () Bool)

(assert (=> b!647563 m!621085))

(declare-fun m!621087 () Bool)

(assert (=> b!647563 m!621087))

(assert (=> b!647574 m!621027))

(assert (=> b!647574 m!621027))

(assert (=> b!647574 m!621037))

(declare-fun m!621089 () Bool)

(assert (=> start!58764 m!621089))

(declare-fun m!621091 () Bool)

(assert (=> start!58764 m!621091))

(declare-fun m!621093 () Bool)

(assert (=> b!647583 m!621093))

(assert (=> b!647566 m!621027))

(declare-fun m!621095 () Bool)

(assert (=> b!647564 m!621095))

(assert (=> b!647572 m!621029))

(declare-fun m!621097 () Bool)

(assert (=> b!647572 m!621097))

(push 1)

(assert (not b!647569))

(assert (not b!647570))

(assert (not b!647582))

(assert (not b!647568))

(assert (not b!647581))

(assert (not b!647586))

(assert (not b!647584))

(assert (not b!647578))

(assert (not b!647573))

(assert (not b!647564))

(assert (not b!647575))

(assert (not b!647574))

(assert (not b!647563))

(assert (not b!647562))

(assert (not b!647580))

(assert (not b!647571))

(assert (not start!58764))

(assert (not b!647583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91597 () Bool)

(declare-fun res!419818 () Bool)

(declare-fun e!371499 () Bool)

(assert (=> d!91597 (=> res!419818 e!371499)))

(assert (=> d!91597 (= res!419818 (= (select (arr!18441 lt!300557) index!984) (select (arr!18441 a!2986) j!136)))))

(assert (=> d!91597 (= (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) index!984) e!371499)))

(declare-fun b!647806 () Bool)

(declare-fun e!371500 () Bool)

(assert (=> b!647806 (= e!371499 e!371500)))

(declare-fun res!419819 () Bool)

(assert (=> b!647806 (=> (not res!419819) (not e!371500))))

(assert (=> b!647806 (= res!419819 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18805 lt!300557)))))

(declare-fun b!647807 () Bool)

(assert (=> b!647807 (= e!371500 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91597 (not res!419818)) b!647806))

(assert (= (and b!647806 res!419819) b!647807))

(declare-fun m!621287 () Bool)

(assert (=> d!91597 m!621287))

(assert (=> b!647807 m!621027))

(declare-fun m!621293 () Bool)

(assert (=> b!647807 m!621293))

(assert (=> b!647575 d!91597))

(declare-fun b!647840 () Bool)

(declare-fun e!371524 () Bool)

(declare-fun e!371525 () Bool)

(assert (=> b!647840 (= e!371524 e!371525)))

(declare-fun c!74372 () Bool)

(assert (=> b!647840 (= c!74372 (validKeyInArray!0 (select (arr!18441 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647841 () Bool)

(declare-fun e!371522 () Bool)

(assert (=> b!647841 (= e!371522 e!371524)))

(declare-fun res!419832 () Bool)

(assert (=> b!647841 (=> (not res!419832) (not e!371524))))

(declare-fun e!371523 () Bool)

(assert (=> b!647841 (= res!419832 (not e!371523))))

(declare-fun res!419831 () Bool)

(assert (=> b!647841 (=> (not res!419831) (not e!371523))))

(assert (=> b!647841 (= res!419831 (validKeyInArray!0 (select (arr!18441 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647842 () Bool)

(declare-fun call!33704 () Bool)

(assert (=> b!647842 (= e!371525 call!33704)))

(declare-fun bm!33701 () Bool)

(assert (=> bm!33701 (= call!33704 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74372 (Cons!12531 (select (arr!18441 a!2986) #b00000000000000000000000000000000) Nil!12532) Nil!12532)))))

(declare-fun d!91607 () Bool)

(declare-fun res!419830 () Bool)

(assert (=> d!91607 (=> res!419830 e!371522)))

(assert (=> d!91607 (= res!419830 (bvsge #b00000000000000000000000000000000 (size!18805 a!2986)))))

(assert (=> d!91607 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12532) e!371522)))

(declare-fun b!647843 () Bool)

(assert (=> b!647843 (= e!371523 (contains!3158 Nil!12532 (select (arr!18441 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!647844 () Bool)

(assert (=> b!647844 (= e!371525 call!33704)))

(assert (= (and d!91607 (not res!419830)) b!647841))

(assert (= (and b!647841 res!419831) b!647843))

(assert (= (and b!647841 res!419832) b!647840))

(assert (= (and b!647840 c!74372) b!647842))

(assert (= (and b!647840 (not c!74372)) b!647844))

(assert (= (or b!647842 b!647844) bm!33701))

(declare-fun m!621313 () Bool)

(assert (=> b!647840 m!621313))

(assert (=> b!647840 m!621313))

(declare-fun m!621315 () Bool)

(assert (=> b!647840 m!621315))

(assert (=> b!647841 m!621313))

(assert (=> b!647841 m!621313))

(assert (=> b!647841 m!621315))

(assert (=> bm!33701 m!621313))

(declare-fun m!621317 () Bool)

(assert (=> bm!33701 m!621317))

(assert (=> b!647843 m!621313))

(assert (=> b!647843 m!621313))

(declare-fun m!621319 () Bool)

(assert (=> b!647843 m!621319))

(assert (=> b!647564 d!91607))

(declare-fun lt!300716 () SeekEntryResult!6888)

(declare-fun d!91615 () Bool)

(assert (=> d!91615 (and (or (is-Undefined!6888 lt!300716) (not (is-Found!6888 lt!300716)) (and (bvsge (index!29896 lt!300716) #b00000000000000000000000000000000) (bvslt (index!29896 lt!300716) (size!18805 lt!300557)))) (or (is-Undefined!6888 lt!300716) (is-Found!6888 lt!300716) (not (is-MissingVacant!6888 lt!300716)) (not (= (index!29898 lt!300716) vacantSpotIndex!68)) (and (bvsge (index!29898 lt!300716) #b00000000000000000000000000000000) (bvslt (index!29898 lt!300716) (size!18805 lt!300557)))) (or (is-Undefined!6888 lt!300716) (ite (is-Found!6888 lt!300716) (= (select (arr!18441 lt!300557) (index!29896 lt!300716)) lt!300561) (and (is-MissingVacant!6888 lt!300716) (= (index!29898 lt!300716) vacantSpotIndex!68) (= (select (arr!18441 lt!300557) (index!29898 lt!300716)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!371571 () SeekEntryResult!6888)

(assert (=> d!91615 (= lt!300716 e!371571)))

(declare-fun c!74392 () Bool)

(assert (=> d!91615 (= c!74392 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300717 () (_ BitVec 64))

(assert (=> d!91615 (= lt!300717 (select (arr!18441 lt!300557) index!984))))

(assert (=> d!91615 (validMask!0 mask!3053)))

(assert (=> d!91615 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300561 lt!300557 mask!3053) lt!300716)))

(declare-fun b!647908 () Bool)

(declare-fun e!371572 () SeekEntryResult!6888)

(assert (=> b!647908 (= e!371572 (MissingVacant!6888 vacantSpotIndex!68))))

(declare-fun b!647909 () Bool)

(assert (=> b!647909 (= e!371571 Undefined!6888)))

(declare-fun b!647910 () Bool)

(declare-fun e!371570 () SeekEntryResult!6888)

(assert (=> b!647910 (= e!371570 (Found!6888 index!984))))

(declare-fun b!647911 () Bool)

(declare-fun c!74394 () Bool)

(assert (=> b!647911 (= c!74394 (= lt!300717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647911 (= e!371570 e!371572)))

(declare-fun b!647912 () Bool)

(assert (=> b!647912 (= e!371571 e!371570)))

(declare-fun c!74393 () Bool)

(assert (=> b!647912 (= c!74393 (= lt!300717 lt!300561))))

(declare-fun b!647913 () Bool)

(assert (=> b!647913 (= e!371572 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300561 lt!300557 mask!3053))))

(assert (= (and d!91615 c!74392) b!647909))

(assert (= (and d!91615 (not c!74392)) b!647912))

(assert (= (and b!647912 c!74393) b!647910))

(assert (= (and b!647912 (not c!74393)) b!647911))

(assert (= (and b!647911 c!74394) b!647908))

(assert (= (and b!647911 (not c!74394)) b!647913))

(declare-fun m!621373 () Bool)

(assert (=> d!91615 m!621373))

(declare-fun m!621375 () Bool)

(assert (=> d!91615 m!621375))

(assert (=> d!91615 m!621287))

(assert (=> d!91615 m!621089))

(assert (=> b!647913 m!621059))

(assert (=> b!647913 m!621059))

(declare-fun m!621377 () Bool)

(assert (=> b!647913 m!621377))

(assert (=> b!647586 d!91615))

(declare-fun d!91639 () Bool)

(declare-fun lt!300723 () (_ BitVec 32))

(assert (=> d!91639 (and (bvsge lt!300723 #b00000000000000000000000000000000) (bvslt lt!300723 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91639 (= lt!300723 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91639 (validMask!0 mask!3053)))

(assert (=> d!91639 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300723)))

(declare-fun bs!19354 () Bool)

(assert (= bs!19354 d!91639))

(declare-fun m!621387 () Bool)

(assert (=> bs!19354 m!621387))

(assert (=> bs!19354 m!621089))

(assert (=> b!647586 d!91639))

(declare-fun d!91647 () Bool)

(declare-fun lt!300724 () SeekEntryResult!6888)

(assert (=> d!91647 (and (or (is-Undefined!6888 lt!300724) (not (is-Found!6888 lt!300724)) (and (bvsge (index!29896 lt!300724) #b00000000000000000000000000000000) (bvslt (index!29896 lt!300724) (size!18805 a!2986)))) (or (is-Undefined!6888 lt!300724) (is-Found!6888 lt!300724) (not (is-MissingVacant!6888 lt!300724)) (not (= (index!29898 lt!300724) vacantSpotIndex!68)) (and (bvsge (index!29898 lt!300724) #b00000000000000000000000000000000) (bvslt (index!29898 lt!300724) (size!18805 a!2986)))) (or (is-Undefined!6888 lt!300724) (ite (is-Found!6888 lt!300724) (= (select (arr!18441 a!2986) (index!29896 lt!300724)) (select (arr!18441 a!2986) j!136)) (and (is-MissingVacant!6888 lt!300724) (= (index!29898 lt!300724) vacantSpotIndex!68) (= (select (arr!18441 a!2986) (index!29898 lt!300724)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!371595 () SeekEntryResult!6888)

(assert (=> d!91647 (= lt!300724 e!371595)))

(declare-fun c!74401 () Bool)

(assert (=> d!91647 (= c!74401 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300725 () (_ BitVec 64))

(assert (=> d!91647 (= lt!300725 (select (arr!18441 a!2986) lt!300551))))

(assert (=> d!91647 (validMask!0 mask!3053)))

(assert (=> d!91647 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 (select (arr!18441 a!2986) j!136) a!2986 mask!3053) lt!300724)))

(declare-fun b!647941 () Bool)

(declare-fun e!371596 () SeekEntryResult!6888)

(assert (=> b!647941 (= e!371596 (MissingVacant!6888 vacantSpotIndex!68))))

(declare-fun b!647942 () Bool)

(assert (=> b!647942 (= e!371595 Undefined!6888)))

(declare-fun b!647943 () Bool)

(declare-fun e!371594 () SeekEntryResult!6888)

(assert (=> b!647943 (= e!371594 (Found!6888 lt!300551))))

(declare-fun b!647944 () Bool)

(declare-fun c!74403 () Bool)

(assert (=> b!647944 (= c!74403 (= lt!300725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647944 (= e!371594 e!371596)))

(declare-fun b!647945 () Bool)

(assert (=> b!647945 (= e!371595 e!371594)))

(declare-fun c!74402 () Bool)

(assert (=> b!647945 (= c!74402 (= lt!300725 (select (arr!18441 a!2986) j!136)))))

(declare-fun b!647946 () Bool)

(assert (=> b!647946 (= e!371596 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300551 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18441 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!91647 c!74401) b!647942))

(assert (= (and d!91647 (not c!74401)) b!647945))

(assert (= (and b!647945 c!74402) b!647943))

(assert (= (and b!647945 (not c!74402)) b!647944))

(assert (= (and b!647944 c!74403) b!647941))

(assert (= (and b!647944 (not c!74403)) b!647946))

(declare-fun m!621399 () Bool)

(assert (=> d!91647 m!621399))

(declare-fun m!621401 () Bool)

(assert (=> d!91647 m!621401))

(declare-fun m!621403 () Bool)

(assert (=> d!91647 m!621403))

(assert (=> d!91647 m!621089))

(declare-fun m!621405 () Bool)

(assert (=> b!647946 m!621405))

(assert (=> b!647946 m!621405))

(assert (=> b!647946 m!621027))

(declare-fun m!621407 () Bool)

(assert (=> b!647946 m!621407))

(assert (=> b!647586 d!91647))

(declare-fun d!91651 () Bool)

(declare-fun lt!300726 () SeekEntryResult!6888)

(assert (=> d!91651 (and (or (is-Undefined!6888 lt!300726) (not (is-Found!6888 lt!300726)) (and (bvsge (index!29896 lt!300726) #b00000000000000000000000000000000) (bvslt (index!29896 lt!300726) (size!18805 lt!300557)))) (or (is-Undefined!6888 lt!300726) (is-Found!6888 lt!300726) (not (is-MissingVacant!6888 lt!300726)) (not (= (index!29898 lt!300726) vacantSpotIndex!68)) (and (bvsge (index!29898 lt!300726) #b00000000000000000000000000000000) (bvslt (index!29898 lt!300726) (size!18805 lt!300557)))) (or (is-Undefined!6888 lt!300726) (ite (is-Found!6888 lt!300726) (= (select (arr!18441 lt!300557) (index!29896 lt!300726)) lt!300561) (and (is-MissingVacant!6888 lt!300726) (= (index!29898 lt!300726) vacantSpotIndex!68) (= (select (arr!18441 lt!300557) (index!29898 lt!300726)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!371602 () SeekEntryResult!6888)

(assert (=> d!91651 (= lt!300726 e!371602)))

(declare-fun c!74405 () Bool)

(assert (=> d!91651 (= c!74405 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300727 () (_ BitVec 64))

(assert (=> d!91651 (= lt!300727 (select (arr!18441 lt!300557) lt!300551))))

(assert (=> d!91651 (validMask!0 mask!3053)))

(assert (=> d!91651 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 lt!300561 lt!300557 mask!3053) lt!300726)))

(declare-fun b!647952 () Bool)

(declare-fun e!371603 () SeekEntryResult!6888)

(assert (=> b!647952 (= e!371603 (MissingVacant!6888 vacantSpotIndex!68))))

(declare-fun b!647953 () Bool)

(assert (=> b!647953 (= e!371602 Undefined!6888)))

(declare-fun b!647954 () Bool)

(declare-fun e!371601 () SeekEntryResult!6888)

(assert (=> b!647954 (= e!371601 (Found!6888 lt!300551))))

(declare-fun b!647955 () Bool)

(declare-fun c!74407 () Bool)

(assert (=> b!647955 (= c!74407 (= lt!300727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647955 (= e!371601 e!371603)))

(declare-fun b!647956 () Bool)

(assert (=> b!647956 (= e!371602 e!371601)))

(declare-fun c!74406 () Bool)

(assert (=> b!647956 (= c!74406 (= lt!300727 lt!300561))))

(declare-fun b!647957 () Bool)

(assert (=> b!647957 (= e!371603 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300551 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300561 lt!300557 mask!3053))))

(assert (= (and d!91651 c!74405) b!647953))

(assert (= (and d!91651 (not c!74405)) b!647956))

(assert (= (and b!647956 c!74406) b!647954))

(assert (= (and b!647956 (not c!74406)) b!647955))

(assert (= (and b!647955 c!74407) b!647952))

(assert (= (and b!647955 (not c!74407)) b!647957))

(declare-fun m!621415 () Bool)

(assert (=> d!91651 m!621415))

(declare-fun m!621417 () Bool)

(assert (=> d!91651 m!621417))

(declare-fun m!621419 () Bool)

(assert (=> d!91651 m!621419))

(assert (=> d!91651 m!621089))

(assert (=> b!647957 m!621405))

(assert (=> b!647957 m!621405))

(declare-fun m!621421 () Bool)

(assert (=> b!647957 m!621421))

(assert (=> b!647586 d!91651))

(declare-fun d!91655 () Bool)

(declare-fun e!371638 () Bool)

(assert (=> d!91655 e!371638))

(declare-fun res!419906 () Bool)

(assert (=> d!91655 (=> (not res!419906) (not e!371638))))

(assert (=> d!91655 (= res!419906 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18805 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18805 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18805 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18805 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18805 a!2986))))))

(declare-fun lt!300755 () Unit!22000)

(declare-fun choose!9 (array!38475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> d!91655 (= lt!300755 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91655 (validMask!0 mask!3053)))

(assert (=> d!91655 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 mask!3053) lt!300755)))

(declare-fun b!647996 () Bool)

(assert (=> b!647996 (= e!371638 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 (select (arr!18441 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300551 vacantSpotIndex!68 (select (store (arr!18441 a!2986) i!1108 k!1786) j!136) (array!38476 (store (arr!18441 a!2986) i!1108 k!1786) (size!18805 a!2986)) mask!3053)))))

(assert (= (and d!91655 res!419906) b!647996))

(declare-fun m!621475 () Bool)

(assert (=> d!91655 m!621475))

(assert (=> d!91655 m!621089))

(assert (=> b!647996 m!621029))

(assert (=> b!647996 m!621061))

(declare-fun m!621477 () Bool)

(assert (=> b!647996 m!621477))

(assert (=> b!647996 m!621027))

(assert (=> b!647996 m!621027))

(assert (=> b!647996 m!621069))

(assert (=> b!647996 m!621061))

(assert (=> b!647586 d!91655))

(declare-fun d!91681 () Bool)

(assert (=> d!91681 (arrayContainsKey!0 lt!300557 (select (arr!18441 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300758 () Unit!22000)

(declare-fun choose!114 (array!38475 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> d!91681 (= lt!300758 (choose!114 lt!300557 (select (arr!18441 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91681 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91681 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300557 (select (arr!18441 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300758)))

(declare-fun bs!19359 () Bool)

(assert (= bs!19359 d!91681))

(assert (=> bs!19359 m!621027))

(assert (=> bs!19359 m!621079))

(assert (=> bs!19359 m!621027))

(declare-fun m!621479 () Bool)

(assert (=> bs!19359 m!621479))

(assert (=> b!647563 d!91681))

(declare-fun b!647997 () Bool)

(declare-fun e!371641 () Bool)

(declare-fun e!371642 () Bool)

(assert (=> b!647997 (= e!371641 e!371642)))

(declare-fun c!74412 () Bool)

(assert (=> b!647997 (= c!74412 (validKeyInArray!0 (select (arr!18441 lt!300557) #b00000000000000000000000000000000)))))

(declare-fun b!647998 () Bool)

(declare-fun e!371639 () Bool)

(assert (=> b!647998 (= e!371639 e!371641)))

(declare-fun res!419909 () Bool)

(assert (=> b!647998 (=> (not res!419909) (not e!371641))))

(declare-fun e!371640 () Bool)

(assert (=> b!647998 (= res!419909 (not e!371640))))

(declare-fun res!419908 () Bool)

(assert (=> b!647998 (=> (not res!419908) (not e!371640))))

(assert (=> b!647998 (= res!419908 (validKeyInArray!0 (select (arr!18441 lt!300557) #b00000000000000000000000000000000)))))

(declare-fun b!647999 () Bool)

(declare-fun call!33717 () Bool)

(assert (=> b!647999 (= e!371642 call!33717)))

(declare-fun bm!33714 () Bool)

(assert (=> bm!33714 (= call!33717 (arrayNoDuplicates!0 lt!300557 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74412 (Cons!12531 (select (arr!18441 lt!300557) #b00000000000000000000000000000000) Nil!12532) Nil!12532)))))

(declare-fun d!91683 () Bool)

(declare-fun res!419907 () Bool)

(assert (=> d!91683 (=> res!419907 e!371639)))

(assert (=> d!91683 (= res!419907 (bvsge #b00000000000000000000000000000000 (size!18805 lt!300557)))))

(assert (=> d!91683 (= (arrayNoDuplicates!0 lt!300557 #b00000000000000000000000000000000 Nil!12532) e!371639)))

(declare-fun b!648000 () Bool)

(assert (=> b!648000 (= e!371640 (contains!3158 Nil!12532 (select (arr!18441 lt!300557) #b00000000000000000000000000000000)))))

(declare-fun b!648001 () Bool)

(assert (=> b!648001 (= e!371642 call!33717)))

(assert (= (and d!91683 (not res!419907)) b!647998))

(assert (= (and b!647998 res!419908) b!648000))

(assert (= (and b!647998 res!419909) b!647997))

(assert (= (and b!647997 c!74412) b!647999))

(assert (= (and b!647997 (not c!74412)) b!648001))

(assert (= (or b!647999 b!648001) bm!33714))

(declare-fun m!621481 () Bool)

(assert (=> b!647997 m!621481))

(assert (=> b!647997 m!621481))

(declare-fun m!621483 () Bool)

(assert (=> b!647997 m!621483))

(assert (=> b!647998 m!621481))

(assert (=> b!647998 m!621481))

(assert (=> b!647998 m!621483))

(assert (=> bm!33714 m!621481))

(declare-fun m!621485 () Bool)

(assert (=> bm!33714 m!621485))

(assert (=> b!648000 m!621481))

(assert (=> b!648000 m!621481))

(declare-fun m!621487 () Bool)

(assert (=> b!648000 m!621487))

(assert (=> b!647563 d!91683))

(declare-fun d!91685 () Bool)

(assert (=> d!91685 (arrayNoDuplicates!0 lt!300557 j!136 Nil!12532)))

(declare-fun lt!300765 () Unit!22000)

(declare-fun choose!39 (array!38475 (_ BitVec 32) (_ BitVec 32)) Unit!22000)

(assert (=> d!91685 (= lt!300765 (choose!39 lt!300557 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91685 (bvslt (size!18805 lt!300557) #b01111111111111111111111111111111)))

(assert (=> d!91685 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300557 #b00000000000000000000000000000000 j!136) lt!300765)))

(declare-fun bs!19360 () Bool)

(assert (= bs!19360 d!91685))

(assert (=> bs!19360 m!621087))

(declare-fun m!621489 () Bool)

(assert (=> bs!19360 m!621489))

(assert (=> b!647563 d!91685))

(declare-fun b!648014 () Bool)

(declare-fun e!371651 () Bool)

(declare-fun e!371652 () Bool)

(assert (=> b!648014 (= e!371651 e!371652)))

(declare-fun c!74419 () Bool)

(assert (=> b!648014 (= c!74419 (validKeyInArray!0 (select (arr!18441 lt!300557) j!136)))))

(declare-fun b!648015 () Bool)

(declare-fun e!371649 () Bool)

(assert (=> b!648015 (= e!371649 e!371651)))

(declare-fun res!419912 () Bool)

(assert (=> b!648015 (=> (not res!419912) (not e!371651))))

(declare-fun e!371650 () Bool)

(assert (=> b!648015 (= res!419912 (not e!371650))))

(declare-fun res!419911 () Bool)

(assert (=> b!648015 (=> (not res!419911) (not e!371650))))

(assert (=> b!648015 (= res!419911 (validKeyInArray!0 (select (arr!18441 lt!300557) j!136)))))

(declare-fun b!648016 () Bool)

(declare-fun call!33718 () Bool)

(assert (=> b!648016 (= e!371652 call!33718)))

(declare-fun bm!33715 () Bool)

(assert (=> bm!33715 (= call!33718 (arrayNoDuplicates!0 lt!300557 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74419 (Cons!12531 (select (arr!18441 lt!300557) j!136) Nil!12532) Nil!12532)))))

(declare-fun d!91687 () Bool)

(declare-fun res!419910 () Bool)

(assert (=> d!91687 (=> res!419910 e!371649)))

(assert (=> d!91687 (= res!419910 (bvsge j!136 (size!18805 lt!300557)))))

(assert (=> d!91687 (= (arrayNoDuplicates!0 lt!300557 j!136 Nil!12532) e!371649)))

(declare-fun b!648017 () Bool)

(assert (=> b!648017 (= e!371650 (contains!3158 Nil!12532 (select (arr!18441 lt!300557) j!136)))))

(declare-fun b!648018 () Bool)

(assert (=> b!648018 (= e!371652 call!33718)))

(assert (= (and d!91687 (not res!419910)) b!648015))

(assert (= (and b!648015 res!419911) b!648017))

(assert (= (and b!648015 res!419912) b!648014))

(assert (= (and b!648014 c!74419) b!648016))

(assert (= (and b!648014 (not c!74419)) b!648018))

(assert (= (or b!648016 b!648018) bm!33715))

(declare-fun m!621491 () Bool)

(assert (=> b!648014 m!621491))

(assert (=> b!648014 m!621491))

(declare-fun m!621493 () Bool)

(assert (=> b!648014 m!621493))

(assert (=> b!648015 m!621491))

(assert (=> b!648015 m!621491))

(assert (=> b!648015 m!621493))

(assert (=> bm!33715 m!621491))

(declare-fun m!621495 () Bool)

(assert (=> bm!33715 m!621495))

(assert (=> b!648017 m!621491))

(assert (=> b!648017 m!621491))

(declare-fun m!621497 () Bool)

(assert (=> b!648017 m!621497))

(assert (=> b!647563 d!91687))

(declare-fun d!91689 () Bool)

(assert (=> d!91689 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18805 lt!300557)) (not (= (select (arr!18441 lt!300557) j!136) (select (arr!18441 a!2986) j!136))))))

(declare-fun lt!300770 () Unit!22000)

