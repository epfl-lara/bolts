; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53402 () Bool)

(assert start!53402)

(declare-fun b!580511 () Bool)

(declare-fun res!368483 () Bool)

(declare-fun e!333312 () Bool)

(assert (=> b!580511 (=> (not res!368483) (not e!333312))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580511 (= res!368483 (validKeyInArray!0 k!1786))))

(declare-fun b!580512 () Bool)

(declare-fun res!368485 () Bool)

(assert (=> b!580512 (=> (not res!368485) (not e!333312))))

(declare-datatypes ((array!36257 0))(
  ( (array!36258 (arr!17399 (Array (_ BitVec 32) (_ BitVec 64))) (size!17763 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36257)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580512 (= res!368485 (validKeyInArray!0 (select (arr!17399 a!2986) j!136)))))

(declare-fun e!333311 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!580513 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580513 (= e!333311 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17399 a!2986) index!984) (select (arr!17399 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!580514 () Bool)

(declare-fun res!368481 () Bool)

(assert (=> b!580514 (=> (not res!368481) (not e!333311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36257 (_ BitVec 32)) Bool)

(assert (=> b!580514 (= res!368481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580515 () Bool)

(declare-fun res!368478 () Bool)

(assert (=> b!580515 (=> (not res!368478) (not e!333312))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580515 (= res!368478 (and (= (size!17763 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17763 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17763 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580516 () Bool)

(declare-fun res!368480 () Bool)

(assert (=> b!580516 (=> (not res!368480) (not e!333311))))

(declare-datatypes ((List!11493 0))(
  ( (Nil!11490) (Cons!11489 (h!12534 (_ BitVec 64)) (t!17729 List!11493)) )
))
(declare-fun arrayNoDuplicates!0 (array!36257 (_ BitVec 32) List!11493) Bool)

(assert (=> b!580516 (= res!368480 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11490))))

(declare-fun b!580517 () Bool)

(declare-fun res!368479 () Bool)

(assert (=> b!580517 (=> (not res!368479) (not e!333311))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5846 0))(
  ( (MissingZero!5846 (index!25611 (_ BitVec 32))) (Found!5846 (index!25612 (_ BitVec 32))) (Intermediate!5846 (undefined!6658 Bool) (index!25613 (_ BitVec 32)) (x!54510 (_ BitVec 32))) (Undefined!5846) (MissingVacant!5846 (index!25614 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36257 (_ BitVec 32)) SeekEntryResult!5846)

(assert (=> b!580517 (= res!368479 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17399 a!2986) j!136) a!2986 mask!3053) (Found!5846 j!136)))))

(declare-fun b!580518 () Bool)

(declare-fun res!368486 () Bool)

(assert (=> b!580518 (=> (not res!368486) (not e!333312))))

(declare-fun arrayContainsKey!0 (array!36257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580518 (= res!368486 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368482 () Bool)

(assert (=> start!53402 (=> (not res!368482) (not e!333312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53402 (= res!368482 (validMask!0 mask!3053))))

(assert (=> start!53402 e!333312))

(assert (=> start!53402 true))

(declare-fun array_inv!13173 (array!36257) Bool)

(assert (=> start!53402 (array_inv!13173 a!2986)))

(declare-fun b!580519 () Bool)

(declare-fun res!368477 () Bool)

(assert (=> b!580519 (=> (not res!368477) (not e!333311))))

(assert (=> b!580519 (= res!368477 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17399 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17399 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580520 () Bool)

(assert (=> b!580520 (= e!333312 e!333311)))

(declare-fun res!368484 () Bool)

(assert (=> b!580520 (=> (not res!368484) (not e!333311))))

(declare-fun lt!264716 () SeekEntryResult!5846)

(assert (=> b!580520 (= res!368484 (or (= lt!264716 (MissingZero!5846 i!1108)) (= lt!264716 (MissingVacant!5846 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36257 (_ BitVec 32)) SeekEntryResult!5846)

(assert (=> b!580520 (= lt!264716 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53402 res!368482) b!580515))

(assert (= (and b!580515 res!368478) b!580512))

(assert (= (and b!580512 res!368485) b!580511))

(assert (= (and b!580511 res!368483) b!580518))

(assert (= (and b!580518 res!368486) b!580520))

(assert (= (and b!580520 res!368484) b!580514))

(assert (= (and b!580514 res!368481) b!580516))

(assert (= (and b!580516 res!368480) b!580519))

(assert (= (and b!580519 res!368477) b!580517))

(assert (= (and b!580517 res!368479) b!580513))

(declare-fun m!559131 () Bool)

(assert (=> b!580520 m!559131))

(declare-fun m!559133 () Bool)

(assert (=> b!580512 m!559133))

(assert (=> b!580512 m!559133))

(declare-fun m!559135 () Bool)

(assert (=> b!580512 m!559135))

(declare-fun m!559137 () Bool)

(assert (=> b!580516 m!559137))

(declare-fun m!559139 () Bool)

(assert (=> b!580518 m!559139))

(declare-fun m!559141 () Bool)

(assert (=> b!580514 m!559141))

(declare-fun m!559143 () Bool)

(assert (=> b!580519 m!559143))

(declare-fun m!559145 () Bool)

(assert (=> b!580519 m!559145))

(declare-fun m!559147 () Bool)

(assert (=> b!580519 m!559147))

(declare-fun m!559149 () Bool)

(assert (=> b!580511 m!559149))

(declare-fun m!559151 () Bool)

(assert (=> start!53402 m!559151))

(declare-fun m!559153 () Bool)

(assert (=> start!53402 m!559153))

(assert (=> b!580517 m!559133))

(assert (=> b!580517 m!559133))

(declare-fun m!559155 () Bool)

(assert (=> b!580517 m!559155))

(declare-fun m!559157 () Bool)

(assert (=> b!580513 m!559157))

(assert (=> b!580513 m!559133))

(push 1)

