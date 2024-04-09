; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58150 () Bool)

(assert start!58150)

(declare-fun b!642326 () Bool)

(declare-fun e!367869 () Bool)

(declare-fun e!367870 () Bool)

(assert (=> b!642326 (= e!367869 e!367870)))

(declare-fun res!416214 () Bool)

(assert (=> b!642326 (=> (not res!416214) (not e!367870))))

(declare-datatypes ((SeekEntryResult!6842 0))(
  ( (MissingZero!6842 (index!29693 (_ BitVec 32))) (Found!6842 (index!29694 (_ BitVec 32))) (Intermediate!6842 (undefined!7654 Bool) (index!29695 (_ BitVec 32)) (x!58481 (_ BitVec 32))) (Undefined!6842) (MissingVacant!6842 (index!29696 (_ BitVec 32))) )
))
(declare-fun lt!297542 () SeekEntryResult!6842)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!642326 (= res!416214 (or (= lt!297542 (MissingZero!6842 i!1108)) (= lt!297542 (MissingVacant!6842 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38365 0))(
  ( (array!38366 (arr!18395 (Array (_ BitVec 32) (_ BitVec 64))) (size!18759 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38365)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38365 (_ BitVec 32)) SeekEntryResult!6842)

(assert (=> b!642326 (= lt!297542 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642327 () Bool)

(declare-fun res!416220 () Bool)

(assert (=> b!642327 (=> (not res!416220) (not e!367869))))

(declare-fun arrayContainsKey!0 (array!38365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642327 (= res!416220 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642328 () Bool)

(declare-datatypes ((Unit!21726 0))(
  ( (Unit!21727) )
))
(declare-fun e!367860 () Unit!21726)

(declare-fun Unit!21728 () Unit!21726)

(assert (=> b!642328 (= e!367860 Unit!21728)))

(declare-fun b!642329 () Bool)

(declare-fun e!367861 () Bool)

(assert (=> b!642329 (= e!367861 false)))

(declare-fun lt!297530 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!642329 (not (= lt!297530 (select (arr!18395 a!2986) j!136)))))

(declare-fun lt!297541 () Unit!21726)

(declare-fun lt!297536 () array!38365)

(declare-datatypes ((List!12489 0))(
  ( (Nil!12486) (Cons!12485 (h!13530 (_ BitVec 64)) (t!18725 List!12489)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38365 (_ BitVec 64) (_ BitVec 32) List!12489) Unit!21726)

(assert (=> b!642329 (= lt!297541 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297536 (select (arr!18395 a!2986) j!136) j!136 Nil!12486))))

(declare-fun arrayNoDuplicates!0 (array!38365 (_ BitVec 32) List!12489) Bool)

(assert (=> b!642329 (arrayNoDuplicates!0 lt!297536 j!136 Nil!12486)))

(declare-fun lt!297535 () Unit!21726)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38365 (_ BitVec 32) (_ BitVec 32)) Unit!21726)

(assert (=> b!642329 (= lt!297535 (lemmaNoDuplicateFromThenFromBigger!0 lt!297536 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642329 (arrayNoDuplicates!0 lt!297536 #b00000000000000000000000000000000 Nil!12486)))

(declare-fun lt!297534 () Unit!21726)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38365 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12489) Unit!21726)

(assert (=> b!642329 (= lt!297534 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12486))))

(assert (=> b!642329 (arrayContainsKey!0 lt!297536 (select (arr!18395 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297538 () Unit!21726)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38365 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21726)

(assert (=> b!642329 (= lt!297538 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297536 (select (arr!18395 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642330 () Bool)

(declare-fun res!416212 () Bool)

(assert (=> b!642330 (=> (not res!416212) (not e!367869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642330 (= res!416212 (validKeyInArray!0 (select (arr!18395 a!2986) j!136)))))

(declare-fun b!642331 () Bool)

(declare-fun res!416217 () Bool)

(assert (=> b!642331 (=> (not res!416217) (not e!367870))))

(assert (=> b!642331 (= res!416217 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12486))))

(declare-fun b!642333 () Bool)

(declare-fun Unit!21729 () Unit!21726)

(assert (=> b!642333 (= e!367860 Unit!21729)))

(assert (=> b!642333 false))

(declare-fun e!367864 () Bool)

(declare-fun b!642334 () Bool)

(assert (=> b!642334 (= e!367864 (arrayContainsKey!0 lt!297536 (select (arr!18395 a!2986) j!136) index!984))))

(declare-fun b!642335 () Bool)

(declare-fun e!367863 () Bool)

(declare-fun e!367867 () Bool)

(assert (=> b!642335 (= e!367863 (not e!367867))))

(declare-fun res!416207 () Bool)

(assert (=> b!642335 (=> res!416207 e!367867)))

(declare-fun lt!297540 () SeekEntryResult!6842)

(assert (=> b!642335 (= res!416207 (not (= lt!297540 (Found!6842 index!984))))))

(declare-fun lt!297543 () Unit!21726)

(assert (=> b!642335 (= lt!297543 e!367860)))

(declare-fun c!73427 () Bool)

(assert (=> b!642335 (= c!73427 (= lt!297540 Undefined!6842))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38365 (_ BitVec 32)) SeekEntryResult!6842)

(assert (=> b!642335 (= lt!297540 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297530 lt!297536 mask!3053))))

(declare-fun e!367865 () Bool)

(assert (=> b!642335 e!367865))

(declare-fun res!416208 () Bool)

(assert (=> b!642335 (=> (not res!416208) (not e!367865))))

(declare-fun lt!297531 () (_ BitVec 32))

(declare-fun lt!297537 () SeekEntryResult!6842)

(assert (=> b!642335 (= res!416208 (= lt!297537 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297531 vacantSpotIndex!68 lt!297530 lt!297536 mask!3053)))))

(assert (=> b!642335 (= lt!297537 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297531 vacantSpotIndex!68 (select (arr!18395 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642335 (= lt!297530 (select (store (arr!18395 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297539 () Unit!21726)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21726)

(assert (=> b!642335 (= lt!297539 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297531 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642335 (= lt!297531 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642336 () Bool)

(declare-fun e!367859 () Bool)

(assert (=> b!642336 (= e!367870 e!367859)))

(declare-fun res!416215 () Bool)

(assert (=> b!642336 (=> (not res!416215) (not e!367859))))

(assert (=> b!642336 (= res!416215 (= (select (store (arr!18395 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642336 (= lt!297536 (array!38366 (store (arr!18395 a!2986) i!1108 k!1786) (size!18759 a!2986)))))

(declare-fun b!642337 () Bool)

(declare-fun res!416211 () Bool)

(assert (=> b!642337 (=> (not res!416211) (not e!367870))))

(assert (=> b!642337 (= res!416211 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18395 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642338 () Bool)

(declare-fun lt!297533 () SeekEntryResult!6842)

(assert (=> b!642338 (= e!367865 (= lt!297533 lt!297537))))

(declare-fun b!642339 () Bool)

(declare-fun e!367868 () Bool)

(declare-fun e!367866 () Bool)

(assert (=> b!642339 (= e!367868 e!367866)))

(declare-fun res!416218 () Bool)

(assert (=> b!642339 (=> res!416218 e!367866)))

(declare-fun lt!297532 () (_ BitVec 64))

(assert (=> b!642339 (= res!416218 (or (not (= (select (arr!18395 a!2986) j!136) lt!297530)) (not (= (select (arr!18395 a!2986) j!136) lt!297532)) (bvsge j!136 index!984)))))

(declare-fun b!642340 () Bool)

(declare-fun res!416219 () Bool)

(assert (=> b!642340 (=> (not res!416219) (not e!367869))))

(assert (=> b!642340 (= res!416219 (and (= (size!18759 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18759 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18759 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642341 () Bool)

(declare-fun res!416216 () Bool)

(assert (=> b!642341 (=> (not res!416216) (not e!367869))))

(assert (=> b!642341 (= res!416216 (validKeyInArray!0 k!1786))))

(declare-fun b!642332 () Bool)

(assert (=> b!642332 (= e!367859 e!367863)))

(declare-fun res!416206 () Bool)

(assert (=> b!642332 (=> (not res!416206) (not e!367863))))

(assert (=> b!642332 (= res!416206 (and (= lt!297533 (Found!6842 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18395 a!2986) index!984) (select (arr!18395 a!2986) j!136))) (not (= (select (arr!18395 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642332 (= lt!297533 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18395 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!416209 () Bool)

(assert (=> start!58150 (=> (not res!416209) (not e!367869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58150 (= res!416209 (validMask!0 mask!3053))))

(assert (=> start!58150 e!367869))

(assert (=> start!58150 true))

(declare-fun array_inv!14169 (array!38365) Bool)

(assert (=> start!58150 (array_inv!14169 a!2986)))

(declare-fun b!642342 () Bool)

(declare-fun res!416222 () Bool)

(assert (=> b!642342 (=> (not res!416222) (not e!367870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38365 (_ BitVec 32)) Bool)

(assert (=> b!642342 (= res!416222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642343 () Bool)

(assert (=> b!642343 (= e!367867 e!367861)))

(declare-fun res!416213 () Bool)

(assert (=> b!642343 (=> res!416213 e!367861)))

(assert (=> b!642343 (= res!416213 (or (not (= (select (arr!18395 a!2986) j!136) lt!297530)) (not (= (select (arr!18395 a!2986) j!136) lt!297532)) (bvsge j!136 index!984)))))

(assert (=> b!642343 e!367868))

(declare-fun res!416221 () Bool)

(assert (=> b!642343 (=> (not res!416221) (not e!367868))))

(assert (=> b!642343 (= res!416221 (= lt!297532 (select (arr!18395 a!2986) j!136)))))

(assert (=> b!642343 (= lt!297532 (select (store (arr!18395 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642344 () Bool)

(assert (=> b!642344 (= e!367866 e!367864)))

(declare-fun res!416210 () Bool)

(assert (=> b!642344 (=> (not res!416210) (not e!367864))))

(assert (=> b!642344 (= res!416210 (arrayContainsKey!0 lt!297536 (select (arr!18395 a!2986) j!136) j!136))))

(assert (= (and start!58150 res!416209) b!642340))

(assert (= (and b!642340 res!416219) b!642330))

(assert (= (and b!642330 res!416212) b!642341))

(assert (= (and b!642341 res!416216) b!642327))

(assert (= (and b!642327 res!416220) b!642326))

(assert (= (and b!642326 res!416214) b!642342))

(assert (= (and b!642342 res!416222) b!642331))

(assert (= (and b!642331 res!416217) b!642337))

(assert (= (and b!642337 res!416211) b!642336))

(assert (= (and b!642336 res!416215) b!642332))

(assert (= (and b!642332 res!416206) b!642335))

(assert (= (and b!642335 res!416208) b!642338))

(assert (= (and b!642335 c!73427) b!642333))

(assert (= (and b!642335 (not c!73427)) b!642328))

(assert (= (and b!642335 (not res!416207)) b!642343))

(assert (= (and b!642343 res!416221) b!642339))

(assert (= (and b!642339 (not res!416218)) b!642344))

(assert (= (and b!642344 res!416210) b!642334))

(assert (= (and b!642343 (not res!416213)) b!642329))

(declare-fun m!616179 () Bool)

(assert (=> b!642342 m!616179))

(declare-fun m!616181 () Bool)

(assert (=> b!642334 m!616181))

(assert (=> b!642334 m!616181))

(declare-fun m!616183 () Bool)

(assert (=> b!642334 m!616183))

(assert (=> b!642343 m!616181))

(declare-fun m!616185 () Bool)

(assert (=> b!642343 m!616185))

(declare-fun m!616187 () Bool)

(assert (=> b!642343 m!616187))

(assert (=> b!642330 m!616181))

(assert (=> b!642330 m!616181))

(declare-fun m!616189 () Bool)

(assert (=> b!642330 m!616189))

(assert (=> b!642336 m!616185))

(declare-fun m!616191 () Bool)

(assert (=> b!642336 m!616191))

(assert (=> b!642344 m!616181))

(assert (=> b!642344 m!616181))

(declare-fun m!616193 () Bool)

(assert (=> b!642344 m!616193))

(assert (=> b!642329 m!616181))

(declare-fun m!616195 () Bool)

(assert (=> b!642329 m!616195))

(assert (=> b!642329 m!616181))

(assert (=> b!642329 m!616181))

(declare-fun m!616197 () Bool)

(assert (=> b!642329 m!616197))

(declare-fun m!616199 () Bool)

(assert (=> b!642329 m!616199))

(declare-fun m!616201 () Bool)

(assert (=> b!642329 m!616201))

(declare-fun m!616203 () Bool)

(assert (=> b!642329 m!616203))

(assert (=> b!642329 m!616181))

(declare-fun m!616205 () Bool)

(assert (=> b!642329 m!616205))

(declare-fun m!616207 () Bool)

(assert (=> b!642329 m!616207))

(declare-fun m!616209 () Bool)

(assert (=> b!642341 m!616209))

(declare-fun m!616211 () Bool)

(assert (=> b!642337 m!616211))

(declare-fun m!616213 () Bool)

(assert (=> b!642326 m!616213))

(declare-fun m!616215 () Bool)

(assert (=> b!642327 m!616215))

(declare-fun m!616217 () Bool)

(assert (=> start!58150 m!616217))

(declare-fun m!616219 () Bool)

(assert (=> start!58150 m!616219))

(declare-fun m!616221 () Bool)

(assert (=> b!642335 m!616221))

(declare-fun m!616223 () Bool)

(assert (=> b!642335 m!616223))

(assert (=> b!642335 m!616181))

(assert (=> b!642335 m!616185))

(declare-fun m!616225 () Bool)

(assert (=> b!642335 m!616225))

(assert (=> b!642335 m!616181))

(declare-fun m!616227 () Bool)

(assert (=> b!642335 m!616227))

(declare-fun m!616229 () Bool)

(assert (=> b!642335 m!616229))

(declare-fun m!616231 () Bool)

(assert (=> b!642335 m!616231))

(declare-fun m!616233 () Bool)

(assert (=> b!642331 m!616233))

(declare-fun m!616235 () Bool)

(assert (=> b!642332 m!616235))

(assert (=> b!642332 m!616181))

(assert (=> b!642332 m!616181))

(declare-fun m!616237 () Bool)

(assert (=> b!642332 m!616237))

(assert (=> b!642339 m!616181))

(push 1)

(assert (not b!642332))

(assert (not b!642341))

(assert (not b!642344))

(assert (not b!642330))

(assert (not b!642334))

(assert (not b!642329))

(assert (not b!642335))

(assert (not b!642326))

(assert (not b!642331))

(assert (not start!58150))

(assert (not b!642342))

(assert (not b!642327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

