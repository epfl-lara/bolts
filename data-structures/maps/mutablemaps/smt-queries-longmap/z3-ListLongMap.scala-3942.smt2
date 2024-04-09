; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53682 () Bool)

(assert start!53682)

(declare-fun res!372639 () Bool)

(declare-fun e!334685 () Bool)

(assert (=> start!53682 (=> (not res!372639) (not e!334685))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53682 (= res!372639 (validMask!0 mask!3053))))

(assert (=> start!53682 e!334685))

(assert (=> start!53682 true))

(declare-datatypes ((array!36537 0))(
  ( (array!36538 (arr!17539 (Array (_ BitVec 32) (_ BitVec 64))) (size!17903 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36537)

(declare-fun array_inv!13313 (array!36537) Bool)

(assert (=> start!53682 (array_inv!13313 a!2986)))

(declare-fun b!584667 () Bool)

(declare-fun res!372634 () Bool)

(assert (=> b!584667 (=> (not res!372634) (not e!334685))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584667 (= res!372634 (validKeyInArray!0 k0!1786))))

(declare-fun b!584668 () Bool)

(declare-fun res!372644 () Bool)

(declare-fun e!334686 () Bool)

(assert (=> b!584668 (=> (not res!372644) (not e!334686))))

(declare-datatypes ((List!11633 0))(
  ( (Nil!11630) (Cons!11629 (h!12674 (_ BitVec 64)) (t!17869 List!11633)) )
))
(declare-fun arrayNoDuplicates!0 (array!36537 (_ BitVec 32) List!11633) Bool)

(assert (=> b!584668 (= res!372644 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11630))))

(declare-fun b!584669 () Bool)

(declare-fun e!334684 () Bool)

(assert (=> b!584669 (= e!334686 e!334684)))

(declare-fun res!372640 () Bool)

(assert (=> b!584669 (=> (not res!372640) (not e!334684))))

(declare-fun lt!265641 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!584669 (= res!372640 (and (bvsge lt!265641 #b00000000000000000000000000000000) (bvslt lt!265641 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584669 (= lt!265641 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584670 () Bool)

(declare-fun res!372643 () Bool)

(assert (=> b!584670 (=> (not res!372643) (not e!334686))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5986 0))(
  ( (MissingZero!5986 (index!26171 (_ BitVec 32))) (Found!5986 (index!26172 (_ BitVec 32))) (Intermediate!5986 (undefined!6798 Bool) (index!26173 (_ BitVec 32)) (x!55026 (_ BitVec 32))) (Undefined!5986) (MissingVacant!5986 (index!26174 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36537 (_ BitVec 32)) SeekEntryResult!5986)

(assert (=> b!584670 (= res!372643 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17539 a!2986) j!136) a!2986 mask!3053) (Found!5986 j!136)))))

(declare-fun b!584671 () Bool)

(declare-fun res!372641 () Bool)

(assert (=> b!584671 (=> (not res!372641) (not e!334686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36537 (_ BitVec 32)) Bool)

(assert (=> b!584671 (= res!372641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584672 () Bool)

(declare-fun res!372642 () Bool)

(assert (=> b!584672 (=> (not res!372642) (not e!334685))))

(assert (=> b!584672 (= res!372642 (validKeyInArray!0 (select (arr!17539 a!2986) j!136)))))

(declare-fun b!584673 () Bool)

(assert (=> b!584673 (= e!334684 false)))

(declare-fun lt!265643 () SeekEntryResult!5986)

(assert (=> b!584673 (= lt!265643 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265641 vacantSpotIndex!68 (select (arr!17539 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584674 () Bool)

(assert (=> b!584674 (= e!334685 e!334686)))

(declare-fun res!372633 () Bool)

(assert (=> b!584674 (=> (not res!372633) (not e!334686))))

(declare-fun lt!265642 () SeekEntryResult!5986)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584674 (= res!372633 (or (= lt!265642 (MissingZero!5986 i!1108)) (= lt!265642 (MissingVacant!5986 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36537 (_ BitVec 32)) SeekEntryResult!5986)

(assert (=> b!584674 (= lt!265642 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584675 () Bool)

(declare-fun res!372637 () Bool)

(assert (=> b!584675 (=> (not res!372637) (not e!334686))))

(assert (=> b!584675 (= res!372637 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17539 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17539 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584676 () Bool)

(declare-fun res!372636 () Bool)

(assert (=> b!584676 (=> (not res!372636) (not e!334685))))

(assert (=> b!584676 (= res!372636 (and (= (size!17903 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17903 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17903 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584677 () Bool)

(declare-fun res!372638 () Bool)

(assert (=> b!584677 (=> (not res!372638) (not e!334685))))

(declare-fun arrayContainsKey!0 (array!36537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584677 (= res!372638 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584678 () Bool)

(declare-fun res!372635 () Bool)

(assert (=> b!584678 (=> (not res!372635) (not e!334686))))

(assert (=> b!584678 (= res!372635 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17539 a!2986) index!984) (select (arr!17539 a!2986) j!136))) (not (= (select (arr!17539 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53682 res!372639) b!584676))

(assert (= (and b!584676 res!372636) b!584672))

(assert (= (and b!584672 res!372642) b!584667))

(assert (= (and b!584667 res!372634) b!584677))

(assert (= (and b!584677 res!372638) b!584674))

(assert (= (and b!584674 res!372633) b!584671))

(assert (= (and b!584671 res!372641) b!584668))

(assert (= (and b!584668 res!372644) b!584675))

(assert (= (and b!584675 res!372637) b!584670))

(assert (= (and b!584670 res!372643) b!584678))

(assert (= (and b!584678 res!372635) b!584669))

(assert (= (and b!584669 res!372640) b!584673))

(declare-fun m!563025 () Bool)

(assert (=> b!584675 m!563025))

(declare-fun m!563027 () Bool)

(assert (=> b!584675 m!563027))

(declare-fun m!563029 () Bool)

(assert (=> b!584675 m!563029))

(declare-fun m!563031 () Bool)

(assert (=> b!584667 m!563031))

(declare-fun m!563033 () Bool)

(assert (=> b!584678 m!563033))

(declare-fun m!563035 () Bool)

(assert (=> b!584678 m!563035))

(assert (=> b!584672 m!563035))

(assert (=> b!584672 m!563035))

(declare-fun m!563037 () Bool)

(assert (=> b!584672 m!563037))

(declare-fun m!563039 () Bool)

(assert (=> b!584677 m!563039))

(assert (=> b!584673 m!563035))

(assert (=> b!584673 m!563035))

(declare-fun m!563041 () Bool)

(assert (=> b!584673 m!563041))

(declare-fun m!563043 () Bool)

(assert (=> b!584668 m!563043))

(declare-fun m!563045 () Bool)

(assert (=> start!53682 m!563045))

(declare-fun m!563047 () Bool)

(assert (=> start!53682 m!563047))

(declare-fun m!563049 () Bool)

(assert (=> b!584671 m!563049))

(assert (=> b!584670 m!563035))

(assert (=> b!584670 m!563035))

(declare-fun m!563051 () Bool)

(assert (=> b!584670 m!563051))

(declare-fun m!563053 () Bool)

(assert (=> b!584669 m!563053))

(declare-fun m!563055 () Bool)

(assert (=> b!584674 m!563055))

(check-sat (not b!584671) (not b!584677) (not b!584670) (not b!584668) (not b!584669) (not b!584674) (not b!584667) (not start!53682) (not b!584672) (not b!584673))
(check-sat)
