; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53520 () Bool)

(assert start!53520)

(declare-fun b!582132 () Bool)

(declare-fun res!370103 () Bool)

(declare-fun e!333843 () Bool)

(assert (=> b!582132 (=> (not res!370103) (not e!333843))))

(declare-datatypes ((array!36375 0))(
  ( (array!36376 (arr!17458 (Array (_ BitVec 32) (_ BitVec 64))) (size!17822 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36375)

(declare-datatypes ((List!11552 0))(
  ( (Nil!11549) (Cons!11548 (h!12593 (_ BitVec 64)) (t!17788 List!11552)) )
))
(declare-fun arrayNoDuplicates!0 (array!36375 (_ BitVec 32) List!11552) Bool)

(assert (=> b!582132 (= res!370103 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11549))))

(declare-fun b!582133 () Bool)

(declare-fun res!370105 () Bool)

(declare-fun e!333844 () Bool)

(assert (=> b!582133 (=> (not res!370105) (not e!333844))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582133 (= res!370105 (validKeyInArray!0 k0!1786))))

(declare-fun b!582134 () Bool)

(assert (=> b!582134 (= e!333843 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5905 0))(
  ( (MissingZero!5905 (index!25847 (_ BitVec 32))) (Found!5905 (index!25848 (_ BitVec 32))) (Intermediate!5905 (undefined!6717 Bool) (index!25849 (_ BitVec 32)) (x!54729 (_ BitVec 32))) (Undefined!5905) (MissingVacant!5905 (index!25850 (_ BitVec 32))) )
))
(declare-fun lt!265051 () SeekEntryResult!5905)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36375 (_ BitVec 32)) SeekEntryResult!5905)

(assert (=> b!582134 (= lt!265051 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17458 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582135 () Bool)

(declare-fun res!370098 () Bool)

(assert (=> b!582135 (=> (not res!370098) (not e!333844))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582135 (= res!370098 (and (= (size!17822 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17822 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17822 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582136 () Bool)

(declare-fun res!370106 () Bool)

(assert (=> b!582136 (=> (not res!370106) (not e!333843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36375 (_ BitVec 32)) Bool)

(assert (=> b!582136 (= res!370106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!370099 () Bool)

(assert (=> start!53520 (=> (not res!370099) (not e!333844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53520 (= res!370099 (validMask!0 mask!3053))))

(assert (=> start!53520 e!333844))

(assert (=> start!53520 true))

(declare-fun array_inv!13232 (array!36375) Bool)

(assert (=> start!53520 (array_inv!13232 a!2986)))

(declare-fun b!582137 () Bool)

(declare-fun res!370102 () Bool)

(assert (=> b!582137 (=> (not res!370102) (not e!333844))))

(declare-fun arrayContainsKey!0 (array!36375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582137 (= res!370102 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582138 () Bool)

(assert (=> b!582138 (= e!333844 e!333843)))

(declare-fun res!370100 () Bool)

(assert (=> b!582138 (=> (not res!370100) (not e!333843))))

(declare-fun lt!265052 () SeekEntryResult!5905)

(assert (=> b!582138 (= res!370100 (or (= lt!265052 (MissingZero!5905 i!1108)) (= lt!265052 (MissingVacant!5905 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36375 (_ BitVec 32)) SeekEntryResult!5905)

(assert (=> b!582138 (= lt!265052 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582139 () Bool)

(declare-fun res!370104 () Bool)

(assert (=> b!582139 (=> (not res!370104) (not e!333843))))

(assert (=> b!582139 (= res!370104 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17458 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17458 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582140 () Bool)

(declare-fun res!370101 () Bool)

(assert (=> b!582140 (=> (not res!370101) (not e!333844))))

(assert (=> b!582140 (= res!370101 (validKeyInArray!0 (select (arr!17458 a!2986) j!136)))))

(assert (= (and start!53520 res!370099) b!582135))

(assert (= (and b!582135 res!370098) b!582140))

(assert (= (and b!582140 res!370101) b!582133))

(assert (= (and b!582133 res!370105) b!582137))

(assert (= (and b!582137 res!370102) b!582138))

(assert (= (and b!582138 res!370100) b!582136))

(assert (= (and b!582136 res!370106) b!582132))

(assert (= (and b!582132 res!370103) b!582139))

(assert (= (and b!582139 res!370104) b!582134))

(declare-fun m!560691 () Bool)

(assert (=> b!582136 m!560691))

(declare-fun m!560693 () Bool)

(assert (=> b!582137 m!560693))

(declare-fun m!560695 () Bool)

(assert (=> b!582140 m!560695))

(assert (=> b!582140 m!560695))

(declare-fun m!560697 () Bool)

(assert (=> b!582140 m!560697))

(declare-fun m!560699 () Bool)

(assert (=> b!582139 m!560699))

(declare-fun m!560701 () Bool)

(assert (=> b!582139 m!560701))

(declare-fun m!560703 () Bool)

(assert (=> b!582139 m!560703))

(declare-fun m!560705 () Bool)

(assert (=> start!53520 m!560705))

(declare-fun m!560707 () Bool)

(assert (=> start!53520 m!560707))

(declare-fun m!560709 () Bool)

(assert (=> b!582138 m!560709))

(declare-fun m!560711 () Bool)

(assert (=> b!582132 m!560711))

(declare-fun m!560713 () Bool)

(assert (=> b!582133 m!560713))

(assert (=> b!582134 m!560695))

(assert (=> b!582134 m!560695))

(declare-fun m!560715 () Bool)

(assert (=> b!582134 m!560715))

(check-sat (not b!582138) (not b!582136) (not b!582133) (not start!53520) (not b!582132) (not b!582134) (not b!582137) (not b!582140))
(check-sat)
