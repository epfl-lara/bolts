; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53358 () Bool)

(assert start!53358)

(declare-fun res!367881 () Bool)

(declare-fun e!333113 () Bool)

(assert (=> start!53358 (=> (not res!367881) (not e!333113))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53358 (= res!367881 (validMask!0 mask!3053))))

(assert (=> start!53358 e!333113))

(assert (=> start!53358 true))

(declare-datatypes ((array!36213 0))(
  ( (array!36214 (arr!17377 (Array (_ BitVec 32) (_ BitVec 64))) (size!17741 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36213)

(declare-fun array_inv!13151 (array!36213) Bool)

(assert (=> start!53358 (array_inv!13151 a!2986)))

(declare-fun b!579909 () Bool)

(declare-fun res!367875 () Bool)

(assert (=> b!579909 (=> (not res!367875) (not e!333113))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579909 (= res!367875 (and (= (size!17741 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17741 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17741 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579910 () Bool)

(declare-fun res!367880 () Bool)

(assert (=> b!579910 (=> (not res!367880) (not e!333113))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579910 (= res!367880 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579911 () Bool)

(declare-fun res!367879 () Bool)

(assert (=> b!579911 (=> (not res!367879) (not e!333113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579911 (= res!367879 (validKeyInArray!0 k0!1786))))

(declare-fun b!579912 () Bool)

(declare-fun res!367883 () Bool)

(assert (=> b!579912 (=> (not res!367883) (not e!333113))))

(assert (=> b!579912 (= res!367883 (validKeyInArray!0 (select (arr!17377 a!2986) j!136)))))

(declare-fun b!579913 () Bool)

(declare-fun e!333115 () Bool)

(assert (=> b!579913 (= e!333115 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5824 0))(
  ( (MissingZero!5824 (index!25523 (_ BitVec 32))) (Found!5824 (index!25524 (_ BitVec 32))) (Intermediate!5824 (undefined!6636 Bool) (index!25525 (_ BitVec 32)) (x!54432 (_ BitVec 32))) (Undefined!5824) (MissingVacant!5824 (index!25526 (_ BitVec 32))) )
))
(declare-fun lt!264593 () SeekEntryResult!5824)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36213 (_ BitVec 32)) SeekEntryResult!5824)

(assert (=> b!579913 (= lt!264593 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17377 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579914 () Bool)

(assert (=> b!579914 (= e!333113 e!333115)))

(declare-fun res!367876 () Bool)

(assert (=> b!579914 (=> (not res!367876) (not e!333115))))

(declare-fun lt!264592 () SeekEntryResult!5824)

(assert (=> b!579914 (= res!367876 (or (= lt!264592 (MissingZero!5824 i!1108)) (= lt!264592 (MissingVacant!5824 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36213 (_ BitVec 32)) SeekEntryResult!5824)

(assert (=> b!579914 (= lt!264592 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579915 () Bool)

(declare-fun res!367882 () Bool)

(assert (=> b!579915 (=> (not res!367882) (not e!333115))))

(declare-datatypes ((List!11471 0))(
  ( (Nil!11468) (Cons!11467 (h!12512 (_ BitVec 64)) (t!17707 List!11471)) )
))
(declare-fun arrayNoDuplicates!0 (array!36213 (_ BitVec 32) List!11471) Bool)

(assert (=> b!579915 (= res!367882 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11468))))

(declare-fun b!579916 () Bool)

(declare-fun res!367877 () Bool)

(assert (=> b!579916 (=> (not res!367877) (not e!333115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36213 (_ BitVec 32)) Bool)

(assert (=> b!579916 (= res!367877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579917 () Bool)

(declare-fun res!367878 () Bool)

(assert (=> b!579917 (=> (not res!367878) (not e!333115))))

(assert (=> b!579917 (= res!367878 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17377 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17377 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53358 res!367881) b!579909))

(assert (= (and b!579909 res!367875) b!579912))

(assert (= (and b!579912 res!367883) b!579911))

(assert (= (and b!579911 res!367879) b!579910))

(assert (= (and b!579910 res!367880) b!579914))

(assert (= (and b!579914 res!367876) b!579916))

(assert (= (and b!579916 res!367877) b!579915))

(assert (= (and b!579915 res!367882) b!579917))

(assert (= (and b!579917 res!367878) b!579913))

(declare-fun m!558555 () Bool)

(assert (=> b!579917 m!558555))

(declare-fun m!558557 () Bool)

(assert (=> b!579917 m!558557))

(declare-fun m!558559 () Bool)

(assert (=> b!579917 m!558559))

(declare-fun m!558561 () Bool)

(assert (=> start!53358 m!558561))

(declare-fun m!558563 () Bool)

(assert (=> start!53358 m!558563))

(declare-fun m!558565 () Bool)

(assert (=> b!579913 m!558565))

(assert (=> b!579913 m!558565))

(declare-fun m!558567 () Bool)

(assert (=> b!579913 m!558567))

(assert (=> b!579912 m!558565))

(assert (=> b!579912 m!558565))

(declare-fun m!558569 () Bool)

(assert (=> b!579912 m!558569))

(declare-fun m!558571 () Bool)

(assert (=> b!579911 m!558571))

(declare-fun m!558573 () Bool)

(assert (=> b!579916 m!558573))

(declare-fun m!558575 () Bool)

(assert (=> b!579914 m!558575))

(declare-fun m!558577 () Bool)

(assert (=> b!579910 m!558577))

(declare-fun m!558579 () Bool)

(assert (=> b!579915 m!558579))

(check-sat (not b!579913) (not b!579914) (not b!579912) (not b!579915) (not b!579910) (not b!579916) (not start!53358) (not b!579911))
