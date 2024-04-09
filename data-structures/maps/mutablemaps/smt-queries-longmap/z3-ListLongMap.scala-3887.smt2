; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53352 () Bool)

(assert start!53352)

(declare-fun b!579828 () Bool)

(declare-fun res!367794 () Bool)

(declare-fun e!333088 () Bool)

(assert (=> b!579828 (=> (not res!367794) (not e!333088))))

(declare-datatypes ((array!36207 0))(
  ( (array!36208 (arr!17374 (Array (_ BitVec 32) (_ BitVec 64))) (size!17738 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36207)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579828 (= res!367794 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!367802 () Bool)

(assert (=> start!53352 (=> (not res!367802) (not e!333088))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53352 (= res!367802 (validMask!0 mask!3053))))

(assert (=> start!53352 e!333088))

(assert (=> start!53352 true))

(declare-fun array_inv!13148 (array!36207) Bool)

(assert (=> start!53352 (array_inv!13148 a!2986)))

(declare-fun b!579829 () Bool)

(declare-fun res!367801 () Bool)

(declare-fun e!333087 () Bool)

(assert (=> b!579829 (=> (not res!367801) (not e!333087))))

(declare-datatypes ((List!11468 0))(
  ( (Nil!11465) (Cons!11464 (h!12509 (_ BitVec 64)) (t!17704 List!11468)) )
))
(declare-fun arrayNoDuplicates!0 (array!36207 (_ BitVec 32) List!11468) Bool)

(assert (=> b!579829 (= res!367801 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11465))))

(declare-fun b!579830 () Bool)

(declare-fun res!367795 () Bool)

(assert (=> b!579830 (=> (not res!367795) (not e!333088))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579830 (= res!367795 (validKeyInArray!0 k0!1786))))

(declare-fun b!579831 () Bool)

(assert (=> b!579831 (= e!333088 e!333087)))

(declare-fun res!367797 () Bool)

(assert (=> b!579831 (=> (not res!367797) (not e!333087))))

(declare-datatypes ((SeekEntryResult!5821 0))(
  ( (MissingZero!5821 (index!25511 (_ BitVec 32))) (Found!5821 (index!25512 (_ BitVec 32))) (Intermediate!5821 (undefined!6633 Bool) (index!25513 (_ BitVec 32)) (x!54421 (_ BitVec 32))) (Undefined!5821) (MissingVacant!5821 (index!25514 (_ BitVec 32))) )
))
(declare-fun lt!264574 () SeekEntryResult!5821)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579831 (= res!367797 (or (= lt!264574 (MissingZero!5821 i!1108)) (= lt!264574 (MissingVacant!5821 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36207 (_ BitVec 32)) SeekEntryResult!5821)

(assert (=> b!579831 (= lt!264574 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579832 () Bool)

(declare-fun res!367798 () Bool)

(assert (=> b!579832 (=> (not res!367798) (not e!333088))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579832 (= res!367798 (validKeyInArray!0 (select (arr!17374 a!2986) j!136)))))

(declare-fun b!579833 () Bool)

(declare-fun res!367799 () Bool)

(assert (=> b!579833 (=> (not res!367799) (not e!333087))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579833 (= res!367799 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17374 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17374 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579834 () Bool)

(declare-fun res!367800 () Bool)

(assert (=> b!579834 (=> (not res!367800) (not e!333088))))

(assert (=> b!579834 (= res!367800 (and (= (size!17738 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17738 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17738 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579835 () Bool)

(declare-fun res!367796 () Bool)

(assert (=> b!579835 (=> (not res!367796) (not e!333087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36207 (_ BitVec 32)) Bool)

(assert (=> b!579835 (= res!367796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579836 () Bool)

(assert (=> b!579836 (= e!333087 false)))

(declare-fun lt!264575 () SeekEntryResult!5821)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36207 (_ BitVec 32)) SeekEntryResult!5821)

(assert (=> b!579836 (= lt!264575 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17374 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53352 res!367802) b!579834))

(assert (= (and b!579834 res!367800) b!579832))

(assert (= (and b!579832 res!367798) b!579830))

(assert (= (and b!579830 res!367795) b!579828))

(assert (= (and b!579828 res!367794) b!579831))

(assert (= (and b!579831 res!367797) b!579835))

(assert (= (and b!579835 res!367796) b!579829))

(assert (= (and b!579829 res!367801) b!579833))

(assert (= (and b!579833 res!367799) b!579836))

(declare-fun m!558477 () Bool)

(assert (=> b!579831 m!558477))

(declare-fun m!558479 () Bool)

(assert (=> b!579830 m!558479))

(declare-fun m!558481 () Bool)

(assert (=> start!53352 m!558481))

(declare-fun m!558483 () Bool)

(assert (=> start!53352 m!558483))

(declare-fun m!558485 () Bool)

(assert (=> b!579828 m!558485))

(declare-fun m!558487 () Bool)

(assert (=> b!579836 m!558487))

(assert (=> b!579836 m!558487))

(declare-fun m!558489 () Bool)

(assert (=> b!579836 m!558489))

(declare-fun m!558491 () Bool)

(assert (=> b!579835 m!558491))

(assert (=> b!579832 m!558487))

(assert (=> b!579832 m!558487))

(declare-fun m!558493 () Bool)

(assert (=> b!579832 m!558493))

(declare-fun m!558495 () Bool)

(assert (=> b!579829 m!558495))

(declare-fun m!558497 () Bool)

(assert (=> b!579833 m!558497))

(declare-fun m!558499 () Bool)

(assert (=> b!579833 m!558499))

(declare-fun m!558501 () Bool)

(assert (=> b!579833 m!558501))

(check-sat (not b!579836) (not b!579835) (not b!579832) (not b!579830) (not b!579829) (not start!53352) (not b!579831) (not b!579828))
(check-sat)
