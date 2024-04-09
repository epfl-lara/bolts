; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53902 () Bool)

(assert start!53902)

(declare-fun b!587617 () Bool)

(declare-fun res!375407 () Bool)

(declare-fun e!335632 () Bool)

(assert (=> b!587617 (=> (not res!375407) (not e!335632))))

(declare-datatypes ((array!36700 0))(
  ( (array!36701 (arr!17619 (Array (_ BitVec 32) (_ BitVec 64))) (size!17983 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36700)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587617 (= res!375407 (validKeyInArray!0 (select (arr!17619 a!2986) j!136)))))

(declare-fun b!587618 () Bool)

(declare-fun e!335630 () Bool)

(assert (=> b!587618 (= e!335630 (not true))))

(declare-fun e!335631 () Bool)

(assert (=> b!587618 e!335631))

(declare-fun res!375409 () Bool)

(assert (=> b!587618 (=> (not res!375409) (not e!335631))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6066 0))(
  ( (MissingZero!6066 (index!26494 (_ BitVec 32))) (Found!6066 (index!26495 (_ BitVec 32))) (Intermediate!6066 (undefined!6878 Bool) (index!26496 (_ BitVec 32)) (x!55331 (_ BitVec 32))) (Undefined!6066) (MissingVacant!6066 (index!26497 (_ BitVec 32))) )
))
(declare-fun lt!266468 () SeekEntryResult!6066)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266469 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36700 (_ BitVec 32)) SeekEntryResult!6066)

(assert (=> b!587618 (= res!375409 (= lt!266468 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266469 vacantSpotIndex!68 (select (store (arr!17619 a!2986) i!1108 k!1786) j!136) (array!36701 (store (arr!17619 a!2986) i!1108 k!1786) (size!17983 a!2986)) mask!3053)))))

(assert (=> b!587618 (= lt!266468 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266469 vacantSpotIndex!68 (select (arr!17619 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18256 0))(
  ( (Unit!18257) )
))
(declare-fun lt!266471 () Unit!18256)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36700 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18256)

(assert (=> b!587618 (= lt!266471 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266469 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587618 (= lt!266469 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587619 () Bool)

(declare-fun res!375408 () Bool)

(declare-fun e!335628 () Bool)

(assert (=> b!587619 (=> (not res!375408) (not e!335628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36700 (_ BitVec 32)) Bool)

(assert (=> b!587619 (= res!375408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587620 () Bool)

(declare-fun res!375411 () Bool)

(assert (=> b!587620 (=> (not res!375411) (not e!335632))))

(declare-fun arrayContainsKey!0 (array!36700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587620 (= res!375411 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587621 () Bool)

(assert (=> b!587621 (= e!335632 e!335628)))

(declare-fun res!375413 () Bool)

(assert (=> b!587621 (=> (not res!375413) (not e!335628))))

(declare-fun lt!266467 () SeekEntryResult!6066)

(assert (=> b!587621 (= res!375413 (or (= lt!266467 (MissingZero!6066 i!1108)) (= lt!266467 (MissingVacant!6066 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36700 (_ BitVec 32)) SeekEntryResult!6066)

(assert (=> b!587621 (= lt!266467 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587622 () Bool)

(assert (=> b!587622 (= e!335628 e!335630)))

(declare-fun res!375403 () Bool)

(assert (=> b!587622 (=> (not res!375403) (not e!335630))))

(declare-fun lt!266470 () SeekEntryResult!6066)

(assert (=> b!587622 (= res!375403 (and (= lt!266470 (Found!6066 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17619 a!2986) index!984) (select (arr!17619 a!2986) j!136))) (not (= (select (arr!17619 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!587622 (= lt!266470 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17619 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587623 () Bool)

(declare-fun res!375412 () Bool)

(assert (=> b!587623 (=> (not res!375412) (not e!335628))))

(declare-datatypes ((List!11713 0))(
  ( (Nil!11710) (Cons!11709 (h!12754 (_ BitVec 64)) (t!17949 List!11713)) )
))
(declare-fun arrayNoDuplicates!0 (array!36700 (_ BitVec 32) List!11713) Bool)

(assert (=> b!587623 (= res!375412 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11710))))

(declare-fun b!587624 () Bool)

(declare-fun res!375405 () Bool)

(assert (=> b!587624 (=> (not res!375405) (not e!335632))))

(assert (=> b!587624 (= res!375405 (validKeyInArray!0 k!1786))))

(declare-fun b!587625 () Bool)

(assert (=> b!587625 (= e!335631 (= lt!266470 lt!266468))))

(declare-fun b!587627 () Bool)

(declare-fun res!375406 () Bool)

(assert (=> b!587627 (=> (not res!375406) (not e!335632))))

(assert (=> b!587627 (= res!375406 (and (= (size!17983 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17983 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17983 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587626 () Bool)

(declare-fun res!375404 () Bool)

(assert (=> b!587626 (=> (not res!375404) (not e!335628))))

(assert (=> b!587626 (= res!375404 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17619 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17619 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!375410 () Bool)

(assert (=> start!53902 (=> (not res!375410) (not e!335632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53902 (= res!375410 (validMask!0 mask!3053))))

(assert (=> start!53902 e!335632))

(assert (=> start!53902 true))

(declare-fun array_inv!13393 (array!36700) Bool)

(assert (=> start!53902 (array_inv!13393 a!2986)))

(assert (= (and start!53902 res!375410) b!587627))

(assert (= (and b!587627 res!375406) b!587617))

(assert (= (and b!587617 res!375407) b!587624))

(assert (= (and b!587624 res!375405) b!587620))

(assert (= (and b!587620 res!375411) b!587621))

(assert (= (and b!587621 res!375413) b!587619))

(assert (= (and b!587619 res!375408) b!587623))

(assert (= (and b!587623 res!375412) b!587626))

(assert (= (and b!587626 res!375404) b!587622))

(assert (= (and b!587622 res!375403) b!587618))

(assert (= (and b!587618 res!375409) b!587625))

(declare-fun m!566125 () Bool)

(assert (=> b!587619 m!566125))

(declare-fun m!566127 () Bool)

(assert (=> b!587622 m!566127))

(declare-fun m!566129 () Bool)

(assert (=> b!587622 m!566129))

(assert (=> b!587622 m!566129))

(declare-fun m!566131 () Bool)

(assert (=> b!587622 m!566131))

(declare-fun m!566133 () Bool)

(assert (=> start!53902 m!566133))

(declare-fun m!566135 () Bool)

(assert (=> start!53902 m!566135))

(declare-fun m!566137 () Bool)

(assert (=> b!587621 m!566137))

(declare-fun m!566139 () Bool)

(assert (=> b!587626 m!566139))

(declare-fun m!566141 () Bool)

(assert (=> b!587626 m!566141))

(declare-fun m!566143 () Bool)

(assert (=> b!587626 m!566143))

(assert (=> b!587617 m!566129))

(assert (=> b!587617 m!566129))

(declare-fun m!566145 () Bool)

(assert (=> b!587617 m!566145))

(declare-fun m!566147 () Bool)

(assert (=> b!587620 m!566147))

(declare-fun m!566149 () Bool)

(assert (=> b!587623 m!566149))

(declare-fun m!566151 () Bool)

(assert (=> b!587624 m!566151))

(declare-fun m!566153 () Bool)

(assert (=> b!587618 m!566153))

(declare-fun m!566155 () Bool)

(assert (=> b!587618 m!566155))

(assert (=> b!587618 m!566129))

(assert (=> b!587618 m!566155))

(declare-fun m!566157 () Bool)

(assert (=> b!587618 m!566157))

(assert (=> b!587618 m!566141))

(assert (=> b!587618 m!566129))

(declare-fun m!566159 () Bool)

(assert (=> b!587618 m!566159))

(declare-fun m!566161 () Bool)

(assert (=> b!587618 m!566161))

(push 1)

