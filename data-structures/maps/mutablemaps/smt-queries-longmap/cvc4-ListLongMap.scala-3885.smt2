; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53342 () Bool)

(assert start!53342)

(declare-fun b!579693 () Bool)

(declare-fun res!367662 () Bool)

(declare-fun e!333041 () Bool)

(assert (=> b!579693 (=> (not res!367662) (not e!333041))))

(declare-datatypes ((array!36197 0))(
  ( (array!36198 (arr!17369 (Array (_ BitVec 32) (_ BitVec 64))) (size!17733 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36197)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579693 (= res!367662 (validKeyInArray!0 (select (arr!17369 a!2986) j!136)))))

(declare-fun b!579695 () Bool)

(declare-fun e!333042 () Bool)

(assert (=> b!579695 (= e!333042 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5816 0))(
  ( (MissingZero!5816 (index!25491 (_ BitVec 32))) (Found!5816 (index!25492 (_ BitVec 32))) (Intermediate!5816 (undefined!6628 Bool) (index!25493 (_ BitVec 32)) (x!54400 (_ BitVec 32))) (Undefined!5816) (MissingVacant!5816 (index!25494 (_ BitVec 32))) )
))
(declare-fun lt!264545 () SeekEntryResult!5816)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36197 (_ BitVec 32)) SeekEntryResult!5816)

(assert (=> b!579695 (= lt!264545 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17369 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579696 () Bool)

(declare-fun res!367665 () Bool)

(assert (=> b!579696 (=> (not res!367665) (not e!333042))))

(declare-datatypes ((List!11463 0))(
  ( (Nil!11460) (Cons!11459 (h!12504 (_ BitVec 64)) (t!17699 List!11463)) )
))
(declare-fun arrayNoDuplicates!0 (array!36197 (_ BitVec 32) List!11463) Bool)

(assert (=> b!579696 (= res!367665 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11460))))

(declare-fun b!579697 () Bool)

(declare-fun res!367663 () Bool)

(assert (=> b!579697 (=> (not res!367663) (not e!333042))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!579697 (= res!367663 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17369 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17369 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579698 () Bool)

(assert (=> b!579698 (= e!333041 e!333042)))

(declare-fun res!367664 () Bool)

(assert (=> b!579698 (=> (not res!367664) (not e!333042))))

(declare-fun lt!264544 () SeekEntryResult!5816)

(assert (=> b!579698 (= res!367664 (or (= lt!264544 (MissingZero!5816 i!1108)) (= lt!264544 (MissingVacant!5816 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36197 (_ BitVec 32)) SeekEntryResult!5816)

(assert (=> b!579698 (= lt!264544 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579699 () Bool)

(declare-fun res!367661 () Bool)

(assert (=> b!579699 (=> (not res!367661) (not e!333041))))

(declare-fun arrayContainsKey!0 (array!36197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579699 (= res!367661 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579700 () Bool)

(declare-fun res!367667 () Bool)

(assert (=> b!579700 (=> (not res!367667) (not e!333041))))

(assert (=> b!579700 (= res!367667 (validKeyInArray!0 k!1786))))

(declare-fun b!579701 () Bool)

(declare-fun res!367666 () Bool)

(assert (=> b!579701 (=> (not res!367666) (not e!333041))))

(assert (=> b!579701 (= res!367666 (and (= (size!17733 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17733 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17733 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!367660 () Bool)

(assert (=> start!53342 (=> (not res!367660) (not e!333041))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53342 (= res!367660 (validMask!0 mask!3053))))

(assert (=> start!53342 e!333041))

(assert (=> start!53342 true))

(declare-fun array_inv!13143 (array!36197) Bool)

(assert (=> start!53342 (array_inv!13143 a!2986)))

(declare-fun b!579694 () Bool)

(declare-fun res!367659 () Bool)

(assert (=> b!579694 (=> (not res!367659) (not e!333042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36197 (_ BitVec 32)) Bool)

(assert (=> b!579694 (= res!367659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53342 res!367660) b!579701))

(assert (= (and b!579701 res!367666) b!579693))

(assert (= (and b!579693 res!367662) b!579700))

(assert (= (and b!579700 res!367667) b!579699))

(assert (= (and b!579699 res!367661) b!579698))

(assert (= (and b!579698 res!367664) b!579694))

(assert (= (and b!579694 res!367659) b!579696))

(assert (= (and b!579696 res!367665) b!579697))

(assert (= (and b!579697 res!367663) b!579695))

(declare-fun m!558347 () Bool)

(assert (=> b!579693 m!558347))

(assert (=> b!579693 m!558347))

(declare-fun m!558349 () Bool)

(assert (=> b!579693 m!558349))

(assert (=> b!579695 m!558347))

(assert (=> b!579695 m!558347))

(declare-fun m!558351 () Bool)

(assert (=> b!579695 m!558351))

(declare-fun m!558353 () Bool)

(assert (=> b!579696 m!558353))

(declare-fun m!558355 () Bool)

(assert (=> start!53342 m!558355))

(declare-fun m!558357 () Bool)

(assert (=> start!53342 m!558357))

(declare-fun m!558359 () Bool)

(assert (=> b!579698 m!558359))

(declare-fun m!558361 () Bool)

(assert (=> b!579694 m!558361))

(declare-fun m!558363 () Bool)

(assert (=> b!579699 m!558363))

(declare-fun m!558365 () Bool)

(assert (=> b!579697 m!558365))

(declare-fun m!558367 () Bool)

(assert (=> b!579697 m!558367))

(declare-fun m!558369 () Bool)

(assert (=> b!579697 m!558369))

(declare-fun m!558371 () Bool)

(assert (=> b!579700 m!558371))

(push 1)

(assert (not b!579694))

(assert (not b!579700))

(assert (not b!579695))

(assert (not start!53342))

(assert (not b!579699))

(assert (not b!579696))

(assert (not b!579698))

(assert (not b!579693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

