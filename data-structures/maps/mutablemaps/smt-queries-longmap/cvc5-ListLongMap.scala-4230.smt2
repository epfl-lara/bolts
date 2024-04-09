; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58332 () Bool)

(assert start!58332)

(declare-fun b!643441 () Bool)

(declare-fun e!368608 () Bool)

(declare-fun e!368606 () Bool)

(assert (=> b!643441 (= e!368608 e!368606)))

(declare-fun res!416833 () Bool)

(assert (=> b!643441 (=> (not res!416833) (not e!368606))))

(declare-datatypes ((SeekEntryResult!6849 0))(
  ( (MissingZero!6849 (index!29727 (_ BitVec 32))) (Found!6849 (index!29728 (_ BitVec 32))) (Intermediate!6849 (undefined!7661 Bool) (index!29729 (_ BitVec 32)) (x!58530 (_ BitVec 32))) (Undefined!6849) (MissingVacant!6849 (index!29730 (_ BitVec 32))) )
))
(declare-fun lt!298146 () SeekEntryResult!6849)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!643441 (= res!416833 (or (= lt!298146 (MissingZero!6849 i!1108)) (= lt!298146 (MissingVacant!6849 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38385 0))(
  ( (array!38386 (arr!18402 (Array (_ BitVec 32) (_ BitVec 64))) (size!18766 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38385)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38385 (_ BitVec 32)) SeekEntryResult!6849)

(assert (=> b!643441 (= lt!298146 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!416829 () Bool)

(assert (=> start!58332 (=> (not res!416829) (not e!368608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58332 (= res!416829 (validMask!0 mask!3053))))

(assert (=> start!58332 e!368608))

(assert (=> start!58332 true))

(declare-fun array_inv!14176 (array!38385) Bool)

(assert (=> start!58332 (array_inv!14176 a!2986)))

(declare-fun b!643442 () Bool)

(declare-fun e!368609 () Bool)

(assert (=> b!643442 (= e!368609 true)))

(declare-fun e!368601 () Bool)

(assert (=> b!643442 e!368601))

(declare-fun res!416834 () Bool)

(assert (=> b!643442 (=> (not res!416834) (not e!368601))))

(declare-fun lt!298139 () array!38385)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643442 (= res!416834 (arrayContainsKey!0 lt!298139 (select (arr!18402 a!2986) j!136) j!136))))

(declare-fun b!643443 () Bool)

(declare-datatypes ((Unit!21766 0))(
  ( (Unit!21767) )
))
(declare-fun e!368602 () Unit!21766)

(declare-fun Unit!21768 () Unit!21766)

(assert (=> b!643443 (= e!368602 Unit!21768)))

(declare-fun b!643444 () Bool)

(declare-fun e!368604 () Bool)

(declare-fun e!368598 () Bool)

(assert (=> b!643444 (= e!368604 e!368598)))

(declare-fun res!416821 () Bool)

(assert (=> b!643444 (=> res!416821 e!368598)))

(declare-fun lt!298142 () (_ BitVec 64))

(declare-fun lt!298132 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643444 (= res!416821 (or (not (= (select (arr!18402 a!2986) j!136) lt!298142)) (not (= (select (arr!18402 a!2986) j!136) lt!298132)) (bvsge j!136 index!984)))))

(declare-fun b!643445 () Bool)

(declare-fun e!368611 () Bool)

(declare-fun e!368600 () Bool)

(assert (=> b!643445 (= e!368611 e!368600)))

(declare-fun res!416831 () Bool)

(assert (=> b!643445 (=> (not res!416831) (not e!368600))))

(declare-fun lt!298135 () SeekEntryResult!6849)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!643445 (= res!416831 (and (= lt!298135 (Found!6849 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18402 a!2986) index!984) (select (arr!18402 a!2986) j!136))) (not (= (select (arr!18402 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38385 (_ BitVec 32)) SeekEntryResult!6849)

(assert (=> b!643445 (= lt!298135 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18402 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643446 () Bool)

(declare-fun e!368597 () Bool)

(declare-fun e!368599 () Bool)

(assert (=> b!643446 (= e!368597 e!368599)))

(declare-fun res!416824 () Bool)

(assert (=> b!643446 (=> res!416824 e!368599)))

(assert (=> b!643446 (= res!416824 (or (not (= (select (arr!18402 a!2986) j!136) lt!298142)) (not (= (select (arr!18402 a!2986) j!136) lt!298132))))))

(assert (=> b!643446 e!368604))

(declare-fun res!416822 () Bool)

(assert (=> b!643446 (=> (not res!416822) (not e!368604))))

(assert (=> b!643446 (= res!416822 (= lt!298132 (select (arr!18402 a!2986) j!136)))))

(assert (=> b!643446 (= lt!298132 (select (store (arr!18402 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643447 () Bool)

(declare-fun e!368607 () Unit!21766)

(declare-fun Unit!21769 () Unit!21766)

(assert (=> b!643447 (= e!368607 Unit!21769)))

(declare-fun lt!298145 () Unit!21766)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38385 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21766)

(assert (=> b!643447 (= lt!298145 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298139 (select (arr!18402 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643447 (arrayContainsKey!0 lt!298139 (select (arr!18402 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298140 () Unit!21766)

(declare-datatypes ((List!12496 0))(
  ( (Nil!12493) (Cons!12492 (h!13537 (_ BitVec 64)) (t!18732 List!12496)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38385 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12496) Unit!21766)

(assert (=> b!643447 (= lt!298140 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12493))))

(declare-fun arrayNoDuplicates!0 (array!38385 (_ BitVec 32) List!12496) Bool)

(assert (=> b!643447 (arrayNoDuplicates!0 lt!298139 #b00000000000000000000000000000000 Nil!12493)))

(declare-fun lt!298143 () Unit!21766)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38385 (_ BitVec 32) (_ BitVec 32)) Unit!21766)

(assert (=> b!643447 (= lt!298143 (lemmaNoDuplicateFromThenFromBigger!0 lt!298139 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643447 (arrayNoDuplicates!0 lt!298139 j!136 Nil!12493)))

(declare-fun lt!298141 () Unit!21766)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38385 (_ BitVec 64) (_ BitVec 32) List!12496) Unit!21766)

(assert (=> b!643447 (= lt!298141 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298139 (select (arr!18402 a!2986) j!136) j!136 Nil!12493))))

(assert (=> b!643447 false))

(declare-fun b!643448 () Bool)

(assert (=> b!643448 (= e!368606 e!368611)))

(declare-fun res!416825 () Bool)

(assert (=> b!643448 (=> (not res!416825) (not e!368611))))

(assert (=> b!643448 (= res!416825 (= (select (store (arr!18402 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643448 (= lt!298139 (array!38386 (store (arr!18402 a!2986) i!1108 k!1786) (size!18766 a!2986)))))

(declare-fun b!643449 () Bool)

(declare-fun res!416819 () Bool)

(assert (=> b!643449 (=> (not res!416819) (not e!368608))))

(assert (=> b!643449 (= res!416819 (and (= (size!18766 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18766 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18766 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643450 () Bool)

(declare-fun Unit!21770 () Unit!21766)

(assert (=> b!643450 (= e!368602 Unit!21770)))

(assert (=> b!643450 false))

(declare-fun b!643451 () Bool)

(assert (=> b!643451 (= e!368601 (arrayContainsKey!0 lt!298139 (select (arr!18402 a!2986) j!136) index!984))))

(declare-fun b!643452 () Bool)

(declare-fun res!416832 () Bool)

(assert (=> b!643452 (=> (not res!416832) (not e!368608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643452 (= res!416832 (validKeyInArray!0 k!1786))))

(declare-fun b!643453 () Bool)

(declare-fun res!416827 () Bool)

(assert (=> b!643453 (=> (not res!416827) (not e!368606))))

(assert (=> b!643453 (= res!416827 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12493))))

(declare-fun b!643454 () Bool)

(assert (=> b!643454 (= e!368600 (not e!368597))))

(declare-fun res!416826 () Bool)

(assert (=> b!643454 (=> res!416826 e!368597)))

(declare-fun lt!298136 () SeekEntryResult!6849)

(assert (=> b!643454 (= res!416826 (not (= lt!298136 (Found!6849 index!984))))))

(declare-fun lt!298137 () Unit!21766)

(assert (=> b!643454 (= lt!298137 e!368602)))

(declare-fun c!73679 () Bool)

(assert (=> b!643454 (= c!73679 (= lt!298136 Undefined!6849))))

(assert (=> b!643454 (= lt!298136 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298142 lt!298139 mask!3053))))

(declare-fun e!368603 () Bool)

(assert (=> b!643454 e!368603))

(declare-fun res!416835 () Bool)

(assert (=> b!643454 (=> (not res!416835) (not e!368603))))

(declare-fun lt!298144 () SeekEntryResult!6849)

(declare-fun lt!298134 () (_ BitVec 32))

(assert (=> b!643454 (= res!416835 (= lt!298144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298134 vacantSpotIndex!68 lt!298142 lt!298139 mask!3053)))))

(assert (=> b!643454 (= lt!298144 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298134 vacantSpotIndex!68 (select (arr!18402 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643454 (= lt!298142 (select (store (arr!18402 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298133 () Unit!21766)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21766)

(assert (=> b!643454 (= lt!298133 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298134 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643454 (= lt!298134 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643455 () Bool)

(declare-fun res!416836 () Bool)

(assert (=> b!643455 (=> (not res!416836) (not e!368606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38385 (_ BitVec 32)) Bool)

(assert (=> b!643455 (= res!416836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643456 () Bool)

(declare-fun res!416823 () Bool)

(assert (=> b!643456 (=> (not res!416823) (not e!368608))))

(assert (=> b!643456 (= res!416823 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643457 () Bool)

(assert (=> b!643457 (= e!368603 (= lt!298135 lt!298144))))

(declare-fun b!643458 () Bool)

(assert (=> b!643458 (= e!368599 e!368609)))

(declare-fun res!416828 () Bool)

(assert (=> b!643458 (=> res!416828 e!368609)))

(assert (=> b!643458 (= res!416828 (bvsge index!984 j!136))))

(declare-fun lt!298138 () Unit!21766)

(assert (=> b!643458 (= lt!298138 e!368607)))

(declare-fun c!73678 () Bool)

(assert (=> b!643458 (= c!73678 (bvslt j!136 index!984))))

(declare-fun b!643459 () Bool)

(declare-fun e!368605 () Bool)

(assert (=> b!643459 (= e!368598 e!368605)))

(declare-fun res!416837 () Bool)

(assert (=> b!643459 (=> (not res!416837) (not e!368605))))

(assert (=> b!643459 (= res!416837 (arrayContainsKey!0 lt!298139 (select (arr!18402 a!2986) j!136) j!136))))

(declare-fun b!643460 () Bool)

(declare-fun res!416830 () Bool)

(assert (=> b!643460 (=> (not res!416830) (not e!368606))))

(assert (=> b!643460 (= res!416830 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18402 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643461 () Bool)

(declare-fun res!416820 () Bool)

(assert (=> b!643461 (=> (not res!416820) (not e!368608))))

(assert (=> b!643461 (= res!416820 (validKeyInArray!0 (select (arr!18402 a!2986) j!136)))))

(declare-fun b!643462 () Bool)

(assert (=> b!643462 (= e!368605 (arrayContainsKey!0 lt!298139 (select (arr!18402 a!2986) j!136) index!984))))

(declare-fun b!643463 () Bool)

(declare-fun Unit!21771 () Unit!21766)

(assert (=> b!643463 (= e!368607 Unit!21771)))

(assert (= (and start!58332 res!416829) b!643449))

(assert (= (and b!643449 res!416819) b!643461))

(assert (= (and b!643461 res!416820) b!643452))

(assert (= (and b!643452 res!416832) b!643456))

(assert (= (and b!643456 res!416823) b!643441))

(assert (= (and b!643441 res!416833) b!643455))

(assert (= (and b!643455 res!416836) b!643453))

(assert (= (and b!643453 res!416827) b!643460))

(assert (= (and b!643460 res!416830) b!643448))

(assert (= (and b!643448 res!416825) b!643445))

(assert (= (and b!643445 res!416831) b!643454))

(assert (= (and b!643454 res!416835) b!643457))

(assert (= (and b!643454 c!73679) b!643450))

(assert (= (and b!643454 (not c!73679)) b!643443))

(assert (= (and b!643454 (not res!416826)) b!643446))

(assert (= (and b!643446 res!416822) b!643444))

(assert (= (and b!643444 (not res!416821)) b!643459))

(assert (= (and b!643459 res!416837) b!643462))

(assert (= (and b!643446 (not res!416824)) b!643458))

(assert (= (and b!643458 c!73678) b!643447))

(assert (= (and b!643458 (not c!73678)) b!643463))

(assert (= (and b!643458 (not res!416828)) b!643442))

(assert (= (and b!643442 res!416834) b!643451))

(declare-fun m!617223 () Bool)

(assert (=> b!643461 m!617223))

(assert (=> b!643461 m!617223))

(declare-fun m!617225 () Bool)

(assert (=> b!643461 m!617225))

(declare-fun m!617227 () Bool)

(assert (=> b!643452 m!617227))

(assert (=> b!643446 m!617223))

(declare-fun m!617229 () Bool)

(assert (=> b!643446 m!617229))

(declare-fun m!617231 () Bool)

(assert (=> b!643446 m!617231))

(declare-fun m!617233 () Bool)

(assert (=> b!643447 m!617233))

(declare-fun m!617235 () Bool)

(assert (=> b!643447 m!617235))

(assert (=> b!643447 m!617223))

(declare-fun m!617237 () Bool)

(assert (=> b!643447 m!617237))

(assert (=> b!643447 m!617223))

(declare-fun m!617239 () Bool)

(assert (=> b!643447 m!617239))

(assert (=> b!643447 m!617223))

(declare-fun m!617241 () Bool)

(assert (=> b!643447 m!617241))

(assert (=> b!643447 m!617223))

(declare-fun m!617243 () Bool)

(assert (=> b!643447 m!617243))

(declare-fun m!617245 () Bool)

(assert (=> b!643447 m!617245))

(declare-fun m!617247 () Bool)

(assert (=> start!58332 m!617247))

(declare-fun m!617249 () Bool)

(assert (=> start!58332 m!617249))

(assert (=> b!643448 m!617229))

(declare-fun m!617251 () Bool)

(assert (=> b!643448 m!617251))

(declare-fun m!617253 () Bool)

(assert (=> b!643456 m!617253))

(assert (=> b!643444 m!617223))

(declare-fun m!617255 () Bool)

(assert (=> b!643460 m!617255))

(declare-fun m!617257 () Bool)

(assert (=> b!643453 m!617257))

(declare-fun m!617259 () Bool)

(assert (=> b!643445 m!617259))

(assert (=> b!643445 m!617223))

(assert (=> b!643445 m!617223))

(declare-fun m!617261 () Bool)

(assert (=> b!643445 m!617261))

(assert (=> b!643451 m!617223))

(assert (=> b!643451 m!617223))

(declare-fun m!617263 () Bool)

(assert (=> b!643451 m!617263))

(assert (=> b!643459 m!617223))

(assert (=> b!643459 m!617223))

(declare-fun m!617265 () Bool)

(assert (=> b!643459 m!617265))

(declare-fun m!617267 () Bool)

(assert (=> b!643441 m!617267))

(declare-fun m!617269 () Bool)

(assert (=> b!643455 m!617269))

(assert (=> b!643462 m!617223))

(assert (=> b!643462 m!617223))

(assert (=> b!643462 m!617263))

(assert (=> b!643442 m!617223))

(assert (=> b!643442 m!617223))

(assert (=> b!643442 m!617265))

(declare-fun m!617271 () Bool)

(assert (=> b!643454 m!617271))

(declare-fun m!617273 () Bool)

(assert (=> b!643454 m!617273))

(assert (=> b!643454 m!617223))

(declare-fun m!617275 () Bool)

(assert (=> b!643454 m!617275))

(assert (=> b!643454 m!617223))

(assert (=> b!643454 m!617229))

(declare-fun m!617277 () Bool)

(assert (=> b!643454 m!617277))

(declare-fun m!617279 () Bool)

(assert (=> b!643454 m!617279))

(declare-fun m!617281 () Bool)

(assert (=> b!643454 m!617281))

(push 1)

