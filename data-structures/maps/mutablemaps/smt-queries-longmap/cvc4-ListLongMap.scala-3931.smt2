; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53618 () Bool)

(assert start!53618)

(declare-fun b!583515 () Bool)

(declare-fun e!334300 () Bool)

(declare-fun e!334301 () Bool)

(assert (=> b!583515 (= e!334300 e!334301)))

(declare-fun res!371491 () Bool)

(assert (=> b!583515 (=> (not res!371491) (not e!334301))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!265353 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!583515 (= res!371491 (and (bvsge lt!265353 #b00000000000000000000000000000000) (bvslt lt!265353 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583515 (= lt!265353 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583516 () Bool)

(declare-fun res!371486 () Bool)

(assert (=> b!583516 (=> (not res!371486) (not e!334300))))

(declare-datatypes ((array!36473 0))(
  ( (array!36474 (arr!17507 (Array (_ BitVec 32) (_ BitVec 64))) (size!17871 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36473)

(declare-datatypes ((List!11601 0))(
  ( (Nil!11598) (Cons!11597 (h!12642 (_ BitVec 64)) (t!17837 List!11601)) )
))
(declare-fun arrayNoDuplicates!0 (array!36473 (_ BitVec 32) List!11601) Bool)

(assert (=> b!583516 (= res!371486 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11598))))

(declare-fun b!583517 () Bool)

(declare-fun res!371488 () Bool)

(assert (=> b!583517 (=> (not res!371488) (not e!334300))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5954 0))(
  ( (MissingZero!5954 (index!26043 (_ BitVec 32))) (Found!5954 (index!26044 (_ BitVec 32))) (Intermediate!5954 (undefined!6766 Bool) (index!26045 (_ BitVec 32)) (x!54906 (_ BitVec 32))) (Undefined!5954) (MissingVacant!5954 (index!26046 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36473 (_ BitVec 32)) SeekEntryResult!5954)

(assert (=> b!583517 (= res!371488 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17507 a!2986) j!136) a!2986 mask!3053) (Found!5954 j!136)))))

(declare-fun res!371485 () Bool)

(declare-fun e!334302 () Bool)

(assert (=> start!53618 (=> (not res!371485) (not e!334302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53618 (= res!371485 (validMask!0 mask!3053))))

(assert (=> start!53618 e!334302))

(assert (=> start!53618 true))

(declare-fun array_inv!13281 (array!36473) Bool)

(assert (=> start!53618 (array_inv!13281 a!2986)))

(declare-fun b!583518 () Bool)

(declare-fun res!371490 () Bool)

(assert (=> b!583518 (=> (not res!371490) (not e!334302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583518 (= res!371490 (validKeyInArray!0 (select (arr!17507 a!2986) j!136)))))

(declare-fun b!583519 () Bool)

(assert (=> b!583519 (= e!334302 e!334300)))

(declare-fun res!371487 () Bool)

(assert (=> b!583519 (=> (not res!371487) (not e!334300))))

(declare-fun lt!265354 () SeekEntryResult!5954)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583519 (= res!371487 (or (= lt!265354 (MissingZero!5954 i!1108)) (= lt!265354 (MissingVacant!5954 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36473 (_ BitVec 32)) SeekEntryResult!5954)

(assert (=> b!583519 (= lt!265354 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583520 () Bool)

(declare-fun res!371492 () Bool)

(assert (=> b!583520 (=> (not res!371492) (not e!334300))))

(assert (=> b!583520 (= res!371492 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17507 a!2986) index!984) (select (arr!17507 a!2986) j!136))) (not (= (select (arr!17507 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583521 () Bool)

(declare-fun res!371489 () Bool)

(assert (=> b!583521 (=> (not res!371489) (not e!334302))))

(declare-fun arrayContainsKey!0 (array!36473 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583521 (= res!371489 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583522 () Bool)

(declare-fun res!371481 () Bool)

(assert (=> b!583522 (=> (not res!371481) (not e!334302))))

(assert (=> b!583522 (= res!371481 (validKeyInArray!0 k!1786))))

(declare-fun b!583523 () Bool)

(declare-fun res!371482 () Bool)

(assert (=> b!583523 (=> (not res!371482) (not e!334300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36473 (_ BitVec 32)) Bool)

(assert (=> b!583523 (= res!371482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583524 () Bool)

(declare-fun res!371484 () Bool)

(assert (=> b!583524 (=> (not res!371484) (not e!334300))))

(assert (=> b!583524 (= res!371484 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17507 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17507 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583525 () Bool)

(assert (=> b!583525 (= e!334301 false)))

(declare-fun lt!265355 () SeekEntryResult!5954)

(assert (=> b!583525 (= lt!265355 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265353 vacantSpotIndex!68 (select (arr!17507 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583526 () Bool)

(declare-fun res!371483 () Bool)

(assert (=> b!583526 (=> (not res!371483) (not e!334302))))

(assert (=> b!583526 (= res!371483 (and (= (size!17871 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17871 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17871 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53618 res!371485) b!583526))

(assert (= (and b!583526 res!371483) b!583518))

(assert (= (and b!583518 res!371490) b!583522))

(assert (= (and b!583522 res!371481) b!583521))

(assert (= (and b!583521 res!371489) b!583519))

(assert (= (and b!583519 res!371487) b!583523))

(assert (= (and b!583523 res!371482) b!583516))

(assert (= (and b!583516 res!371486) b!583524))

(assert (= (and b!583524 res!371484) b!583517))

(assert (= (and b!583517 res!371488) b!583520))

(assert (= (and b!583520 res!371492) b!583515))

(assert (= (and b!583515 res!371491) b!583525))

(declare-fun m!562001 () Bool)

(assert (=> b!583515 m!562001))

(declare-fun m!562003 () Bool)

(assert (=> b!583520 m!562003))

(declare-fun m!562005 () Bool)

(assert (=> b!583520 m!562005))

(assert (=> b!583518 m!562005))

(assert (=> b!583518 m!562005))

(declare-fun m!562007 () Bool)

(assert (=> b!583518 m!562007))

(declare-fun m!562009 () Bool)

(assert (=> b!583516 m!562009))

(declare-fun m!562011 () Bool)

(assert (=> start!53618 m!562011))

(declare-fun m!562013 () Bool)

(assert (=> start!53618 m!562013))

(declare-fun m!562015 () Bool)

(assert (=> b!583524 m!562015))

(declare-fun m!562017 () Bool)

(assert (=> b!583524 m!562017))

(declare-fun m!562019 () Bool)

(assert (=> b!583524 m!562019))

(declare-fun m!562021 () Bool)

(assert (=> b!583521 m!562021))

(declare-fun m!562023 () Bool)

(assert (=> b!583522 m!562023))

(assert (=> b!583517 m!562005))

(assert (=> b!583517 m!562005))

(declare-fun m!562025 () Bool)

(assert (=> b!583517 m!562025))

(assert (=> b!583525 m!562005))

(assert (=> b!583525 m!562005))

(declare-fun m!562027 () Bool)

(assert (=> b!583525 m!562027))

(declare-fun m!562029 () Bool)

(assert (=> b!583523 m!562029))

(declare-fun m!562031 () Bool)

(assert (=> b!583519 m!562031))

(push 1)

(assert (not b!583517))

(assert (not b!583519))

(assert (not b!583525))

