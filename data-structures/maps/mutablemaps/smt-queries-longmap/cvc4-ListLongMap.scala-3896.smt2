; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53408 () Bool)

(assert start!53408)

(declare-fun b!580593 () Bool)

(declare-fun e!333340 () Bool)

(assert (=> b!580593 (= e!333340 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5849 0))(
  ( (MissingZero!5849 (index!25623 (_ BitVec 32))) (Found!5849 (index!25624 (_ BitVec 32))) (Intermediate!5849 (undefined!6661 Bool) (index!25625 (_ BitVec 32)) (x!54521 (_ BitVec 32))) (Undefined!5849) (MissingVacant!5849 (index!25626 (_ BitVec 32))) )
))
(declare-fun lt!264734 () SeekEntryResult!5849)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36263 0))(
  ( (array!36264 (arr!17402 (Array (_ BitVec 32) (_ BitVec 64))) (size!17766 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36263)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36263 (_ BitVec 32)) SeekEntryResult!5849)

(assert (=> b!580593 (= lt!264734 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17402 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580594 () Bool)

(declare-fun res!368563 () Bool)

(assert (=> b!580594 (=> (not res!368563) (not e!333340))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!580594 (= res!368563 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17402 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17402 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580595 () Bool)

(declare-fun res!368567 () Bool)

(declare-fun e!333338 () Bool)

(assert (=> b!580595 (=> (not res!368567) (not e!333338))))

(assert (=> b!580595 (= res!368567 (and (= (size!17766 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17766 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17766 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580596 () Bool)

(declare-fun res!368560 () Bool)

(assert (=> b!580596 (=> (not res!368560) (not e!333338))))

(declare-fun arrayContainsKey!0 (array!36263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580596 (= res!368560 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580597 () Bool)

(declare-fun res!368565 () Bool)

(assert (=> b!580597 (=> (not res!368565) (not e!333340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36263 (_ BitVec 32)) Bool)

(assert (=> b!580597 (= res!368565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580599 () Bool)

(assert (=> b!580599 (= e!333338 e!333340)))

(declare-fun res!368566 () Bool)

(assert (=> b!580599 (=> (not res!368566) (not e!333340))))

(declare-fun lt!264733 () SeekEntryResult!5849)

(assert (=> b!580599 (= res!368566 (or (= lt!264733 (MissingZero!5849 i!1108)) (= lt!264733 (MissingVacant!5849 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36263 (_ BitVec 32)) SeekEntryResult!5849)

(assert (=> b!580599 (= lt!264733 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580600 () Bool)

(declare-fun res!368562 () Bool)

(assert (=> b!580600 (=> (not res!368562) (not e!333338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580600 (= res!368562 (validKeyInArray!0 k!1786))))

(declare-fun b!580601 () Bool)

(declare-fun res!368564 () Bool)

(assert (=> b!580601 (=> (not res!368564) (not e!333340))))

(declare-datatypes ((List!11496 0))(
  ( (Nil!11493) (Cons!11492 (h!12537 (_ BitVec 64)) (t!17732 List!11496)) )
))
(declare-fun arrayNoDuplicates!0 (array!36263 (_ BitVec 32) List!11496) Bool)

(assert (=> b!580601 (= res!368564 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11493))))

(declare-fun b!580598 () Bool)

(declare-fun res!368561 () Bool)

(assert (=> b!580598 (=> (not res!368561) (not e!333338))))

(assert (=> b!580598 (= res!368561 (validKeyInArray!0 (select (arr!17402 a!2986) j!136)))))

(declare-fun res!368559 () Bool)

(assert (=> start!53408 (=> (not res!368559) (not e!333338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53408 (= res!368559 (validMask!0 mask!3053))))

(assert (=> start!53408 e!333338))

(assert (=> start!53408 true))

(declare-fun array_inv!13176 (array!36263) Bool)

(assert (=> start!53408 (array_inv!13176 a!2986)))

(assert (= (and start!53408 res!368559) b!580595))

(assert (= (and b!580595 res!368567) b!580598))

(assert (= (and b!580598 res!368561) b!580600))

(assert (= (and b!580600 res!368562) b!580596))

(assert (= (and b!580596 res!368560) b!580599))

(assert (= (and b!580599 res!368566) b!580597))

(assert (= (and b!580597 res!368565) b!580601))

(assert (= (and b!580601 res!368564) b!580594))

(assert (= (and b!580594 res!368563) b!580593))

(declare-fun m!559211 () Bool)

(assert (=> b!580596 m!559211))

(declare-fun m!559213 () Bool)

(assert (=> b!580599 m!559213))

(declare-fun m!559215 () Bool)

(assert (=> start!53408 m!559215))

(declare-fun m!559217 () Bool)

(assert (=> start!53408 m!559217))

(declare-fun m!559219 () Bool)

(assert (=> b!580598 m!559219))

(assert (=> b!580598 m!559219))

(declare-fun m!559221 () Bool)

(assert (=> b!580598 m!559221))

(declare-fun m!559223 () Bool)

(assert (=> b!580594 m!559223))

(declare-fun m!559225 () Bool)

(assert (=> b!580594 m!559225))

(declare-fun m!559227 () Bool)

(assert (=> b!580594 m!559227))

(declare-fun m!559229 () Bool)

(assert (=> b!580601 m!559229))

(assert (=> b!580593 m!559219))

(assert (=> b!580593 m!559219))

(declare-fun m!559231 () Bool)

(assert (=> b!580593 m!559231))

(declare-fun m!559233 () Bool)

(assert (=> b!580600 m!559233))

(declare-fun m!559235 () Bool)

(assert (=> b!580597 m!559235))

(push 1)

(assert (not b!580600))

