; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53684 () Bool)

(assert start!53684)

(declare-fun b!584703 () Bool)

(declare-fun e!334696 () Bool)

(declare-fun e!334699 () Bool)

(assert (=> b!584703 (= e!334696 e!334699)))

(declare-fun res!372675 () Bool)

(assert (=> b!584703 (=> (not res!372675) (not e!334699))))

(declare-datatypes ((SeekEntryResult!5987 0))(
  ( (MissingZero!5987 (index!26175 (_ BitVec 32))) (Found!5987 (index!26176 (_ BitVec 32))) (Intermediate!5987 (undefined!6799 Bool) (index!26177 (_ BitVec 32)) (x!55027 (_ BitVec 32))) (Undefined!5987) (MissingVacant!5987 (index!26178 (_ BitVec 32))) )
))
(declare-fun lt!265650 () SeekEntryResult!5987)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584703 (= res!372675 (or (= lt!265650 (MissingZero!5987 i!1108)) (= lt!265650 (MissingVacant!5987 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36539 0))(
  ( (array!36540 (arr!17540 (Array (_ BitVec 32) (_ BitVec 64))) (size!17904 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36539)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36539 (_ BitVec 32)) SeekEntryResult!5987)

(assert (=> b!584703 (= lt!265650 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!372670 () Bool)

(assert (=> start!53684 (=> (not res!372670) (not e!334696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53684 (= res!372670 (validMask!0 mask!3053))))

(assert (=> start!53684 e!334696))

(assert (=> start!53684 true))

(declare-fun array_inv!13314 (array!36539) Bool)

(assert (=> start!53684 (array_inv!13314 a!2986)))

(declare-fun b!584704 () Bool)

(declare-fun res!372674 () Bool)

(assert (=> b!584704 (=> (not res!372674) (not e!334699))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36539 (_ BitVec 32)) SeekEntryResult!5987)

(assert (=> b!584704 (= res!372674 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17540 a!2986) j!136) a!2986 mask!3053) (Found!5987 j!136)))))

(declare-fun b!584705 () Bool)

(declare-fun res!372671 () Bool)

(assert (=> b!584705 (=> (not res!372671) (not e!334699))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36539 (_ BitVec 32)) Bool)

(assert (=> b!584705 (= res!372671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584706 () Bool)

(declare-fun res!372673 () Bool)

(assert (=> b!584706 (=> (not res!372673) (not e!334696))))

(declare-fun arrayContainsKey!0 (array!36539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584706 (= res!372673 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584707 () Bool)

(declare-fun res!372680 () Bool)

(assert (=> b!584707 (=> (not res!372680) (not e!334699))))

(assert (=> b!584707 (= res!372680 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17540 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17540 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584708 () Bool)

(declare-fun e!334698 () Bool)

(assert (=> b!584708 (= e!334698 false)))

(declare-fun lt!265652 () (_ BitVec 32))

(declare-fun lt!265651 () SeekEntryResult!5987)

(assert (=> b!584708 (= lt!265651 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265652 vacantSpotIndex!68 (select (arr!17540 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584709 () Bool)

(declare-fun res!372677 () Bool)

(assert (=> b!584709 (=> (not res!372677) (not e!334696))))

(assert (=> b!584709 (= res!372677 (and (= (size!17904 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17904 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17904 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584710 () Bool)

(declare-fun res!372672 () Bool)

(assert (=> b!584710 (=> (not res!372672) (not e!334699))))

(declare-datatypes ((List!11634 0))(
  ( (Nil!11631) (Cons!11630 (h!12675 (_ BitVec 64)) (t!17870 List!11634)) )
))
(declare-fun arrayNoDuplicates!0 (array!36539 (_ BitVec 32) List!11634) Bool)

(assert (=> b!584710 (= res!372672 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11631))))

(declare-fun b!584711 () Bool)

(declare-fun res!372676 () Bool)

(assert (=> b!584711 (=> (not res!372676) (not e!334699))))

(assert (=> b!584711 (= res!372676 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17540 a!2986) index!984) (select (arr!17540 a!2986) j!136))) (not (= (select (arr!17540 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584712 () Bool)

(declare-fun res!372679 () Bool)

(assert (=> b!584712 (=> (not res!372679) (not e!334696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584712 (= res!372679 (validKeyInArray!0 k!1786))))

(declare-fun b!584713 () Bool)

(assert (=> b!584713 (= e!334699 e!334698)))

(declare-fun res!372669 () Bool)

(assert (=> b!584713 (=> (not res!372669) (not e!334698))))

(assert (=> b!584713 (= res!372669 (and (bvsge lt!265652 #b00000000000000000000000000000000) (bvslt lt!265652 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584713 (= lt!265652 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584714 () Bool)

(declare-fun res!372678 () Bool)

(assert (=> b!584714 (=> (not res!372678) (not e!334696))))

(assert (=> b!584714 (= res!372678 (validKeyInArray!0 (select (arr!17540 a!2986) j!136)))))

(assert (= (and start!53684 res!372670) b!584709))

(assert (= (and b!584709 res!372677) b!584714))

(assert (= (and b!584714 res!372678) b!584712))

(assert (= (and b!584712 res!372679) b!584706))

(assert (= (and b!584706 res!372673) b!584703))

(assert (= (and b!584703 res!372675) b!584705))

(assert (= (and b!584705 res!372671) b!584710))

(assert (= (and b!584710 res!372672) b!584707))

(assert (= (and b!584707 res!372680) b!584704))

(assert (= (and b!584704 res!372674) b!584711))

(assert (= (and b!584711 res!372676) b!584713))

(assert (= (and b!584713 res!372669) b!584708))

(declare-fun m!563057 () Bool)

(assert (=> b!584712 m!563057))

(declare-fun m!563059 () Bool)

(assert (=> start!53684 m!563059))

(declare-fun m!563061 () Bool)

(assert (=> start!53684 m!563061))

(declare-fun m!563063 () Bool)

(assert (=> b!584703 m!563063))

(declare-fun m!563065 () Bool)

(assert (=> b!584707 m!563065))

(declare-fun m!563067 () Bool)

(assert (=> b!584707 m!563067))

(declare-fun m!563069 () Bool)

(assert (=> b!584707 m!563069))

(declare-fun m!563071 () Bool)

(assert (=> b!584711 m!563071))

(declare-fun m!563073 () Bool)

(assert (=> b!584711 m!563073))

(assert (=> b!584708 m!563073))

(assert (=> b!584708 m!563073))

(declare-fun m!563075 () Bool)

(assert (=> b!584708 m!563075))

(assert (=> b!584704 m!563073))

(assert (=> b!584704 m!563073))

(declare-fun m!563077 () Bool)

(assert (=> b!584704 m!563077))

(declare-fun m!563079 () Bool)

(assert (=> b!584705 m!563079))

(assert (=> b!584714 m!563073))

(assert (=> b!584714 m!563073))

(declare-fun m!563081 () Bool)

(assert (=> b!584714 m!563081))

(declare-fun m!563083 () Bool)

(assert (=> b!584713 m!563083))

(declare-fun m!563085 () Bool)

(assert (=> b!584706 m!563085))

(declare-fun m!563087 () Bool)

(assert (=> b!584710 m!563087))

(push 1)

