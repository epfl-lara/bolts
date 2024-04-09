; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53640 () Bool)

(assert start!53640)

(declare-fun b!583911 () Bool)

(declare-fun res!371880 () Bool)

(declare-fun e!334435 () Bool)

(assert (=> b!583911 (=> (not res!371880) (not e!334435))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36495 0))(
  ( (array!36496 (arr!17518 (Array (_ BitVec 32) (_ BitVec 64))) (size!17882 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36495)

(assert (=> b!583911 (= res!371880 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17518 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17518 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583912 () Bool)

(declare-fun res!371878 () Bool)

(declare-fun e!334432 () Bool)

(assert (=> b!583912 (=> (not res!371878) (not e!334432))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583912 (= res!371878 (and (= (size!17882 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17882 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17882 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583913 () Bool)

(declare-fun res!371881 () Bool)

(assert (=> b!583913 (=> (not res!371881) (not e!334432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583913 (= res!371881 (validKeyInArray!0 k0!1786))))

(declare-fun b!583914 () Bool)

(declare-fun res!371885 () Bool)

(assert (=> b!583914 (=> (not res!371885) (not e!334435))))

(declare-datatypes ((List!11612 0))(
  ( (Nil!11609) (Cons!11608 (h!12653 (_ BitVec 64)) (t!17848 List!11612)) )
))
(declare-fun arrayNoDuplicates!0 (array!36495 (_ BitVec 32) List!11612) Bool)

(assert (=> b!583914 (= res!371885 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11609))))

(declare-fun b!583915 () Bool)

(declare-fun res!371877 () Bool)

(assert (=> b!583915 (=> (not res!371877) (not e!334432))))

(declare-fun arrayContainsKey!0 (array!36495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583915 (= res!371877 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583916 () Bool)

(declare-fun e!334433 () Bool)

(assert (=> b!583916 (= e!334435 e!334433)))

(declare-fun res!371883 () Bool)

(assert (=> b!583916 (=> (not res!371883) (not e!334433))))

(declare-fun lt!265454 () (_ BitVec 32))

(assert (=> b!583916 (= res!371883 (and (bvsge lt!265454 #b00000000000000000000000000000000) (bvslt lt!265454 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583916 (= lt!265454 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583917 () Bool)

(declare-fun res!371879 () Bool)

(assert (=> b!583917 (=> (not res!371879) (not e!334435))))

(declare-datatypes ((SeekEntryResult!5965 0))(
  ( (MissingZero!5965 (index!26087 (_ BitVec 32))) (Found!5965 (index!26088 (_ BitVec 32))) (Intermediate!5965 (undefined!6777 Bool) (index!26089 (_ BitVec 32)) (x!54949 (_ BitVec 32))) (Undefined!5965) (MissingVacant!5965 (index!26090 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36495 (_ BitVec 32)) SeekEntryResult!5965)

(assert (=> b!583917 (= res!371879 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17518 a!2986) j!136) a!2986 mask!3053) (Found!5965 j!136)))))

(declare-fun b!583918 () Bool)

(declare-fun res!371882 () Bool)

(assert (=> b!583918 (=> (not res!371882) (not e!334432))))

(assert (=> b!583918 (= res!371882 (validKeyInArray!0 (select (arr!17518 a!2986) j!136)))))

(declare-fun b!583919 () Bool)

(assert (=> b!583919 (= e!334432 e!334435)))

(declare-fun res!371888 () Bool)

(assert (=> b!583919 (=> (not res!371888) (not e!334435))))

(declare-fun lt!265453 () SeekEntryResult!5965)

(assert (=> b!583919 (= res!371888 (or (= lt!265453 (MissingZero!5965 i!1108)) (= lt!265453 (MissingVacant!5965 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36495 (_ BitVec 32)) SeekEntryResult!5965)

(assert (=> b!583919 (= lt!265453 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!583920 () Bool)

(declare-fun res!371884 () Bool)

(assert (=> b!583920 (=> (not res!371884) (not e!334435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36495 (_ BitVec 32)) Bool)

(assert (=> b!583920 (= res!371884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!371887 () Bool)

(assert (=> start!53640 (=> (not res!371887) (not e!334432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53640 (= res!371887 (validMask!0 mask!3053))))

(assert (=> start!53640 e!334432))

(assert (=> start!53640 true))

(declare-fun array_inv!13292 (array!36495) Bool)

(assert (=> start!53640 (array_inv!13292 a!2986)))

(declare-fun b!583921 () Bool)

(assert (=> b!583921 (= e!334433 false)))

(declare-fun lt!265452 () SeekEntryResult!5965)

(assert (=> b!583921 (= lt!265452 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265454 vacantSpotIndex!68 (select (arr!17518 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583922 () Bool)

(declare-fun res!371886 () Bool)

(assert (=> b!583922 (=> (not res!371886) (not e!334435))))

(assert (=> b!583922 (= res!371886 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17518 a!2986) index!984) (select (arr!17518 a!2986) j!136))) (not (= (select (arr!17518 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53640 res!371887) b!583912))

(assert (= (and b!583912 res!371878) b!583918))

(assert (= (and b!583918 res!371882) b!583913))

(assert (= (and b!583913 res!371881) b!583915))

(assert (= (and b!583915 res!371877) b!583919))

(assert (= (and b!583919 res!371888) b!583920))

(assert (= (and b!583920 res!371884) b!583914))

(assert (= (and b!583914 res!371885) b!583911))

(assert (= (and b!583911 res!371880) b!583917))

(assert (= (and b!583917 res!371879) b!583922))

(assert (= (and b!583922 res!371886) b!583916))

(assert (= (and b!583916 res!371883) b!583921))

(declare-fun m!562353 () Bool)

(assert (=> start!53640 m!562353))

(declare-fun m!562355 () Bool)

(assert (=> start!53640 m!562355))

(declare-fun m!562357 () Bool)

(assert (=> b!583914 m!562357))

(declare-fun m!562359 () Bool)

(assert (=> b!583918 m!562359))

(assert (=> b!583918 m!562359))

(declare-fun m!562361 () Bool)

(assert (=> b!583918 m!562361))

(declare-fun m!562363 () Bool)

(assert (=> b!583916 m!562363))

(declare-fun m!562365 () Bool)

(assert (=> b!583915 m!562365))

(declare-fun m!562367 () Bool)

(assert (=> b!583913 m!562367))

(declare-fun m!562369 () Bool)

(assert (=> b!583922 m!562369))

(assert (=> b!583922 m!562359))

(assert (=> b!583917 m!562359))

(assert (=> b!583917 m!562359))

(declare-fun m!562371 () Bool)

(assert (=> b!583917 m!562371))

(declare-fun m!562373 () Bool)

(assert (=> b!583920 m!562373))

(declare-fun m!562375 () Bool)

(assert (=> b!583911 m!562375))

(declare-fun m!562377 () Bool)

(assert (=> b!583911 m!562377))

(declare-fun m!562379 () Bool)

(assert (=> b!583911 m!562379))

(assert (=> b!583921 m!562359))

(assert (=> b!583921 m!562359))

(declare-fun m!562381 () Bool)

(assert (=> b!583921 m!562381))

(declare-fun m!562383 () Bool)

(assert (=> b!583919 m!562383))

(check-sat (not b!583920) (not b!583921) (not b!583917) (not b!583919) (not b!583914) (not start!53640) (not b!583918) (not b!583915) (not b!583913) (not b!583916))
