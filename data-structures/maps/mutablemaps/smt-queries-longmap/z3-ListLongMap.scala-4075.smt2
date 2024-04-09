; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55958 () Bool)

(assert start!55958)

(declare-fun b!613228 () Bool)

(declare-fun res!394817 () Bool)

(declare-fun e!351549 () Bool)

(assert (=> b!613228 (=> (not res!394817) (not e!351549))))

(declare-datatypes ((array!37391 0))(
  ( (array!37392 (arr!17938 (Array (_ BitVec 32) (_ BitVec 64))) (size!18302 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37391)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!613228 (= res!394817 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!613229 () Bool)

(declare-fun res!394819 () Bool)

(declare-fun e!351554 () Bool)

(assert (=> b!613229 (=> (not res!394819) (not e!351554))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!613229 (= res!394819 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17938 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!613230 () Bool)

(declare-fun res!394814 () Bool)

(assert (=> b!613230 (=> (not res!394814) (not e!351554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37391 (_ BitVec 32)) Bool)

(assert (=> b!613230 (= res!394814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!613231 () Bool)

(declare-datatypes ((Unit!19738 0))(
  ( (Unit!19739) )
))
(declare-fun e!351548 () Unit!19738)

(declare-fun Unit!19740 () Unit!19738)

(assert (=> b!613231 (= e!351548 Unit!19740)))

(assert (=> b!613231 false))

(declare-fun b!613232 () Bool)

(declare-fun res!394815 () Bool)

(assert (=> b!613232 (=> (not res!394815) (not e!351554))))

(declare-datatypes ((List!12032 0))(
  ( (Nil!12029) (Cons!12028 (h!13073 (_ BitVec 64)) (t!18268 List!12032)) )
))
(declare-fun arrayNoDuplicates!0 (array!37391 (_ BitVec 32) List!12032) Bool)

(assert (=> b!613232 (= res!394815 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12029))))

(declare-fun b!613234 () Bool)

(declare-fun e!351556 () Bool)

(assert (=> b!613234 (= e!351556 true)))

(declare-fun lt!281114 () Bool)

(declare-fun contains!3059 (List!12032 (_ BitVec 64)) Bool)

(assert (=> b!613234 (= lt!281114 (contains!3059 Nil!12029 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613235 () Bool)

(declare-fun res!394830 () Bool)

(assert (=> b!613235 (=> (not res!394830) (not e!351549))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!613235 (= res!394830 (validKeyInArray!0 (select (arr!17938 a!2986) j!136)))))

(declare-fun b!613236 () Bool)

(declare-fun e!351546 () Unit!19738)

(declare-fun Unit!19741 () Unit!19738)

(assert (=> b!613236 (= e!351546 Unit!19741)))

(declare-fun b!613237 () Bool)

(declare-fun e!351542 () Bool)

(assert (=> b!613237 (= e!351554 e!351542)))

(declare-fun res!394825 () Bool)

(assert (=> b!613237 (=> (not res!394825) (not e!351542))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!613237 (= res!394825 (= (select (store (arr!17938 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!281119 () array!37391)

(assert (=> b!613237 (= lt!281119 (array!37392 (store (arr!17938 a!2986) i!1108 k0!1786) (size!18302 a!2986)))))

(declare-fun b!613238 () Bool)

(declare-fun Unit!19742 () Unit!19738)

(assert (=> b!613238 (= e!351548 Unit!19742)))

(declare-fun b!613239 () Bool)

(declare-fun e!351547 () Bool)

(assert (=> b!613239 (= e!351547 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) index!984))))

(declare-fun b!613240 () Bool)

(declare-fun res!394833 () Bool)

(assert (=> b!613240 (=> res!394833 e!351556)))

(declare-fun noDuplicate!359 (List!12032) Bool)

(assert (=> b!613240 (= res!394833 (not (noDuplicate!359 Nil!12029)))))

(declare-fun b!613241 () Bool)

(declare-fun e!351541 () Bool)

(declare-fun e!351543 () Bool)

(assert (=> b!613241 (= e!351541 e!351543)))

(declare-fun res!394827 () Bool)

(assert (=> b!613241 (=> res!394827 e!351543)))

(assert (=> b!613241 (= res!394827 (bvsge index!984 j!136))))

(declare-fun lt!281122 () Unit!19738)

(assert (=> b!613241 (= lt!281122 e!351546)))

(declare-fun c!69575 () Bool)

(assert (=> b!613241 (= c!69575 (bvslt j!136 index!984))))

(declare-fun b!613242 () Bool)

(declare-fun res!394828 () Bool)

(assert (=> b!613242 (=> (not res!394828) (not e!351549))))

(assert (=> b!613242 (= res!394828 (validKeyInArray!0 k0!1786))))

(declare-fun b!613233 () Bool)

(declare-fun res!394820 () Bool)

(assert (=> b!613233 (=> (not res!394820) (not e!351549))))

(assert (=> b!613233 (= res!394820 (and (= (size!18302 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18302 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18302 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!394822 () Bool)

(assert (=> start!55958 (=> (not res!394822) (not e!351549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55958 (= res!394822 (validMask!0 mask!3053))))

(assert (=> start!55958 e!351549))

(assert (=> start!55958 true))

(declare-fun array_inv!13712 (array!37391) Bool)

(assert (=> start!55958 (array_inv!13712 a!2986)))

(declare-fun b!613243 () Bool)

(assert (=> b!613243 (= e!351543 e!351556)))

(declare-fun res!394824 () Bool)

(assert (=> b!613243 (=> res!394824 e!351556)))

(assert (=> b!613243 (= res!394824 (or (bvsge (size!18302 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18302 a!2986)) (bvsge index!984 (size!18302 a!2986))))))

(assert (=> b!613243 (arrayNoDuplicates!0 lt!281119 index!984 Nil!12029)))

(declare-fun lt!281110 () Unit!19738)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37391 (_ BitVec 32) (_ BitVec 32)) Unit!19738)

(assert (=> b!613243 (= lt!281110 (lemmaNoDuplicateFromThenFromBigger!0 lt!281119 #b00000000000000000000000000000000 index!984))))

(assert (=> b!613243 (arrayNoDuplicates!0 lt!281119 #b00000000000000000000000000000000 Nil!12029)))

(declare-fun lt!281118 () Unit!19738)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37391 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12032) Unit!19738)

(assert (=> b!613243 (= lt!281118 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12029))))

(assert (=> b!613243 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!281107 () Unit!19738)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37391 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19738)

(assert (=> b!613243 (= lt!281107 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281119 (select (arr!17938 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!613243 e!351547))

(declare-fun res!394826 () Bool)

(assert (=> b!613243 (=> (not res!394826) (not e!351547))))

(assert (=> b!613243 (= res!394826 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) j!136))))

(declare-fun b!613244 () Bool)

(declare-fun res!394816 () Bool)

(assert (=> b!613244 (=> res!394816 e!351556)))

(assert (=> b!613244 (= res!394816 (contains!3059 Nil!12029 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!613245 () Bool)

(declare-fun e!351545 () Bool)

(declare-fun e!351551 () Bool)

(assert (=> b!613245 (= e!351545 e!351551)))

(declare-fun res!394835 () Bool)

(assert (=> b!613245 (=> res!394835 e!351551)))

(declare-fun lt!281123 () (_ BitVec 64))

(declare-fun lt!281106 () (_ BitVec 64))

(assert (=> b!613245 (= res!394835 (or (not (= (select (arr!17938 a!2986) j!136) lt!281106)) (not (= (select (arr!17938 a!2986) j!136) lt!281123)) (bvsge j!136 index!984)))))

(declare-fun b!613246 () Bool)

(declare-fun e!351555 () Bool)

(declare-datatypes ((SeekEntryResult!6385 0))(
  ( (MissingZero!6385 (index!27823 (_ BitVec 32))) (Found!6385 (index!27824 (_ BitVec 32))) (Intermediate!6385 (undefined!7197 Bool) (index!27825 (_ BitVec 32)) (x!56658 (_ BitVec 32))) (Undefined!6385) (MissingVacant!6385 (index!27826 (_ BitVec 32))) )
))
(declare-fun lt!281115 () SeekEntryResult!6385)

(declare-fun lt!281121 () SeekEntryResult!6385)

(assert (=> b!613246 (= e!351555 (= lt!281115 lt!281121))))

(declare-fun b!613247 () Bool)

(declare-fun e!351550 () Bool)

(assert (=> b!613247 (= e!351542 e!351550)))

(declare-fun res!394832 () Bool)

(assert (=> b!613247 (=> (not res!394832) (not e!351550))))

(assert (=> b!613247 (= res!394832 (and (= lt!281115 (Found!6385 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17938 a!2986) index!984) (select (arr!17938 a!2986) j!136))) (not (= (select (arr!17938 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37391 (_ BitVec 32)) SeekEntryResult!6385)

(assert (=> b!613247 (= lt!281115 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17938 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!613248 () Bool)

(declare-fun e!351552 () Bool)

(assert (=> b!613248 (= e!351551 e!351552)))

(declare-fun res!394821 () Bool)

(assert (=> b!613248 (=> (not res!394821) (not e!351552))))

(assert (=> b!613248 (= res!394821 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) j!136))))

(declare-fun b!613249 () Bool)

(declare-fun Unit!19743 () Unit!19738)

(assert (=> b!613249 (= e!351546 Unit!19743)))

(declare-fun lt!281113 () Unit!19738)

(assert (=> b!613249 (= lt!281113 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!281119 (select (arr!17938 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!613249 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!281116 () Unit!19738)

(assert (=> b!613249 (= lt!281116 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12029))))

(assert (=> b!613249 (arrayNoDuplicates!0 lt!281119 #b00000000000000000000000000000000 Nil!12029)))

(declare-fun lt!281111 () Unit!19738)

(assert (=> b!613249 (= lt!281111 (lemmaNoDuplicateFromThenFromBigger!0 lt!281119 #b00000000000000000000000000000000 j!136))))

(assert (=> b!613249 (arrayNoDuplicates!0 lt!281119 j!136 Nil!12029)))

(declare-fun lt!281117 () Unit!19738)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37391 (_ BitVec 64) (_ BitVec 32) List!12032) Unit!19738)

(assert (=> b!613249 (= lt!281117 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!281119 (select (arr!17938 a!2986) j!136) j!136 Nil!12029))))

(assert (=> b!613249 false))

(declare-fun b!613250 () Bool)

(assert (=> b!613250 (= e!351552 (arrayContainsKey!0 lt!281119 (select (arr!17938 a!2986) j!136) index!984))))

(declare-fun b!613251 () Bool)

(declare-fun e!351553 () Bool)

(assert (=> b!613251 (= e!351553 e!351541)))

(declare-fun res!394818 () Bool)

(assert (=> b!613251 (=> res!394818 e!351541)))

(assert (=> b!613251 (= res!394818 (or (not (= (select (arr!17938 a!2986) j!136) lt!281106)) (not (= (select (arr!17938 a!2986) j!136) lt!281123))))))

(assert (=> b!613251 e!351545))

(declare-fun res!394823 () Bool)

(assert (=> b!613251 (=> (not res!394823) (not e!351545))))

(assert (=> b!613251 (= res!394823 (= lt!281123 (select (arr!17938 a!2986) j!136)))))

(assert (=> b!613251 (= lt!281123 (select (store (arr!17938 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!613252 () Bool)

(assert (=> b!613252 (= e!351550 (not e!351553))))

(declare-fun res!394834 () Bool)

(assert (=> b!613252 (=> res!394834 e!351553)))

(declare-fun lt!281108 () SeekEntryResult!6385)

(assert (=> b!613252 (= res!394834 (not (= lt!281108 (Found!6385 index!984))))))

(declare-fun lt!281120 () Unit!19738)

(assert (=> b!613252 (= lt!281120 e!351548)))

(declare-fun c!69574 () Bool)

(assert (=> b!613252 (= c!69574 (= lt!281108 Undefined!6385))))

(assert (=> b!613252 (= lt!281108 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!281106 lt!281119 mask!3053))))

(assert (=> b!613252 e!351555))

(declare-fun res!394829 () Bool)

(assert (=> b!613252 (=> (not res!394829) (not e!351555))))

(declare-fun lt!281109 () (_ BitVec 32))

(assert (=> b!613252 (= res!394829 (= lt!281121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281109 vacantSpotIndex!68 lt!281106 lt!281119 mask!3053)))))

(assert (=> b!613252 (= lt!281121 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!281109 vacantSpotIndex!68 (select (arr!17938 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!613252 (= lt!281106 (select (store (arr!17938 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!281112 () Unit!19738)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37391 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19738)

(assert (=> b!613252 (= lt!281112 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!281109 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!613252 (= lt!281109 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!613253 () Bool)

(assert (=> b!613253 (= e!351549 e!351554)))

(declare-fun res!394831 () Bool)

(assert (=> b!613253 (=> (not res!394831) (not e!351554))))

(declare-fun lt!281124 () SeekEntryResult!6385)

(assert (=> b!613253 (= res!394831 (or (= lt!281124 (MissingZero!6385 i!1108)) (= lt!281124 (MissingVacant!6385 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37391 (_ BitVec 32)) SeekEntryResult!6385)

(assert (=> b!613253 (= lt!281124 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!55958 res!394822) b!613233))

(assert (= (and b!613233 res!394820) b!613235))

(assert (= (and b!613235 res!394830) b!613242))

(assert (= (and b!613242 res!394828) b!613228))

(assert (= (and b!613228 res!394817) b!613253))

(assert (= (and b!613253 res!394831) b!613230))

(assert (= (and b!613230 res!394814) b!613232))

(assert (= (and b!613232 res!394815) b!613229))

(assert (= (and b!613229 res!394819) b!613237))

(assert (= (and b!613237 res!394825) b!613247))

(assert (= (and b!613247 res!394832) b!613252))

(assert (= (and b!613252 res!394829) b!613246))

(assert (= (and b!613252 c!69574) b!613231))

(assert (= (and b!613252 (not c!69574)) b!613238))

(assert (= (and b!613252 (not res!394834)) b!613251))

(assert (= (and b!613251 res!394823) b!613245))

(assert (= (and b!613245 (not res!394835)) b!613248))

(assert (= (and b!613248 res!394821) b!613250))

(assert (= (and b!613251 (not res!394818)) b!613241))

(assert (= (and b!613241 c!69575) b!613249))

(assert (= (and b!613241 (not c!69575)) b!613236))

(assert (= (and b!613241 (not res!394827)) b!613243))

(assert (= (and b!613243 res!394826) b!613239))

(assert (= (and b!613243 (not res!394824)) b!613240))

(assert (= (and b!613240 (not res!394833)) b!613244))

(assert (= (and b!613244 (not res!394816)) b!613234))

(declare-fun m!589565 () Bool)

(assert (=> b!613251 m!589565))

(declare-fun m!589567 () Bool)

(assert (=> b!613251 m!589567))

(declare-fun m!589569 () Bool)

(assert (=> b!613251 m!589569))

(assert (=> b!613248 m!589565))

(assert (=> b!613248 m!589565))

(declare-fun m!589571 () Bool)

(assert (=> b!613248 m!589571))

(assert (=> b!613239 m!589565))

(assert (=> b!613239 m!589565))

(declare-fun m!589573 () Bool)

(assert (=> b!613239 m!589573))

(assert (=> b!613250 m!589565))

(assert (=> b!613250 m!589565))

(assert (=> b!613250 m!589573))

(declare-fun m!589575 () Bool)

(assert (=> b!613247 m!589575))

(assert (=> b!613247 m!589565))

(assert (=> b!613247 m!589565))

(declare-fun m!589577 () Bool)

(assert (=> b!613247 m!589577))

(declare-fun m!589579 () Bool)

(assert (=> b!613234 m!589579))

(declare-fun m!589581 () Bool)

(assert (=> b!613229 m!589581))

(declare-fun m!589583 () Bool)

(assert (=> b!613230 m!589583))

(declare-fun m!589585 () Bool)

(assert (=> b!613244 m!589585))

(assert (=> b!613245 m!589565))

(declare-fun m!589587 () Bool)

(assert (=> b!613249 m!589587))

(assert (=> b!613249 m!589565))

(assert (=> b!613249 m!589565))

(declare-fun m!589589 () Bool)

(assert (=> b!613249 m!589589))

(assert (=> b!613249 m!589565))

(declare-fun m!589591 () Bool)

(assert (=> b!613249 m!589591))

(declare-fun m!589593 () Bool)

(assert (=> b!613249 m!589593))

(declare-fun m!589595 () Bool)

(assert (=> b!613249 m!589595))

(assert (=> b!613249 m!589565))

(declare-fun m!589597 () Bool)

(assert (=> b!613249 m!589597))

(declare-fun m!589599 () Bool)

(assert (=> b!613249 m!589599))

(declare-fun m!589601 () Bool)

(assert (=> b!613232 m!589601))

(assert (=> b!613235 m!589565))

(assert (=> b!613235 m!589565))

(declare-fun m!589603 () Bool)

(assert (=> b!613235 m!589603))

(declare-fun m!589605 () Bool)

(assert (=> start!55958 m!589605))

(declare-fun m!589607 () Bool)

(assert (=> start!55958 m!589607))

(declare-fun m!589609 () Bool)

(assert (=> b!613253 m!589609))

(assert (=> b!613243 m!589593))

(assert (=> b!613243 m!589565))

(assert (=> b!613243 m!589571))

(declare-fun m!589611 () Bool)

(assert (=> b!613243 m!589611))

(assert (=> b!613243 m!589599))

(assert (=> b!613243 m!589565))

(declare-fun m!589613 () Bool)

(assert (=> b!613243 m!589613))

(assert (=> b!613243 m!589565))

(declare-fun m!589615 () Bool)

(assert (=> b!613243 m!589615))

(assert (=> b!613243 m!589565))

(declare-fun m!589617 () Bool)

(assert (=> b!613243 m!589617))

(declare-fun m!589619 () Bool)

(assert (=> b!613228 m!589619))

(declare-fun m!589621 () Bool)

(assert (=> b!613242 m!589621))

(declare-fun m!589623 () Bool)

(assert (=> b!613240 m!589623))

(declare-fun m!589625 () Bool)

(assert (=> b!613252 m!589625))

(declare-fun m!589627 () Bool)

(assert (=> b!613252 m!589627))

(declare-fun m!589629 () Bool)

(assert (=> b!613252 m!589629))

(assert (=> b!613252 m!589565))

(declare-fun m!589631 () Bool)

(assert (=> b!613252 m!589631))

(assert (=> b!613252 m!589567))

(declare-fun m!589633 () Bool)

(assert (=> b!613252 m!589633))

(assert (=> b!613252 m!589565))

(declare-fun m!589635 () Bool)

(assert (=> b!613252 m!589635))

(assert (=> b!613237 m!589567))

(declare-fun m!589637 () Bool)

(assert (=> b!613237 m!589637))

(check-sat (not b!613244) (not b!613243) (not b!613253) (not b!613228) (not b!613230) (not b!613232) (not b!613248) (not start!55958) (not b!613239) (not b!613234) (not b!613240) (not b!613249) (not b!613252) (not b!613247) (not b!613235) (not b!613250) (not b!613242))
(check-sat)
