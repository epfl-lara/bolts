; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53424 () Bool)

(assert start!53424)

(declare-fun b!580809 () Bool)

(declare-fun res!368779 () Bool)

(declare-fun e!333410 () Bool)

(assert (=> b!580809 (=> (not res!368779) (not e!333410))))

(declare-datatypes ((array!36279 0))(
  ( (array!36280 (arr!17410 (Array (_ BitVec 32) (_ BitVec 64))) (size!17774 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36279)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36279 (_ BitVec 32)) Bool)

(assert (=> b!580809 (= res!368779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580810 () Bool)

(declare-fun res!368780 () Bool)

(declare-fun e!333411 () Bool)

(assert (=> b!580810 (=> (not res!368780) (not e!333411))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580810 (= res!368780 (validKeyInArray!0 (select (arr!17410 a!2986) j!136)))))

(declare-fun b!580811 () Bool)

(declare-fun res!368781 () Bool)

(assert (=> b!580811 (=> (not res!368781) (not e!333410))))

(declare-datatypes ((List!11504 0))(
  ( (Nil!11501) (Cons!11500 (h!12545 (_ BitVec 64)) (t!17740 List!11504)) )
))
(declare-fun arrayNoDuplicates!0 (array!36279 (_ BitVec 32) List!11504) Bool)

(assert (=> b!580811 (= res!368781 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11501))))

(declare-fun b!580812 () Bool)

(assert (=> b!580812 (= e!333411 e!333410)))

(declare-fun res!368783 () Bool)

(assert (=> b!580812 (=> (not res!368783) (not e!333410))))

(declare-datatypes ((SeekEntryResult!5857 0))(
  ( (MissingZero!5857 (index!25655 (_ BitVec 32))) (Found!5857 (index!25656 (_ BitVec 32))) (Intermediate!5857 (undefined!6669 Bool) (index!25657 (_ BitVec 32)) (x!54553 (_ BitVec 32))) (Undefined!5857) (MissingVacant!5857 (index!25658 (_ BitVec 32))) )
))
(declare-fun lt!264782 () SeekEntryResult!5857)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580812 (= res!368783 (or (= lt!264782 (MissingZero!5857 i!1108)) (= lt!264782 (MissingVacant!5857 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36279 (_ BitVec 32)) SeekEntryResult!5857)

(assert (=> b!580812 (= lt!264782 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580813 () Bool)

(declare-fun res!368777 () Bool)

(assert (=> b!580813 (=> (not res!368777) (not e!333411))))

(assert (=> b!580813 (= res!368777 (and (= (size!17774 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17774 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17774 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580814 () Bool)

(declare-fun res!368776 () Bool)

(assert (=> b!580814 (=> (not res!368776) (not e!333410))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580814 (= res!368776 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17410 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17410 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580815 () Bool)

(assert (=> b!580815 (= e!333410 false)))

(declare-fun lt!264781 () SeekEntryResult!5857)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36279 (_ BitVec 32)) SeekEntryResult!5857)

(assert (=> b!580815 (= lt!264781 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17410 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580816 () Bool)

(declare-fun res!368775 () Bool)

(assert (=> b!580816 (=> (not res!368775) (not e!333411))))

(declare-fun arrayContainsKey!0 (array!36279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580816 (= res!368775 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580817 () Bool)

(declare-fun res!368782 () Bool)

(assert (=> b!580817 (=> (not res!368782) (not e!333411))))

(assert (=> b!580817 (= res!368782 (validKeyInArray!0 k0!1786))))

(declare-fun res!368778 () Bool)

(assert (=> start!53424 (=> (not res!368778) (not e!333411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53424 (= res!368778 (validMask!0 mask!3053))))

(assert (=> start!53424 e!333411))

(assert (=> start!53424 true))

(declare-fun array_inv!13184 (array!36279) Bool)

(assert (=> start!53424 (array_inv!13184 a!2986)))

(assert (= (and start!53424 res!368778) b!580813))

(assert (= (and b!580813 res!368777) b!580810))

(assert (= (and b!580810 res!368780) b!580817))

(assert (= (and b!580817 res!368782) b!580816))

(assert (= (and b!580816 res!368775) b!580812))

(assert (= (and b!580812 res!368783) b!580809))

(assert (= (and b!580809 res!368779) b!580811))

(assert (= (and b!580811 res!368781) b!580814))

(assert (= (and b!580814 res!368776) b!580815))

(declare-fun m!559419 () Bool)

(assert (=> b!580816 m!559419))

(declare-fun m!559421 () Bool)

(assert (=> b!580815 m!559421))

(assert (=> b!580815 m!559421))

(declare-fun m!559423 () Bool)

(assert (=> b!580815 m!559423))

(declare-fun m!559425 () Bool)

(assert (=> b!580811 m!559425))

(declare-fun m!559427 () Bool)

(assert (=> b!580809 m!559427))

(declare-fun m!559429 () Bool)

(assert (=> start!53424 m!559429))

(declare-fun m!559431 () Bool)

(assert (=> start!53424 m!559431))

(declare-fun m!559433 () Bool)

(assert (=> b!580814 m!559433))

(declare-fun m!559435 () Bool)

(assert (=> b!580814 m!559435))

(declare-fun m!559437 () Bool)

(assert (=> b!580814 m!559437))

(assert (=> b!580810 m!559421))

(assert (=> b!580810 m!559421))

(declare-fun m!559439 () Bool)

(assert (=> b!580810 m!559439))

(declare-fun m!559441 () Bool)

(assert (=> b!580817 m!559441))

(declare-fun m!559443 () Bool)

(assert (=> b!580812 m!559443))

(check-sat (not start!53424) (not b!580811) (not b!580817) (not b!580816) (not b!580809) (not b!580810) (not b!580812) (not b!580815))
(check-sat)
