; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56618 () Bool)

(assert start!56618)

(declare-fun b!626950 () Bool)

(declare-fun e!359054 () Bool)

(declare-fun e!359055 () Bool)

(assert (=> b!626950 (= e!359054 e!359055)))

(declare-fun res!404834 () Bool)

(assert (=> b!626950 (=> (not res!404834) (not e!359055))))

(declare-datatypes ((SeekEntryResult!6619 0))(
  ( (MissingZero!6619 (index!28759 (_ BitVec 32))) (Found!6619 (index!28760 (_ BitVec 32))) (Intermediate!6619 (undefined!7431 Bool) (index!28761 (_ BitVec 32)) (x!57528 (_ BitVec 32))) (Undefined!6619) (MissingVacant!6619 (index!28762 (_ BitVec 32))) )
))
(declare-fun lt!290172 () SeekEntryResult!6619)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626950 (= res!404834 (or (= lt!290172 (MissingZero!6619 i!1108)) (= lt!290172 (MissingVacant!6619 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37871 0))(
  ( (array!37872 (arr!18172 (Array (_ BitVec 32) (_ BitVec 64))) (size!18536 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37871)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37871 (_ BitVec 32)) SeekEntryResult!6619)

(assert (=> b!626950 (= lt!290172 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626951 () Bool)

(declare-fun res!404832 () Bool)

(assert (=> b!626951 (=> (not res!404832) (not e!359055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37871 (_ BitVec 32)) Bool)

(assert (=> b!626951 (= res!404832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626952 () Bool)

(declare-fun res!404840 () Bool)

(assert (=> b!626952 (=> (not res!404840) (not e!359054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626952 (= res!404840 (validKeyInArray!0 k0!1786))))

(declare-fun res!404831 () Bool)

(assert (=> start!56618 (=> (not res!404831) (not e!359054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56618 (= res!404831 (validMask!0 mask!3053))))

(assert (=> start!56618 e!359054))

(assert (=> start!56618 true))

(declare-fun array_inv!13946 (array!37871) Bool)

(assert (=> start!56618 (array_inv!13946 a!2986)))

(declare-fun b!626953 () Bool)

(declare-fun res!404835 () Bool)

(assert (=> b!626953 (=> (not res!404835) (not e!359054))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!626953 (= res!404835 (and (= (size!18536 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18536 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18536 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626954 () Bool)

(declare-fun res!404839 () Bool)

(assert (=> b!626954 (=> (not res!404839) (not e!359055))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!626954 (= res!404839 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18172 a!2986) index!984) (select (arr!18172 a!2986) j!136))) (not (= (select (arr!18172 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626955 () Bool)

(declare-fun res!404837 () Bool)

(assert (=> b!626955 (=> (not res!404837) (not e!359054))))

(assert (=> b!626955 (= res!404837 (validKeyInArray!0 (select (arr!18172 a!2986) j!136)))))

(declare-fun b!626956 () Bool)

(declare-fun res!404833 () Bool)

(assert (=> b!626956 (=> (not res!404833) (not e!359054))))

(declare-fun arrayContainsKey!0 (array!37871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626956 (= res!404833 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626957 () Bool)

(assert (=> b!626957 (= e!359055 false)))

(declare-fun lt!290171 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626957 (= lt!290171 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626958 () Bool)

(declare-fun res!404836 () Bool)

(assert (=> b!626958 (=> (not res!404836) (not e!359055))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!626958 (= res!404836 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18172 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18172 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626959 () Bool)

(declare-fun res!404838 () Bool)

(assert (=> b!626959 (=> (not res!404838) (not e!359055))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37871 (_ BitVec 32)) SeekEntryResult!6619)

(assert (=> b!626959 (= res!404838 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18172 a!2986) j!136) a!2986 mask!3053) (Found!6619 j!136)))))

(declare-fun b!626960 () Bool)

(declare-fun res!404830 () Bool)

(assert (=> b!626960 (=> (not res!404830) (not e!359055))))

(declare-datatypes ((List!12266 0))(
  ( (Nil!12263) (Cons!12262 (h!13307 (_ BitVec 64)) (t!18502 List!12266)) )
))
(declare-fun arrayNoDuplicates!0 (array!37871 (_ BitVec 32) List!12266) Bool)

(assert (=> b!626960 (= res!404830 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12263))))

(assert (= (and start!56618 res!404831) b!626953))

(assert (= (and b!626953 res!404835) b!626955))

(assert (= (and b!626955 res!404837) b!626952))

(assert (= (and b!626952 res!404840) b!626956))

(assert (= (and b!626956 res!404833) b!626950))

(assert (= (and b!626950 res!404834) b!626951))

(assert (= (and b!626951 res!404832) b!626960))

(assert (= (and b!626960 res!404830) b!626958))

(assert (= (and b!626958 res!404836) b!626959))

(assert (= (and b!626959 res!404838) b!626954))

(assert (= (and b!626954 res!404839) b!626957))

(declare-fun m!602343 () Bool)

(assert (=> b!626959 m!602343))

(assert (=> b!626959 m!602343))

(declare-fun m!602345 () Bool)

(assert (=> b!626959 m!602345))

(declare-fun m!602347 () Bool)

(assert (=> b!626952 m!602347))

(declare-fun m!602349 () Bool)

(assert (=> b!626951 m!602349))

(declare-fun m!602351 () Bool)

(assert (=> b!626960 m!602351))

(declare-fun m!602353 () Bool)

(assert (=> b!626954 m!602353))

(assert (=> b!626954 m!602343))

(declare-fun m!602355 () Bool)

(assert (=> b!626950 m!602355))

(declare-fun m!602357 () Bool)

(assert (=> b!626958 m!602357))

(declare-fun m!602359 () Bool)

(assert (=> b!626958 m!602359))

(declare-fun m!602361 () Bool)

(assert (=> b!626958 m!602361))

(declare-fun m!602363 () Bool)

(assert (=> start!56618 m!602363))

(declare-fun m!602365 () Bool)

(assert (=> start!56618 m!602365))

(assert (=> b!626955 m!602343))

(assert (=> b!626955 m!602343))

(declare-fun m!602367 () Bool)

(assert (=> b!626955 m!602367))

(declare-fun m!602369 () Bool)

(assert (=> b!626957 m!602369))

(declare-fun m!602371 () Bool)

(assert (=> b!626956 m!602371))

(check-sat (not b!626951) (not b!626952) (not b!626955) (not b!626956) (not b!626950) (not b!626960) (not b!626957) (not start!56618) (not b!626959))
(check-sat)
