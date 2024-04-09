; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53490 () Bool)

(assert start!53490)

(declare-fun res!369699 () Bool)

(declare-fun e!333708 () Bool)

(assert (=> start!53490 (=> (not res!369699) (not e!333708))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53490 (= res!369699 (validMask!0 mask!3053))))

(assert (=> start!53490 e!333708))

(assert (=> start!53490 true))

(declare-datatypes ((array!36345 0))(
  ( (array!36346 (arr!17443 (Array (_ BitVec 32) (_ BitVec 64))) (size!17807 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36345)

(declare-fun array_inv!13217 (array!36345) Bool)

(assert (=> start!53490 (array_inv!13217 a!2986)))

(declare-fun b!581727 () Bool)

(declare-fun res!369693 () Bool)

(declare-fun e!333709 () Bool)

(assert (=> b!581727 (=> (not res!369693) (not e!333709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36345 (_ BitVec 32)) Bool)

(assert (=> b!581727 (= res!369693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581728 () Bool)

(declare-fun res!369696 () Bool)

(assert (=> b!581728 (=> (not res!369696) (not e!333708))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581728 (= res!369696 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581729 () Bool)

(declare-fun res!369698 () Bool)

(assert (=> b!581729 (=> (not res!369698) (not e!333708))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581729 (= res!369698 (and (= (size!17807 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17807 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17807 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581730 () Bool)

(declare-fun res!369700 () Bool)

(assert (=> b!581730 (=> (not res!369700) (not e!333708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581730 (= res!369700 (validKeyInArray!0 k0!1786))))

(declare-fun b!581731 () Bool)

(assert (=> b!581731 (= e!333708 e!333709)))

(declare-fun res!369695 () Bool)

(assert (=> b!581731 (=> (not res!369695) (not e!333709))))

(declare-datatypes ((SeekEntryResult!5890 0))(
  ( (MissingZero!5890 (index!25787 (_ BitVec 32))) (Found!5890 (index!25788 (_ BitVec 32))) (Intermediate!5890 (undefined!6702 Bool) (index!25789 (_ BitVec 32)) (x!54674 (_ BitVec 32))) (Undefined!5890) (MissingVacant!5890 (index!25790 (_ BitVec 32))) )
))
(declare-fun lt!264962 () SeekEntryResult!5890)

(assert (=> b!581731 (= res!369695 (or (= lt!264962 (MissingZero!5890 i!1108)) (= lt!264962 (MissingVacant!5890 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36345 (_ BitVec 32)) SeekEntryResult!5890)

(assert (=> b!581731 (= lt!264962 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581732 () Bool)

(declare-fun res!369697 () Bool)

(assert (=> b!581732 (=> (not res!369697) (not e!333708))))

(assert (=> b!581732 (= res!369697 (validKeyInArray!0 (select (arr!17443 a!2986) j!136)))))

(declare-fun b!581733 () Bool)

(assert (=> b!581733 (= e!333709 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264961 () SeekEntryResult!5890)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36345 (_ BitVec 32)) SeekEntryResult!5890)

(assert (=> b!581733 (= lt!264961 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17443 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581734 () Bool)

(declare-fun res!369694 () Bool)

(assert (=> b!581734 (=> (not res!369694) (not e!333709))))

(assert (=> b!581734 (= res!369694 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17443 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17443 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581735 () Bool)

(declare-fun res!369701 () Bool)

(assert (=> b!581735 (=> (not res!369701) (not e!333709))))

(declare-datatypes ((List!11537 0))(
  ( (Nil!11534) (Cons!11533 (h!12578 (_ BitVec 64)) (t!17773 List!11537)) )
))
(declare-fun arrayNoDuplicates!0 (array!36345 (_ BitVec 32) List!11537) Bool)

(assert (=> b!581735 (= res!369701 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11534))))

(assert (= (and start!53490 res!369699) b!581729))

(assert (= (and b!581729 res!369698) b!581732))

(assert (= (and b!581732 res!369697) b!581730))

(assert (= (and b!581730 res!369700) b!581728))

(assert (= (and b!581728 res!369696) b!581731))

(assert (= (and b!581731 res!369695) b!581727))

(assert (= (and b!581727 res!369693) b!581735))

(assert (= (and b!581735 res!369701) b!581734))

(assert (= (and b!581734 res!369694) b!581733))

(declare-fun m!560301 () Bool)

(assert (=> b!581730 m!560301))

(declare-fun m!560303 () Bool)

(assert (=> b!581732 m!560303))

(assert (=> b!581732 m!560303))

(declare-fun m!560305 () Bool)

(assert (=> b!581732 m!560305))

(declare-fun m!560307 () Bool)

(assert (=> b!581734 m!560307))

(declare-fun m!560309 () Bool)

(assert (=> b!581734 m!560309))

(declare-fun m!560311 () Bool)

(assert (=> b!581734 m!560311))

(declare-fun m!560313 () Bool)

(assert (=> start!53490 m!560313))

(declare-fun m!560315 () Bool)

(assert (=> start!53490 m!560315))

(assert (=> b!581733 m!560303))

(assert (=> b!581733 m!560303))

(declare-fun m!560317 () Bool)

(assert (=> b!581733 m!560317))

(declare-fun m!560319 () Bool)

(assert (=> b!581735 m!560319))

(declare-fun m!560321 () Bool)

(assert (=> b!581727 m!560321))

(declare-fun m!560323 () Bool)

(assert (=> b!581731 m!560323))

(declare-fun m!560325 () Bool)

(assert (=> b!581728 m!560325))

(check-sat (not b!581727) (not start!53490) (not b!581728) (not b!581735) (not b!581733) (not b!581730) (not b!581732) (not b!581731))
(check-sat)
