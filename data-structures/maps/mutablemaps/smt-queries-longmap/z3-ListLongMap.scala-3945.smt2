; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53700 () Bool)

(assert start!53700)

(declare-fun b!584991 () Bool)

(declare-fun res!372968 () Bool)

(declare-fun e!334793 () Bool)

(assert (=> b!584991 (=> (not res!372968) (not e!334793))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36555 0))(
  ( (array!36556 (arr!17548 (Array (_ BitVec 32) (_ BitVec 64))) (size!17912 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36555)

(declare-datatypes ((SeekEntryResult!5995 0))(
  ( (MissingZero!5995 (index!26207 (_ BitVec 32))) (Found!5995 (index!26208 (_ BitVec 32))) (Intermediate!5995 (undefined!6807 Bool) (index!26209 (_ BitVec 32)) (x!55059 (_ BitVec 32))) (Undefined!5995) (MissingVacant!5995 (index!26210 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36555 (_ BitVec 32)) SeekEntryResult!5995)

(assert (=> b!584991 (= res!372968 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17548 a!2986) j!136) a!2986 mask!3053) (Found!5995 j!136)))))

(declare-fun b!584992 () Bool)

(declare-fun res!372959 () Bool)

(declare-fun e!334794 () Bool)

(assert (=> b!584992 (=> (not res!372959) (not e!334794))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584992 (= res!372959 (validKeyInArray!0 k0!1786))))

(declare-fun b!584993 () Bool)

(declare-fun res!372960 () Bool)

(assert (=> b!584993 (=> (not res!372960) (not e!334794))))

(declare-fun arrayContainsKey!0 (array!36555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584993 (= res!372960 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584994 () Bool)

(assert (=> b!584994 (= e!334794 e!334793)))

(declare-fun res!372967 () Bool)

(assert (=> b!584994 (=> (not res!372967) (not e!334793))))

(declare-fun lt!265723 () SeekEntryResult!5995)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584994 (= res!372967 (or (= lt!265723 (MissingZero!5995 i!1108)) (= lt!265723 (MissingVacant!5995 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36555 (_ BitVec 32)) SeekEntryResult!5995)

(assert (=> b!584994 (= lt!265723 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584995 () Bool)

(declare-fun res!372966 () Bool)

(assert (=> b!584995 (=> (not res!372966) (not e!334793))))

(assert (=> b!584995 (= res!372966 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17548 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17548 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584996 () Bool)

(declare-fun res!372963 () Bool)

(assert (=> b!584996 (=> (not res!372963) (not e!334794))))

(assert (=> b!584996 (= res!372963 (validKeyInArray!0 (select (arr!17548 a!2986) j!136)))))

(declare-fun b!584998 () Bool)

(declare-fun res!372958 () Bool)

(assert (=> b!584998 (=> (not res!372958) (not e!334793))))

(assert (=> b!584998 (= res!372958 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17548 a!2986) index!984) (select (arr!17548 a!2986) j!136))) (not (= (select (arr!17548 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584999 () Bool)

(declare-fun res!372964 () Bool)

(assert (=> b!584999 (=> (not res!372964) (not e!334793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36555 (_ BitVec 32)) Bool)

(assert (=> b!584999 (= res!372964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585000 () Bool)

(declare-fun e!334792 () Bool)

(assert (=> b!585000 (= e!334793 e!334792)))

(declare-fun res!372957 () Bool)

(assert (=> b!585000 (=> (not res!372957) (not e!334792))))

(declare-fun lt!265724 () (_ BitVec 32))

(assert (=> b!585000 (= res!372957 (and (bvsge lt!265724 #b00000000000000000000000000000000) (bvslt lt!265724 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585000 (= lt!265724 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585001 () Bool)

(declare-fun res!372961 () Bool)

(assert (=> b!585001 (=> (not res!372961) (not e!334794))))

(assert (=> b!585001 (= res!372961 (and (= (size!17912 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17912 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17912 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585002 () Bool)

(assert (=> b!585002 (= e!334792 false)))

(declare-fun lt!265722 () SeekEntryResult!5995)

(assert (=> b!585002 (= lt!265722 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265724 vacantSpotIndex!68 (select (arr!17548 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372965 () Bool)

(assert (=> start!53700 (=> (not res!372965) (not e!334794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53700 (= res!372965 (validMask!0 mask!3053))))

(assert (=> start!53700 e!334794))

(assert (=> start!53700 true))

(declare-fun array_inv!13322 (array!36555) Bool)

(assert (=> start!53700 (array_inv!13322 a!2986)))

(declare-fun b!584997 () Bool)

(declare-fun res!372962 () Bool)

(assert (=> b!584997 (=> (not res!372962) (not e!334793))))

(declare-datatypes ((List!11642 0))(
  ( (Nil!11639) (Cons!11638 (h!12683 (_ BitVec 64)) (t!17878 List!11642)) )
))
(declare-fun arrayNoDuplicates!0 (array!36555 (_ BitVec 32) List!11642) Bool)

(assert (=> b!584997 (= res!372962 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11639))))

(assert (= (and start!53700 res!372965) b!585001))

(assert (= (and b!585001 res!372961) b!584996))

(assert (= (and b!584996 res!372963) b!584992))

(assert (= (and b!584992 res!372959) b!584993))

(assert (= (and b!584993 res!372960) b!584994))

(assert (= (and b!584994 res!372967) b!584999))

(assert (= (and b!584999 res!372964) b!584997))

(assert (= (and b!584997 res!372962) b!584995))

(assert (= (and b!584995 res!372966) b!584991))

(assert (= (and b!584991 res!372968) b!584998))

(assert (= (and b!584998 res!372958) b!585000))

(assert (= (and b!585000 res!372957) b!585002))

(declare-fun m!563313 () Bool)

(assert (=> b!584993 m!563313))

(declare-fun m!563315 () Bool)

(assert (=> b!584998 m!563315))

(declare-fun m!563317 () Bool)

(assert (=> b!584998 m!563317))

(declare-fun m!563319 () Bool)

(assert (=> b!584992 m!563319))

(declare-fun m!563321 () Bool)

(assert (=> b!585000 m!563321))

(assert (=> b!584991 m!563317))

(assert (=> b!584991 m!563317))

(declare-fun m!563323 () Bool)

(assert (=> b!584991 m!563323))

(assert (=> b!585002 m!563317))

(assert (=> b!585002 m!563317))

(declare-fun m!563325 () Bool)

(assert (=> b!585002 m!563325))

(declare-fun m!563327 () Bool)

(assert (=> b!584997 m!563327))

(declare-fun m!563329 () Bool)

(assert (=> b!584999 m!563329))

(assert (=> b!584996 m!563317))

(assert (=> b!584996 m!563317))

(declare-fun m!563331 () Bool)

(assert (=> b!584996 m!563331))

(declare-fun m!563333 () Bool)

(assert (=> b!584995 m!563333))

(declare-fun m!563335 () Bool)

(assert (=> b!584995 m!563335))

(declare-fun m!563337 () Bool)

(assert (=> b!584995 m!563337))

(declare-fun m!563339 () Bool)

(assert (=> b!584994 m!563339))

(declare-fun m!563341 () Bool)

(assert (=> start!53700 m!563341))

(declare-fun m!563343 () Bool)

(assert (=> start!53700 m!563343))

(check-sat (not b!584996) (not b!584991) (not b!584997) (not b!584999) (not start!53700) (not b!584993) (not b!585000) (not b!584992) (not b!584994) (not b!585002))
(check-sat)
