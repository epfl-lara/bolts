; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56122 () Bool)

(assert start!56122)

(declare-fun b!619364 () Bool)

(declare-datatypes ((Unit!20490 0))(
  ( (Unit!20491) )
))
(declare-fun e!355220 () Unit!20490)

(declare-fun Unit!20492 () Unit!20490)

(assert (=> b!619364 (= e!355220 Unit!20492)))

(declare-fun b!619365 () Bool)

(declare-fun res!399191 () Bool)

(declare-fun e!355225 () Bool)

(assert (=> b!619365 (=> (not res!399191) (not e!355225))))

(declare-datatypes ((array!37555 0))(
  ( (array!37556 (arr!18020 (Array (_ BitVec 32) (_ BitVec 64))) (size!18384 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37555)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37555 (_ BitVec 32)) Bool)

(assert (=> b!619365 (= res!399191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619366 () Bool)

(declare-fun e!355224 () Bool)

(declare-fun e!355227 () Bool)

(assert (=> b!619366 (= e!355224 (not e!355227))))

(declare-fun res!399181 () Bool)

(assert (=> b!619366 (=> res!399181 e!355227)))

(declare-datatypes ((SeekEntryResult!6467 0))(
  ( (MissingZero!6467 (index!28151 (_ BitVec 32))) (Found!6467 (index!28152 (_ BitVec 32))) (Intermediate!6467 (undefined!7279 Bool) (index!28153 (_ BitVec 32)) (x!56956 (_ BitVec 32))) (Undefined!6467) (MissingVacant!6467 (index!28154 (_ BitVec 32))) )
))
(declare-fun lt!285988 () SeekEntryResult!6467)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619366 (= res!399181 (not (= lt!285988 (MissingVacant!6467 vacantSpotIndex!68))))))

(declare-fun lt!285984 () Unit!20490)

(declare-fun e!355218 () Unit!20490)

(assert (=> b!619366 (= lt!285984 e!355218)))

(declare-fun c!70461 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619366 (= c!70461 (= lt!285988 (Found!6467 index!984)))))

(declare-fun lt!285990 () Unit!20490)

(declare-fun e!355221 () Unit!20490)

(assert (=> b!619366 (= lt!285990 e!355221)))

(declare-fun c!70462 () Bool)

(assert (=> b!619366 (= c!70462 (= lt!285988 Undefined!6467))))

(declare-fun lt!285978 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!285982 () array!37555)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37555 (_ BitVec 32)) SeekEntryResult!6467)

(assert (=> b!619366 (= lt!285988 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285978 lt!285982 mask!3053))))

(declare-fun e!355217 () Bool)

(assert (=> b!619366 e!355217))

(declare-fun res!399186 () Bool)

(assert (=> b!619366 (=> (not res!399186) (not e!355217))))

(declare-fun lt!285993 () (_ BitVec 32))

(declare-fun lt!285995 () SeekEntryResult!6467)

(assert (=> b!619366 (= res!399186 (= lt!285995 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285993 vacantSpotIndex!68 lt!285978 lt!285982 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!619366 (= lt!285995 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285993 vacantSpotIndex!68 (select (arr!18020 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!619366 (= lt!285978 (select (store (arr!18020 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285987 () Unit!20490)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20490)

(assert (=> b!619366 (= lt!285987 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285993 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619366 (= lt!285993 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619367 () Bool)

(assert (=> b!619367 false))

(declare-fun lt!285985 () Unit!20490)

(declare-datatypes ((List!12114 0))(
  ( (Nil!12111) (Cons!12110 (h!13155 (_ BitVec 64)) (t!18350 List!12114)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37555 (_ BitVec 64) (_ BitVec 32) List!12114) Unit!20490)

(assert (=> b!619367 (= lt!285985 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285982 (select (arr!18020 a!2986) j!136) j!136 Nil!12111))))

(declare-fun arrayNoDuplicates!0 (array!37555 (_ BitVec 32) List!12114) Bool)

(assert (=> b!619367 (arrayNoDuplicates!0 lt!285982 j!136 Nil!12111)))

(declare-fun lt!285992 () Unit!20490)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37555 (_ BitVec 32) (_ BitVec 32)) Unit!20490)

(assert (=> b!619367 (= lt!285992 (lemmaNoDuplicateFromThenFromBigger!0 lt!285982 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619367 (arrayNoDuplicates!0 lt!285982 #b00000000000000000000000000000000 Nil!12111)))

(declare-fun lt!285996 () Unit!20490)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12114) Unit!20490)

(assert (=> b!619367 (= lt!285996 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12111))))

(declare-fun arrayContainsKey!0 (array!37555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619367 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285989 () Unit!20490)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20490)

(assert (=> b!619367 (= lt!285989 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285982 (select (arr!18020 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20493 () Unit!20490)

(assert (=> b!619367 (= e!355220 Unit!20493)))

(declare-fun b!619368 () Bool)

(declare-fun res!399183 () Bool)

(assert (=> b!619368 (= res!399183 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) j!136))))

(declare-fun e!355229 () Bool)

(assert (=> b!619368 (=> (not res!399183) (not e!355229))))

(declare-fun e!355222 () Bool)

(assert (=> b!619368 (= e!355222 e!355229)))

(declare-fun b!619369 () Bool)

(declare-fun Unit!20494 () Unit!20490)

(assert (=> b!619369 (= e!355218 Unit!20494)))

(declare-fun b!619370 () Bool)

(declare-fun Unit!20495 () Unit!20490)

(assert (=> b!619370 (= e!355221 Unit!20495)))

(declare-fun e!355231 () Bool)

(declare-fun b!619371 () Bool)

(assert (=> b!619371 (= e!355231 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) index!984))))

(declare-fun b!619372 () Bool)

(declare-fun e!355230 () Bool)

(assert (=> b!619372 (= e!355230 e!355225)))

(declare-fun res!399187 () Bool)

(assert (=> b!619372 (=> (not res!399187) (not e!355225))))

(declare-fun lt!285980 () SeekEntryResult!6467)

(assert (=> b!619372 (= res!399187 (or (= lt!285980 (MissingZero!6467 i!1108)) (= lt!285980 (MissingVacant!6467 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37555 (_ BitVec 32)) SeekEntryResult!6467)

(assert (=> b!619372 (= lt!285980 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619373 () Bool)

(assert (=> b!619373 false))

(declare-fun lt!285979 () Unit!20490)

(assert (=> b!619373 (= lt!285979 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285982 (select (arr!18020 a!2986) j!136) index!984 Nil!12111))))

(assert (=> b!619373 (arrayNoDuplicates!0 lt!285982 index!984 Nil!12111)))

(declare-fun lt!285986 () Unit!20490)

(assert (=> b!619373 (= lt!285986 (lemmaNoDuplicateFromThenFromBigger!0 lt!285982 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619373 (arrayNoDuplicates!0 lt!285982 #b00000000000000000000000000000000 Nil!12111)))

(declare-fun lt!285994 () Unit!20490)

(assert (=> b!619373 (= lt!285994 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12111))))

(assert (=> b!619373 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285983 () Unit!20490)

(assert (=> b!619373 (= lt!285983 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285982 (select (arr!18020 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619373 e!355231))

(declare-fun res!399182 () Bool)

(assert (=> b!619373 (=> (not res!399182) (not e!355231))))

(assert (=> b!619373 (= res!399182 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) j!136))))

(declare-fun e!355219 () Unit!20490)

(declare-fun Unit!20496 () Unit!20490)

(assert (=> b!619373 (= e!355219 Unit!20496)))

(declare-fun b!619374 () Bool)

(declare-fun lt!285977 () SeekEntryResult!6467)

(assert (=> b!619374 (= e!355217 (= lt!285977 lt!285995))))

(declare-fun res!399179 () Bool)

(assert (=> start!56122 (=> (not res!399179) (not e!355230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56122 (= res!399179 (validMask!0 mask!3053))))

(assert (=> start!56122 e!355230))

(assert (=> start!56122 true))

(declare-fun array_inv!13794 (array!37555) Bool)

(assert (=> start!56122 (array_inv!13794 a!2986)))

(declare-fun b!619375 () Bool)

(declare-fun Unit!20497 () Unit!20490)

(assert (=> b!619375 (= e!355221 Unit!20497)))

(assert (=> b!619375 false))

(declare-fun b!619376 () Bool)

(declare-fun res!399178 () Bool)

(assert (=> b!619376 (=> (not res!399178) (not e!355225))))

(assert (=> b!619376 (= res!399178 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12111))))

(declare-fun b!619377 () Bool)

(declare-fun Unit!20498 () Unit!20490)

(assert (=> b!619377 (= e!355219 Unit!20498)))

(declare-fun b!619378 () Bool)

(declare-fun Unit!20499 () Unit!20490)

(assert (=> b!619378 (= e!355218 Unit!20499)))

(declare-fun res!399188 () Bool)

(assert (=> b!619378 (= res!399188 (= (select (store (arr!18020 a!2986) i!1108 k!1786) index!984) (select (arr!18020 a!2986) j!136)))))

(declare-fun e!355223 () Bool)

(assert (=> b!619378 (=> (not res!399188) (not e!355223))))

(assert (=> b!619378 e!355223))

(declare-fun c!70463 () Bool)

(assert (=> b!619378 (= c!70463 (bvslt j!136 index!984))))

(declare-fun lt!285991 () Unit!20490)

(assert (=> b!619378 (= lt!285991 e!355220)))

(declare-fun c!70460 () Bool)

(assert (=> b!619378 (= c!70460 (bvslt index!984 j!136))))

(declare-fun lt!285981 () Unit!20490)

(assert (=> b!619378 (= lt!285981 e!355219)))

(assert (=> b!619378 false))

(declare-fun b!619379 () Bool)

(assert (=> b!619379 (= e!355227 true)))

(assert (=> b!619379 (= (select (store (arr!18020 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619380 () Bool)

(assert (=> b!619380 (= e!355229 (arrayContainsKey!0 lt!285982 (select (arr!18020 a!2986) j!136) index!984))))

(declare-fun b!619381 () Bool)

(declare-fun res!399190 () Bool)

(assert (=> b!619381 (=> (not res!399190) (not e!355230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619381 (= res!399190 (validKeyInArray!0 (select (arr!18020 a!2986) j!136)))))

(declare-fun b!619382 () Bool)

(declare-fun e!355228 () Bool)

(assert (=> b!619382 (= e!355228 e!355224)))

(declare-fun res!399192 () Bool)

(assert (=> b!619382 (=> (not res!399192) (not e!355224))))

(assert (=> b!619382 (= res!399192 (and (= lt!285977 (Found!6467 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18020 a!2986) index!984) (select (arr!18020 a!2986) j!136))) (not (= (select (arr!18020 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619382 (= lt!285977 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18020 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619383 () Bool)

(assert (=> b!619383 (= e!355225 e!355228)))

(declare-fun res!399185 () Bool)

(assert (=> b!619383 (=> (not res!399185) (not e!355228))))

(assert (=> b!619383 (= res!399185 (= (select (store (arr!18020 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619383 (= lt!285982 (array!37556 (store (arr!18020 a!2986) i!1108 k!1786) (size!18384 a!2986)))))

(declare-fun b!619384 () Bool)

(declare-fun res!399184 () Bool)

(assert (=> b!619384 (=> (not res!399184) (not e!355230))))

(assert (=> b!619384 (= res!399184 (validKeyInArray!0 k!1786))))

(declare-fun b!619385 () Bool)

(declare-fun res!399189 () Bool)

(assert (=> b!619385 (=> (not res!399189) (not e!355230))))

(assert (=> b!619385 (= res!399189 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619386 () Bool)

(declare-fun res!399180 () Bool)

(assert (=> b!619386 (=> (not res!399180) (not e!355230))))

(assert (=> b!619386 (= res!399180 (and (= (size!18384 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18384 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18384 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619387 () Bool)

(declare-fun res!399193 () Bool)

(assert (=> b!619387 (=> (not res!399193) (not e!355225))))

(assert (=> b!619387 (= res!399193 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18020 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619388 () Bool)

(declare-fun res!399194 () Bool)

(assert (=> b!619388 (= res!399194 (bvsge j!136 index!984))))

(assert (=> b!619388 (=> res!399194 e!355222)))

(assert (=> b!619388 (= e!355223 e!355222)))

(assert (= (and start!56122 res!399179) b!619386))

(assert (= (and b!619386 res!399180) b!619381))

(assert (= (and b!619381 res!399190) b!619384))

(assert (= (and b!619384 res!399184) b!619385))

(assert (= (and b!619385 res!399189) b!619372))

(assert (= (and b!619372 res!399187) b!619365))

(assert (= (and b!619365 res!399191) b!619376))

(assert (= (and b!619376 res!399178) b!619387))

(assert (= (and b!619387 res!399193) b!619383))

(assert (= (and b!619383 res!399185) b!619382))

(assert (= (and b!619382 res!399192) b!619366))

(assert (= (and b!619366 res!399186) b!619374))

(assert (= (and b!619366 c!70462) b!619375))

(assert (= (and b!619366 (not c!70462)) b!619370))

(assert (= (and b!619366 c!70461) b!619378))

(assert (= (and b!619366 (not c!70461)) b!619369))

(assert (= (and b!619378 res!399188) b!619388))

(assert (= (and b!619388 (not res!399194)) b!619368))

(assert (= (and b!619368 res!399183) b!619380))

(assert (= (and b!619378 c!70463) b!619367))

(assert (= (and b!619378 (not c!70463)) b!619364))

(assert (= (and b!619378 c!70460) b!619373))

(assert (= (and b!619378 (not c!70460)) b!619377))

(assert (= (and b!619373 res!399182) b!619371))

(assert (= (and b!619366 (not res!399181)) b!619379))

(declare-fun m!595379 () Bool)

(assert (=> b!619379 m!595379))

(declare-fun m!595381 () Bool)

(assert (=> b!619379 m!595381))

(declare-fun m!595383 () Bool)

(assert (=> b!619382 m!595383))

(declare-fun m!595385 () Bool)

(assert (=> b!619382 m!595385))

(assert (=> b!619382 m!595385))

(declare-fun m!595387 () Bool)

(assert (=> b!619382 m!595387))

(assert (=> b!619368 m!595385))

(assert (=> b!619368 m!595385))

(declare-fun m!595389 () Bool)

(assert (=> b!619368 m!595389))

(assert (=> b!619380 m!595385))

(assert (=> b!619380 m!595385))

(declare-fun m!595391 () Bool)

(assert (=> b!619380 m!595391))

(declare-fun m!595393 () Bool)

(assert (=> b!619387 m!595393))

(declare-fun m!595395 () Bool)

(assert (=> b!619366 m!595395))

(declare-fun m!595397 () Bool)

(assert (=> b!619366 m!595397))

(assert (=> b!619366 m!595385))

(declare-fun m!595399 () Bool)

(assert (=> b!619366 m!595399))

(assert (=> b!619366 m!595385))

(assert (=> b!619366 m!595379))

(declare-fun m!595401 () Bool)

(assert (=> b!619366 m!595401))

(declare-fun m!595403 () Bool)

(assert (=> b!619366 m!595403))

(declare-fun m!595405 () Bool)

(assert (=> b!619366 m!595405))

(declare-fun m!595407 () Bool)

(assert (=> b!619384 m!595407))

(declare-fun m!595409 () Bool)

(assert (=> start!56122 m!595409))

(declare-fun m!595411 () Bool)

(assert (=> start!56122 m!595411))

(declare-fun m!595413 () Bool)

(assert (=> b!619365 m!595413))

(assert (=> b!619383 m!595379))

(declare-fun m!595415 () Bool)

(assert (=> b!619383 m!595415))

(assert (=> b!619381 m!595385))

(assert (=> b!619381 m!595385))

(declare-fun m!595417 () Bool)

(assert (=> b!619381 m!595417))

(assert (=> b!619371 m!595385))

(assert (=> b!619371 m!595385))

(assert (=> b!619371 m!595391))

(declare-fun m!595419 () Bool)

(assert (=> b!619385 m!595419))

(assert (=> b!619378 m!595379))

(assert (=> b!619378 m!595381))

(assert (=> b!619378 m!595385))

(declare-fun m!595421 () Bool)

(assert (=> b!619376 m!595421))

(declare-fun m!595423 () Bool)

(assert (=> b!619372 m!595423))

(assert (=> b!619367 m!595385))

(declare-fun m!595425 () Bool)

(assert (=> b!619367 m!595425))

(declare-fun m!595427 () Bool)

(assert (=> b!619367 m!595427))

(declare-fun m!595429 () Bool)

(assert (=> b!619367 m!595429))

(assert (=> b!619367 m!595385))

(assert (=> b!619367 m!595385))

(declare-fun m!595431 () Bool)

(assert (=> b!619367 m!595431))

(declare-fun m!595433 () Bool)

(assert (=> b!619367 m!595433))

(assert (=> b!619367 m!595385))

(declare-fun m!595435 () Bool)

(assert (=> b!619367 m!595435))

(declare-fun m!595437 () Bool)

(assert (=> b!619367 m!595437))

(declare-fun m!595439 () Bool)

(assert (=> b!619373 m!595439))

(assert (=> b!619373 m!595429))

(assert (=> b!619373 m!595385))

(assert (=> b!619373 m!595385))

(declare-fun m!595441 () Bool)

(assert (=> b!619373 m!595441))

(assert (=> b!619373 m!595385))

(declare-fun m!595443 () Bool)

(assert (=> b!619373 m!595443))

(assert (=> b!619373 m!595385))

(declare-fun m!595445 () Bool)

(assert (=> b!619373 m!595445))

(assert (=> b!619373 m!595437))

(declare-fun m!595447 () Bool)

(assert (=> b!619373 m!595447))

(assert (=> b!619373 m!595385))

(assert (=> b!619373 m!595389))

(push 1)

