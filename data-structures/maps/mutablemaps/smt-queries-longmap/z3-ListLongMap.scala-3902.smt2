; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53442 () Bool)

(assert start!53442)

(declare-fun b!581052 () Bool)

(declare-fun res!369021 () Bool)

(declare-fun e!333492 () Bool)

(assert (=> b!581052 (=> (not res!369021) (not e!333492))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36297 0))(
  ( (array!36298 (arr!17419 (Array (_ BitVec 32) (_ BitVec 64))) (size!17783 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36297)

(assert (=> b!581052 (= res!369021 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17419 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17419 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369025 () Bool)

(declare-fun e!333491 () Bool)

(assert (=> start!53442 (=> (not res!369025) (not e!333491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53442 (= res!369025 (validMask!0 mask!3053))))

(assert (=> start!53442 e!333491))

(assert (=> start!53442 true))

(declare-fun array_inv!13193 (array!36297) Bool)

(assert (=> start!53442 (array_inv!13193 a!2986)))

(declare-fun b!581053 () Bool)

(declare-fun res!369019 () Bool)

(assert (=> b!581053 (=> (not res!369019) (not e!333491))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581053 (= res!369019 (and (= (size!17783 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17783 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17783 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581054 () Bool)

(assert (=> b!581054 (= e!333491 e!333492)))

(declare-fun res!369024 () Bool)

(assert (=> b!581054 (=> (not res!369024) (not e!333492))))

(declare-datatypes ((SeekEntryResult!5866 0))(
  ( (MissingZero!5866 (index!25691 (_ BitVec 32))) (Found!5866 (index!25692 (_ BitVec 32))) (Intermediate!5866 (undefined!6678 Bool) (index!25693 (_ BitVec 32)) (x!54586 (_ BitVec 32))) (Undefined!5866) (MissingVacant!5866 (index!25694 (_ BitVec 32))) )
))
(declare-fun lt!264836 () SeekEntryResult!5866)

(assert (=> b!581054 (= res!369024 (or (= lt!264836 (MissingZero!5866 i!1108)) (= lt!264836 (MissingVacant!5866 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36297 (_ BitVec 32)) SeekEntryResult!5866)

(assert (=> b!581054 (= lt!264836 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581055 () Bool)

(assert (=> b!581055 (= e!333492 false)))

(declare-fun lt!264835 () SeekEntryResult!5866)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36297 (_ BitVec 32)) SeekEntryResult!5866)

(assert (=> b!581055 (= lt!264835 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17419 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581056 () Bool)

(declare-fun res!369026 () Bool)

(assert (=> b!581056 (=> (not res!369026) (not e!333492))))

(declare-datatypes ((List!11513 0))(
  ( (Nil!11510) (Cons!11509 (h!12554 (_ BitVec 64)) (t!17749 List!11513)) )
))
(declare-fun arrayNoDuplicates!0 (array!36297 (_ BitVec 32) List!11513) Bool)

(assert (=> b!581056 (= res!369026 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11510))))

(declare-fun b!581057 () Bool)

(declare-fun res!369018 () Bool)

(assert (=> b!581057 (=> (not res!369018) (not e!333491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581057 (= res!369018 (validKeyInArray!0 (select (arr!17419 a!2986) j!136)))))

(declare-fun b!581058 () Bool)

(declare-fun res!369020 () Bool)

(assert (=> b!581058 (=> (not res!369020) (not e!333491))))

(declare-fun arrayContainsKey!0 (array!36297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581058 (= res!369020 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581059 () Bool)

(declare-fun res!369023 () Bool)

(assert (=> b!581059 (=> (not res!369023) (not e!333492))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36297 (_ BitVec 32)) Bool)

(assert (=> b!581059 (= res!369023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581060 () Bool)

(declare-fun res!369022 () Bool)

(assert (=> b!581060 (=> (not res!369022) (not e!333491))))

(assert (=> b!581060 (= res!369022 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53442 res!369025) b!581053))

(assert (= (and b!581053 res!369019) b!581057))

(assert (= (and b!581057 res!369018) b!581060))

(assert (= (and b!581060 res!369022) b!581058))

(assert (= (and b!581058 res!369020) b!581054))

(assert (= (and b!581054 res!369024) b!581059))

(assert (= (and b!581059 res!369023) b!581056))

(assert (= (and b!581056 res!369026) b!581052))

(assert (= (and b!581052 res!369021) b!581055))

(declare-fun m!559653 () Bool)

(assert (=> b!581060 m!559653))

(declare-fun m!559655 () Bool)

(assert (=> b!581057 m!559655))

(assert (=> b!581057 m!559655))

(declare-fun m!559657 () Bool)

(assert (=> b!581057 m!559657))

(declare-fun m!559659 () Bool)

(assert (=> b!581054 m!559659))

(declare-fun m!559661 () Bool)

(assert (=> b!581052 m!559661))

(declare-fun m!559663 () Bool)

(assert (=> b!581052 m!559663))

(declare-fun m!559665 () Bool)

(assert (=> b!581052 m!559665))

(declare-fun m!559667 () Bool)

(assert (=> b!581056 m!559667))

(assert (=> b!581055 m!559655))

(assert (=> b!581055 m!559655))

(declare-fun m!559669 () Bool)

(assert (=> b!581055 m!559669))

(declare-fun m!559671 () Bool)

(assert (=> start!53442 m!559671))

(declare-fun m!559673 () Bool)

(assert (=> start!53442 m!559673))

(declare-fun m!559675 () Bool)

(assert (=> b!581058 m!559675))

(declare-fun m!559677 () Bool)

(assert (=> b!581059 m!559677))

(check-sat (not b!581054) (not b!581058) (not b!581055) (not b!581056) (not start!53442) (not b!581057) (not b!581059) (not b!581060))
(check-sat)
