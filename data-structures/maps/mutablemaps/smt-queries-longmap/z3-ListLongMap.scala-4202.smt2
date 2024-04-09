; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57446 () Bool)

(assert start!57446)

(declare-fun res!411096 () Bool)

(declare-fun e!363397 () Bool)

(assert (=> start!57446 (=> (not res!411096) (not e!363397))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57446 (= res!411096 (validMask!0 mask!3053))))

(assert (=> start!57446 e!363397))

(assert (=> start!57446 true))

(declare-datatypes ((array!38192 0))(
  ( (array!38193 (arr!18319 (Array (_ BitVec 32) (_ BitVec 64))) (size!18683 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38192)

(declare-fun array_inv!14093 (array!38192) Bool)

(assert (=> start!57446 (array_inv!14093 a!2986)))

(declare-fun b!635327 () Bool)

(declare-datatypes ((Unit!21422 0))(
  ( (Unit!21423) )
))
(declare-fun e!363395 () Unit!21422)

(declare-fun Unit!21424 () Unit!21422)

(assert (=> b!635327 (= e!363395 Unit!21424)))

(assert (=> b!635327 false))

(declare-fun b!635328 () Bool)

(declare-fun res!411100 () Bool)

(declare-fun e!363388 () Bool)

(assert (=> b!635328 (=> (not res!411100) (not e!363388))))

(declare-datatypes ((List!12413 0))(
  ( (Nil!12410) (Cons!12409 (h!13454 (_ BitVec 64)) (t!18649 List!12413)) )
))
(declare-fun arrayNoDuplicates!0 (array!38192 (_ BitVec 32) List!12413) Bool)

(assert (=> b!635328 (= res!411100 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12410))))

(declare-fun b!635329 () Bool)

(declare-fun e!363386 () Bool)

(declare-fun e!363394 () Bool)

(assert (=> b!635329 (= e!363386 e!363394)))

(declare-fun res!411092 () Bool)

(assert (=> b!635329 (=> (not res!411092) (not e!363394))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6766 0))(
  ( (MissingZero!6766 (index!29368 (_ BitVec 32))) (Found!6766 (index!29369 (_ BitVec 32))) (Intermediate!6766 (undefined!7578 Bool) (index!29370 (_ BitVec 32)) (x!58142 (_ BitVec 32))) (Undefined!6766) (MissingVacant!6766 (index!29371 (_ BitVec 32))) )
))
(declare-fun lt!293808 () SeekEntryResult!6766)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!635329 (= res!411092 (and (= lt!293808 (Found!6766 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18319 a!2986) index!984) (select (arr!18319 a!2986) j!136))) (not (= (select (arr!18319 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38192 (_ BitVec 32)) SeekEntryResult!6766)

(assert (=> b!635329 (= lt!293808 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18319 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635330 () Bool)

(declare-fun res!411094 () Bool)

(assert (=> b!635330 (=> (not res!411094) (not e!363388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38192 (_ BitVec 32)) Bool)

(assert (=> b!635330 (= res!411094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635331 () Bool)

(assert (=> b!635331 (= e!363388 e!363386)))

(declare-fun res!411097 () Bool)

(assert (=> b!635331 (=> (not res!411097) (not e!363386))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!635331 (= res!411097 (= (select (store (arr!18319 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!293807 () array!38192)

(assert (=> b!635331 (= lt!293807 (array!38193 (store (arr!18319 a!2986) i!1108 k0!1786) (size!18683 a!2986)))))

(declare-fun b!635332 () Bool)

(declare-fun Unit!21425 () Unit!21422)

(assert (=> b!635332 (= e!363395 Unit!21425)))

(declare-fun b!635333 () Bool)

(declare-fun e!363393 () Bool)

(declare-fun e!363396 () Bool)

(assert (=> b!635333 (= e!363393 e!363396)))

(declare-fun res!411103 () Bool)

(assert (=> b!635333 (=> res!411103 e!363396)))

(declare-fun lt!293798 () (_ BitVec 64))

(declare-fun lt!293799 () (_ BitVec 64))

(assert (=> b!635333 (= res!411103 (or (not (= (select (arr!18319 a!2986) j!136) lt!293798)) (not (= (select (arr!18319 a!2986) j!136) lt!293799)) (bvsge j!136 index!984)))))

(declare-fun e!363389 () Bool)

(assert (=> b!635333 e!363389))

(declare-fun res!411091 () Bool)

(assert (=> b!635333 (=> (not res!411091) (not e!363389))))

(assert (=> b!635333 (= res!411091 (= lt!293799 (select (arr!18319 a!2986) j!136)))))

(assert (=> b!635333 (= lt!293799 (select (store (arr!18319 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!635334 () Bool)

(declare-fun e!363392 () Bool)

(declare-fun e!363390 () Bool)

(assert (=> b!635334 (= e!363392 e!363390)))

(declare-fun res!411093 () Bool)

(assert (=> b!635334 (=> (not res!411093) (not e!363390))))

(declare-fun arrayContainsKey!0 (array!38192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635334 (= res!411093 (arrayContainsKey!0 lt!293807 (select (arr!18319 a!2986) j!136) j!136))))

(declare-fun b!635335 () Bool)

(assert (=> b!635335 (= e!363397 e!363388)))

(declare-fun res!411105 () Bool)

(assert (=> b!635335 (=> (not res!411105) (not e!363388))))

(declare-fun lt!293805 () SeekEntryResult!6766)

(assert (=> b!635335 (= res!411105 (or (= lt!293805 (MissingZero!6766 i!1108)) (= lt!293805 (MissingVacant!6766 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38192 (_ BitVec 32)) SeekEntryResult!6766)

(assert (=> b!635335 (= lt!293805 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!635336 () Bool)

(declare-fun res!411106 () Bool)

(assert (=> b!635336 (=> (not res!411106) (not e!363397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635336 (= res!411106 (validKeyInArray!0 (select (arr!18319 a!2986) j!136)))))

(declare-fun b!635337 () Bool)

(assert (=> b!635337 (= e!363390 (arrayContainsKey!0 lt!293807 (select (arr!18319 a!2986) j!136) index!984))))

(declare-fun b!635338 () Bool)

(declare-fun res!411098 () Bool)

(assert (=> b!635338 (=> (not res!411098) (not e!363388))))

(assert (=> b!635338 (= res!411098 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18319 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635339 () Bool)

(assert (=> b!635339 (= e!363389 e!363392)))

(declare-fun res!411095 () Bool)

(assert (=> b!635339 (=> res!411095 e!363392)))

(assert (=> b!635339 (= res!411095 (or (not (= (select (arr!18319 a!2986) j!136) lt!293798)) (not (= (select (arr!18319 a!2986) j!136) lt!293799)) (bvsge j!136 index!984)))))

(declare-fun b!635340 () Bool)

(declare-fun res!411107 () Bool)

(assert (=> b!635340 (=> (not res!411107) (not e!363397))))

(assert (=> b!635340 (= res!411107 (validKeyInArray!0 k0!1786))))

(declare-fun b!635341 () Bool)

(declare-fun res!411099 () Bool)

(assert (=> b!635341 (=> (not res!411099) (not e!363397))))

(assert (=> b!635341 (= res!411099 (and (= (size!18683 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18683 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18683 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635342 () Bool)

(assert (=> b!635342 (= e!363394 (not e!363393))))

(declare-fun res!411102 () Bool)

(assert (=> b!635342 (=> res!411102 e!363393)))

(declare-fun lt!293804 () SeekEntryResult!6766)

(assert (=> b!635342 (= res!411102 (not (= lt!293804 (Found!6766 index!984))))))

(declare-fun lt!293806 () Unit!21422)

(assert (=> b!635342 (= lt!293806 e!363395)))

(declare-fun c!72485 () Bool)

(assert (=> b!635342 (= c!72485 (= lt!293804 Undefined!6766))))

(assert (=> b!635342 (= lt!293804 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293798 lt!293807 mask!3053))))

(declare-fun e!363391 () Bool)

(assert (=> b!635342 e!363391))

(declare-fun res!411104 () Bool)

(assert (=> b!635342 (=> (not res!411104) (not e!363391))))

(declare-fun lt!293800 () (_ BitVec 32))

(declare-fun lt!293801 () SeekEntryResult!6766)

(assert (=> b!635342 (= res!411104 (= lt!293801 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293800 vacantSpotIndex!68 lt!293798 lt!293807 mask!3053)))))

(assert (=> b!635342 (= lt!293801 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293800 vacantSpotIndex!68 (select (arr!18319 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635342 (= lt!293798 (select (store (arr!18319 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!293802 () Unit!21422)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38192 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21422)

(assert (=> b!635342 (= lt!293802 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293800 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635342 (= lt!293800 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635343 () Bool)

(assert (=> b!635343 (= e!363396 true)))

(assert (=> b!635343 (arrayContainsKey!0 lt!293807 (select (arr!18319 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293803 () Unit!21422)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38192 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21422)

(assert (=> b!635343 (= lt!293803 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293807 (select (arr!18319 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635344 () Bool)

(declare-fun res!411101 () Bool)

(assert (=> b!635344 (=> (not res!411101) (not e!363397))))

(assert (=> b!635344 (= res!411101 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635345 () Bool)

(assert (=> b!635345 (= e!363391 (= lt!293808 lt!293801))))

(assert (= (and start!57446 res!411096) b!635341))

(assert (= (and b!635341 res!411099) b!635336))

(assert (= (and b!635336 res!411106) b!635340))

(assert (= (and b!635340 res!411107) b!635344))

(assert (= (and b!635344 res!411101) b!635335))

(assert (= (and b!635335 res!411105) b!635330))

(assert (= (and b!635330 res!411094) b!635328))

(assert (= (and b!635328 res!411100) b!635338))

(assert (= (and b!635338 res!411098) b!635331))

(assert (= (and b!635331 res!411097) b!635329))

(assert (= (and b!635329 res!411092) b!635342))

(assert (= (and b!635342 res!411104) b!635345))

(assert (= (and b!635342 c!72485) b!635327))

(assert (= (and b!635342 (not c!72485)) b!635332))

(assert (= (and b!635342 (not res!411102)) b!635333))

(assert (= (and b!635333 res!411091) b!635339))

(assert (= (and b!635339 (not res!411095)) b!635334))

(assert (= (and b!635334 res!411093) b!635337))

(assert (= (and b!635333 (not res!411103)) b!635343))

(declare-fun m!609743 () Bool)

(assert (=> b!635342 m!609743))

(declare-fun m!609745 () Bool)

(assert (=> b!635342 m!609745))

(declare-fun m!609747 () Bool)

(assert (=> b!635342 m!609747))

(declare-fun m!609749 () Bool)

(assert (=> b!635342 m!609749))

(assert (=> b!635342 m!609745))

(declare-fun m!609751 () Bool)

(assert (=> b!635342 m!609751))

(declare-fun m!609753 () Bool)

(assert (=> b!635342 m!609753))

(declare-fun m!609755 () Bool)

(assert (=> b!635342 m!609755))

(declare-fun m!609757 () Bool)

(assert (=> b!635342 m!609757))

(declare-fun m!609759 () Bool)

(assert (=> b!635335 m!609759))

(declare-fun m!609761 () Bool)

(assert (=> b!635329 m!609761))

(assert (=> b!635329 m!609745))

(assert (=> b!635329 m!609745))

(declare-fun m!609763 () Bool)

(assert (=> b!635329 m!609763))

(assert (=> b!635334 m!609745))

(assert (=> b!635334 m!609745))

(declare-fun m!609765 () Bool)

(assert (=> b!635334 m!609765))

(declare-fun m!609767 () Bool)

(assert (=> b!635340 m!609767))

(assert (=> b!635331 m!609747))

(declare-fun m!609769 () Bool)

(assert (=> b!635331 m!609769))

(assert (=> b!635337 m!609745))

(assert (=> b!635337 m!609745))

(declare-fun m!609771 () Bool)

(assert (=> b!635337 m!609771))

(declare-fun m!609773 () Bool)

(assert (=> b!635328 m!609773))

(assert (=> b!635343 m!609745))

(assert (=> b!635343 m!609745))

(declare-fun m!609775 () Bool)

(assert (=> b!635343 m!609775))

(assert (=> b!635343 m!609745))

(declare-fun m!609777 () Bool)

(assert (=> b!635343 m!609777))

(declare-fun m!609779 () Bool)

(assert (=> b!635338 m!609779))

(assert (=> b!635339 m!609745))

(assert (=> b!635336 m!609745))

(assert (=> b!635336 m!609745))

(declare-fun m!609781 () Bool)

(assert (=> b!635336 m!609781))

(assert (=> b!635333 m!609745))

(assert (=> b!635333 m!609747))

(declare-fun m!609783 () Bool)

(assert (=> b!635333 m!609783))

(declare-fun m!609785 () Bool)

(assert (=> b!635330 m!609785))

(declare-fun m!609787 () Bool)

(assert (=> start!57446 m!609787))

(declare-fun m!609789 () Bool)

(assert (=> start!57446 m!609789))

(declare-fun m!609791 () Bool)

(assert (=> b!635344 m!609791))

(check-sat (not b!635330) (not b!635344) (not b!635329) (not b!635343) (not b!635335) (not b!635328) (not start!57446) (not b!635337) (not b!635340) (not b!635334) (not b!635342) (not b!635336))
(check-sat)
