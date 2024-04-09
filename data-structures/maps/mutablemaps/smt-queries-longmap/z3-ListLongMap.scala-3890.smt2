; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53370 () Bool)

(assert start!53370)

(declare-fun res!368038 () Bool)

(declare-fun e!333168 () Bool)

(assert (=> start!53370 (=> (not res!368038) (not e!333168))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53370 (= res!368038 (validMask!0 mask!3053))))

(assert (=> start!53370 e!333168))

(assert (=> start!53370 true))

(declare-datatypes ((array!36225 0))(
  ( (array!36226 (arr!17383 (Array (_ BitVec 32) (_ BitVec 64))) (size!17747 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36225)

(declare-fun array_inv!13157 (array!36225) Bool)

(assert (=> start!53370 (array_inv!13157 a!2986)))

(declare-fun b!580071 () Bool)

(declare-fun e!333167 () Bool)

(assert (=> b!580071 (= e!333167 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5830 0))(
  ( (MissingZero!5830 (index!25547 (_ BitVec 32))) (Found!5830 (index!25548 (_ BitVec 32))) (Intermediate!5830 (undefined!6642 Bool) (index!25549 (_ BitVec 32)) (x!54454 (_ BitVec 32))) (Undefined!5830) (MissingVacant!5830 (index!25550 (_ BitVec 32))) )
))
(declare-fun lt!264629 () SeekEntryResult!5830)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36225 (_ BitVec 32)) SeekEntryResult!5830)

(assert (=> b!580071 (= lt!264629 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17383 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580072 () Bool)

(declare-fun res!368044 () Bool)

(assert (=> b!580072 (=> (not res!368044) (not e!333168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580072 (= res!368044 (validKeyInArray!0 (select (arr!17383 a!2986) j!136)))))

(declare-fun b!580073 () Bool)

(declare-fun res!368041 () Bool)

(assert (=> b!580073 (=> (not res!368041) (not e!333167))))

(declare-datatypes ((List!11477 0))(
  ( (Nil!11474) (Cons!11473 (h!12518 (_ BitVec 64)) (t!17713 List!11477)) )
))
(declare-fun arrayNoDuplicates!0 (array!36225 (_ BitVec 32) List!11477) Bool)

(assert (=> b!580073 (= res!368041 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11474))))

(declare-fun b!580074 () Bool)

(declare-fun res!368045 () Bool)

(assert (=> b!580074 (=> (not res!368045) (not e!333168))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580074 (= res!368045 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580075 () Bool)

(declare-fun res!368042 () Bool)

(assert (=> b!580075 (=> (not res!368042) (not e!333168))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580075 (= res!368042 (and (= (size!17747 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17747 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17747 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580076 () Bool)

(declare-fun res!368037 () Bool)

(assert (=> b!580076 (=> (not res!368037) (not e!333167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36225 (_ BitVec 32)) Bool)

(assert (=> b!580076 (= res!368037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580077 () Bool)

(assert (=> b!580077 (= e!333168 e!333167)))

(declare-fun res!368039 () Bool)

(assert (=> b!580077 (=> (not res!368039) (not e!333167))))

(declare-fun lt!264628 () SeekEntryResult!5830)

(assert (=> b!580077 (= res!368039 (or (= lt!264628 (MissingZero!5830 i!1108)) (= lt!264628 (MissingVacant!5830 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36225 (_ BitVec 32)) SeekEntryResult!5830)

(assert (=> b!580077 (= lt!264628 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580078 () Bool)

(declare-fun res!368043 () Bool)

(assert (=> b!580078 (=> (not res!368043) (not e!333167))))

(assert (=> b!580078 (= res!368043 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17383 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17383 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580079 () Bool)

(declare-fun res!368040 () Bool)

(assert (=> b!580079 (=> (not res!368040) (not e!333168))))

(assert (=> b!580079 (= res!368040 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53370 res!368038) b!580075))

(assert (= (and b!580075 res!368042) b!580072))

(assert (= (and b!580072 res!368044) b!580079))

(assert (= (and b!580079 res!368040) b!580074))

(assert (= (and b!580074 res!368045) b!580077))

(assert (= (and b!580077 res!368039) b!580076))

(assert (= (and b!580076 res!368037) b!580073))

(assert (= (and b!580073 res!368041) b!580078))

(assert (= (and b!580078 res!368043) b!580071))

(declare-fun m!558711 () Bool)

(assert (=> b!580079 m!558711))

(declare-fun m!558713 () Bool)

(assert (=> start!53370 m!558713))

(declare-fun m!558715 () Bool)

(assert (=> start!53370 m!558715))

(declare-fun m!558717 () Bool)

(assert (=> b!580078 m!558717))

(declare-fun m!558719 () Bool)

(assert (=> b!580078 m!558719))

(declare-fun m!558721 () Bool)

(assert (=> b!580078 m!558721))

(declare-fun m!558723 () Bool)

(assert (=> b!580074 m!558723))

(declare-fun m!558725 () Bool)

(assert (=> b!580073 m!558725))

(declare-fun m!558727 () Bool)

(assert (=> b!580071 m!558727))

(assert (=> b!580071 m!558727))

(declare-fun m!558729 () Bool)

(assert (=> b!580071 m!558729))

(declare-fun m!558731 () Bool)

(assert (=> b!580076 m!558731))

(assert (=> b!580072 m!558727))

(assert (=> b!580072 m!558727))

(declare-fun m!558733 () Bool)

(assert (=> b!580072 m!558733))

(declare-fun m!558735 () Bool)

(assert (=> b!580077 m!558735))

(check-sat (not b!580071) (not b!580077) (not b!580076) (not b!580073) (not b!580074) (not b!580079) (not b!580072) (not start!53370))
(check-sat)
