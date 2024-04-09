; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53574 () Bool)

(assert start!53574)

(declare-fun b!582861 () Bool)

(declare-fun res!370830 () Bool)

(declare-fun e!334086 () Bool)

(assert (=> b!582861 (=> (not res!370830) (not e!334086))))

(declare-datatypes ((array!36429 0))(
  ( (array!36430 (arr!17485 (Array (_ BitVec 32) (_ BitVec 64))) (size!17849 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36429)

(declare-datatypes ((List!11579 0))(
  ( (Nil!11576) (Cons!11575 (h!12620 (_ BitVec 64)) (t!17815 List!11579)) )
))
(declare-fun arrayNoDuplicates!0 (array!36429 (_ BitVec 32) List!11579) Bool)

(assert (=> b!582861 (= res!370830 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11576))))

(declare-fun b!582862 () Bool)

(assert (=> b!582862 (= e!334086 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5932 0))(
  ( (MissingZero!5932 (index!25955 (_ BitVec 32))) (Found!5932 (index!25956 (_ BitVec 32))) (Intermediate!5932 (undefined!6744 Bool) (index!25957 (_ BitVec 32)) (x!54828 (_ BitVec 32))) (Undefined!5932) (MissingVacant!5932 (index!25958 (_ BitVec 32))) )
))
(declare-fun lt!265214 () SeekEntryResult!5932)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36429 (_ BitVec 32)) SeekEntryResult!5932)

(assert (=> b!582862 (= lt!265214 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17485 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!370832 () Bool)

(declare-fun e!334087 () Bool)

(assert (=> start!53574 (=> (not res!370832) (not e!334087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53574 (= res!370832 (validMask!0 mask!3053))))

(assert (=> start!53574 e!334087))

(assert (=> start!53574 true))

(declare-fun array_inv!13259 (array!36429) Bool)

(assert (=> start!53574 (array_inv!13259 a!2986)))

(declare-fun b!582863 () Bool)

(declare-fun res!370831 () Bool)

(assert (=> b!582863 (=> (not res!370831) (not e!334087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582863 (= res!370831 (validKeyInArray!0 (select (arr!17485 a!2986) j!136)))))

(declare-fun b!582864 () Bool)

(declare-fun res!370829 () Bool)

(assert (=> b!582864 (=> (not res!370829) (not e!334087))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!582864 (= res!370829 (validKeyInArray!0 k0!1786))))

(declare-fun b!582865 () Bool)

(assert (=> b!582865 (= e!334087 e!334086)))

(declare-fun res!370827 () Bool)

(assert (=> b!582865 (=> (not res!370827) (not e!334086))))

(declare-fun lt!265213 () SeekEntryResult!5932)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582865 (= res!370827 (or (= lt!265213 (MissingZero!5932 i!1108)) (= lt!265213 (MissingVacant!5932 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36429 (_ BitVec 32)) SeekEntryResult!5932)

(assert (=> b!582865 (= lt!265213 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582866 () Bool)

(declare-fun res!370835 () Bool)

(assert (=> b!582866 (=> (not res!370835) (not e!334087))))

(declare-fun arrayContainsKey!0 (array!36429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582866 (= res!370835 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582867 () Bool)

(declare-fun res!370833 () Bool)

(assert (=> b!582867 (=> (not res!370833) (not e!334087))))

(assert (=> b!582867 (= res!370833 (and (= (size!17849 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17849 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17849 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582868 () Bool)

(declare-fun res!370828 () Bool)

(assert (=> b!582868 (=> (not res!370828) (not e!334086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36429 (_ BitVec 32)) Bool)

(assert (=> b!582868 (= res!370828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582869 () Bool)

(declare-fun res!370834 () Bool)

(assert (=> b!582869 (=> (not res!370834) (not e!334086))))

(assert (=> b!582869 (= res!370834 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17485 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17485 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53574 res!370832) b!582867))

(assert (= (and b!582867 res!370833) b!582863))

(assert (= (and b!582863 res!370831) b!582864))

(assert (= (and b!582864 res!370829) b!582866))

(assert (= (and b!582866 res!370835) b!582865))

(assert (= (and b!582865 res!370827) b!582868))

(assert (= (and b!582868 res!370828) b!582861))

(assert (= (and b!582861 res!370830) b!582869))

(assert (= (and b!582869 res!370834) b!582862))

(declare-fun m!561393 () Bool)

(assert (=> start!53574 m!561393))

(declare-fun m!561395 () Bool)

(assert (=> start!53574 m!561395))

(declare-fun m!561397 () Bool)

(assert (=> b!582863 m!561397))

(assert (=> b!582863 m!561397))

(declare-fun m!561399 () Bool)

(assert (=> b!582863 m!561399))

(declare-fun m!561401 () Bool)

(assert (=> b!582864 m!561401))

(declare-fun m!561403 () Bool)

(assert (=> b!582866 m!561403))

(declare-fun m!561405 () Bool)

(assert (=> b!582865 m!561405))

(assert (=> b!582862 m!561397))

(assert (=> b!582862 m!561397))

(declare-fun m!561407 () Bool)

(assert (=> b!582862 m!561407))

(declare-fun m!561409 () Bool)

(assert (=> b!582868 m!561409))

(declare-fun m!561411 () Bool)

(assert (=> b!582869 m!561411))

(declare-fun m!561413 () Bool)

(assert (=> b!582869 m!561413))

(declare-fun m!561415 () Bool)

(assert (=> b!582869 m!561415))

(declare-fun m!561417 () Bool)

(assert (=> b!582861 m!561417))

(check-sat (not b!582868) (not b!582862) (not b!582864) (not b!582865) (not start!53574) (not b!582861) (not b!582863) (not b!582866))
(check-sat)
