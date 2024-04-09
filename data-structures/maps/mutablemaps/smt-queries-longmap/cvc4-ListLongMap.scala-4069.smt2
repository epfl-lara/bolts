; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55924 () Bool)

(assert start!55924)

(declare-fun b!611959 () Bool)

(declare-fun res!393756 () Bool)

(declare-fun e!350745 () Bool)

(assert (=> b!611959 (=> (not res!393756) (not e!350745))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611959 (= res!393756 (validKeyInArray!0 k!1786))))

(declare-fun b!611960 () Bool)

(declare-datatypes ((Unit!19636 0))(
  ( (Unit!19637) )
))
(declare-fun e!350749 () Unit!19636)

(declare-fun Unit!19638 () Unit!19636)

(assert (=> b!611960 (= e!350749 Unit!19638)))

(declare-fun b!611961 () Bool)

(declare-fun e!350758 () Bool)

(declare-fun e!350757 () Bool)

(assert (=> b!611961 (= e!350758 e!350757)))

(declare-fun res!393763 () Bool)

(assert (=> b!611961 (=> (not res!393763) (not e!350757))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6368 0))(
  ( (MissingZero!6368 (index!27755 (_ BitVec 32))) (Found!6368 (index!27756 (_ BitVec 32))) (Intermediate!6368 (undefined!7180 Bool) (index!27757 (_ BitVec 32)) (x!56593 (_ BitVec 32))) (Undefined!6368) (MissingVacant!6368 (index!27758 (_ BitVec 32))) )
))
(declare-fun lt!280182 () SeekEntryResult!6368)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37357 0))(
  ( (array!37358 (arr!17921 (Array (_ BitVec 32) (_ BitVec 64))) (size!18285 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37357)

(assert (=> b!611961 (= res!393763 (and (= lt!280182 (Found!6368 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17921 a!2986) index!984) (select (arr!17921 a!2986) j!136))) (not (= (select (arr!17921 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37357 (_ BitVec 32)) SeekEntryResult!6368)

(assert (=> b!611961 (= lt!280182 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17921 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611962 () Bool)

(declare-fun e!350752 () Bool)

(assert (=> b!611962 (= e!350752 e!350758)))

(declare-fun res!393750 () Bool)

(assert (=> b!611962 (=> (not res!393750) (not e!350758))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!611962 (= res!393750 (= (select (store (arr!17921 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!280183 () array!37357)

(assert (=> b!611962 (= lt!280183 (array!37358 (store (arr!17921 a!2986) i!1108 k!1786) (size!18285 a!2986)))))

(declare-fun b!611964 () Bool)

(declare-fun Unit!19639 () Unit!19636)

(assert (=> b!611964 (= e!350749 Unit!19639)))

(declare-fun lt!280189 () Unit!19636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37357 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19636)

(assert (=> b!611964 (= lt!280189 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280183 (select (arr!17921 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611964 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280178 () Unit!19636)

(declare-datatypes ((List!12015 0))(
  ( (Nil!12012) (Cons!12011 (h!13056 (_ BitVec 64)) (t!18251 List!12015)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37357 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12015) Unit!19636)

(assert (=> b!611964 (= lt!280178 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12012))))

(declare-fun arrayNoDuplicates!0 (array!37357 (_ BitVec 32) List!12015) Bool)

(assert (=> b!611964 (arrayNoDuplicates!0 lt!280183 #b00000000000000000000000000000000 Nil!12012)))

(declare-fun lt!280188 () Unit!19636)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37357 (_ BitVec 32) (_ BitVec 32)) Unit!19636)

(assert (=> b!611964 (= lt!280188 (lemmaNoDuplicateFromThenFromBigger!0 lt!280183 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611964 (arrayNoDuplicates!0 lt!280183 j!136 Nil!12012)))

(declare-fun lt!280184 () Unit!19636)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37357 (_ BitVec 64) (_ BitVec 32) List!12015) Unit!19636)

(assert (=> b!611964 (= lt!280184 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280183 (select (arr!17921 a!2986) j!136) j!136 Nil!12012))))

(assert (=> b!611964 false))

(declare-fun b!611965 () Bool)

(declare-fun res!393751 () Bool)

(assert (=> b!611965 (=> (not res!393751) (not e!350752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37357 (_ BitVec 32)) Bool)

(assert (=> b!611965 (= res!393751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611966 () Bool)

(declare-fun e!350748 () Bool)

(assert (=> b!611966 (= e!350748 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) index!984))))

(declare-fun b!611967 () Bool)

(declare-fun e!350751 () Bool)

(declare-fun lt!280176 () SeekEntryResult!6368)

(assert (=> b!611967 (= e!350751 (= lt!280182 lt!280176))))

(declare-fun b!611968 () Bool)

(declare-fun e!350756 () Bool)

(assert (=> b!611968 (= e!350757 (not e!350756))))

(declare-fun res!393766 () Bool)

(assert (=> b!611968 (=> res!393766 e!350756)))

(declare-fun lt!280190 () SeekEntryResult!6368)

(assert (=> b!611968 (= res!393766 (not (= lt!280190 (Found!6368 index!984))))))

(declare-fun lt!280186 () Unit!19636)

(declare-fun e!350744 () Unit!19636)

(assert (=> b!611968 (= lt!280186 e!350744)))

(declare-fun c!69472 () Bool)

(assert (=> b!611968 (= c!69472 (= lt!280190 Undefined!6368))))

(declare-fun lt!280187 () (_ BitVec 64))

(assert (=> b!611968 (= lt!280190 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280187 lt!280183 mask!3053))))

(assert (=> b!611968 e!350751))

(declare-fun res!393757 () Bool)

(assert (=> b!611968 (=> (not res!393757) (not e!350751))))

(declare-fun lt!280191 () (_ BitVec 32))

(assert (=> b!611968 (= res!393757 (= lt!280176 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280191 vacantSpotIndex!68 lt!280187 lt!280183 mask!3053)))))

(assert (=> b!611968 (= lt!280176 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280191 vacantSpotIndex!68 (select (arr!17921 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611968 (= lt!280187 (select (store (arr!17921 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280177 () Unit!19636)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37357 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19636)

(assert (=> b!611968 (= lt!280177 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280191 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611968 (= lt!280191 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611969 () Bool)

(declare-fun e!350747 () Bool)

(assert (=> b!611969 (= e!350747 e!350748)))

(declare-fun res!393753 () Bool)

(assert (=> b!611969 (=> (not res!393753) (not e!350748))))

(assert (=> b!611969 (= res!393753 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) j!136))))

(declare-fun b!611970 () Bool)

(declare-fun e!350750 () Bool)

(assert (=> b!611970 (= e!350756 e!350750)))

(declare-fun res!393761 () Bool)

(assert (=> b!611970 (=> res!393761 e!350750)))

(declare-fun lt!280185 () (_ BitVec 64))

(assert (=> b!611970 (= res!393761 (or (not (= (select (arr!17921 a!2986) j!136) lt!280187)) (not (= (select (arr!17921 a!2986) j!136) lt!280185))))))

(declare-fun e!350753 () Bool)

(assert (=> b!611970 e!350753))

(declare-fun res!393752 () Bool)

(assert (=> b!611970 (=> (not res!393752) (not e!350753))))

(assert (=> b!611970 (= res!393752 (= lt!280185 (select (arr!17921 a!2986) j!136)))))

(assert (=> b!611970 (= lt!280185 (select (store (arr!17921 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611971 () Bool)

(declare-fun e!350754 () Bool)

(assert (=> b!611971 (= e!350750 e!350754)))

(declare-fun res!393749 () Bool)

(assert (=> b!611971 (=> res!393749 e!350754)))

(assert (=> b!611971 (= res!393749 (bvsge index!984 j!136))))

(declare-fun lt!280180 () Unit!19636)

(assert (=> b!611971 (= lt!280180 e!350749)))

(declare-fun c!69473 () Bool)

(assert (=> b!611971 (= c!69473 (bvslt j!136 index!984))))

(declare-fun b!611972 () Bool)

(assert (=> b!611972 (= e!350745 e!350752)))

(declare-fun res!393765 () Bool)

(assert (=> b!611972 (=> (not res!393765) (not e!350752))))

(declare-fun lt!280181 () SeekEntryResult!6368)

(assert (=> b!611972 (= res!393765 (or (= lt!280181 (MissingZero!6368 i!1108)) (= lt!280181 (MissingVacant!6368 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37357 (_ BitVec 32)) SeekEntryResult!6368)

(assert (=> b!611972 (= lt!280181 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611973 () Bool)

(declare-fun res!393767 () Bool)

(assert (=> b!611973 (=> (not res!393767) (not e!350745))))

(assert (=> b!611973 (= res!393767 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611974 () Bool)

(declare-fun e!350746 () Bool)

(assert (=> b!611974 (= e!350746 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) index!984))))

(declare-fun b!611975 () Bool)

(declare-fun res!393764 () Bool)

(assert (=> b!611975 (=> (not res!393764) (not e!350745))))

(assert (=> b!611975 (= res!393764 (validKeyInArray!0 (select (arr!17921 a!2986) j!136)))))

(declare-fun b!611976 () Bool)

(assert (=> b!611976 (= e!350754 true)))

(assert (=> b!611976 (arrayNoDuplicates!0 lt!280183 #b00000000000000000000000000000000 Nil!12012)))

(declare-fun lt!280175 () Unit!19636)

(assert (=> b!611976 (= lt!280175 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12012))))

(assert (=> b!611976 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280179 () Unit!19636)

(assert (=> b!611976 (= lt!280179 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280183 (select (arr!17921 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!611976 e!350746))

(declare-fun res!393755 () Bool)

(assert (=> b!611976 (=> (not res!393755) (not e!350746))))

(assert (=> b!611976 (= res!393755 (arrayContainsKey!0 lt!280183 (select (arr!17921 a!2986) j!136) j!136))))

(declare-fun res!393762 () Bool)

(assert (=> start!55924 (=> (not res!393762) (not e!350745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55924 (= res!393762 (validMask!0 mask!3053))))

(assert (=> start!55924 e!350745))

(assert (=> start!55924 true))

(declare-fun array_inv!13695 (array!37357) Bool)

(assert (=> start!55924 (array_inv!13695 a!2986)))

(declare-fun b!611963 () Bool)

(declare-fun Unit!19640 () Unit!19636)

(assert (=> b!611963 (= e!350744 Unit!19640)))

(assert (=> b!611963 false))

(declare-fun b!611977 () Bool)

(assert (=> b!611977 (= e!350753 e!350747)))

(declare-fun res!393760 () Bool)

(assert (=> b!611977 (=> res!393760 e!350747)))

(assert (=> b!611977 (= res!393760 (or (not (= (select (arr!17921 a!2986) j!136) lt!280187)) (not (= (select (arr!17921 a!2986) j!136) lt!280185)) (bvsge j!136 index!984)))))

(declare-fun b!611978 () Bool)

(declare-fun res!393758 () Bool)

(assert (=> b!611978 (=> (not res!393758) (not e!350745))))

(assert (=> b!611978 (= res!393758 (and (= (size!18285 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18285 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18285 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611979 () Bool)

(declare-fun res!393754 () Bool)

(assert (=> b!611979 (=> (not res!393754) (not e!350752))))

(assert (=> b!611979 (= res!393754 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17921 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611980 () Bool)

(declare-fun res!393759 () Bool)

(assert (=> b!611980 (=> (not res!393759) (not e!350752))))

(assert (=> b!611980 (= res!393759 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12012))))

(declare-fun b!611981 () Bool)

(declare-fun Unit!19641 () Unit!19636)

(assert (=> b!611981 (= e!350744 Unit!19641)))

(assert (= (and start!55924 res!393762) b!611978))

(assert (= (and b!611978 res!393758) b!611975))

(assert (= (and b!611975 res!393764) b!611959))

(assert (= (and b!611959 res!393756) b!611973))

(assert (= (and b!611973 res!393767) b!611972))

(assert (= (and b!611972 res!393765) b!611965))

(assert (= (and b!611965 res!393751) b!611980))

(assert (= (and b!611980 res!393759) b!611979))

(assert (= (and b!611979 res!393754) b!611962))

(assert (= (and b!611962 res!393750) b!611961))

(assert (= (and b!611961 res!393763) b!611968))

(assert (= (and b!611968 res!393757) b!611967))

(assert (= (and b!611968 c!69472) b!611963))

(assert (= (and b!611968 (not c!69472)) b!611981))

(assert (= (and b!611968 (not res!393766)) b!611970))

(assert (= (and b!611970 res!393752) b!611977))

(assert (= (and b!611977 (not res!393760)) b!611969))

(assert (= (and b!611969 res!393753) b!611966))

(assert (= (and b!611970 (not res!393761)) b!611971))

(assert (= (and b!611971 c!69473) b!611964))

(assert (= (and b!611971 (not c!69473)) b!611960))

(assert (= (and b!611971 (not res!393749)) b!611976))

(assert (= (and b!611976 res!393755) b!611974))

(declare-fun m!588377 () Bool)

(assert (=> b!611975 m!588377))

(assert (=> b!611975 m!588377))

(declare-fun m!588379 () Bool)

(assert (=> b!611975 m!588379))

(declare-fun m!588381 () Bool)

(assert (=> b!611961 m!588381))

(assert (=> b!611961 m!588377))

(assert (=> b!611961 m!588377))

(declare-fun m!588383 () Bool)

(assert (=> b!611961 m!588383))

(assert (=> b!611964 m!588377))

(declare-fun m!588385 () Bool)

(assert (=> b!611964 m!588385))

(assert (=> b!611964 m!588377))

(declare-fun m!588387 () Bool)

(assert (=> b!611964 m!588387))

(assert (=> b!611964 m!588377))

(declare-fun m!588389 () Bool)

(assert (=> b!611964 m!588389))

(declare-fun m!588391 () Bool)

(assert (=> b!611964 m!588391))

(declare-fun m!588393 () Bool)

(assert (=> b!611964 m!588393))

(assert (=> b!611964 m!588377))

(declare-fun m!588395 () Bool)

(assert (=> b!611964 m!588395))

(declare-fun m!588397 () Bool)

(assert (=> b!611964 m!588397))

(assert (=> b!611966 m!588377))

(assert (=> b!611966 m!588377))

(declare-fun m!588399 () Bool)

(assert (=> b!611966 m!588399))

(declare-fun m!588401 () Bool)

(assert (=> start!55924 m!588401))

(declare-fun m!588403 () Bool)

(assert (=> start!55924 m!588403))

(declare-fun m!588405 () Bool)

(assert (=> b!611973 m!588405))

(assert (=> b!611977 m!588377))

(declare-fun m!588407 () Bool)

(assert (=> b!611972 m!588407))

(declare-fun m!588409 () Bool)

(assert (=> b!611965 m!588409))

(declare-fun m!588411 () Bool)

(assert (=> b!611968 m!588411))

(declare-fun m!588413 () Bool)

(assert (=> b!611968 m!588413))

(assert (=> b!611968 m!588377))

(declare-fun m!588415 () Bool)

(assert (=> b!611968 m!588415))

(declare-fun m!588417 () Bool)

(assert (=> b!611968 m!588417))

(declare-fun m!588419 () Bool)

(assert (=> b!611968 m!588419))

(declare-fun m!588421 () Bool)

(assert (=> b!611968 m!588421))

(assert (=> b!611968 m!588377))

(declare-fun m!588423 () Bool)

(assert (=> b!611968 m!588423))

(assert (=> b!611974 m!588377))

(assert (=> b!611974 m!588377))

(assert (=> b!611974 m!588399))

(declare-fun m!588425 () Bool)

(assert (=> b!611959 m!588425))

(declare-fun m!588427 () Bool)

(assert (=> b!611980 m!588427))

(assert (=> b!611969 m!588377))

(assert (=> b!611969 m!588377))

(declare-fun m!588429 () Bool)

(assert (=> b!611969 m!588429))

(assert (=> b!611962 m!588421))

(declare-fun m!588431 () Bool)

(assert (=> b!611962 m!588431))

(assert (=> b!611970 m!588377))

(assert (=> b!611970 m!588421))

(declare-fun m!588433 () Bool)

(assert (=> b!611970 m!588433))

(assert (=> b!611976 m!588377))

(assert (=> b!611976 m!588429))

(assert (=> b!611976 m!588377))

(assert (=> b!611976 m!588391))

(assert (=> b!611976 m!588377))

(declare-fun m!588435 () Bool)

(assert (=> b!611976 m!588435))

(assert (=> b!611976 m!588377))

(declare-fun m!588437 () Bool)

(assert (=> b!611976 m!588437))

(assert (=> b!611976 m!588397))

(declare-fun m!588439 () Bool)

(assert (=> b!611979 m!588439))

(push 1)

