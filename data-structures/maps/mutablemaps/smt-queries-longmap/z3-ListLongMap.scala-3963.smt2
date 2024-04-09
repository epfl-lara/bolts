; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53808 () Bool)

(assert start!53808)

(declare-fun res!374775 () Bool)

(declare-fun e!335311 () Bool)

(assert (=> start!53808 (=> (not res!374775) (not e!335311))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53808 (= res!374775 (validMask!0 mask!3053))))

(assert (=> start!53808 e!335311))

(assert (=> start!53808 true))

(declare-datatypes ((array!36663 0))(
  ( (array!36664 (arr!17602 (Array (_ BitVec 32) (_ BitVec 64))) (size!17966 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36663)

(declare-fun array_inv!13376 (array!36663) Bool)

(assert (=> start!53808 (array_inv!13376 a!2986)))

(declare-fun b!586804 () Bool)

(declare-fun res!374770 () Bool)

(declare-fun e!335309 () Bool)

(assert (=> b!586804 (=> (not res!374770) (not e!335309))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36663 (_ BitVec 32)) Bool)

(assert (=> b!586804 (= res!374770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586805 () Bool)

(assert (=> b!586805 (= e!335309 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266209 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6049 0))(
  ( (MissingZero!6049 (index!26423 (_ BitVec 32))) (Found!6049 (index!26424 (_ BitVec 32))) (Intermediate!6049 (undefined!6861 Bool) (index!26425 (_ BitVec 32)) (x!55257 (_ BitVec 32))) (Undefined!6049) (MissingVacant!6049 (index!26426 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36663 (_ BitVec 32)) SeekEntryResult!6049)

(assert (=> b!586805 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266209 vacantSpotIndex!68 (select (arr!17602 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266209 vacantSpotIndex!68 (select (store (arr!17602 a!2986) i!1108 k0!1786) j!136) (array!36664 (store (arr!17602 a!2986) i!1108 k0!1786) (size!17966 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18222 0))(
  ( (Unit!18223) )
))
(declare-fun lt!266210 () Unit!18222)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36663 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18222)

(assert (=> b!586805 (= lt!266210 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266209 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586805 (= lt!266209 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586806 () Bool)

(declare-fun res!374780 () Bool)

(assert (=> b!586806 (=> (not res!374780) (not e!335311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586806 (= res!374780 (validKeyInArray!0 k0!1786))))

(declare-fun b!586807 () Bool)

(declare-fun res!374772 () Bool)

(assert (=> b!586807 (=> (not res!374772) (not e!335311))))

(assert (=> b!586807 (= res!374772 (and (= (size!17966 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17966 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17966 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586808 () Bool)

(declare-fun res!374776 () Bool)

(assert (=> b!586808 (=> (not res!374776) (not e!335311))))

(declare-fun arrayContainsKey!0 (array!36663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586808 (= res!374776 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586809 () Bool)

(declare-fun res!374778 () Bool)

(assert (=> b!586809 (=> (not res!374778) (not e!335311))))

(assert (=> b!586809 (= res!374778 (validKeyInArray!0 (select (arr!17602 a!2986) j!136)))))

(declare-fun b!586810 () Bool)

(assert (=> b!586810 (= e!335311 e!335309)))

(declare-fun res!374771 () Bool)

(assert (=> b!586810 (=> (not res!374771) (not e!335309))))

(declare-fun lt!266208 () SeekEntryResult!6049)

(assert (=> b!586810 (= res!374771 (or (= lt!266208 (MissingZero!6049 i!1108)) (= lt!266208 (MissingVacant!6049 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36663 (_ BitVec 32)) SeekEntryResult!6049)

(assert (=> b!586810 (= lt!266208 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586811 () Bool)

(declare-fun res!374773 () Bool)

(assert (=> b!586811 (=> (not res!374773) (not e!335309))))

(declare-datatypes ((List!11696 0))(
  ( (Nil!11693) (Cons!11692 (h!12737 (_ BitVec 64)) (t!17932 List!11696)) )
))
(declare-fun arrayNoDuplicates!0 (array!36663 (_ BitVec 32) List!11696) Bool)

(assert (=> b!586811 (= res!374773 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11693))))

(declare-fun b!586812 () Bool)

(declare-fun res!374774 () Bool)

(assert (=> b!586812 (=> (not res!374774) (not e!335309))))

(assert (=> b!586812 (= res!374774 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17602 a!2986) j!136) a!2986 mask!3053) (Found!6049 j!136)))))

(declare-fun b!586813 () Bool)

(declare-fun res!374779 () Bool)

(assert (=> b!586813 (=> (not res!374779) (not e!335309))))

(assert (=> b!586813 (= res!374779 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17602 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17602 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586814 () Bool)

(declare-fun res!374777 () Bool)

(assert (=> b!586814 (=> (not res!374777) (not e!335309))))

(assert (=> b!586814 (= res!374777 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17602 a!2986) index!984) (select (arr!17602 a!2986) j!136))) (not (= (select (arr!17602 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53808 res!374775) b!586807))

(assert (= (and b!586807 res!374772) b!586809))

(assert (= (and b!586809 res!374778) b!586806))

(assert (= (and b!586806 res!374780) b!586808))

(assert (= (and b!586808 res!374776) b!586810))

(assert (= (and b!586810 res!374771) b!586804))

(assert (= (and b!586804 res!374770) b!586811))

(assert (= (and b!586811 res!374773) b!586813))

(assert (= (and b!586813 res!374779) b!586812))

(assert (= (and b!586812 res!374774) b!586814))

(assert (= (and b!586814 res!374777) b!586805))

(declare-fun m!565299 () Bool)

(assert (=> b!586805 m!565299))

(declare-fun m!565301 () Bool)

(assert (=> b!586805 m!565301))

(declare-fun m!565303 () Bool)

(assert (=> b!586805 m!565303))

(declare-fun m!565305 () Bool)

(assert (=> b!586805 m!565305))

(declare-fun m!565307 () Bool)

(assert (=> b!586805 m!565307))

(assert (=> b!586805 m!565301))

(declare-fun m!565309 () Bool)

(assert (=> b!586805 m!565309))

(assert (=> b!586805 m!565303))

(declare-fun m!565311 () Bool)

(assert (=> b!586805 m!565311))

(assert (=> b!586812 m!565303))

(assert (=> b!586812 m!565303))

(declare-fun m!565313 () Bool)

(assert (=> b!586812 m!565313))

(declare-fun m!565315 () Bool)

(assert (=> b!586814 m!565315))

(assert (=> b!586814 m!565303))

(declare-fun m!565317 () Bool)

(assert (=> start!53808 m!565317))

(declare-fun m!565319 () Bool)

(assert (=> start!53808 m!565319))

(declare-fun m!565321 () Bool)

(assert (=> b!586808 m!565321))

(assert (=> b!586809 m!565303))

(assert (=> b!586809 m!565303))

(declare-fun m!565323 () Bool)

(assert (=> b!586809 m!565323))

(declare-fun m!565325 () Bool)

(assert (=> b!586806 m!565325))

(declare-fun m!565327 () Bool)

(assert (=> b!586810 m!565327))

(declare-fun m!565329 () Bool)

(assert (=> b!586813 m!565329))

(assert (=> b!586813 m!565305))

(declare-fun m!565331 () Bool)

(assert (=> b!586813 m!565331))

(declare-fun m!565333 () Bool)

(assert (=> b!586811 m!565333))

(declare-fun m!565335 () Bool)

(assert (=> b!586804 m!565335))

(check-sat (not b!586806) (not b!586804) (not b!586808) (not b!586810) (not b!586805) (not b!586809) (not start!53808) (not b!586812) (not b!586811))
(check-sat)
