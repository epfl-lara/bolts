; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53718 () Bool)

(assert start!53718)

(declare-fun b!585315 () Bool)

(declare-fun res!373291 () Bool)

(declare-fun e!334902 () Bool)

(assert (=> b!585315 (=> (not res!373291) (not e!334902))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36573 0))(
  ( (array!36574 (arr!17557 (Array (_ BitVec 32) (_ BitVec 64))) (size!17921 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36573)

(assert (=> b!585315 (= res!373291 (and (= (size!17921 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17921 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17921 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585316 () Bool)

(declare-fun e!334903 () Bool)

(declare-fun e!334901 () Bool)

(assert (=> b!585316 (= e!334903 e!334901)))

(declare-fun res!373282 () Bool)

(assert (=> b!585316 (=> (not res!373282) (not e!334901))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!265803 () (_ BitVec 32))

(assert (=> b!585316 (= res!373282 (and (bvsge lt!265803 #b00000000000000000000000000000000) (bvslt lt!265803 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585316 (= lt!265803 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585317 () Bool)

(assert (=> b!585317 (= e!334901 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6004 0))(
  ( (MissingZero!6004 (index!26243 (_ BitVec 32))) (Found!6004 (index!26244 (_ BitVec 32))) (Intermediate!6004 (undefined!6816 Bool) (index!26245 (_ BitVec 32)) (x!55092 (_ BitVec 32))) (Undefined!6004) (MissingVacant!6004 (index!26246 (_ BitVec 32))) )
))
(declare-fun lt!265805 () SeekEntryResult!6004)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36573 (_ BitVec 32)) SeekEntryResult!6004)

(assert (=> b!585317 (= lt!265805 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265803 vacantSpotIndex!68 (select (arr!17557 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!373286 () Bool)

(assert (=> start!53718 (=> (not res!373286) (not e!334902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53718 (= res!373286 (validMask!0 mask!3053))))

(assert (=> start!53718 e!334902))

(assert (=> start!53718 true))

(declare-fun array_inv!13331 (array!36573) Bool)

(assert (=> start!53718 (array_inv!13331 a!2986)))

(declare-fun b!585318 () Bool)

(assert (=> b!585318 (= e!334902 e!334903)))

(declare-fun res!373287 () Bool)

(assert (=> b!585318 (=> (not res!373287) (not e!334903))))

(declare-fun lt!265804 () SeekEntryResult!6004)

(assert (=> b!585318 (= res!373287 (or (= lt!265804 (MissingZero!6004 i!1108)) (= lt!265804 (MissingVacant!6004 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36573 (_ BitVec 32)) SeekEntryResult!6004)

(assert (=> b!585318 (= lt!265804 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585319 () Bool)

(declare-fun res!373289 () Bool)

(assert (=> b!585319 (=> (not res!373289) (not e!334902))))

(declare-fun arrayContainsKey!0 (array!36573 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585319 (= res!373289 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585320 () Bool)

(declare-fun res!373284 () Bool)

(assert (=> b!585320 (=> (not res!373284) (not e!334902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585320 (= res!373284 (validKeyInArray!0 (select (arr!17557 a!2986) j!136)))))

(declare-fun b!585321 () Bool)

(declare-fun res!373292 () Bool)

(assert (=> b!585321 (=> (not res!373292) (not e!334903))))

(assert (=> b!585321 (= res!373292 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17557 a!2986) j!136) a!2986 mask!3053) (Found!6004 j!136)))))

(declare-fun b!585322 () Bool)

(declare-fun res!373290 () Bool)

(assert (=> b!585322 (=> (not res!373290) (not e!334903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36573 (_ BitVec 32)) Bool)

(assert (=> b!585322 (= res!373290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585323 () Bool)

(declare-fun res!373285 () Bool)

(assert (=> b!585323 (=> (not res!373285) (not e!334903))))

(assert (=> b!585323 (= res!373285 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17557 a!2986) index!984) (select (arr!17557 a!2986) j!136))) (not (= (select (arr!17557 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585324 () Bool)

(declare-fun res!373281 () Bool)

(assert (=> b!585324 (=> (not res!373281) (not e!334903))))

(declare-datatypes ((List!11651 0))(
  ( (Nil!11648) (Cons!11647 (h!12692 (_ BitVec 64)) (t!17887 List!11651)) )
))
(declare-fun arrayNoDuplicates!0 (array!36573 (_ BitVec 32) List!11651) Bool)

(assert (=> b!585324 (= res!373281 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11648))))

(declare-fun b!585325 () Bool)

(declare-fun res!373283 () Bool)

(assert (=> b!585325 (=> (not res!373283) (not e!334903))))

(assert (=> b!585325 (= res!373283 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17557 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17557 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585326 () Bool)

(declare-fun res!373288 () Bool)

(assert (=> b!585326 (=> (not res!373288) (not e!334902))))

(assert (=> b!585326 (= res!373288 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53718 res!373286) b!585315))

(assert (= (and b!585315 res!373291) b!585320))

(assert (= (and b!585320 res!373284) b!585326))

(assert (= (and b!585326 res!373288) b!585319))

(assert (= (and b!585319 res!373289) b!585318))

(assert (= (and b!585318 res!373287) b!585322))

(assert (= (and b!585322 res!373290) b!585324))

(assert (= (and b!585324 res!373281) b!585325))

(assert (= (and b!585325 res!373283) b!585321))

(assert (= (and b!585321 res!373292) b!585323))

(assert (= (and b!585323 res!373285) b!585316))

(assert (= (and b!585316 res!373282) b!585317))

(declare-fun m!563601 () Bool)

(assert (=> b!585320 m!563601))

(assert (=> b!585320 m!563601))

(declare-fun m!563603 () Bool)

(assert (=> b!585320 m!563603))

(declare-fun m!563605 () Bool)

(assert (=> b!585322 m!563605))

(declare-fun m!563607 () Bool)

(assert (=> b!585324 m!563607))

(declare-fun m!563609 () Bool)

(assert (=> b!585318 m!563609))

(declare-fun m!563611 () Bool)

(assert (=> start!53718 m!563611))

(declare-fun m!563613 () Bool)

(assert (=> start!53718 m!563613))

(assert (=> b!585321 m!563601))

(assert (=> b!585321 m!563601))

(declare-fun m!563615 () Bool)

(assert (=> b!585321 m!563615))

(declare-fun m!563617 () Bool)

(assert (=> b!585316 m!563617))

(declare-fun m!563619 () Bool)

(assert (=> b!585326 m!563619))

(assert (=> b!585317 m!563601))

(assert (=> b!585317 m!563601))

(declare-fun m!563621 () Bool)

(assert (=> b!585317 m!563621))

(declare-fun m!563623 () Bool)

(assert (=> b!585319 m!563623))

(declare-fun m!563625 () Bool)

(assert (=> b!585323 m!563625))

(assert (=> b!585323 m!563601))

(declare-fun m!563627 () Bool)

(assert (=> b!585325 m!563627))

(declare-fun m!563629 () Bool)

(assert (=> b!585325 m!563629))

(declare-fun m!563631 () Bool)

(assert (=> b!585325 m!563631))

(check-sat (not b!585316) (not b!585319) (not b!585326) (not b!585320) (not b!585324) (not b!585321) (not b!585322) (not start!53718) (not b!585317) (not b!585318))
(check-sat)
