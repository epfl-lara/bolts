; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53270 () Bool)

(assert start!53270)

(declare-fun b!578721 () Bool)

(declare-fun e!332717 () Bool)

(assert (=> b!578721 (= e!332717 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5780 0))(
  ( (MissingZero!5780 (index!25347 (_ BitVec 32))) (Found!5780 (index!25348 (_ BitVec 32))) (Intermediate!5780 (undefined!6592 Bool) (index!25349 (_ BitVec 32)) (x!54268 (_ BitVec 32))) (Undefined!5780) (MissingVacant!5780 (index!25350 (_ BitVec 32))) )
))
(declare-fun lt!264328 () SeekEntryResult!5780)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36125 0))(
  ( (array!36126 (arr!17333 (Array (_ BitVec 32) (_ BitVec 64))) (size!17697 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36125)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36125 (_ BitVec 32)) SeekEntryResult!5780)

(assert (=> b!578721 (= lt!264328 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17333 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578722 () Bool)

(declare-fun res!366692 () Bool)

(assert (=> b!578722 (=> (not res!366692) (not e!332717))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!578722 (= res!366692 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17333 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17333 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578724 () Bool)

(declare-fun res!366689 () Bool)

(declare-fun e!332718 () Bool)

(assert (=> b!578724 (=> (not res!366689) (not e!332718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578724 (= res!366689 (validKeyInArray!0 (select (arr!17333 a!2986) j!136)))))

(declare-fun b!578725 () Bool)

(declare-fun res!366687 () Bool)

(assert (=> b!578725 (=> (not res!366687) (not e!332718))))

(assert (=> b!578725 (= res!366687 (validKeyInArray!0 k!1786))))

(declare-fun b!578726 () Bool)

(declare-fun res!366693 () Bool)

(assert (=> b!578726 (=> (not res!366693) (not e!332718))))

(assert (=> b!578726 (= res!366693 (and (= (size!17697 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17697 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17697 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578727 () Bool)

(declare-fun res!366694 () Bool)

(assert (=> b!578727 (=> (not res!366694) (not e!332717))))

(declare-datatypes ((List!11427 0))(
  ( (Nil!11424) (Cons!11423 (h!12468 (_ BitVec 64)) (t!17663 List!11427)) )
))
(declare-fun arrayNoDuplicates!0 (array!36125 (_ BitVec 32) List!11427) Bool)

(assert (=> b!578727 (= res!366694 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11424))))

(declare-fun b!578728 () Bool)

(declare-fun res!366691 () Bool)

(assert (=> b!578728 (=> (not res!366691) (not e!332717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36125 (_ BitVec 32)) Bool)

(assert (=> b!578728 (= res!366691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578729 () Bool)

(declare-fun res!366690 () Bool)

(assert (=> b!578729 (=> (not res!366690) (not e!332718))))

(declare-fun arrayContainsKey!0 (array!36125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578729 (= res!366690 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578723 () Bool)

(assert (=> b!578723 (= e!332718 e!332717)))

(declare-fun res!366688 () Bool)

(assert (=> b!578723 (=> (not res!366688) (not e!332717))))

(declare-fun lt!264329 () SeekEntryResult!5780)

(assert (=> b!578723 (= res!366688 (or (= lt!264329 (MissingZero!5780 i!1108)) (= lt!264329 (MissingVacant!5780 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36125 (_ BitVec 32)) SeekEntryResult!5780)

(assert (=> b!578723 (= lt!264329 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!366695 () Bool)

(assert (=> start!53270 (=> (not res!366695) (not e!332718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53270 (= res!366695 (validMask!0 mask!3053))))

(assert (=> start!53270 e!332718))

(assert (=> start!53270 true))

(declare-fun array_inv!13107 (array!36125) Bool)

(assert (=> start!53270 (array_inv!13107 a!2986)))

(assert (= (and start!53270 res!366695) b!578726))

(assert (= (and b!578726 res!366693) b!578724))

(assert (= (and b!578724 res!366689) b!578725))

(assert (= (and b!578725 res!366687) b!578729))

(assert (= (and b!578729 res!366690) b!578723))

(assert (= (and b!578723 res!366688) b!578728))

(assert (= (and b!578728 res!366691) b!578727))

(assert (= (and b!578727 res!366694) b!578722))

(assert (= (and b!578722 res!366692) b!578721))

(declare-fun m!557411 () Bool)

(assert (=> b!578729 m!557411))

(declare-fun m!557413 () Bool)

(assert (=> b!578725 m!557413))

(declare-fun m!557415 () Bool)

(assert (=> b!578728 m!557415))

(declare-fun m!557417 () Bool)

(assert (=> b!578723 m!557417))

(declare-fun m!557419 () Bool)

(assert (=> b!578724 m!557419))

(assert (=> b!578724 m!557419))

(declare-fun m!557421 () Bool)

(assert (=> b!578724 m!557421))

(declare-fun m!557423 () Bool)

(assert (=> b!578727 m!557423))

(declare-fun m!557425 () Bool)

(assert (=> b!578722 m!557425))

(declare-fun m!557427 () Bool)

(assert (=> b!578722 m!557427))

(declare-fun m!557429 () Bool)

(assert (=> b!578722 m!557429))

(declare-fun m!557431 () Bool)

(assert (=> start!53270 m!557431))

(declare-fun m!557433 () Bool)

(assert (=> start!53270 m!557433))

(assert (=> b!578721 m!557419))

(assert (=> b!578721 m!557419))

(declare-fun m!557435 () Bool)

(assert (=> b!578721 m!557435))

(push 1)

(assert (not b!578729))

(assert (not b!578723))

(assert (not b!578727))

(assert (not b!578721))

(assert (not b!578724))

(assert (not start!53270))

(assert (not b!578725))

(assert (not b!578728))

(check-sat)

