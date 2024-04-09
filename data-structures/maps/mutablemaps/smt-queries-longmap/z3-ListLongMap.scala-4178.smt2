; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56996 () Bool)

(assert start!56996)

(declare-fun b!630421 () Bool)

(declare-fun e!360490 () Bool)

(assert (=> b!630421 (= e!360490 (not true))))

(declare-datatypes ((Unit!21134 0))(
  ( (Unit!21135) )
))
(declare-fun lt!291221 () Unit!21134)

(declare-fun e!360491 () Unit!21134)

(assert (=> b!630421 (= lt!291221 e!360491)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!291224 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun c!71774 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38033 0))(
  ( (array!38034 (arr!18247 (Array (_ BitVec 32) (_ BitVec 64))) (size!18611 (_ BitVec 32))) )
))
(declare-fun lt!291225 () array!38033)

(declare-datatypes ((SeekEntryResult!6694 0))(
  ( (MissingZero!6694 (index!29065 (_ BitVec 32))) (Found!6694 (index!29066 (_ BitVec 32))) (Intermediate!6694 (undefined!7506 Bool) (index!29067 (_ BitVec 32)) (x!57833 (_ BitVec 32))) (Undefined!6694) (MissingVacant!6694 (index!29068 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38033 (_ BitVec 32)) SeekEntryResult!6694)

(assert (=> b!630421 (= c!71774 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291224 lt!291225 mask!3053) Undefined!6694))))

(declare-fun e!360489 () Bool)

(assert (=> b!630421 e!360489))

(declare-fun res!407615 () Bool)

(assert (=> b!630421 (=> (not res!407615) (not e!360489))))

(declare-fun lt!291223 () SeekEntryResult!6694)

(declare-fun lt!291220 () (_ BitVec 32))

(assert (=> b!630421 (= res!407615 (= lt!291223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291220 vacantSpotIndex!68 lt!291224 lt!291225 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38033)

(assert (=> b!630421 (= lt!291223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291220 vacantSpotIndex!68 (select (arr!18247 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!630421 (= lt!291224 (select (store (arr!18247 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291222 () Unit!21134)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21134)

(assert (=> b!630421 (= lt!291222 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291220 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!630421 (= lt!291220 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!630422 () Bool)

(declare-fun Unit!21136 () Unit!21134)

(assert (=> b!630422 (= e!360491 Unit!21136)))

(declare-fun res!407607 () Bool)

(declare-fun e!360488 () Bool)

(assert (=> start!56996 (=> (not res!407607) (not e!360488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56996 (= res!407607 (validMask!0 mask!3053))))

(assert (=> start!56996 e!360488))

(assert (=> start!56996 true))

(declare-fun array_inv!14021 (array!38033) Bool)

(assert (=> start!56996 (array_inv!14021 a!2986)))

(declare-fun b!630423 () Bool)

(declare-fun e!360493 () Bool)

(declare-fun e!360492 () Bool)

(assert (=> b!630423 (= e!360493 e!360492)))

(declare-fun res!407616 () Bool)

(assert (=> b!630423 (=> (not res!407616) (not e!360492))))

(assert (=> b!630423 (= res!407616 (= (select (store (arr!18247 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!630423 (= lt!291225 (array!38034 (store (arr!18247 a!2986) i!1108 k0!1786) (size!18611 a!2986)))))

(declare-fun b!630424 () Bool)

(declare-fun res!407617 () Bool)

(assert (=> b!630424 (=> (not res!407617) (not e!360493))))

(assert (=> b!630424 (= res!407617 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18247 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!630425 () Bool)

(declare-fun res!407611 () Bool)

(assert (=> b!630425 (=> (not res!407611) (not e!360488))))

(declare-fun arrayContainsKey!0 (array!38033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!630425 (= res!407611 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!630426 () Bool)

(declare-fun res!407613 () Bool)

(assert (=> b!630426 (=> (not res!407613) (not e!360493))))

(declare-datatypes ((List!12341 0))(
  ( (Nil!12338) (Cons!12337 (h!13382 (_ BitVec 64)) (t!18577 List!12341)) )
))
(declare-fun arrayNoDuplicates!0 (array!38033 (_ BitVec 32) List!12341) Bool)

(assert (=> b!630426 (= res!407613 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12338))))

(declare-fun b!630427 () Bool)

(declare-fun res!407610 () Bool)

(assert (=> b!630427 (=> (not res!407610) (not e!360488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!630427 (= res!407610 (validKeyInArray!0 (select (arr!18247 a!2986) j!136)))))

(declare-fun b!630428 () Bool)

(declare-fun res!407608 () Bool)

(assert (=> b!630428 (=> (not res!407608) (not e!360488))))

(assert (=> b!630428 (= res!407608 (and (= (size!18611 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18611 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18611 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!630429 () Bool)

(declare-fun Unit!21137 () Unit!21134)

(assert (=> b!630429 (= e!360491 Unit!21137)))

(assert (=> b!630429 false))

(declare-fun b!630430 () Bool)

(assert (=> b!630430 (= e!360488 e!360493)))

(declare-fun res!407609 () Bool)

(assert (=> b!630430 (=> (not res!407609) (not e!360493))))

(declare-fun lt!291218 () SeekEntryResult!6694)

(assert (=> b!630430 (= res!407609 (or (= lt!291218 (MissingZero!6694 i!1108)) (= lt!291218 (MissingVacant!6694 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38033 (_ BitVec 32)) SeekEntryResult!6694)

(assert (=> b!630430 (= lt!291218 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!630431 () Bool)

(declare-fun res!407612 () Bool)

(assert (=> b!630431 (=> (not res!407612) (not e!360488))))

(assert (=> b!630431 (= res!407612 (validKeyInArray!0 k0!1786))))

(declare-fun b!630432 () Bool)

(declare-fun res!407618 () Bool)

(assert (=> b!630432 (=> (not res!407618) (not e!360493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38033 (_ BitVec 32)) Bool)

(assert (=> b!630432 (= res!407618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!630433 () Bool)

(declare-fun lt!291219 () SeekEntryResult!6694)

(assert (=> b!630433 (= e!360489 (= lt!291219 lt!291223))))

(declare-fun b!630434 () Bool)

(assert (=> b!630434 (= e!360492 e!360490)))

(declare-fun res!407614 () Bool)

(assert (=> b!630434 (=> (not res!407614) (not e!360490))))

(assert (=> b!630434 (= res!407614 (and (= lt!291219 (Found!6694 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18247 a!2986) index!984) (select (arr!18247 a!2986) j!136))) (not (= (select (arr!18247 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!630434 (= lt!291219 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18247 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56996 res!407607) b!630428))

(assert (= (and b!630428 res!407608) b!630427))

(assert (= (and b!630427 res!407610) b!630431))

(assert (= (and b!630431 res!407612) b!630425))

(assert (= (and b!630425 res!407611) b!630430))

(assert (= (and b!630430 res!407609) b!630432))

(assert (= (and b!630432 res!407618) b!630426))

(assert (= (and b!630426 res!407613) b!630424))

(assert (= (and b!630424 res!407617) b!630423))

(assert (= (and b!630423 res!407616) b!630434))

(assert (= (and b!630434 res!407614) b!630421))

(assert (= (and b!630421 res!407615) b!630433))

(assert (= (and b!630421 c!71774) b!630429))

(assert (= (and b!630421 (not c!71774)) b!630422))

(declare-fun m!605449 () Bool)

(assert (=> b!630425 m!605449))

(declare-fun m!605451 () Bool)

(assert (=> b!630424 m!605451))

(declare-fun m!605453 () Bool)

(assert (=> b!630434 m!605453))

(declare-fun m!605455 () Bool)

(assert (=> b!630434 m!605455))

(assert (=> b!630434 m!605455))

(declare-fun m!605457 () Bool)

(assert (=> b!630434 m!605457))

(assert (=> b!630427 m!605455))

(assert (=> b!630427 m!605455))

(declare-fun m!605459 () Bool)

(assert (=> b!630427 m!605459))

(declare-fun m!605461 () Bool)

(assert (=> b!630432 m!605461))

(declare-fun m!605463 () Bool)

(assert (=> start!56996 m!605463))

(declare-fun m!605465 () Bool)

(assert (=> start!56996 m!605465))

(declare-fun m!605467 () Bool)

(assert (=> b!630430 m!605467))

(declare-fun m!605469 () Bool)

(assert (=> b!630421 m!605469))

(declare-fun m!605471 () Bool)

(assert (=> b!630421 m!605471))

(assert (=> b!630421 m!605455))

(declare-fun m!605473 () Bool)

(assert (=> b!630421 m!605473))

(assert (=> b!630421 m!605455))

(declare-fun m!605475 () Bool)

(assert (=> b!630421 m!605475))

(declare-fun m!605477 () Bool)

(assert (=> b!630421 m!605477))

(declare-fun m!605479 () Bool)

(assert (=> b!630421 m!605479))

(declare-fun m!605481 () Bool)

(assert (=> b!630421 m!605481))

(declare-fun m!605483 () Bool)

(assert (=> b!630431 m!605483))

(assert (=> b!630423 m!605475))

(declare-fun m!605485 () Bool)

(assert (=> b!630423 m!605485))

(declare-fun m!605487 () Bool)

(assert (=> b!630426 m!605487))

(check-sat (not b!630432) (not b!630434) (not b!630421) (not b!630426) (not b!630425) (not b!630427) (not start!56996) (not b!630431) (not b!630430))
(check-sat)
