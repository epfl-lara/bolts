; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57926 () Bool)

(assert start!57926)

(declare-fun b!640097 () Bool)

(declare-fun e!366420 () Bool)

(declare-fun e!366410 () Bool)

(assert (=> b!640097 (= e!366420 e!366410)))

(declare-fun res!414549 () Bool)

(assert (=> b!640097 (=> (not res!414549) (not e!366410))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6817 0))(
  ( (MissingZero!6817 (index!29587 (_ BitVec 32))) (Found!6817 (index!29588 (_ BitVec 32))) (Intermediate!6817 (undefined!7629 Bool) (index!29589 (_ BitVec 32)) (x!58374 (_ BitVec 32))) (Undefined!6817) (MissingVacant!6817 (index!29590 (_ BitVec 32))) )
))
(declare-fun lt!296258 () SeekEntryResult!6817)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38309 0))(
  ( (array!38310 (arr!18370 (Array (_ BitVec 32) (_ BitVec 64))) (size!18734 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38309)

(assert (=> b!640097 (= res!414549 (and (= lt!296258 (Found!6817 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18370 a!2986) index!984) (select (arr!18370 a!2986) j!136))) (not (= (select (arr!18370 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38309 (_ BitVec 32)) SeekEntryResult!6817)

(assert (=> b!640097 (= lt!296258 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18370 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640098 () Bool)

(declare-fun e!366414 () Bool)

(declare-fun e!366421 () Bool)

(assert (=> b!640098 (= e!366414 e!366421)))

(declare-fun res!414548 () Bool)

(assert (=> b!640098 (=> res!414548 e!366421)))

(declare-fun lt!296256 () (_ BitVec 64))

(declare-fun lt!296252 () (_ BitVec 64))

(assert (=> b!640098 (= res!414548 (or (not (= (select (arr!18370 a!2986) j!136) lt!296252)) (not (= (select (arr!18370 a!2986) j!136) lt!296256)) (bvsge j!136 index!984)))))

(declare-fun b!640099 () Bool)

(declare-fun res!414551 () Bool)

(declare-fun e!366416 () Bool)

(assert (=> b!640099 (=> (not res!414551) (not e!366416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38309 (_ BitVec 32)) Bool)

(assert (=> b!640099 (= res!414551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640100 () Bool)

(declare-datatypes ((Unit!21626 0))(
  ( (Unit!21627) )
))
(declare-fun e!366412 () Unit!21626)

(declare-fun Unit!21628 () Unit!21626)

(assert (=> b!640100 (= e!366412 Unit!21628)))

(assert (=> b!640100 false))

(declare-fun e!366418 () Bool)

(declare-fun lt!296253 () array!38309)

(declare-fun b!640101 () Bool)

(declare-fun arrayContainsKey!0 (array!38309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640101 (= e!366418 (arrayContainsKey!0 lt!296253 (select (arr!18370 a!2986) j!136) index!984))))

(declare-fun b!640102 () Bool)

(assert (=> b!640102 (= e!366421 e!366418)))

(declare-fun res!414550 () Bool)

(assert (=> b!640102 (=> (not res!414550) (not e!366418))))

(assert (=> b!640102 (= res!414550 (arrayContainsKey!0 lt!296253 (select (arr!18370 a!2986) j!136) j!136))))

(declare-fun b!640103 () Bool)

(declare-fun res!414547 () Bool)

(declare-fun e!366419 () Bool)

(assert (=> b!640103 (=> (not res!414547) (not e!366419))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!640103 (= res!414547 (and (= (size!18734 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18734 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18734 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640104 () Bool)

(declare-fun e!366413 () Bool)

(declare-fun lt!296250 () SeekEntryResult!6817)

(assert (=> b!640104 (= e!366413 (= lt!296258 lt!296250))))

(declare-fun res!414552 () Bool)

(assert (=> start!57926 (=> (not res!414552) (not e!366419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57926 (= res!414552 (validMask!0 mask!3053))))

(assert (=> start!57926 e!366419))

(assert (=> start!57926 true))

(declare-fun array_inv!14144 (array!38309) Bool)

(assert (=> start!57926 (array_inv!14144 a!2986)))

(declare-fun b!640105 () Bool)

(declare-fun e!366417 () Bool)

(declare-fun e!366411 () Bool)

(assert (=> b!640105 (= e!366417 e!366411)))

(declare-fun res!414559 () Bool)

(assert (=> b!640105 (=> res!414559 e!366411)))

(assert (=> b!640105 (= res!414559 (or (not (= (select (arr!18370 a!2986) j!136) lt!296252)) (not (= (select (arr!18370 a!2986) j!136) lt!296256)) (bvsge j!136 index!984)))))

(assert (=> b!640105 e!366414))

(declare-fun res!414557 () Bool)

(assert (=> b!640105 (=> (not res!414557) (not e!366414))))

(assert (=> b!640105 (= res!414557 (= lt!296256 (select (arr!18370 a!2986) j!136)))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!640105 (= lt!296256 (select (store (arr!18370 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!640106 () Bool)

(assert (=> b!640106 (= e!366416 e!366420)))

(declare-fun res!414561 () Bool)

(assert (=> b!640106 (=> (not res!414561) (not e!366420))))

(assert (=> b!640106 (= res!414561 (= (select (store (arr!18370 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640106 (= lt!296253 (array!38310 (store (arr!18370 a!2986) i!1108 k0!1786) (size!18734 a!2986)))))

(declare-fun b!640107 () Bool)

(assert (=> b!640107 (= e!366411 true)))

(declare-datatypes ((List!12464 0))(
  ( (Nil!12461) (Cons!12460 (h!13505 (_ BitVec 64)) (t!18700 List!12464)) )
))
(declare-fun arrayNoDuplicates!0 (array!38309 (_ BitVec 32) List!12464) Bool)

(assert (=> b!640107 (arrayNoDuplicates!0 lt!296253 j!136 Nil!12461)))

(declare-fun lt!296254 () Unit!21626)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38309 (_ BitVec 32) (_ BitVec 32)) Unit!21626)

(assert (=> b!640107 (= lt!296254 (lemmaNoDuplicateFromThenFromBigger!0 lt!296253 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640107 (arrayNoDuplicates!0 lt!296253 #b00000000000000000000000000000000 Nil!12461)))

(declare-fun lt!296255 () Unit!21626)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38309 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12464) Unit!21626)

(assert (=> b!640107 (= lt!296255 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12461))))

(assert (=> b!640107 (arrayContainsKey!0 lt!296253 (select (arr!18370 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296251 () Unit!21626)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38309 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21626)

(assert (=> b!640107 (= lt!296251 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296253 (select (arr!18370 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640108 () Bool)

(declare-fun res!414553 () Bool)

(assert (=> b!640108 (=> (not res!414553) (not e!366416))))

(assert (=> b!640108 (= res!414553 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12461))))

(declare-fun b!640109 () Bool)

(declare-fun res!414562 () Bool)

(assert (=> b!640109 (=> (not res!414562) (not e!366419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640109 (= res!414562 (validKeyInArray!0 k0!1786))))

(declare-fun b!640110 () Bool)

(declare-fun res!414563 () Bool)

(assert (=> b!640110 (=> (not res!414563) (not e!366419))))

(assert (=> b!640110 (= res!414563 (validKeyInArray!0 (select (arr!18370 a!2986) j!136)))))

(declare-fun b!640111 () Bool)

(assert (=> b!640111 (= e!366419 e!366416)))

(declare-fun res!414554 () Bool)

(assert (=> b!640111 (=> (not res!414554) (not e!366416))))

(declare-fun lt!296257 () SeekEntryResult!6817)

(assert (=> b!640111 (= res!414554 (or (= lt!296257 (MissingZero!6817 i!1108)) (= lt!296257 (MissingVacant!6817 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38309 (_ BitVec 32)) SeekEntryResult!6817)

(assert (=> b!640111 (= lt!296257 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!640112 () Bool)

(declare-fun Unit!21629 () Unit!21626)

(assert (=> b!640112 (= e!366412 Unit!21629)))

(declare-fun b!640113 () Bool)

(declare-fun res!414558 () Bool)

(assert (=> b!640113 (=> (not res!414558) (not e!366416))))

(assert (=> b!640113 (= res!414558 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18370 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640114 () Bool)

(assert (=> b!640114 (= e!366410 (not e!366417))))

(declare-fun res!414556 () Bool)

(assert (=> b!640114 (=> res!414556 e!366417)))

(declare-fun lt!296247 () SeekEntryResult!6817)

(assert (=> b!640114 (= res!414556 (not (= lt!296247 (Found!6817 index!984))))))

(declare-fun lt!296259 () Unit!21626)

(assert (=> b!640114 (= lt!296259 e!366412)))

(declare-fun c!73142 () Bool)

(assert (=> b!640114 (= c!73142 (= lt!296247 Undefined!6817))))

(assert (=> b!640114 (= lt!296247 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296252 lt!296253 mask!3053))))

(assert (=> b!640114 e!366413))

(declare-fun res!414555 () Bool)

(assert (=> b!640114 (=> (not res!414555) (not e!366413))))

(declare-fun lt!296249 () (_ BitVec 32))

(assert (=> b!640114 (= res!414555 (= lt!296250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296249 vacantSpotIndex!68 lt!296252 lt!296253 mask!3053)))))

(assert (=> b!640114 (= lt!296250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296249 vacantSpotIndex!68 (select (arr!18370 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640114 (= lt!296252 (select (store (arr!18370 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296248 () Unit!21626)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38309 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21626)

(assert (=> b!640114 (= lt!296248 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296249 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640114 (= lt!296249 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640115 () Bool)

(declare-fun res!414560 () Bool)

(assert (=> b!640115 (=> (not res!414560) (not e!366419))))

(assert (=> b!640115 (= res!414560 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!57926 res!414552) b!640103))

(assert (= (and b!640103 res!414547) b!640110))

(assert (= (and b!640110 res!414563) b!640109))

(assert (= (and b!640109 res!414562) b!640115))

(assert (= (and b!640115 res!414560) b!640111))

(assert (= (and b!640111 res!414554) b!640099))

(assert (= (and b!640099 res!414551) b!640108))

(assert (= (and b!640108 res!414553) b!640113))

(assert (= (and b!640113 res!414558) b!640106))

(assert (= (and b!640106 res!414561) b!640097))

(assert (= (and b!640097 res!414549) b!640114))

(assert (= (and b!640114 res!414555) b!640104))

(assert (= (and b!640114 c!73142) b!640100))

(assert (= (and b!640114 (not c!73142)) b!640112))

(assert (= (and b!640114 (not res!414556)) b!640105))

(assert (= (and b!640105 res!414557) b!640098))

(assert (= (and b!640098 (not res!414548)) b!640102))

(assert (= (and b!640102 res!414550) b!640101))

(assert (= (and b!640105 (not res!414559)) b!640107))

(declare-fun m!613999 () Bool)

(assert (=> b!640111 m!613999))

(declare-fun m!614001 () Bool)

(assert (=> b!640102 m!614001))

(assert (=> b!640102 m!614001))

(declare-fun m!614003 () Bool)

(assert (=> b!640102 m!614003))

(declare-fun m!614005 () Bool)

(assert (=> b!640109 m!614005))

(declare-fun m!614007 () Bool)

(assert (=> b!640114 m!614007))

(assert (=> b!640114 m!614001))

(declare-fun m!614009 () Bool)

(assert (=> b!640114 m!614009))

(declare-fun m!614011 () Bool)

(assert (=> b!640114 m!614011))

(assert (=> b!640114 m!614001))

(declare-fun m!614013 () Bool)

(assert (=> b!640114 m!614013))

(declare-fun m!614015 () Bool)

(assert (=> b!640114 m!614015))

(declare-fun m!614017 () Bool)

(assert (=> b!640114 m!614017))

(declare-fun m!614019 () Bool)

(assert (=> b!640114 m!614019))

(declare-fun m!614021 () Bool)

(assert (=> b!640113 m!614021))

(declare-fun m!614023 () Bool)

(assert (=> b!640115 m!614023))

(declare-fun m!614025 () Bool)

(assert (=> b!640099 m!614025))

(declare-fun m!614027 () Bool)

(assert (=> b!640097 m!614027))

(assert (=> b!640097 m!614001))

(assert (=> b!640097 m!614001))

(declare-fun m!614029 () Bool)

(assert (=> b!640097 m!614029))

(declare-fun m!614031 () Bool)

(assert (=> b!640108 m!614031))

(assert (=> b!640106 m!614009))

(declare-fun m!614033 () Bool)

(assert (=> b!640106 m!614033))

(assert (=> b!640101 m!614001))

(assert (=> b!640101 m!614001))

(declare-fun m!614035 () Bool)

(assert (=> b!640101 m!614035))

(assert (=> b!640098 m!614001))

(declare-fun m!614037 () Bool)

(assert (=> start!57926 m!614037))

(declare-fun m!614039 () Bool)

(assert (=> start!57926 m!614039))

(assert (=> b!640105 m!614001))

(assert (=> b!640105 m!614009))

(declare-fun m!614041 () Bool)

(assert (=> b!640105 m!614041))

(assert (=> b!640107 m!614001))

(declare-fun m!614043 () Bool)

(assert (=> b!640107 m!614043))

(assert (=> b!640107 m!614001))

(declare-fun m!614045 () Bool)

(assert (=> b!640107 m!614045))

(declare-fun m!614047 () Bool)

(assert (=> b!640107 m!614047))

(assert (=> b!640107 m!614001))

(declare-fun m!614049 () Bool)

(assert (=> b!640107 m!614049))

(declare-fun m!614051 () Bool)

(assert (=> b!640107 m!614051))

(declare-fun m!614053 () Bool)

(assert (=> b!640107 m!614053))

(assert (=> b!640110 m!614001))

(assert (=> b!640110 m!614001))

(declare-fun m!614055 () Bool)

(assert (=> b!640110 m!614055))

(check-sat (not b!640102) (not b!640111) (not b!640109) (not b!640110) (not b!640097) (not b!640108) (not b!640114) (not b!640099) (not b!640107) (not b!640101) (not b!640115) (not start!57926))
(check-sat)
