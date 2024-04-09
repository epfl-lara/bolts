; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55030 () Bool)

(assert start!55030)

(declare-fun b!602297 () Bool)

(declare-fun e!344472 () Bool)

(declare-fun e!344478 () Bool)

(assert (=> b!602297 (= e!344472 e!344478)))

(declare-fun res!386897 () Bool)

(assert (=> b!602297 (=> (not res!386897) (not e!344478))))

(declare-datatypes ((SeekEntryResult!6275 0))(
  ( (MissingZero!6275 (index!27359 (_ BitVec 32))) (Found!6275 (index!27360 (_ BitVec 32))) (Intermediate!6275 (undefined!7087 Bool) (index!27361 (_ BitVec 32)) (x!56180 (_ BitVec 32))) (Undefined!6275) (MissingVacant!6275 (index!27362 (_ BitVec 32))) )
))
(declare-fun lt!274417 () SeekEntryResult!6275)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602297 (= res!386897 (or (= lt!274417 (MissingZero!6275 i!1108)) (= lt!274417 (MissingVacant!6275 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37147 0))(
  ( (array!37148 (arr!17828 (Array (_ BitVec 32) (_ BitVec 64))) (size!18192 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37147)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37147 (_ BitVec 32)) SeekEntryResult!6275)

(assert (=> b!602297 (= lt!274417 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!602298 () Bool)

(declare-fun e!344469 () Bool)

(declare-fun e!344477 () Bool)

(assert (=> b!602298 (= e!344469 e!344477)))

(declare-fun res!386893 () Bool)

(assert (=> b!602298 (=> res!386893 e!344477)))

(declare-fun lt!274412 () (_ BitVec 64))

(declare-fun lt!274420 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602298 (= res!386893 (or (not (= (select (arr!17828 a!2986) j!136) lt!274420)) (not (= (select (arr!17828 a!2986) j!136) lt!274412)) (bvsge j!136 index!984)))))

(declare-fun b!602299 () Bool)

(declare-fun e!344471 () Bool)

(assert (=> b!602299 (= e!344471 (or (bvsge index!984 (size!18192 a!2986)) (bvslt (size!18192 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!274409 () array!37147)

(declare-fun arrayContainsKey!0 (array!37147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602299 (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) j!136)))

(declare-fun b!602300 () Bool)

(declare-fun e!344482 () Bool)

(declare-fun e!344479 () Bool)

(assert (=> b!602300 (= e!344482 (not e!344479))))

(declare-fun res!386899 () Bool)

(assert (=> b!602300 (=> res!386899 e!344479)))

(declare-fun lt!274414 () SeekEntryResult!6275)

(assert (=> b!602300 (= res!386899 (not (= lt!274414 (Found!6275 index!984))))))

(declare-datatypes ((Unit!19078 0))(
  ( (Unit!19079) )
))
(declare-fun lt!274410 () Unit!19078)

(declare-fun e!344480 () Unit!19078)

(assert (=> b!602300 (= lt!274410 e!344480)))

(declare-fun c!68074 () Bool)

(assert (=> b!602300 (= c!68074 (= lt!274414 Undefined!6275))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37147 (_ BitVec 32)) SeekEntryResult!6275)

(assert (=> b!602300 (= lt!274414 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274420 lt!274409 mask!3053))))

(declare-fun e!344475 () Bool)

(assert (=> b!602300 e!344475))

(declare-fun res!386892 () Bool)

(assert (=> b!602300 (=> (not res!386892) (not e!344475))))

(declare-fun lt!274421 () (_ BitVec 32))

(declare-fun lt!274408 () SeekEntryResult!6275)

(assert (=> b!602300 (= res!386892 (= lt!274408 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274421 vacantSpotIndex!68 lt!274420 lt!274409 mask!3053)))))

(assert (=> b!602300 (= lt!274408 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274421 vacantSpotIndex!68 (select (arr!17828 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602300 (= lt!274420 (select (store (arr!17828 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274411 () Unit!19078)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37147 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19078)

(assert (=> b!602300 (= lt!274411 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274421 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602300 (= lt!274421 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602301 () Bool)

(declare-fun res!386895 () Bool)

(assert (=> b!602301 (=> (not res!386895) (not e!344478))))

(declare-datatypes ((List!11922 0))(
  ( (Nil!11919) (Cons!11918 (h!12963 (_ BitVec 64)) (t!18158 List!11922)) )
))
(declare-fun arrayNoDuplicates!0 (array!37147 (_ BitVec 32) List!11922) Bool)

(assert (=> b!602301 (= res!386895 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11919))))

(declare-fun b!602302 () Bool)

(declare-fun res!386885 () Bool)

(assert (=> b!602302 (=> (not res!386885) (not e!344478))))

(assert (=> b!602302 (= res!386885 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17828 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602303 () Bool)

(declare-fun res!386889 () Bool)

(assert (=> b!602303 (=> (not res!386889) (not e!344472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602303 (= res!386889 (validKeyInArray!0 (select (arr!17828 a!2986) j!136)))))

(declare-fun b!602304 () Bool)

(declare-fun res!386900 () Bool)

(assert (=> b!602304 (=> (not res!386900) (not e!344472))))

(assert (=> b!602304 (= res!386900 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602306 () Bool)

(declare-fun e!344470 () Bool)

(assert (=> b!602306 (= e!344479 e!344470)))

(declare-fun res!386891 () Bool)

(assert (=> b!602306 (=> res!386891 e!344470)))

(assert (=> b!602306 (= res!386891 (or (not (= (select (arr!17828 a!2986) j!136) lt!274420)) (not (= (select (arr!17828 a!2986) j!136) lt!274412))))))

(assert (=> b!602306 e!344469))

(declare-fun res!386890 () Bool)

(assert (=> b!602306 (=> (not res!386890) (not e!344469))))

(assert (=> b!602306 (= res!386890 (= lt!274412 (select (arr!17828 a!2986) j!136)))))

(assert (=> b!602306 (= lt!274412 (select (store (arr!17828 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!602307 () Bool)

(declare-fun Unit!19080 () Unit!19078)

(assert (=> b!602307 (= e!344480 Unit!19080)))

(declare-fun b!602308 () Bool)

(assert (=> b!602308 (= e!344470 e!344471)))

(declare-fun res!386884 () Bool)

(assert (=> b!602308 (=> res!386884 e!344471)))

(assert (=> b!602308 (= res!386884 (bvsge index!984 j!136))))

(declare-fun lt!274418 () Unit!19078)

(declare-fun e!344473 () Unit!19078)

(assert (=> b!602308 (= lt!274418 e!344473)))

(declare-fun c!68075 () Bool)

(assert (=> b!602308 (= c!68075 (bvslt j!136 index!984))))

(declare-fun b!602309 () Bool)

(declare-fun e!344476 () Bool)

(assert (=> b!602309 (= e!344477 e!344476)))

(declare-fun res!386887 () Bool)

(assert (=> b!602309 (=> (not res!386887) (not e!344476))))

(assert (=> b!602309 (= res!386887 (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) j!136))))

(declare-fun b!602310 () Bool)

(declare-fun res!386886 () Bool)

(assert (=> b!602310 (=> (not res!386886) (not e!344472))))

(assert (=> b!602310 (= res!386886 (validKeyInArray!0 k!1786))))

(declare-fun b!602311 () Bool)

(declare-fun Unit!19081 () Unit!19078)

(assert (=> b!602311 (= e!344473 Unit!19081)))

(declare-fun b!602312 () Bool)

(declare-fun Unit!19082 () Unit!19078)

(assert (=> b!602312 (= e!344480 Unit!19082)))

(assert (=> b!602312 false))

(declare-fun b!602313 () Bool)

(declare-fun e!344481 () Bool)

(assert (=> b!602313 (= e!344481 e!344482)))

(declare-fun res!386894 () Bool)

(assert (=> b!602313 (=> (not res!386894) (not e!344482))))

(declare-fun lt!274413 () SeekEntryResult!6275)

(assert (=> b!602313 (= res!386894 (and (= lt!274413 (Found!6275 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17828 a!2986) index!984) (select (arr!17828 a!2986) j!136))) (not (= (select (arr!17828 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!602313 (= lt!274413 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17828 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602314 () Bool)

(declare-fun Unit!19083 () Unit!19078)

(assert (=> b!602314 (= e!344473 Unit!19083)))

(declare-fun lt!274419 () Unit!19078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37147 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19078)

(assert (=> b!602314 (= lt!274419 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274409 (select (arr!17828 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602314 (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274416 () Unit!19078)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37147 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11922) Unit!19078)

(assert (=> b!602314 (= lt!274416 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11919))))

(assert (=> b!602314 (arrayNoDuplicates!0 lt!274409 #b00000000000000000000000000000000 Nil!11919)))

(declare-fun lt!274415 () Unit!19078)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37147 (_ BitVec 32) (_ BitVec 32)) Unit!19078)

(assert (=> b!602314 (= lt!274415 (lemmaNoDuplicateFromThenFromBigger!0 lt!274409 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602314 (arrayNoDuplicates!0 lt!274409 j!136 Nil!11919)))

(declare-fun lt!274422 () Unit!19078)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37147 (_ BitVec 64) (_ BitVec 32) List!11922) Unit!19078)

(assert (=> b!602314 (= lt!274422 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274409 (select (arr!17828 a!2986) j!136) j!136 Nil!11919))))

(assert (=> b!602314 false))

(declare-fun b!602315 () Bool)

(assert (=> b!602315 (= e!344475 (= lt!274413 lt!274408))))

(declare-fun b!602316 () Bool)

(declare-fun res!386883 () Bool)

(assert (=> b!602316 (=> (not res!386883) (not e!344472))))

(assert (=> b!602316 (= res!386883 (and (= (size!18192 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18192 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18192 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602317 () Bool)

(declare-fun res!386896 () Bool)

(assert (=> b!602317 (=> (not res!386896) (not e!344478))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37147 (_ BitVec 32)) Bool)

(assert (=> b!602317 (= res!386896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602318 () Bool)

(assert (=> b!602318 (= e!344478 e!344481)))

(declare-fun res!386898 () Bool)

(assert (=> b!602318 (=> (not res!386898) (not e!344481))))

(assert (=> b!602318 (= res!386898 (= (select (store (arr!17828 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602318 (= lt!274409 (array!37148 (store (arr!17828 a!2986) i!1108 k!1786) (size!18192 a!2986)))))

(declare-fun b!602305 () Bool)

(assert (=> b!602305 (= e!344476 (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) index!984))))

(declare-fun res!386888 () Bool)

(assert (=> start!55030 (=> (not res!386888) (not e!344472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55030 (= res!386888 (validMask!0 mask!3053))))

(assert (=> start!55030 e!344472))

(assert (=> start!55030 true))

(declare-fun array_inv!13602 (array!37147) Bool)

(assert (=> start!55030 (array_inv!13602 a!2986)))

(assert (= (and start!55030 res!386888) b!602316))

(assert (= (and b!602316 res!386883) b!602303))

(assert (= (and b!602303 res!386889) b!602310))

(assert (= (and b!602310 res!386886) b!602304))

(assert (= (and b!602304 res!386900) b!602297))

(assert (= (and b!602297 res!386897) b!602317))

(assert (= (and b!602317 res!386896) b!602301))

(assert (= (and b!602301 res!386895) b!602302))

(assert (= (and b!602302 res!386885) b!602318))

(assert (= (and b!602318 res!386898) b!602313))

(assert (= (and b!602313 res!386894) b!602300))

(assert (= (and b!602300 res!386892) b!602315))

(assert (= (and b!602300 c!68074) b!602312))

(assert (= (and b!602300 (not c!68074)) b!602307))

(assert (= (and b!602300 (not res!386899)) b!602306))

(assert (= (and b!602306 res!386890) b!602298))

(assert (= (and b!602298 (not res!386893)) b!602309))

(assert (= (and b!602309 res!386887) b!602305))

(assert (= (and b!602306 (not res!386891)) b!602308))

(assert (= (and b!602308 c!68075) b!602314))

(assert (= (and b!602308 (not c!68075)) b!602311))

(assert (= (and b!602308 (not res!386884)) b!602299))

(declare-fun m!579459 () Bool)

(assert (=> b!602309 m!579459))

(assert (=> b!602309 m!579459))

(declare-fun m!579461 () Bool)

(assert (=> b!602309 m!579461))

(declare-fun m!579463 () Bool)

(assert (=> b!602300 m!579463))

(declare-fun m!579465 () Bool)

(assert (=> b!602300 m!579465))

(assert (=> b!602300 m!579459))

(declare-fun m!579467 () Bool)

(assert (=> b!602300 m!579467))

(declare-fun m!579469 () Bool)

(assert (=> b!602300 m!579469))

(assert (=> b!602300 m!579459))

(declare-fun m!579471 () Bool)

(assert (=> b!602300 m!579471))

(declare-fun m!579473 () Bool)

(assert (=> b!602300 m!579473))

(declare-fun m!579475 () Bool)

(assert (=> b!602300 m!579475))

(declare-fun m!579477 () Bool)

(assert (=> start!55030 m!579477))

(declare-fun m!579479 () Bool)

(assert (=> start!55030 m!579479))

(declare-fun m!579481 () Bool)

(assert (=> b!602297 m!579481))

(assert (=> b!602318 m!579469))

(declare-fun m!579483 () Bool)

(assert (=> b!602318 m!579483))

(assert (=> b!602298 m!579459))

(assert (=> b!602299 m!579459))

(assert (=> b!602299 m!579459))

(assert (=> b!602299 m!579461))

(assert (=> b!602303 m!579459))

(assert (=> b!602303 m!579459))

(declare-fun m!579485 () Bool)

(assert (=> b!602303 m!579485))

(assert (=> b!602306 m!579459))

(assert (=> b!602306 m!579469))

(declare-fun m!579487 () Bool)

(assert (=> b!602306 m!579487))

(declare-fun m!579489 () Bool)

(assert (=> b!602301 m!579489))

(declare-fun m!579491 () Bool)

(assert (=> b!602314 m!579491))

(assert (=> b!602314 m!579459))

(assert (=> b!602314 m!579459))

(declare-fun m!579493 () Bool)

(assert (=> b!602314 m!579493))

(declare-fun m!579495 () Bool)

(assert (=> b!602314 m!579495))

(declare-fun m!579497 () Bool)

(assert (=> b!602314 m!579497))

(declare-fun m!579499 () Bool)

(assert (=> b!602314 m!579499))

(assert (=> b!602314 m!579459))

(declare-fun m!579501 () Bool)

(assert (=> b!602314 m!579501))

(assert (=> b!602314 m!579459))

(declare-fun m!579503 () Bool)

(assert (=> b!602314 m!579503))

(declare-fun m!579505 () Bool)

(assert (=> b!602310 m!579505))

(assert (=> b!602305 m!579459))

(assert (=> b!602305 m!579459))

(declare-fun m!579507 () Bool)

(assert (=> b!602305 m!579507))

(declare-fun m!579509 () Bool)

(assert (=> b!602317 m!579509))

(declare-fun m!579511 () Bool)

(assert (=> b!602313 m!579511))

(assert (=> b!602313 m!579459))

(assert (=> b!602313 m!579459))

(declare-fun m!579513 () Bool)

(assert (=> b!602313 m!579513))

(declare-fun m!579515 () Bool)

(assert (=> b!602302 m!579515))

(declare-fun m!579517 () Bool)

(assert (=> b!602304 m!579517))

(push 1)

(assert (not b!602300))

(assert (not b!602305))

(assert (not b!602314))

(assert (not b!602313))

(assert (not b!602303))

(assert (not b!602297))

(assert (not b!602304))

(assert (not start!55030))

(assert (not b!602317))

(assert (not b!602299))

(assert (not b!602310))

(assert (not b!602301))

(assert (not b!602309))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!602457 () Bool)

(declare-fun e!344574 () SeekEntryResult!6275)

(assert (=> b!602457 (= e!344574 (MissingVacant!6275 vacantSpotIndex!68))))

(declare-fun b!602458 () Bool)

(declare-fun c!68125 () Bool)

(declare-fun lt!274476 () (_ BitVec 64))

(assert (=> b!602458 (= c!68125 (= lt!274476 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!344575 () SeekEntryResult!6275)

(assert (=> b!602458 (= e!344575 e!344574)))

(declare-fun b!602459 () Bool)

(declare-fun e!344573 () SeekEntryResult!6275)

(assert (=> b!602459 (= e!344573 e!344575)))

(declare-fun c!68126 () Bool)

(assert (=> b!602459 (= c!68126 (= lt!274476 (select (arr!17828 a!2986) j!136)))))

(declare-fun b!602460 () Bool)

(assert (=> b!602460 (= e!344575 (Found!6275 index!984))))

(declare-fun b!602461 () Bool)

(assert (=> b!602461 (= e!344574 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17828 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!87179 () Bool)

(declare-fun lt!274477 () SeekEntryResult!6275)

(assert (=> d!87179 (and (or (is-Undefined!6275 lt!274477) (not (is-Found!6275 lt!274477)) (and (bvsge (index!27360 lt!274477) #b00000000000000000000000000000000) (bvslt (index!27360 lt!274477) (size!18192 a!2986)))) (or (is-Undefined!6275 lt!274477) (is-Found!6275 lt!274477) (not (is-MissingVacant!6275 lt!274477)) (not (= (index!27362 lt!274477) vacantSpotIndex!68)) (and (bvsge (index!27362 lt!274477) #b00000000000000000000000000000000) (bvslt (index!27362 lt!274477) (size!18192 a!2986)))) (or (is-Undefined!6275 lt!274477) (ite (is-Found!6275 lt!274477) (= (select (arr!17828 a!2986) (index!27360 lt!274477)) (select (arr!17828 a!2986) j!136)) (and (is-MissingVacant!6275 lt!274477) (= (index!27362 lt!274477) vacantSpotIndex!68) (= (select (arr!17828 a!2986) (index!27362 lt!274477)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87179 (= lt!274477 e!344573)))

(declare-fun c!68124 () Bool)

(assert (=> d!87179 (= c!68124 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87179 (= lt!274476 (select (arr!17828 a!2986) index!984))))

(assert (=> d!87179 (validMask!0 mask!3053)))

(assert (=> d!87179 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17828 a!2986) j!136) a!2986 mask!3053) lt!274477)))

(declare-fun b!602462 () Bool)

(assert (=> b!602462 (= e!344573 Undefined!6275)))

(assert (= (and d!87179 c!68124) b!602462))

(assert (= (and d!87179 (not c!68124)) b!602459))

(assert (= (and b!602459 c!68126) b!602460))

(assert (= (and b!602459 (not c!68126)) b!602458))

(assert (= (and b!602458 c!68125) b!602457))

(assert (= (and b!602458 (not c!68125)) b!602461))

(assert (=> b!602461 m!579463))

(assert (=> b!602461 m!579463))

(assert (=> b!602461 m!579459))

(declare-fun m!579613 () Bool)

(assert (=> b!602461 m!579613))

(declare-fun m!579615 () Bool)

(assert (=> d!87179 m!579615))

(declare-fun m!579617 () Bool)

(assert (=> d!87179 m!579617))

(assert (=> d!87179 m!579511))

(assert (=> d!87179 m!579477))

(assert (=> b!602313 d!87179))

(declare-fun d!87189 () Bool)

(assert (=> d!87189 (= (validKeyInArray!0 (select (arr!17828 a!2986) j!136)) (and (not (= (select (arr!17828 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17828 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!602303 d!87189))

(declare-fun b!602492 () Bool)

(declare-fun e!344600 () Bool)

(declare-fun call!32999 () Bool)

(assert (=> b!602492 (= e!344600 call!32999)))

(declare-fun b!602493 () Bool)

(declare-fun e!344602 () Bool)

(declare-fun e!344603 () Bool)

(assert (=> b!602493 (= e!344602 e!344603)))

(declare-fun res!386963 () Bool)

(assert (=> b!602493 (=> (not res!386963) (not e!344603))))

(declare-fun e!344601 () Bool)

(assert (=> b!602493 (= res!386963 (not e!344601))))

(declare-fun res!386964 () Bool)

(assert (=> b!602493 (=> (not res!386964) (not e!344601))))

(assert (=> b!602493 (= res!386964 (validKeyInArray!0 (select (arr!17828 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!602494 () Bool)

(declare-fun contains!2995 (List!11922 (_ BitVec 64)) Bool)

(assert (=> b!602494 (= e!344601 (contains!2995 Nil!11919 (select (arr!17828 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32996 () Bool)

(declare-fun c!68132 () Bool)

(assert (=> bm!32996 (= call!32999 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68132 (Cons!11918 (select (arr!17828 a!2986) #b00000000000000000000000000000000) Nil!11919) Nil!11919)))))

(declare-fun d!87191 () Bool)

(declare-fun res!386962 () Bool)

(assert (=> d!87191 (=> res!386962 e!344602)))

(assert (=> d!87191 (= res!386962 (bvsge #b00000000000000000000000000000000 (size!18192 a!2986)))))

(assert (=> d!87191 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11919) e!344602)))

(declare-fun b!602495 () Bool)

(assert (=> b!602495 (= e!344600 call!32999)))

(declare-fun b!602496 () Bool)

(assert (=> b!602496 (= e!344603 e!344600)))

(assert (=> b!602496 (= c!68132 (validKeyInArray!0 (select (arr!17828 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87191 (not res!386962)) b!602493))

(assert (= (and b!602493 res!386964) b!602494))

(assert (= (and b!602493 res!386963) b!602496))

(assert (= (and b!602496 c!68132) b!602495))

(assert (= (and b!602496 (not c!68132)) b!602492))

(assert (= (or b!602495 b!602492) bm!32996))

(declare-fun m!579637 () Bool)

(assert (=> b!602493 m!579637))

(assert (=> b!602493 m!579637))

(declare-fun m!579639 () Bool)

(assert (=> b!602493 m!579639))

(assert (=> b!602494 m!579637))

(assert (=> b!602494 m!579637))

(declare-fun m!579641 () Bool)

(assert (=> b!602494 m!579641))

(assert (=> bm!32996 m!579637))

(declare-fun m!579645 () Bool)

(assert (=> bm!32996 m!579645))

(assert (=> b!602496 m!579637))

(assert (=> b!602496 m!579637))

(assert (=> b!602496 m!579639))

(assert (=> b!602301 d!87191))

(declare-fun d!87205 () Bool)

(declare-fun res!386975 () Bool)

(declare-fun e!344616 () Bool)

(assert (=> d!87205 (=> res!386975 e!344616)))

(assert (=> d!87205 (= res!386975 (= (select (arr!17828 lt!274409) index!984) (select (arr!17828 a!2986) j!136)))))

(assert (=> d!87205 (= (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) index!984) e!344616)))

(declare-fun b!602511 () Bool)

(declare-fun e!344617 () Bool)

(assert (=> b!602511 (= e!344616 e!344617)))

(declare-fun res!386976 () Bool)

(assert (=> b!602511 (=> (not res!386976) (not e!344617))))

(assert (=> b!602511 (= res!386976 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18192 lt!274409)))))

(declare-fun b!602512 () Bool)

(assert (=> b!602512 (= e!344617 (arrayContainsKey!0 lt!274409 (select (arr!17828 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87205 (not res!386975)) b!602511))

(assert (= (and b!602511 res!386976) b!602512))

(declare-fun m!579663 () Bool)

(assert (=> d!87205 m!579663))

(assert (=> b!602512 m!579459))

(declare-fun m!579665 () Bool)

(assert (=> b!602512 m!579665))

(assert (=> b!602305 d!87205))

(declare-fun d!87213 () Bool)

(assert (=> d!87213 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18192 lt!274409)) (not (= (select (arr!17828 lt!274409) j!136) (select (arr!17828 a!2986) j!136))))))

(declare-fun lt!274497 () Unit!19078)

(declare-fun choose!21 (array!37147 (_ BitVec 64) (_ BitVec 32) List!11922) Unit!19078)

(assert (=> d!87213 (= lt!274497 (choose!21 lt!274409 (select (arr!17828 a!2986) j!136) j!136 Nil!11919))))

(assert (=> d!87213 (bvslt (size!18192 lt!274409) #b01111111111111111111111111111111)))

(assert (=> d!87213 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274409 (select (arr!17828 a!2986) j!136) j!136 Nil!11919) lt!274497)))

(declare-fun bs!18461 () Bool)

(assert (= bs!18461 d!87213))

(declare-fun m!579669 () Bool)

(assert (=> bs!18461 m!579669))

(assert (=> bs!18461 m!579459))

(declare-fun m!579671 () Bool)

(assert (=> bs!18461 m!579671))

(assert (=> b!602314 d!87213))

(declare-fun b!602516 () Bool)

(declare-fun e!344621 () Bool)

(declare-fun call!33002 () Bool)

(assert (=> b!602516 (= e!344621 call!33002)))

(declare-fun b!602517 () Bool)

(declare-fun e!344623 () Bool)

(declare-fun e!344624 () Bool)

(assert (=> b!602517 (= e!344623 e!344624)))

(declare-fun res!386981 () Bool)

(assert (=> b!602517 (=> (not res!386981) (not e!344624))))

(declare-fun e!344622 () Bool)

(assert (=> b!602517 (= res!386981 (not e!344622))))

(declare-fun res!386982 () Bool)

(assert (=> b!602517 (=> (not res!386982) (not e!344622))))

(assert (=> b!602517 (= res!386982 (validKeyInArray!0 (select (arr!17828 lt!274409) j!136)))))

(declare-fun b!602518 () Bool)

(assert (=> b!602518 (= e!344622 (contains!2995 Nil!11919 (select (arr!17828 lt!274409) j!136)))))

(declare-fun c!68135 () Bool)

(declare-fun bm!32999 () Bool)

(assert (=> bm!32999 (= call!33002 (arrayNoDuplicates!0 lt!274409 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68135 (Cons!11918 (select (arr!17828 lt!274409) j!136) Nil!11919) Nil!11919)))))

(declare-fun d!87217 () Bool)

(declare-fun res!386980 () Bool)

(assert (=> d!87217 (=> res!386980 e!344623)))

(assert (=> d!87217 (= res!386980 (bvsge j!136 (size!18192 lt!274409)))))

(assert (=> d!87217 (= (arrayNoDuplicates!0 lt!274409 j!136 Nil!11919) e!344623)))

(declare-fun b!602519 () Bool)

(assert (=> b!602519 (= e!344621 call!33002)))

(declare-fun b!602520 () Bool)

(assert (=> b!602520 (= e!344624 e!344621)))

(assert (=> b!602520 (= c!68135 (validKeyInArray!0 (select (arr!17828 lt!274409) j!136)))))

(assert (= (and d!87217 (not res!386980)) b!602517))

(assert (= (and b!602517 res!386982) b!602518))

(assert (= (and b!602517 res!386981) b!602520))

(assert (= (and b!602520 c!68135) b!602519))

(assert (= (and b!602520 (not c!68135)) b!602516))

(assert (= (or b!602519 b!602516) bm!32999))

(assert (=> b!602517 m!579669))

(assert (=> b!602517 m!579669))

(declare-fun m!579677 () Bool)

(assert (=> b!602517 m!579677))

(assert (=> b!602518 m!579669))

(assert (=> b!602518 m!579669))

(declare-fun m!579679 () Bool)

(assert (=> b!602518 m!579679))

(assert (=> bm!32999 m!579669))

(declare-fun m!579683 () Bool)

(assert (=> bm!32999 m!579683))

(assert (=> b!602520 m!579669))

(assert (=> b!602520 m!579669))

(assert (=> b!602520 m!579677))

(assert (=> b!602314 d!87217))

(declare-fun d!87223 () Bool)

(declare-fun e!344634 () Bool)

(assert (=> d!87223 e!344634))

(declare-fun res!386991 () Bool)

(assert (=> d!87223 (=> (not res!386991) (not e!344634))))

(assert (=> d!87223 (= res!386991 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18192 a!2986))))))

(declare-fun lt!274507 () Unit!19078)

(declare-fun choose!41 (array!37147 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11922) Unit!19078)

(assert (=> d!87223 (= lt!274507 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11919))))

(assert (=> d!87223 (bvslt (size!18192 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87223 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11919) lt!274507)))

(declare-fun b!602531 () Bool)

(assert (=> b!602531 (= e!344634 (arrayNoDuplicates!0 (array!37148 (store (arr!17828 a!2986) i!1108 k!1786) (size!18192 a!2986)) #b00000000000000000000000000000000 Nil!11919))))

(assert (= (and d!87223 res!386991) b!602531))

(declare-fun m!579697 () Bool)

(assert (=> d!87223 m!579697))

(assert (=> b!602531 m!579469))

(declare-fun m!579699 () Bool)

(assert (=> b!602531 m!579699))

(assert (=> b!602314 d!87223))

(declare-fun d!87231 () Bool)

(assert (=> d!87231 (arrayNoDuplicates!0 lt!274409 j!136 Nil!11919)))

(declare-fun lt!274510 () Unit!19078)

(declare-fun choose!39 (array!37147 (_ BitVec 32) (_ BitVec 32)) Unit!19078)

(assert (=> d!87231 (= lt!274510 (choose!39 lt!274409 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87231 (bvslt (size!18192 lt!274409) #b01111111111111111111111111111111)))

(assert (=> d!87231 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!274409 #b00000000000000000000000000000000 j!136) lt!274510)))

(declare-fun bs!18463 () Bool)

(assert (= bs!18463 d!87231))

(assert (=> bs!18463 m!579497))

(declare-fun m!579705 () Bool)

(assert (=> bs!18463 m!579705))

(assert (=> b!602314 d!87231))

(declare-fun b!602537 () Bool)

(declare-fun e!344639 () Bool)

(declare-fun call!33005 () Bool)

(assert (=> b!602537 (= e!344639 call!33005)))

(declare-fun b!602538 () Bool)

(declare-fun e!344641 () Bool)

(declare-fun e!344642 () Bool)

(assert (=> b!602538 (= e!344641 e!344642)))

(declare-fun res!386996 () Bool)

(assert (=> b!602538 (=> (not res!386996) (not e!344642))))

(declare-fun e!344640 () Bool)

(assert (=> b!602538 (= res!386996 (not e!344640))))

(declare-fun res!386997 () Bool)

(assert (=> b!602538 (=> (not res!386997) (not e!344640))))

(assert (=> b!602538 (= res!386997 (validKeyInArray!0 (select (arr!17828 lt!274409) #b00000000000000000000000000000000)))))

(declare-fun b!602539 () Bool)

