; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53448 () Bool)

(assert start!53448)

(declare-fun b!581138 () Bool)

(declare-fun res!369113 () Bool)

(declare-fun e!333519 () Bool)

(assert (=> b!581138 (=> (not res!369113) (not e!333519))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581138 (= res!369113 (validKeyInArray!0 k0!1786))))

(declare-fun b!581139 () Bool)

(declare-fun e!333520 () Bool)

(assert (=> b!581139 (= e!333519 e!333520)))

(declare-fun res!369112 () Bool)

(assert (=> b!581139 (=> (not res!369112) (not e!333520))))

(declare-datatypes ((SeekEntryResult!5869 0))(
  ( (MissingZero!5869 (index!25703 (_ BitVec 32))) (Found!5869 (index!25704 (_ BitVec 32))) (Intermediate!5869 (undefined!6681 Bool) (index!25705 (_ BitVec 32)) (x!54597 (_ BitVec 32))) (Undefined!5869) (MissingVacant!5869 (index!25706 (_ BitVec 32))) )
))
(declare-fun lt!264848 () SeekEntryResult!5869)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581139 (= res!369112 (or (= lt!264848 (MissingZero!5869 i!1108)) (= lt!264848 (MissingVacant!5869 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36303 0))(
  ( (array!36304 (arr!17422 (Array (_ BitVec 32) (_ BitVec 64))) (size!17786 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36303)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36303 (_ BitVec 32)) SeekEntryResult!5869)

(assert (=> b!581139 (= lt!264848 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581140 () Bool)

(declare-fun res!369111 () Bool)

(assert (=> b!581140 (=> (not res!369111) (not e!333520))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581140 (= res!369111 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17422 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17422 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369107 () Bool)

(assert (=> start!53448 (=> (not res!369107) (not e!333519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53448 (= res!369107 (validMask!0 mask!3053))))

(assert (=> start!53448 e!333519))

(assert (=> start!53448 true))

(declare-fun array_inv!13196 (array!36303) Bool)

(assert (=> start!53448 (array_inv!13196 a!2986)))

(declare-fun b!581141 () Bool)

(declare-fun res!369105 () Bool)

(assert (=> b!581141 (=> (not res!369105) (not e!333520))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36303 (_ BitVec 32)) SeekEntryResult!5869)

(assert (=> b!581141 (= res!369105 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17422 a!2986) j!136) a!2986 mask!3053) (Found!5869 j!136)))))

(declare-fun b!581142 () Bool)

(declare-fun res!369109 () Bool)

(assert (=> b!581142 (=> (not res!369109) (not e!333519))))

(assert (=> b!581142 (= res!369109 (validKeyInArray!0 (select (arr!17422 a!2986) j!136)))))

(declare-fun b!581143 () Bool)

(assert (=> b!581143 (= e!333520 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17422 a!2986) index!984) (select (arr!17422 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!581144 () Bool)

(declare-fun res!369108 () Bool)

(assert (=> b!581144 (=> (not res!369108) (not e!333520))))

(declare-datatypes ((List!11516 0))(
  ( (Nil!11513) (Cons!11512 (h!12557 (_ BitVec 64)) (t!17752 List!11516)) )
))
(declare-fun arrayNoDuplicates!0 (array!36303 (_ BitVec 32) List!11516) Bool)

(assert (=> b!581144 (= res!369108 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11513))))

(declare-fun b!581145 () Bool)

(declare-fun res!369110 () Bool)

(assert (=> b!581145 (=> (not res!369110) (not e!333520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36303 (_ BitVec 32)) Bool)

(assert (=> b!581145 (= res!369110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581146 () Bool)

(declare-fun res!369106 () Bool)

(assert (=> b!581146 (=> (not res!369106) (not e!333519))))

(assert (=> b!581146 (= res!369106 (and (= (size!17786 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17786 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17786 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581147 () Bool)

(declare-fun res!369104 () Bool)

(assert (=> b!581147 (=> (not res!369104) (not e!333519))))

(declare-fun arrayContainsKey!0 (array!36303 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581147 (= res!369104 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53448 res!369107) b!581146))

(assert (= (and b!581146 res!369106) b!581142))

(assert (= (and b!581142 res!369109) b!581138))

(assert (= (and b!581138 res!369113) b!581147))

(assert (= (and b!581147 res!369104) b!581139))

(assert (= (and b!581139 res!369112) b!581145))

(assert (= (and b!581145 res!369110) b!581144))

(assert (= (and b!581144 res!369108) b!581140))

(assert (= (and b!581140 res!369111) b!581141))

(assert (= (and b!581141 res!369105) b!581143))

(declare-fun m!559733 () Bool)

(assert (=> b!581144 m!559733))

(declare-fun m!559735 () Bool)

(assert (=> b!581140 m!559735))

(declare-fun m!559737 () Bool)

(assert (=> b!581140 m!559737))

(declare-fun m!559739 () Bool)

(assert (=> b!581140 m!559739))

(declare-fun m!559741 () Bool)

(assert (=> b!581142 m!559741))

(assert (=> b!581142 m!559741))

(declare-fun m!559743 () Bool)

(assert (=> b!581142 m!559743))

(declare-fun m!559745 () Bool)

(assert (=> b!581139 m!559745))

(declare-fun m!559747 () Bool)

(assert (=> b!581143 m!559747))

(assert (=> b!581143 m!559741))

(assert (=> b!581141 m!559741))

(assert (=> b!581141 m!559741))

(declare-fun m!559749 () Bool)

(assert (=> b!581141 m!559749))

(declare-fun m!559751 () Bool)

(assert (=> b!581145 m!559751))

(declare-fun m!559753 () Bool)

(assert (=> b!581138 m!559753))

(declare-fun m!559755 () Bool)

(assert (=> b!581147 m!559755))

(declare-fun m!559757 () Bool)

(assert (=> start!53448 m!559757))

(declare-fun m!559759 () Bool)

(assert (=> start!53448 m!559759))

(check-sat (not b!581142) (not b!581138) (not start!53448) (not b!581147) (not b!581145) (not b!581139) (not b!581144) (not b!581141))
(check-sat)
