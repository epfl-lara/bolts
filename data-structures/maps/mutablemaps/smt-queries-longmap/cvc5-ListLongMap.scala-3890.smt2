; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53368 () Bool)

(assert start!53368)

(declare-fun b!580044 () Bool)

(declare-fun e!333159 () Bool)

(assert (=> b!580044 (= e!333159 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5829 0))(
  ( (MissingZero!5829 (index!25543 (_ BitVec 32))) (Found!5829 (index!25544 (_ BitVec 32))) (Intermediate!5829 (undefined!6641 Bool) (index!25545 (_ BitVec 32)) (x!54453 (_ BitVec 32))) (Undefined!5829) (MissingVacant!5829 (index!25546 (_ BitVec 32))) )
))
(declare-fun lt!264622 () SeekEntryResult!5829)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36223 0))(
  ( (array!36224 (arr!17382 (Array (_ BitVec 32) (_ BitVec 64))) (size!17746 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36223)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36223 (_ BitVec 32)) SeekEntryResult!5829)

(assert (=> b!580044 (= lt!264622 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17382 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580045 () Bool)

(declare-fun res!368016 () Bool)

(declare-fun e!333158 () Bool)

(assert (=> b!580045 (=> (not res!368016) (not e!333158))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580045 (= res!368016 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368010 () Bool)

(assert (=> start!53368 (=> (not res!368010) (not e!333158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53368 (= res!368010 (validMask!0 mask!3053))))

(assert (=> start!53368 e!333158))

(assert (=> start!53368 true))

(declare-fun array_inv!13156 (array!36223) Bool)

(assert (=> start!53368 (array_inv!13156 a!2986)))

(declare-fun b!580046 () Bool)

(declare-fun res!368011 () Bool)

(assert (=> b!580046 (=> (not res!368011) (not e!333159))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580046 (= res!368011 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17382 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17382 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580047 () Bool)

(declare-fun res!368018 () Bool)

(assert (=> b!580047 (=> (not res!368018) (not e!333158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580047 (= res!368018 (validKeyInArray!0 k!1786))))

(declare-fun b!580048 () Bool)

(declare-fun res!368012 () Bool)

(assert (=> b!580048 (=> (not res!368012) (not e!333158))))

(assert (=> b!580048 (= res!368012 (and (= (size!17746 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17746 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17746 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580049 () Bool)

(declare-fun res!368013 () Bool)

(assert (=> b!580049 (=> (not res!368013) (not e!333159))))

(declare-datatypes ((List!11476 0))(
  ( (Nil!11473) (Cons!11472 (h!12517 (_ BitVec 64)) (t!17712 List!11476)) )
))
(declare-fun arrayNoDuplicates!0 (array!36223 (_ BitVec 32) List!11476) Bool)

(assert (=> b!580049 (= res!368013 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11473))))

(declare-fun b!580050 () Bool)

(assert (=> b!580050 (= e!333158 e!333159)))

(declare-fun res!368014 () Bool)

(assert (=> b!580050 (=> (not res!368014) (not e!333159))))

(declare-fun lt!264623 () SeekEntryResult!5829)

(assert (=> b!580050 (= res!368014 (or (= lt!264623 (MissingZero!5829 i!1108)) (= lt!264623 (MissingVacant!5829 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36223 (_ BitVec 32)) SeekEntryResult!5829)

(assert (=> b!580050 (= lt!264623 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580051 () Bool)

(declare-fun res!368017 () Bool)

(assert (=> b!580051 (=> (not res!368017) (not e!333158))))

(assert (=> b!580051 (= res!368017 (validKeyInArray!0 (select (arr!17382 a!2986) j!136)))))

(declare-fun b!580052 () Bool)

(declare-fun res!368015 () Bool)

(assert (=> b!580052 (=> (not res!368015) (not e!333159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36223 (_ BitVec 32)) Bool)

(assert (=> b!580052 (= res!368015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53368 res!368010) b!580048))

(assert (= (and b!580048 res!368012) b!580051))

(assert (= (and b!580051 res!368017) b!580047))

(assert (= (and b!580047 res!368018) b!580045))

(assert (= (and b!580045 res!368016) b!580050))

(assert (= (and b!580050 res!368014) b!580052))

(assert (= (and b!580052 res!368015) b!580049))

(assert (= (and b!580049 res!368013) b!580046))

(assert (= (and b!580046 res!368011) b!580044))

(declare-fun m!558685 () Bool)

(assert (=> b!580044 m!558685))

(assert (=> b!580044 m!558685))

(declare-fun m!558687 () Bool)

(assert (=> b!580044 m!558687))

(declare-fun m!558689 () Bool)

(assert (=> b!580046 m!558689))

(declare-fun m!558691 () Bool)

(assert (=> b!580046 m!558691))

(declare-fun m!558693 () Bool)

(assert (=> b!580046 m!558693))

(declare-fun m!558695 () Bool)

(assert (=> b!580047 m!558695))

(declare-fun m!558697 () Bool)

(assert (=> b!580049 m!558697))

(declare-fun m!558699 () Bool)

(assert (=> start!53368 m!558699))

(declare-fun m!558701 () Bool)

(assert (=> start!53368 m!558701))

(assert (=> b!580051 m!558685))

(assert (=> b!580051 m!558685))

(declare-fun m!558703 () Bool)

(assert (=> b!580051 m!558703))

(declare-fun m!558705 () Bool)

(assert (=> b!580050 m!558705))

(declare-fun m!558707 () Bool)

(assert (=> b!580052 m!558707))

(declare-fun m!558709 () Bool)

(assert (=> b!580045 m!558709))

(push 1)

