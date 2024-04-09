; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53628 () Bool)

(assert start!53628)

(declare-fun b!583695 () Bool)

(declare-fun res!371662 () Bool)

(declare-fun e!334362 () Bool)

(assert (=> b!583695 (=> (not res!371662) (not e!334362))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36483 0))(
  ( (array!36484 (arr!17512 (Array (_ BitVec 32) (_ BitVec 64))) (size!17876 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36483)

(assert (=> b!583695 (= res!371662 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17512 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17512 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583696 () Bool)

(declare-fun e!334360 () Bool)

(assert (=> b!583696 (= e!334362 e!334360)))

(declare-fun res!371669 () Bool)

(assert (=> b!583696 (=> (not res!371669) (not e!334360))))

(declare-fun lt!265400 () (_ BitVec 32))

(assert (=> b!583696 (= res!371669 (and (bvsge lt!265400 #b00000000000000000000000000000000) (bvslt lt!265400 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583696 (= lt!265400 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583697 () Bool)

(declare-fun res!371661 () Bool)

(declare-fun e!334361 () Bool)

(assert (=> b!583697 (=> (not res!371661) (not e!334361))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583697 (= res!371661 (validKeyInArray!0 (select (arr!17512 a!2986) j!136)))))

(declare-fun b!583698 () Bool)

(declare-fun res!371664 () Bool)

(assert (=> b!583698 (=> (not res!371664) (not e!334362))))

(declare-datatypes ((SeekEntryResult!5959 0))(
  ( (MissingZero!5959 (index!26063 (_ BitVec 32))) (Found!5959 (index!26064 (_ BitVec 32))) (Intermediate!5959 (undefined!6771 Bool) (index!26065 (_ BitVec 32)) (x!54927 (_ BitVec 32))) (Undefined!5959) (MissingVacant!5959 (index!26066 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36483 (_ BitVec 32)) SeekEntryResult!5959)

(assert (=> b!583698 (= res!371664 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17512 a!2986) j!136) a!2986 mask!3053) (Found!5959 j!136)))))

(declare-fun b!583699 () Bool)

(declare-fun res!371671 () Bool)

(assert (=> b!583699 (=> (not res!371671) (not e!334361))))

(declare-fun arrayContainsKey!0 (array!36483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583699 (= res!371671 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583700 () Bool)

(declare-fun res!371665 () Bool)

(assert (=> b!583700 (=> (not res!371665) (not e!334361))))

(assert (=> b!583700 (= res!371665 (and (= (size!17876 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17876 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17876 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583701 () Bool)

(declare-fun res!371670 () Bool)

(assert (=> b!583701 (=> (not res!371670) (not e!334362))))

(assert (=> b!583701 (= res!371670 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17512 a!2986) index!984) (select (arr!17512 a!2986) j!136))) (not (= (select (arr!17512 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583702 () Bool)

(declare-fun res!371667 () Bool)

(assert (=> b!583702 (=> (not res!371667) (not e!334361))))

(assert (=> b!583702 (= res!371667 (validKeyInArray!0 k0!1786))))

(declare-fun b!583703 () Bool)

(declare-fun res!371666 () Bool)

(assert (=> b!583703 (=> (not res!371666) (not e!334362))))

(declare-datatypes ((List!11606 0))(
  ( (Nil!11603) (Cons!11602 (h!12647 (_ BitVec 64)) (t!17842 List!11606)) )
))
(declare-fun arrayNoDuplicates!0 (array!36483 (_ BitVec 32) List!11606) Bool)

(assert (=> b!583703 (= res!371666 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11603))))

(declare-fun res!371663 () Bool)

(assert (=> start!53628 (=> (not res!371663) (not e!334361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53628 (= res!371663 (validMask!0 mask!3053))))

(assert (=> start!53628 e!334361))

(assert (=> start!53628 true))

(declare-fun array_inv!13286 (array!36483) Bool)

(assert (=> start!53628 (array_inv!13286 a!2986)))

(declare-fun b!583704 () Bool)

(declare-fun res!371668 () Bool)

(assert (=> b!583704 (=> (not res!371668) (not e!334362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36483 (_ BitVec 32)) Bool)

(assert (=> b!583704 (= res!371668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583705 () Bool)

(assert (=> b!583705 (= e!334361 e!334362)))

(declare-fun res!371672 () Bool)

(assert (=> b!583705 (=> (not res!371672) (not e!334362))))

(declare-fun lt!265398 () SeekEntryResult!5959)

(assert (=> b!583705 (= res!371672 (or (= lt!265398 (MissingZero!5959 i!1108)) (= lt!265398 (MissingVacant!5959 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36483 (_ BitVec 32)) SeekEntryResult!5959)

(assert (=> b!583705 (= lt!265398 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583706 () Bool)

(assert (=> b!583706 (= e!334360 false)))

(declare-fun lt!265399 () SeekEntryResult!5959)

(assert (=> b!583706 (= lt!265399 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265400 vacantSpotIndex!68 (select (arr!17512 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53628 res!371663) b!583700))

(assert (= (and b!583700 res!371665) b!583697))

(assert (= (and b!583697 res!371661) b!583702))

(assert (= (and b!583702 res!371667) b!583699))

(assert (= (and b!583699 res!371671) b!583705))

(assert (= (and b!583705 res!371672) b!583704))

(assert (= (and b!583704 res!371668) b!583703))

(assert (= (and b!583703 res!371666) b!583695))

(assert (= (and b!583695 res!371662) b!583698))

(assert (= (and b!583698 res!371664) b!583701))

(assert (= (and b!583701 res!371670) b!583696))

(assert (= (and b!583696 res!371669) b!583706))

(declare-fun m!562161 () Bool)

(assert (=> b!583701 m!562161))

(declare-fun m!562163 () Bool)

(assert (=> b!583701 m!562163))

(declare-fun m!562165 () Bool)

(assert (=> b!583702 m!562165))

(declare-fun m!562167 () Bool)

(assert (=> b!583705 m!562167))

(declare-fun m!562169 () Bool)

(assert (=> start!53628 m!562169))

(declare-fun m!562171 () Bool)

(assert (=> start!53628 m!562171))

(declare-fun m!562173 () Bool)

(assert (=> b!583704 m!562173))

(assert (=> b!583706 m!562163))

(assert (=> b!583706 m!562163))

(declare-fun m!562175 () Bool)

(assert (=> b!583706 m!562175))

(assert (=> b!583697 m!562163))

(assert (=> b!583697 m!562163))

(declare-fun m!562177 () Bool)

(assert (=> b!583697 m!562177))

(declare-fun m!562179 () Bool)

(assert (=> b!583695 m!562179))

(declare-fun m!562181 () Bool)

(assert (=> b!583695 m!562181))

(declare-fun m!562183 () Bool)

(assert (=> b!583695 m!562183))

(assert (=> b!583698 m!562163))

(assert (=> b!583698 m!562163))

(declare-fun m!562185 () Bool)

(assert (=> b!583698 m!562185))

(declare-fun m!562187 () Bool)

(assert (=> b!583696 m!562187))

(declare-fun m!562189 () Bool)

(assert (=> b!583703 m!562189))

(declare-fun m!562191 () Bool)

(assert (=> b!583699 m!562191))

(check-sat (not b!583698) (not b!583703) (not b!583696) (not b!583697) (not b!583706) (not b!583702) (not b!583704) (not start!53628) (not b!583705) (not b!583699))
(check-sat)
