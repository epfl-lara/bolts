; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58570 () Bool)

(assert start!58570)

(declare-fun b!646524 () Bool)

(declare-fun e!370633 () Bool)

(declare-datatypes ((SeekEntryResult!6884 0))(
  ( (MissingZero!6884 (index!29873 (_ BitVec 32))) (Found!6884 (index!29874 (_ BitVec 32))) (Intermediate!6884 (undefined!7696 Bool) (index!29875 (_ BitVec 32)) (x!58671 (_ BitVec 32))) (Undefined!6884) (MissingVacant!6884 (index!29876 (_ BitVec 32))) )
))
(declare-fun lt!300051 () SeekEntryResult!6884)

(declare-fun lt!300061 () SeekEntryResult!6884)

(assert (=> b!646524 (= e!370633 (= lt!300051 lt!300061))))

(declare-fun b!646525 () Bool)

(declare-fun e!370643 () Bool)

(declare-fun e!370638 () Bool)

(assert (=> b!646525 (= e!370643 (not e!370638))))

(declare-fun res!419078 () Bool)

(assert (=> b!646525 (=> res!419078 e!370638)))

(declare-fun lt!300053 () SeekEntryResult!6884)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!646525 (= res!419078 (not (= lt!300053 (Found!6884 index!984))))))

(declare-datatypes ((Unit!21976 0))(
  ( (Unit!21977) )
))
(declare-fun lt!300064 () Unit!21976)

(declare-fun e!370631 () Unit!21976)

(assert (=> b!646525 (= lt!300064 e!370631)))

(declare-fun c!74099 () Bool)

(assert (=> b!646525 (= c!74099 (= lt!300053 Undefined!6884))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!300054 () (_ BitVec 64))

(declare-datatypes ((array!38461 0))(
  ( (array!38462 (arr!18437 (Array (_ BitVec 32) (_ BitVec 64))) (size!18801 (_ BitVec 32))) )
))
(declare-fun lt!300060 () array!38461)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38461 (_ BitVec 32)) SeekEntryResult!6884)

(assert (=> b!646525 (= lt!300053 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300054 lt!300060 mask!3053))))

(assert (=> b!646525 e!370633))

(declare-fun res!419071 () Bool)

(assert (=> b!646525 (=> (not res!419071) (not e!370633))))

(declare-fun lt!300055 () (_ BitVec 32))

(assert (=> b!646525 (= res!419071 (= lt!300061 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 lt!300054 lt!300060 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38461)

(assert (=> b!646525 (= lt!300061 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!646525 (= lt!300054 (select (store (arr!18437 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300052 () Unit!21976)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> b!646525 (= lt!300052 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646525 (= lt!300055 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646526 () Bool)

(declare-fun res!419065 () Bool)

(declare-fun e!370637 () Bool)

(assert (=> b!646526 (=> (not res!419065) (not e!370637))))

(assert (=> b!646526 (= res!419065 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18437 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646527 () Bool)

(declare-fun e!370630 () Unit!21976)

(declare-fun Unit!21978 () Unit!21976)

(assert (=> b!646527 (= e!370630 Unit!21978)))

(declare-fun lt!300065 () Unit!21976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> b!646527 (= lt!300065 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300060 (select (arr!18437 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646527 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300059 () Unit!21976)

(declare-datatypes ((List!12531 0))(
  ( (Nil!12528) (Cons!12527 (h!13572 (_ BitVec 64)) (t!18767 List!12531)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12531) Unit!21976)

(assert (=> b!646527 (= lt!300059 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12528))))

(declare-fun arrayNoDuplicates!0 (array!38461 (_ BitVec 32) List!12531) Bool)

(assert (=> b!646527 (arrayNoDuplicates!0 lt!300060 #b00000000000000000000000000000000 Nil!12528)))

(declare-fun lt!300057 () Unit!21976)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38461 (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> b!646527 (= lt!300057 (lemmaNoDuplicateFromThenFromBigger!0 lt!300060 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646527 (arrayNoDuplicates!0 lt!300060 j!136 Nil!12528)))

(declare-fun lt!300066 () Unit!21976)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38461 (_ BitVec 64) (_ BitVec 32) List!12531) Unit!21976)

(assert (=> b!646527 (= lt!300066 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300060 (select (arr!18437 a!2986) j!136) j!136 Nil!12528))))

(assert (=> b!646527 false))

(declare-fun b!646528 () Bool)

(declare-fun e!370635 () Bool)

(declare-fun e!370641 () Bool)

(assert (=> b!646528 (= e!370635 e!370641)))

(declare-fun res!419067 () Bool)

(assert (=> b!646528 (=> res!419067 e!370641)))

(assert (=> b!646528 (= res!419067 (bvsge index!984 j!136))))

(declare-fun lt!300058 () Unit!21976)

(assert (=> b!646528 (= lt!300058 e!370630)))

(declare-fun c!74098 () Bool)

(assert (=> b!646528 (= c!74098 (bvslt j!136 index!984))))

(declare-fun b!646529 () Bool)

(declare-fun Unit!21979 () Unit!21976)

(assert (=> b!646529 (= e!370630 Unit!21979)))

(declare-fun b!646530 () Bool)

(declare-fun res!419069 () Bool)

(assert (=> b!646530 (=> (not res!419069) (not e!370637))))

(assert (=> b!646530 (= res!419069 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12528))))

(declare-fun b!646531 () Bool)

(declare-fun e!370639 () Bool)

(declare-fun noDuplicate!414 (List!12531) Bool)

(assert (=> b!646531 (= e!370639 (noDuplicate!414 Nil!12528))))

(declare-fun b!646532 () Bool)

(declare-fun res!419076 () Bool)

(assert (=> b!646532 (=> (not res!419076) (not e!370637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38461 (_ BitVec 32)) Bool)

(assert (=> b!646532 (= res!419076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!419077 () Bool)

(declare-fun e!370632 () Bool)

(assert (=> start!58570 (=> (not res!419077) (not e!370632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58570 (= res!419077 (validMask!0 mask!3053))))

(assert (=> start!58570 e!370632))

(assert (=> start!58570 true))

(declare-fun array_inv!14211 (array!38461) Bool)

(assert (=> start!58570 (array_inv!14211 a!2986)))

(declare-fun b!646533 () Bool)

(declare-fun Unit!21980 () Unit!21976)

(assert (=> b!646533 (= e!370631 Unit!21980)))

(declare-fun b!646534 () Bool)

(declare-fun Unit!21981 () Unit!21976)

(assert (=> b!646534 (= e!370631 Unit!21981)))

(assert (=> b!646534 false))

(declare-fun b!646535 () Bool)

(declare-fun res!419081 () Bool)

(assert (=> b!646535 (=> (not res!419081) (not e!370632))))

(assert (=> b!646535 (= res!419081 (and (= (size!18801 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18801 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18801 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646536 () Bool)

(assert (=> b!646536 (= e!370632 e!370637)))

(declare-fun res!419063 () Bool)

(assert (=> b!646536 (=> (not res!419063) (not e!370637))))

(declare-fun lt!300063 () SeekEntryResult!6884)

(assert (=> b!646536 (= res!419063 (or (= lt!300063 (MissingZero!6884 i!1108)) (= lt!300063 (MissingVacant!6884 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38461 (_ BitVec 32)) SeekEntryResult!6884)

(assert (=> b!646536 (= lt!300063 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646537 () Bool)

(assert (=> b!646537 (= e!370638 e!370635)))

(declare-fun res!419070 () Bool)

(assert (=> b!646537 (=> res!419070 e!370635)))

(declare-fun lt!300056 () (_ BitVec 64))

(assert (=> b!646537 (= res!419070 (or (not (= (select (arr!18437 a!2986) j!136) lt!300054)) (not (= (select (arr!18437 a!2986) j!136) lt!300056))))))

(declare-fun e!370644 () Bool)

(assert (=> b!646537 e!370644))

(declare-fun res!419068 () Bool)

(assert (=> b!646537 (=> (not res!419068) (not e!370644))))

(assert (=> b!646537 (= res!419068 (= lt!300056 (select (arr!18437 a!2986) j!136)))))

(assert (=> b!646537 (= lt!300056 (select (store (arr!18437 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!646538 () Bool)

(declare-fun res!419064 () Bool)

(assert (=> b!646538 (=> (not res!419064) (not e!370632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646538 (= res!419064 (validKeyInArray!0 k!1786))))

(declare-fun b!646539 () Bool)

(declare-fun e!370640 () Bool)

(assert (=> b!646539 (= e!370640 e!370643)))

(declare-fun res!419072 () Bool)

(assert (=> b!646539 (=> (not res!419072) (not e!370643))))

(assert (=> b!646539 (= res!419072 (and (= lt!300051 (Found!6884 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18437 a!2986) index!984) (select (arr!18437 a!2986) j!136))) (not (= (select (arr!18437 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646539 (= lt!300051 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646540 () Bool)

(declare-fun res!419075 () Bool)

(assert (=> b!646540 (=> (not res!419075) (not e!370632))))

(assert (=> b!646540 (= res!419075 (validKeyInArray!0 (select (arr!18437 a!2986) j!136)))))

(declare-fun b!646541 () Bool)

(assert (=> b!646541 (= e!370637 e!370640)))

(declare-fun res!419074 () Bool)

(assert (=> b!646541 (=> (not res!419074) (not e!370640))))

(assert (=> b!646541 (= res!419074 (= (select (store (arr!18437 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646541 (= lt!300060 (array!38462 (store (arr!18437 a!2986) i!1108 k!1786) (size!18801 a!2986)))))

(declare-fun b!646542 () Bool)

(declare-fun e!370645 () Bool)

(assert (=> b!646542 (= e!370645 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) index!984))))

(declare-fun b!646543 () Bool)

(declare-fun e!370636 () Bool)

(assert (=> b!646543 (= e!370644 e!370636)))

(declare-fun res!419079 () Bool)

(assert (=> b!646543 (=> res!419079 e!370636)))

(assert (=> b!646543 (= res!419079 (or (not (= (select (arr!18437 a!2986) j!136) lt!300054)) (not (= (select (arr!18437 a!2986) j!136) lt!300056)) (bvsge j!136 index!984)))))

(declare-fun b!646544 () Bool)

(declare-fun e!370642 () Bool)

(assert (=> b!646544 (= e!370636 e!370642)))

(declare-fun res!419080 () Bool)

(assert (=> b!646544 (=> (not res!419080) (not e!370642))))

(assert (=> b!646544 (= res!419080 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) j!136))))

(declare-fun b!646545 () Bool)

(assert (=> b!646545 (= e!370641 e!370639)))

(declare-fun res!419062 () Bool)

(assert (=> b!646545 (=> res!419062 e!370639)))

(assert (=> b!646545 (= res!419062 (or (bvsge (size!18801 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18801 a!2986))))))

(assert (=> b!646545 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300062 () Unit!21976)

(assert (=> b!646545 (= lt!300062 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300060 (select (arr!18437 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!646545 e!370645))

(declare-fun res!419066 () Bool)

(assert (=> b!646545 (=> (not res!419066) (not e!370645))))

(assert (=> b!646545 (= res!419066 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) j!136))))

(declare-fun b!646546 () Bool)

(declare-fun res!419073 () Bool)

(assert (=> b!646546 (=> (not res!419073) (not e!370632))))

(assert (=> b!646546 (= res!419073 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646547 () Bool)

(assert (=> b!646547 (= e!370642 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) index!984))))

(assert (= (and start!58570 res!419077) b!646535))

(assert (= (and b!646535 res!419081) b!646540))

(assert (= (and b!646540 res!419075) b!646538))

(assert (= (and b!646538 res!419064) b!646546))

(assert (= (and b!646546 res!419073) b!646536))

(assert (= (and b!646536 res!419063) b!646532))

(assert (= (and b!646532 res!419076) b!646530))

(assert (= (and b!646530 res!419069) b!646526))

(assert (= (and b!646526 res!419065) b!646541))

(assert (= (and b!646541 res!419074) b!646539))

(assert (= (and b!646539 res!419072) b!646525))

(assert (= (and b!646525 res!419071) b!646524))

(assert (= (and b!646525 c!74099) b!646534))

(assert (= (and b!646525 (not c!74099)) b!646533))

(assert (= (and b!646525 (not res!419078)) b!646537))

(assert (= (and b!646537 res!419068) b!646543))

(assert (= (and b!646543 (not res!419079)) b!646544))

(assert (= (and b!646544 res!419080) b!646547))

(assert (= (and b!646537 (not res!419070)) b!646528))

(assert (= (and b!646528 c!74098) b!646527))

(assert (= (and b!646528 (not c!74098)) b!646529))

(assert (= (and b!646528 (not res!419067)) b!646545))

(assert (= (and b!646545 res!419066) b!646542))

(assert (= (and b!646545 (not res!419062)) b!646531))

(declare-fun m!620037 () Bool)

(assert (=> b!646542 m!620037))

(assert (=> b!646542 m!620037))

(declare-fun m!620039 () Bool)

(assert (=> b!646542 m!620039))

(declare-fun m!620041 () Bool)

(assert (=> b!646541 m!620041))

(declare-fun m!620043 () Bool)

(assert (=> b!646541 m!620043))

(declare-fun m!620045 () Bool)

(assert (=> start!58570 m!620045))

(declare-fun m!620047 () Bool)

(assert (=> start!58570 m!620047))

(declare-fun m!620049 () Bool)

(assert (=> b!646527 m!620049))

(declare-fun m!620051 () Bool)

(assert (=> b!646527 m!620051))

(assert (=> b!646527 m!620037))

(assert (=> b!646527 m!620037))

(declare-fun m!620053 () Bool)

(assert (=> b!646527 m!620053))

(assert (=> b!646527 m!620037))

(declare-fun m!620055 () Bool)

(assert (=> b!646527 m!620055))

(declare-fun m!620057 () Bool)

(assert (=> b!646527 m!620057))

(assert (=> b!646527 m!620037))

(declare-fun m!620059 () Bool)

(assert (=> b!646527 m!620059))

(declare-fun m!620061 () Bool)

(assert (=> b!646527 m!620061))

(assert (=> b!646545 m!620037))

(assert (=> b!646545 m!620037))

(declare-fun m!620063 () Bool)

(assert (=> b!646545 m!620063))

(assert (=> b!646545 m!620037))

(declare-fun m!620065 () Bool)

(assert (=> b!646545 m!620065))

(assert (=> b!646545 m!620037))

(declare-fun m!620067 () Bool)

(assert (=> b!646545 m!620067))

(assert (=> b!646540 m!620037))

(assert (=> b!646540 m!620037))

(declare-fun m!620069 () Bool)

(assert (=> b!646540 m!620069))

(declare-fun m!620071 () Bool)

(assert (=> b!646539 m!620071))

(assert (=> b!646539 m!620037))

(assert (=> b!646539 m!620037))

(declare-fun m!620073 () Bool)

(assert (=> b!646539 m!620073))

(declare-fun m!620075 () Bool)

(assert (=> b!646531 m!620075))

(declare-fun m!620077 () Bool)

(assert (=> b!646525 m!620077))

(assert (=> b!646525 m!620037))

(declare-fun m!620079 () Bool)

(assert (=> b!646525 m!620079))

(assert (=> b!646525 m!620037))

(assert (=> b!646525 m!620041))

(declare-fun m!620081 () Bool)

(assert (=> b!646525 m!620081))

(declare-fun m!620083 () Bool)

(assert (=> b!646525 m!620083))

(declare-fun m!620085 () Bool)

(assert (=> b!646525 m!620085))

(declare-fun m!620087 () Bool)

(assert (=> b!646525 m!620087))

(assert (=> b!646537 m!620037))

(assert (=> b!646537 m!620041))

(declare-fun m!620089 () Bool)

(assert (=> b!646537 m!620089))

(declare-fun m!620091 () Bool)

(assert (=> b!646536 m!620091))

(declare-fun m!620093 () Bool)

(assert (=> b!646538 m!620093))

(declare-fun m!620095 () Bool)

(assert (=> b!646532 m!620095))

(declare-fun m!620097 () Bool)

(assert (=> b!646546 m!620097))

(assert (=> b!646543 m!620037))

(declare-fun m!620099 () Bool)

(assert (=> b!646526 m!620099))

(assert (=> b!646547 m!620037))

(assert (=> b!646547 m!620037))

(assert (=> b!646547 m!620039))

(declare-fun m!620101 () Bool)

(assert (=> b!646530 m!620101))

(assert (=> b!646544 m!620037))

(assert (=> b!646544 m!620037))

(assert (=> b!646544 m!620067))

(push 1)

(assert (not b!646544))

(assert (not b!646536))

(assert (not b!646525))

(assert (not b!646540))

(assert (not b!646546))

(assert (not b!646530))

(assert (not b!646527))

(assert (not start!58570))

(assert (not b!646531))

(assert (not b!646542))

(assert (not b!646545))

(assert (not b!646532))

(assert (not b!646539))

(assert (not b!646547))

(assert (not b!646538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!646614 () Bool)

(declare-fun e!370702 () Bool)

(declare-fun call!33661 () Bool)

(assert (=> b!646614 (= e!370702 call!33661)))

(declare-fun bm!33658 () Bool)

(declare-fun c!74113 () Bool)

(assert (=> bm!33658 (= call!33661 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74113 (Cons!12527 (select (arr!18437 a!2986) #b00000000000000000000000000000000) Nil!12528) Nil!12528)))))

(declare-fun b!646615 () Bool)

(declare-fun e!370699 () Bool)

(assert (=> b!646615 (= e!370699 e!370702)))

(assert (=> b!646615 (= c!74113 (validKeyInArray!0 (select (arr!18437 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646617 () Bool)

(declare-fun e!370700 () Bool)

(declare-fun contains!3153 (List!12531 (_ BitVec 64)) Bool)

(assert (=> b!646617 (= e!370700 (contains!3153 Nil!12528 (select (arr!18437 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646618 () Bool)

(declare-fun e!370701 () Bool)

(assert (=> b!646618 (= e!370701 e!370699)))

(declare-fun res!419122 () Bool)

(assert (=> b!646618 (=> (not res!419122) (not e!370699))))

(assert (=> b!646618 (= res!419122 (not e!370700))))

(declare-fun res!419123 () Bool)

(assert (=> b!646618 (=> (not res!419123) (not e!370700))))

(assert (=> b!646618 (= res!419123 (validKeyInArray!0 (select (arr!18437 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!91271 () Bool)

(declare-fun res!419124 () Bool)

(assert (=> d!91271 (=> res!419124 e!370701)))

(assert (=> d!91271 (= res!419124 (bvsge #b00000000000000000000000000000000 (size!18801 a!2986)))))

(assert (=> d!91271 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12528) e!370701)))

(declare-fun b!646616 () Bool)

(assert (=> b!646616 (= e!370702 call!33661)))

(assert (= (and d!91271 (not res!419124)) b!646618))

(assert (= (and b!646618 res!419123) b!646617))

(assert (= (and b!646618 res!419122) b!646615))

(assert (= (and b!646615 c!74113) b!646614))

(assert (= (and b!646615 (not c!74113)) b!646616))

(assert (= (or b!646614 b!646616) bm!33658))

(declare-fun m!620151 () Bool)

(assert (=> bm!33658 m!620151))

(declare-fun m!620153 () Bool)

(assert (=> bm!33658 m!620153))

(assert (=> b!646615 m!620151))

(assert (=> b!646615 m!620151))

(declare-fun m!620155 () Bool)

(assert (=> b!646615 m!620155))

(assert (=> b!646617 m!620151))

(assert (=> b!646617 m!620151))

(declare-fun m!620157 () Bool)

(assert (=> b!646617 m!620157))

(assert (=> b!646618 m!620151))

(assert (=> b!646618 m!620151))

(assert (=> b!646618 m!620155))

(assert (=> b!646530 d!91271))

(declare-fun d!91277 () Bool)

(assert (=> d!91277 (= (validKeyInArray!0 (select (arr!18437 a!2986) j!136)) (and (not (= (select (arr!18437 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18437 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646540 d!91277))

(declare-fun d!91279 () Bool)

(declare-fun res!419135 () Bool)

(declare-fun e!370721 () Bool)

(assert (=> d!91279 (=> res!419135 e!370721)))

(assert (=> d!91279 (= res!419135 (= (select (arr!18437 lt!300060) index!984) (select (arr!18437 a!2986) j!136)))))

(assert (=> d!91279 (= (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) index!984) e!370721)))

(declare-fun b!646645 () Bool)

(declare-fun e!370722 () Bool)

(assert (=> b!646645 (= e!370721 e!370722)))

(declare-fun res!419136 () Bool)

(assert (=> b!646645 (=> (not res!419136) (not e!370722))))

(assert (=> b!646645 (= res!419136 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18801 lt!300060)))))

(declare-fun b!646646 () Bool)

(assert (=> b!646646 (= e!370722 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91279 (not res!419135)) b!646645))

(assert (= (and b!646645 res!419136) b!646646))

(declare-fun m!620175 () Bool)

(assert (=> d!91279 m!620175))

(assert (=> b!646646 m!620037))

(declare-fun m!620177 () Bool)

(assert (=> b!646646 m!620177))

(assert (=> b!646542 d!91279))

(declare-fun d!91285 () Bool)

(declare-fun res!419146 () Bool)

(declare-fun e!370733 () Bool)

(assert (=> d!91285 (=> res!419146 e!370733)))

(assert (=> d!91285 (= res!419146 (is-Nil!12528 Nil!12528))))

(assert (=> d!91285 (= (noDuplicate!414 Nil!12528) e!370733)))

(declare-fun b!646658 () Bool)

(declare-fun e!370734 () Bool)

(assert (=> b!646658 (= e!370733 e!370734)))

(declare-fun res!419147 () Bool)

(assert (=> b!646658 (=> (not res!419147) (not e!370734))))

(assert (=> b!646658 (= res!419147 (not (contains!3153 (t!18767 Nil!12528) (h!13572 Nil!12528))))))

(declare-fun b!646659 () Bool)

(assert (=> b!646659 (= e!370734 (noDuplicate!414 (t!18767 Nil!12528)))))

(assert (= (and d!91285 (not res!419146)) b!646658))

(assert (= (and b!646658 res!419147) b!646659))

(declare-fun m!620191 () Bool)

(assert (=> b!646658 m!620191))

(declare-fun m!620193 () Bool)

(assert (=> b!646659 m!620193))

(assert (=> b!646531 d!91285))

(declare-fun d!91291 () Bool)

(assert (=> d!91291 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646538 d!91291))

(declare-fun d!91293 () Bool)

(declare-fun res!419148 () Bool)

(declare-fun e!370735 () Bool)

(assert (=> d!91293 (=> res!419148 e!370735)))

(assert (=> d!91293 (= res!419148 (= (select (arr!18437 lt!300060) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18437 a!2986) j!136)))))

(assert (=> d!91293 (= (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!370735)))

(declare-fun b!646660 () Bool)

(declare-fun e!370736 () Bool)

(assert (=> b!646660 (= e!370735 e!370736)))

(declare-fun res!419149 () Bool)

(assert (=> b!646660 (=> (not res!419149) (not e!370736))))

(assert (=> b!646660 (= res!419149 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18801 lt!300060)))))

(declare-fun b!646661 () Bool)

(assert (=> b!646661 (= e!370736 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91293 (not res!419148)) b!646660))

(assert (= (and b!646660 res!419149) b!646661))

(declare-fun m!620195 () Bool)

(assert (=> d!91293 m!620195))

(assert (=> b!646661 m!620037))

(declare-fun m!620197 () Bool)

(assert (=> b!646661 m!620197))

(assert (=> b!646527 d!91293))

(declare-fun d!91295 () Bool)

(assert (=> d!91295 (arrayNoDuplicates!0 lt!300060 j!136 Nil!12528)))

(declare-fun lt!300092 () Unit!21976)

(declare-fun choose!39 (array!38461 (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> d!91295 (= lt!300092 (choose!39 lt!300060 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91295 (bvslt (size!18801 lt!300060) #b01111111111111111111111111111111)))

(assert (=> d!91295 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!300060 #b00000000000000000000000000000000 j!136) lt!300092)))

(declare-fun bs!19317 () Bool)

(assert (= bs!19317 d!91295))

(assert (=> bs!19317 m!620049))

(declare-fun m!620205 () Bool)

(assert (=> bs!19317 m!620205))

(assert (=> b!646527 d!91295))

(declare-fun b!646664 () Bool)

(declare-fun e!370742 () Bool)

(declare-fun call!33665 () Bool)

(assert (=> b!646664 (= e!370742 call!33665)))

(declare-fun bm!33662 () Bool)

(declare-fun c!74123 () Bool)

(assert (=> bm!33662 (= call!33665 (arrayNoDuplicates!0 lt!300060 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74123 (Cons!12527 (select (arr!18437 lt!300060) j!136) Nil!12528) Nil!12528)))))

(declare-fun b!646665 () Bool)

(declare-fun e!370739 () Bool)

(assert (=> b!646665 (= e!370739 e!370742)))

(assert (=> b!646665 (= c!74123 (validKeyInArray!0 (select (arr!18437 lt!300060) j!136)))))

(declare-fun b!646667 () Bool)

(declare-fun e!370740 () Bool)

(assert (=> b!646667 (= e!370740 (contains!3153 Nil!12528 (select (arr!18437 lt!300060) j!136)))))

(declare-fun b!646668 () Bool)

(declare-fun e!370741 () Bool)

(assert (=> b!646668 (= e!370741 e!370739)))

(declare-fun res!419152 () Bool)

(assert (=> b!646668 (=> (not res!419152) (not e!370739))))

(assert (=> b!646668 (= res!419152 (not e!370740))))

(declare-fun res!419153 () Bool)

(assert (=> b!646668 (=> (not res!419153) (not e!370740))))

(assert (=> b!646668 (= res!419153 (validKeyInArray!0 (select (arr!18437 lt!300060) j!136)))))

(declare-fun d!91301 () Bool)

(declare-fun res!419154 () Bool)

(assert (=> d!91301 (=> res!419154 e!370741)))

(assert (=> d!91301 (= res!419154 (bvsge j!136 (size!18801 lt!300060)))))

(assert (=> d!91301 (= (arrayNoDuplicates!0 lt!300060 j!136 Nil!12528) e!370741)))

(declare-fun b!646666 () Bool)

(assert (=> b!646666 (= e!370742 call!33665)))

(assert (= (and d!91301 (not res!419154)) b!646668))

(assert (= (and b!646668 res!419153) b!646667))

(assert (= (and b!646668 res!419152) b!646665))

(assert (= (and b!646665 c!74123) b!646664))

(assert (= (and b!646665 (not c!74123)) b!646666))

(assert (= (or b!646664 b!646666) bm!33662))

(declare-fun m!620207 () Bool)

(assert (=> bm!33662 m!620207))

(declare-fun m!620209 () Bool)

(assert (=> bm!33662 m!620209))

(assert (=> b!646665 m!620207))

(assert (=> b!646665 m!620207))

(declare-fun m!620211 () Bool)

(assert (=> b!646665 m!620211))

(assert (=> b!646667 m!620207))

(assert (=> b!646667 m!620207))

(declare-fun m!620213 () Bool)

(assert (=> b!646667 m!620213))

(assert (=> b!646668 m!620207))

(assert (=> b!646668 m!620207))

(assert (=> b!646668 m!620211))

(assert (=> b!646527 d!91301))

(declare-fun d!91303 () Bool)

(assert (=> d!91303 (arrayContainsKey!0 lt!300060 (select (arr!18437 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300095 () Unit!21976)

(declare-fun choose!114 (array!38461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> d!91303 (= lt!300095 (choose!114 lt!300060 (select (arr!18437 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91303 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91303 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300060 (select (arr!18437 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300095)))

(declare-fun bs!19318 () Bool)

(assert (= bs!19318 d!91303))

(assert (=> bs!19318 m!620037))

(assert (=> bs!19318 m!620055))

(assert (=> bs!19318 m!620037))

(declare-fun m!620215 () Bool)

(assert (=> bs!19318 m!620215))

(assert (=> b!646527 d!91303))

(declare-fun d!91305 () Bool)

(assert (=> d!91305 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18801 lt!300060)) (not (= (select (arr!18437 lt!300060) j!136) (select (arr!18437 a!2986) j!136))))))

(declare-fun lt!300100 () Unit!21976)

(declare-fun choose!21 (array!38461 (_ BitVec 64) (_ BitVec 32) List!12531) Unit!21976)

(assert (=> d!91305 (= lt!300100 (choose!21 lt!300060 (select (arr!18437 a!2986) j!136) j!136 Nil!12528))))

(assert (=> d!91305 (bvslt (size!18801 lt!300060) #b01111111111111111111111111111111)))

(assert (=> d!91305 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300060 (select (arr!18437 a!2986) j!136) j!136 Nil!12528) lt!300100)))

(declare-fun bs!19319 () Bool)

(assert (= bs!19319 d!91305))

(assert (=> bs!19319 m!620207))

(assert (=> bs!19319 m!620037))

(declare-fun m!620217 () Bool)

(assert (=> bs!19319 m!620217))

(assert (=> b!646527 d!91305))

(declare-fun d!91307 () Bool)

(declare-fun e!370756 () Bool)

(assert (=> d!91307 e!370756))

(declare-fun res!419160 () Bool)

(assert (=> d!91307 (=> (not res!419160) (not e!370756))))

(assert (=> d!91307 (= res!419160 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18801 a!2986))))))

(declare-fun lt!300110 () Unit!21976)

(declare-fun choose!41 (array!38461 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12531) Unit!21976)

(assert (=> d!91307 (= lt!300110 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12528))))

(assert (=> d!91307 (bvslt (size!18801 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91307 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12528) lt!300110)))

(declare-fun b!646692 () Bool)

(assert (=> b!646692 (= e!370756 (arrayNoDuplicates!0 (array!38462 (store (arr!18437 a!2986) i!1108 k!1786) (size!18801 a!2986)) #b00000000000000000000000000000000 Nil!12528))))

(assert (= (and d!91307 res!419160) b!646692))

(declare-fun m!620231 () Bool)

(assert (=> d!91307 m!620231))

(assert (=> b!646692 m!620041))

(declare-fun m!620233 () Bool)

(assert (=> b!646692 m!620233))

(assert (=> b!646527 d!91307))

(declare-fun b!646693 () Bool)

(declare-fun e!370761 () Bool)

(declare-fun call!33666 () Bool)

(assert (=> b!646693 (= e!370761 call!33666)))

(declare-fun bm!33663 () Bool)

(declare-fun c!74133 () Bool)

(assert (=> bm!33663 (= call!33666 (arrayNoDuplicates!0 lt!300060 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74133 (Cons!12527 (select (arr!18437 lt!300060) #b00000000000000000000000000000000) Nil!12528) Nil!12528)))))

(declare-fun b!646694 () Bool)

(declare-fun e!370758 () Bool)

(assert (=> b!646694 (= e!370758 e!370761)))

(assert (=> b!646694 (= c!74133 (validKeyInArray!0 (select (arr!18437 lt!300060) #b00000000000000000000000000000000)))))

(declare-fun b!646696 () Bool)

(declare-fun e!370759 () Bool)

(assert (=> b!646696 (= e!370759 (contains!3153 Nil!12528 (select (arr!18437 lt!300060) #b00000000000000000000000000000000)))))

(declare-fun b!646697 () Bool)

(declare-fun e!370760 () Bool)

(assert (=> b!646697 (= e!370760 e!370758)))

(declare-fun res!419161 () Bool)

(assert (=> b!646697 (=> (not res!419161) (not e!370758))))

(assert (=> b!646697 (= res!419161 (not e!370759))))

(declare-fun res!419162 () Bool)

(assert (=> b!646697 (=> (not res!419162) (not e!370759))))

(assert (=> b!646697 (= res!419162 (validKeyInArray!0 (select (arr!18437 lt!300060) #b00000000000000000000000000000000)))))

(declare-fun d!91313 () Bool)

(declare-fun res!419163 () Bool)

(assert (=> d!91313 (=> res!419163 e!370760)))

(assert (=> d!91313 (= res!419163 (bvsge #b00000000000000000000000000000000 (size!18801 lt!300060)))))

(assert (=> d!91313 (= (arrayNoDuplicates!0 lt!300060 #b00000000000000000000000000000000 Nil!12528) e!370760)))

(declare-fun b!646695 () Bool)

(assert (=> b!646695 (= e!370761 call!33666)))

(assert (= (and d!91313 (not res!419163)) b!646697))

(assert (= (and b!646697 res!419162) b!646696))

(assert (= (and b!646697 res!419161) b!646694))

(assert (= (and b!646694 c!74133) b!646693))

(assert (= (and b!646694 (not c!74133)) b!646695))

(assert (= (or b!646693 b!646695) bm!33663))

(declare-fun m!620235 () Bool)

(assert (=> bm!33663 m!620235))

(declare-fun m!620237 () Bool)

(assert (=> bm!33663 m!620237))

(assert (=> b!646694 m!620235))

(assert (=> b!646694 m!620235))

(declare-fun m!620239 () Bool)

(assert (=> b!646694 m!620239))

(assert (=> b!646696 m!620235))

(assert (=> b!646696 m!620235))

(declare-fun m!620241 () Bool)

(assert (=> b!646696 m!620241))

(assert (=> b!646697 m!620235))

(assert (=> b!646697 m!620235))

(assert (=> b!646697 m!620239))

(assert (=> b!646527 d!91313))

(declare-fun b!646729 () Bool)

(declare-fun e!370784 () SeekEntryResult!6884)

(assert (=> b!646729 (= e!370784 (MissingVacant!6884 vacantSpotIndex!68))))

(declare-fun b!646730 () Bool)

(declare-fun e!370785 () SeekEntryResult!6884)

(declare-fun e!370783 () SeekEntryResult!6884)

(assert (=> b!646730 (= e!370785 e!370783)))

(declare-fun lt!300121 () (_ BitVec 64))

(declare-fun c!74145 () Bool)

(assert (=> b!646730 (= c!74145 (= lt!300121 (select (arr!18437 a!2986) j!136)))))

(declare-fun b!646731 () Bool)

(assert (=> b!646731 (= e!370783 (Found!6884 index!984))))

(declare-fun b!646732 () Bool)

(declare-fun c!74143 () Bool)

(assert (=> b!646732 (= c!74143 (= lt!300121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646732 (= e!370783 e!370784)))

(declare-fun b!646733 () Bool)

(assert (=> b!646733 (= e!370785 Undefined!6884)))

(declare-fun b!646728 () Bool)

(assert (=> b!646728 (= e!370784 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91315 () Bool)

(declare-fun lt!300120 () SeekEntryResult!6884)

(assert (=> d!91315 (and (or (is-Undefined!6884 lt!300120) (not (is-Found!6884 lt!300120)) (and (bvsge (index!29874 lt!300120) #b00000000000000000000000000000000) (bvslt (index!29874 lt!300120) (size!18801 a!2986)))) (or (is-Undefined!6884 lt!300120) (is-Found!6884 lt!300120) (not (is-MissingVacant!6884 lt!300120)) (not (= (index!29876 lt!300120) vacantSpotIndex!68)) (and (bvsge (index!29876 lt!300120) #b00000000000000000000000000000000) (bvslt (index!29876 lt!300120) (size!18801 a!2986)))) (or (is-Undefined!6884 lt!300120) (ite (is-Found!6884 lt!300120) (= (select (arr!18437 a!2986) (index!29874 lt!300120)) (select (arr!18437 a!2986) j!136)) (and (is-MissingVacant!6884 lt!300120) (= (index!29876 lt!300120) vacantSpotIndex!68) (= (select (arr!18437 a!2986) (index!29876 lt!300120)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91315 (= lt!300120 e!370785)))

(declare-fun c!74144 () Bool)

(assert (=> d!91315 (= c!74144 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91315 (= lt!300121 (select (arr!18437 a!2986) index!984))))

(assert (=> d!91315 (validMask!0 mask!3053)))

(assert (=> d!91315 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053) lt!300120)))

(assert (= (and d!91315 c!74144) b!646733))

(assert (= (and d!91315 (not c!74144)) b!646730))

(assert (= (and b!646730 c!74145) b!646731))

(assert (= (and b!646730 (not c!74145)) b!646732))

(assert (= (and b!646732 c!74143) b!646729))

(assert (= (and b!646732 (not c!74143)) b!646728))

(assert (=> b!646728 m!620077))

(assert (=> b!646728 m!620077))

(assert (=> b!646728 m!620037))

(declare-fun m!620259 () Bool)

(assert (=> b!646728 m!620259))

(declare-fun m!620261 () Bool)

(assert (=> d!91315 m!620261))

(declare-fun m!620263 () Bool)

(assert (=> d!91315 m!620263))

(assert (=> d!91315 m!620071))

(assert (=> d!91315 m!620045))

(assert (=> b!646539 d!91315))

(declare-fun b!646735 () Bool)

(declare-fun e!370787 () SeekEntryResult!6884)

(assert (=> b!646735 (= e!370787 (MissingVacant!6884 vacantSpotIndex!68))))

(declare-fun b!646736 () Bool)

(declare-fun e!370788 () SeekEntryResult!6884)

(declare-fun e!370786 () SeekEntryResult!6884)

(assert (=> b!646736 (= e!370788 e!370786)))

(declare-fun c!74148 () Bool)

(declare-fun lt!300123 () (_ BitVec 64))

(assert (=> b!646736 (= c!74148 (= lt!300123 lt!300054))))

(declare-fun b!646737 () Bool)

(assert (=> b!646737 (= e!370786 (Found!6884 lt!300055))))

(declare-fun b!646738 () Bool)

(declare-fun c!74146 () Bool)

(assert (=> b!646738 (= c!74146 (= lt!300123 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646738 (= e!370786 e!370787)))

(declare-fun b!646739 () Bool)

(assert (=> b!646739 (= e!370788 Undefined!6884)))

(declare-fun b!646734 () Bool)

(assert (=> b!646734 (= e!370787 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300055 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300054 lt!300060 mask!3053))))

(declare-fun d!91327 () Bool)

(declare-fun lt!300122 () SeekEntryResult!6884)

(assert (=> d!91327 (and (or (is-Undefined!6884 lt!300122) (not (is-Found!6884 lt!300122)) (and (bvsge (index!29874 lt!300122) #b00000000000000000000000000000000) (bvslt (index!29874 lt!300122) (size!18801 lt!300060)))) (or (is-Undefined!6884 lt!300122) (is-Found!6884 lt!300122) (not (is-MissingVacant!6884 lt!300122)) (not (= (index!29876 lt!300122) vacantSpotIndex!68)) (and (bvsge (index!29876 lt!300122) #b00000000000000000000000000000000) (bvslt (index!29876 lt!300122) (size!18801 lt!300060)))) (or (is-Undefined!6884 lt!300122) (ite (is-Found!6884 lt!300122) (= (select (arr!18437 lt!300060) (index!29874 lt!300122)) lt!300054) (and (is-MissingVacant!6884 lt!300122) (= (index!29876 lt!300122) vacantSpotIndex!68) (= (select (arr!18437 lt!300060) (index!29876 lt!300122)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91327 (= lt!300122 e!370788)))

(declare-fun c!74147 () Bool)

(assert (=> d!91327 (= c!74147 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91327 (= lt!300123 (select (arr!18437 lt!300060) lt!300055))))

(assert (=> d!91327 (validMask!0 mask!3053)))

(assert (=> d!91327 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 lt!300054 lt!300060 mask!3053) lt!300122)))

(assert (= (and d!91327 c!74147) b!646739))

(assert (= (and d!91327 (not c!74147)) b!646736))

(assert (= (and b!646736 c!74148) b!646737))

(assert (= (and b!646736 (not c!74148)) b!646738))

(assert (= (and b!646738 c!74146) b!646735))

(assert (= (and b!646738 (not c!74146)) b!646734))

(declare-fun m!620265 () Bool)

(assert (=> b!646734 m!620265))

(assert (=> b!646734 m!620265))

(declare-fun m!620267 () Bool)

(assert (=> b!646734 m!620267))

(declare-fun m!620269 () Bool)

(assert (=> d!91327 m!620269))

(declare-fun m!620271 () Bool)

(assert (=> d!91327 m!620271))

(declare-fun m!620273 () Bool)

(assert (=> d!91327 m!620273))

(assert (=> d!91327 m!620045))

(assert (=> b!646525 d!91327))

(declare-fun d!91329 () Bool)

(declare-fun lt!300126 () (_ BitVec 32))

(assert (=> d!91329 (and (bvsge lt!300126 #b00000000000000000000000000000000) (bvslt lt!300126 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91329 (= lt!300126 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91329 (validMask!0 mask!3053)))

(assert (=> d!91329 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300126)))

(declare-fun bs!19321 () Bool)

(assert (= bs!19321 d!91329))

(declare-fun m!620275 () Bool)

(assert (=> bs!19321 m!620275))

(assert (=> bs!19321 m!620045))

(assert (=> b!646525 d!91329))

(declare-fun b!646741 () Bool)

(declare-fun e!370790 () SeekEntryResult!6884)

(assert (=> b!646741 (= e!370790 (MissingVacant!6884 vacantSpotIndex!68))))

(declare-fun b!646742 () Bool)

(declare-fun e!370791 () SeekEntryResult!6884)

(declare-fun e!370789 () SeekEntryResult!6884)

(assert (=> b!646742 (= e!370791 e!370789)))

(declare-fun c!74151 () Bool)

(declare-fun lt!300128 () (_ BitVec 64))

(assert (=> b!646742 (= c!74151 (= lt!300128 lt!300054))))

(declare-fun b!646743 () Bool)

(assert (=> b!646743 (= e!370789 (Found!6884 index!984))))

(declare-fun b!646744 () Bool)

(declare-fun c!74149 () Bool)

(assert (=> b!646744 (= c!74149 (= lt!300128 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646744 (= e!370789 e!370790)))

(declare-fun b!646745 () Bool)

(assert (=> b!646745 (= e!370791 Undefined!6884)))

(declare-fun b!646740 () Bool)

(assert (=> b!646740 (= e!370790 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300054 lt!300060 mask!3053))))

(declare-fun lt!300127 () SeekEntryResult!6884)

(declare-fun d!91331 () Bool)

(assert (=> d!91331 (and (or (is-Undefined!6884 lt!300127) (not (is-Found!6884 lt!300127)) (and (bvsge (index!29874 lt!300127) #b00000000000000000000000000000000) (bvslt (index!29874 lt!300127) (size!18801 lt!300060)))) (or (is-Undefined!6884 lt!300127) (is-Found!6884 lt!300127) (not (is-MissingVacant!6884 lt!300127)) (not (= (index!29876 lt!300127) vacantSpotIndex!68)) (and (bvsge (index!29876 lt!300127) #b00000000000000000000000000000000) (bvslt (index!29876 lt!300127) (size!18801 lt!300060)))) (or (is-Undefined!6884 lt!300127) (ite (is-Found!6884 lt!300127) (= (select (arr!18437 lt!300060) (index!29874 lt!300127)) lt!300054) (and (is-MissingVacant!6884 lt!300127) (= (index!29876 lt!300127) vacantSpotIndex!68) (= (select (arr!18437 lt!300060) (index!29876 lt!300127)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91331 (= lt!300127 e!370791)))

(declare-fun c!74150 () Bool)

(assert (=> d!91331 (= c!74150 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91331 (= lt!300128 (select (arr!18437 lt!300060) index!984))))

(assert (=> d!91331 (validMask!0 mask!3053)))

(assert (=> d!91331 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300054 lt!300060 mask!3053) lt!300127)))

(assert (= (and d!91331 c!74150) b!646745))

(assert (= (and d!91331 (not c!74150)) b!646742))

(assert (= (and b!646742 c!74151) b!646743))

(assert (= (and b!646742 (not c!74151)) b!646744))

(assert (= (and b!646744 c!74149) b!646741))

(assert (= (and b!646744 (not c!74149)) b!646740))

(assert (=> b!646740 m!620077))

(assert (=> b!646740 m!620077))

(declare-fun m!620277 () Bool)

(assert (=> b!646740 m!620277))

(declare-fun m!620279 () Bool)

(assert (=> d!91331 m!620279))

(declare-fun m!620281 () Bool)

(assert (=> d!91331 m!620281))

(assert (=> d!91331 m!620175))

(assert (=> d!91331 m!620045))

(assert (=> b!646525 d!91331))

(declare-fun b!646747 () Bool)

(declare-fun e!370793 () SeekEntryResult!6884)

(assert (=> b!646747 (= e!370793 (MissingVacant!6884 vacantSpotIndex!68))))

(declare-fun b!646748 () Bool)

(declare-fun e!370794 () SeekEntryResult!6884)

(declare-fun e!370792 () SeekEntryResult!6884)

(assert (=> b!646748 (= e!370794 e!370792)))

(declare-fun c!74154 () Bool)

(declare-fun lt!300130 () (_ BitVec 64))

(assert (=> b!646748 (= c!74154 (= lt!300130 (select (arr!18437 a!2986) j!136)))))

(declare-fun b!646749 () Bool)

(assert (=> b!646749 (= e!370792 (Found!6884 lt!300055))))

(declare-fun b!646750 () Bool)

(declare-fun c!74152 () Bool)

(assert (=> b!646750 (= c!74152 (= lt!300130 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646750 (= e!370792 e!370793)))

(declare-fun b!646751 () Bool)

(assert (=> b!646751 (= e!370794 Undefined!6884)))

(declare-fun b!646746 () Bool)

(assert (=> b!646746 (= e!370793 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300055 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!300129 () SeekEntryResult!6884)

(declare-fun d!91333 () Bool)

(assert (=> d!91333 (and (or (is-Undefined!6884 lt!300129) (not (is-Found!6884 lt!300129)) (and (bvsge (index!29874 lt!300129) #b00000000000000000000000000000000) (bvslt (index!29874 lt!300129) (size!18801 a!2986)))) (or (is-Undefined!6884 lt!300129) (is-Found!6884 lt!300129) (not (is-MissingVacant!6884 lt!300129)) (not (= (index!29876 lt!300129) vacantSpotIndex!68)) (and (bvsge (index!29876 lt!300129) #b00000000000000000000000000000000) (bvslt (index!29876 lt!300129) (size!18801 a!2986)))) (or (is-Undefined!6884 lt!300129) (ite (is-Found!6884 lt!300129) (= (select (arr!18437 a!2986) (index!29874 lt!300129)) (select (arr!18437 a!2986) j!136)) (and (is-MissingVacant!6884 lt!300129) (= (index!29876 lt!300129) vacantSpotIndex!68) (= (select (arr!18437 a!2986) (index!29876 lt!300129)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91333 (= lt!300129 e!370794)))

(declare-fun c!74153 () Bool)

(assert (=> d!91333 (= c!74153 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91333 (= lt!300130 (select (arr!18437 a!2986) lt!300055))))

(assert (=> d!91333 (validMask!0 mask!3053)))

(assert (=> d!91333 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 (select (arr!18437 a!2986) j!136) a!2986 mask!3053) lt!300129)))

(assert (= (and d!91333 c!74153) b!646751))

(assert (= (and d!91333 (not c!74153)) b!646748))

(assert (= (and b!646748 c!74154) b!646749))

(assert (= (and b!646748 (not c!74154)) b!646750))

(assert (= (and b!646750 c!74152) b!646747))

(assert (= (and b!646750 (not c!74152)) b!646746))

(assert (=> b!646746 m!620265))

(assert (=> b!646746 m!620265))

(assert (=> b!646746 m!620037))

(declare-fun m!620283 () Bool)

(assert (=> b!646746 m!620283))

(declare-fun m!620285 () Bool)

(assert (=> d!91333 m!620285))

(declare-fun m!620287 () Bool)

(assert (=> d!91333 m!620287))

(declare-fun m!620289 () Bool)

(assert (=> d!91333 m!620289))

(assert (=> d!91333 m!620045))

(assert (=> b!646525 d!91333))

(declare-fun d!91335 () Bool)

(declare-fun e!370825 () Bool)

(assert (=> d!91335 e!370825))

(declare-fun res!419186 () Bool)

(assert (=> d!91335 (=> (not res!419186) (not e!370825))))

(assert (=> d!91335 (= res!419186 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18801 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18801 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18801 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18801 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18801 a!2986))))))

(declare-fun lt!300155 () Unit!21976)

(declare-fun choose!9 (array!38461 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21976)

(assert (=> d!91335 (= lt!300155 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300055 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91335 (validMask!0 mask!3053)))

