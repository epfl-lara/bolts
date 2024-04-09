; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53430 () Bool)

(assert start!53430)

(declare-fun b!580890 () Bool)

(declare-fun res!368858 () Bool)

(declare-fun e!333438 () Bool)

(assert (=> b!580890 (=> (not res!368858) (not e!333438))))

(declare-datatypes ((array!36285 0))(
  ( (array!36286 (arr!17413 (Array (_ BitVec 32) (_ BitVec 64))) (size!17777 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36285)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580890 (= res!368858 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580891 () Bool)

(declare-fun res!368857 () Bool)

(assert (=> b!580891 (=> (not res!368857) (not e!333438))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580891 (= res!368857 (validKeyInArray!0 (select (arr!17413 a!2986) j!136)))))

(declare-fun b!580892 () Bool)

(declare-fun res!368861 () Bool)

(declare-fun e!333439 () Bool)

(assert (=> b!580892 (=> (not res!368861) (not e!333439))))

(declare-datatypes ((List!11507 0))(
  ( (Nil!11504) (Cons!11503 (h!12548 (_ BitVec 64)) (t!17743 List!11507)) )
))
(declare-fun arrayNoDuplicates!0 (array!36285 (_ BitVec 32) List!11507) Bool)

(assert (=> b!580892 (= res!368861 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11504))))

(declare-fun b!580893 () Bool)

(declare-fun res!368856 () Bool)

(assert (=> b!580893 (=> (not res!368856) (not e!333439))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36285 (_ BitVec 32)) Bool)

(assert (=> b!580893 (= res!368856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580894 () Bool)

(declare-fun res!368862 () Bool)

(assert (=> b!580894 (=> (not res!368862) (not e!333438))))

(assert (=> b!580894 (= res!368862 (validKeyInArray!0 k0!1786))))

(declare-fun res!368863 () Bool)

(assert (=> start!53430 (=> (not res!368863) (not e!333438))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53430 (= res!368863 (validMask!0 mask!3053))))

(assert (=> start!53430 e!333438))

(assert (=> start!53430 true))

(declare-fun array_inv!13187 (array!36285) Bool)

(assert (=> start!53430 (array_inv!13187 a!2986)))

(declare-fun b!580895 () Bool)

(declare-fun res!368860 () Bool)

(assert (=> b!580895 (=> (not res!368860) (not e!333439))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580895 (= res!368860 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17413 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17413 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580896 () Bool)

(declare-fun res!368864 () Bool)

(assert (=> b!580896 (=> (not res!368864) (not e!333438))))

(assert (=> b!580896 (= res!368864 (and (= (size!17777 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17777 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17777 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580897 () Bool)

(assert (=> b!580897 (= e!333438 e!333439)))

(declare-fun res!368859 () Bool)

(assert (=> b!580897 (=> (not res!368859) (not e!333439))))

(declare-datatypes ((SeekEntryResult!5860 0))(
  ( (MissingZero!5860 (index!25667 (_ BitVec 32))) (Found!5860 (index!25668 (_ BitVec 32))) (Intermediate!5860 (undefined!6672 Bool) (index!25669 (_ BitVec 32)) (x!54564 (_ BitVec 32))) (Undefined!5860) (MissingVacant!5860 (index!25670 (_ BitVec 32))) )
))
(declare-fun lt!264799 () SeekEntryResult!5860)

(assert (=> b!580897 (= res!368859 (or (= lt!264799 (MissingZero!5860 i!1108)) (= lt!264799 (MissingVacant!5860 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36285 (_ BitVec 32)) SeekEntryResult!5860)

(assert (=> b!580897 (= lt!264799 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580898 () Bool)

(assert (=> b!580898 (= e!333439 false)))

(declare-fun lt!264800 () SeekEntryResult!5860)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36285 (_ BitVec 32)) SeekEntryResult!5860)

(assert (=> b!580898 (= lt!264800 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17413 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53430 res!368863) b!580896))

(assert (= (and b!580896 res!368864) b!580891))

(assert (= (and b!580891 res!368857) b!580894))

(assert (= (and b!580894 res!368862) b!580890))

(assert (= (and b!580890 res!368858) b!580897))

(assert (= (and b!580897 res!368859) b!580893))

(assert (= (and b!580893 res!368856) b!580892))

(assert (= (and b!580892 res!368861) b!580895))

(assert (= (and b!580895 res!368860) b!580898))

(declare-fun m!559497 () Bool)

(assert (=> b!580891 m!559497))

(assert (=> b!580891 m!559497))

(declare-fun m!559499 () Bool)

(assert (=> b!580891 m!559499))

(declare-fun m!559501 () Bool)

(assert (=> start!53430 m!559501))

(declare-fun m!559503 () Bool)

(assert (=> start!53430 m!559503))

(declare-fun m!559505 () Bool)

(assert (=> b!580894 m!559505))

(assert (=> b!580898 m!559497))

(assert (=> b!580898 m!559497))

(declare-fun m!559507 () Bool)

(assert (=> b!580898 m!559507))

(declare-fun m!559509 () Bool)

(assert (=> b!580893 m!559509))

(declare-fun m!559511 () Bool)

(assert (=> b!580897 m!559511))

(declare-fun m!559513 () Bool)

(assert (=> b!580890 m!559513))

(declare-fun m!559515 () Bool)

(assert (=> b!580895 m!559515))

(declare-fun m!559517 () Bool)

(assert (=> b!580895 m!559517))

(declare-fun m!559519 () Bool)

(assert (=> b!580895 m!559519))

(declare-fun m!559521 () Bool)

(assert (=> b!580892 m!559521))

(check-sat (not b!580893) (not b!580894) (not start!53430) (not b!580897) (not b!580890) (not b!580892) (not b!580891) (not b!580898))
(check-sat)
