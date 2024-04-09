; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53568 () Bool)

(assert start!53568)

(declare-fun b!582780 () Bool)

(declare-fun res!370747 () Bool)

(declare-fun e!334060 () Bool)

(assert (=> b!582780 (=> (not res!370747) (not e!334060))))

(declare-datatypes ((array!36423 0))(
  ( (array!36424 (arr!17482 (Array (_ BitVec 32) (_ BitVec 64))) (size!17846 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36423)

(declare-datatypes ((List!11576 0))(
  ( (Nil!11573) (Cons!11572 (h!12617 (_ BitVec 64)) (t!17812 List!11576)) )
))
(declare-fun arrayNoDuplicates!0 (array!36423 (_ BitVec 32) List!11576) Bool)

(assert (=> b!582780 (= res!370747 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11573))))

(declare-fun res!370752 () Bool)

(declare-fun e!334058 () Bool)

(assert (=> start!53568 (=> (not res!370752) (not e!334058))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53568 (= res!370752 (validMask!0 mask!3053))))

(assert (=> start!53568 e!334058))

(assert (=> start!53568 true))

(declare-fun array_inv!13256 (array!36423) Bool)

(assert (=> start!53568 (array_inv!13256 a!2986)))

(declare-fun b!582781 () Bool)

(assert (=> b!582781 (= e!334060 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5929 0))(
  ( (MissingZero!5929 (index!25943 (_ BitVec 32))) (Found!5929 (index!25944 (_ BitVec 32))) (Intermediate!5929 (undefined!6741 Bool) (index!25945 (_ BitVec 32)) (x!54817 (_ BitVec 32))) (Undefined!5929) (MissingVacant!5929 (index!25946 (_ BitVec 32))) )
))
(declare-fun lt!265196 () SeekEntryResult!5929)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36423 (_ BitVec 32)) SeekEntryResult!5929)

(assert (=> b!582781 (= lt!265196 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17482 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582782 () Bool)

(declare-fun res!370748 () Bool)

(assert (=> b!582782 (=> (not res!370748) (not e!334058))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582782 (= res!370748 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582783 () Bool)

(declare-fun res!370749 () Bool)

(assert (=> b!582783 (=> (not res!370749) (not e!334060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36423 (_ BitVec 32)) Bool)

(assert (=> b!582783 (= res!370749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582784 () Bool)

(declare-fun res!370751 () Bool)

(assert (=> b!582784 (=> (not res!370751) (not e!334060))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582784 (= res!370751 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17482 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17482 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582785 () Bool)

(assert (=> b!582785 (= e!334058 e!334060)))

(declare-fun res!370746 () Bool)

(assert (=> b!582785 (=> (not res!370746) (not e!334060))))

(declare-fun lt!265195 () SeekEntryResult!5929)

(assert (=> b!582785 (= res!370746 (or (= lt!265195 (MissingZero!5929 i!1108)) (= lt!265195 (MissingVacant!5929 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36423 (_ BitVec 32)) SeekEntryResult!5929)

(assert (=> b!582785 (= lt!265195 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582786 () Bool)

(declare-fun res!370750 () Bool)

(assert (=> b!582786 (=> (not res!370750) (not e!334058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582786 (= res!370750 (validKeyInArray!0 (select (arr!17482 a!2986) j!136)))))

(declare-fun b!582787 () Bool)

(declare-fun res!370753 () Bool)

(assert (=> b!582787 (=> (not res!370753) (not e!334058))))

(assert (=> b!582787 (= res!370753 (and (= (size!17846 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17846 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17846 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582788 () Bool)

(declare-fun res!370754 () Bool)

(assert (=> b!582788 (=> (not res!370754) (not e!334058))))

(assert (=> b!582788 (= res!370754 (validKeyInArray!0 k0!1786))))

(assert (= (and start!53568 res!370752) b!582787))

(assert (= (and b!582787 res!370753) b!582786))

(assert (= (and b!582786 res!370750) b!582788))

(assert (= (and b!582788 res!370754) b!582782))

(assert (= (and b!582782 res!370748) b!582785))

(assert (= (and b!582785 res!370746) b!582783))

(assert (= (and b!582783 res!370749) b!582780))

(assert (= (and b!582780 res!370747) b!582784))

(assert (= (and b!582784 res!370751) b!582781))

(declare-fun m!561315 () Bool)

(assert (=> b!582784 m!561315))

(declare-fun m!561317 () Bool)

(assert (=> b!582784 m!561317))

(declare-fun m!561319 () Bool)

(assert (=> b!582784 m!561319))

(declare-fun m!561321 () Bool)

(assert (=> start!53568 m!561321))

(declare-fun m!561323 () Bool)

(assert (=> start!53568 m!561323))

(declare-fun m!561325 () Bool)

(assert (=> b!582782 m!561325))

(declare-fun m!561327 () Bool)

(assert (=> b!582783 m!561327))

(declare-fun m!561329 () Bool)

(assert (=> b!582785 m!561329))

(declare-fun m!561331 () Bool)

(assert (=> b!582788 m!561331))

(declare-fun m!561333 () Bool)

(assert (=> b!582781 m!561333))

(assert (=> b!582781 m!561333))

(declare-fun m!561335 () Bool)

(assert (=> b!582781 m!561335))

(assert (=> b!582786 m!561333))

(assert (=> b!582786 m!561333))

(declare-fun m!561337 () Bool)

(assert (=> b!582786 m!561337))

(declare-fun m!561339 () Bool)

(assert (=> b!582780 m!561339))

(check-sat (not b!582785) (not b!582783) (not b!582788) (not b!582780) (not b!582782) (not b!582786) (not b!582781) (not start!53568))
(check-sat)
