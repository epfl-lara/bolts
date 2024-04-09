; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57934 () Bool)

(assert start!57934)

(declare-fun b!640325 () Bool)

(declare-fun res!414753 () Bool)

(declare-fun e!366563 () Bool)

(assert (=> b!640325 (=> (not res!414753) (not e!366563))))

(declare-datatypes ((array!38317 0))(
  ( (array!38318 (arr!18374 (Array (_ BitVec 32) (_ BitVec 64))) (size!18738 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38317)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38317 (_ BitVec 32)) Bool)

(assert (=> b!640325 (= res!414753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640326 () Bool)

(declare-datatypes ((Unit!21642 0))(
  ( (Unit!21643) )
))
(declare-fun e!366565 () Unit!21642)

(declare-fun Unit!21644 () Unit!21642)

(assert (=> b!640326 (= e!366565 Unit!21644)))

(assert (=> b!640326 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!640327 () Bool)

(declare-fun lt!296410 () array!38317)

(declare-fun e!366557 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640327 (= e!366557 (arrayContainsKey!0 lt!296410 (select (arr!18374 a!2986) j!136) index!984))))

(declare-fun res!414757 () Bool)

(declare-fun e!366561 () Bool)

(assert (=> start!57934 (=> (not res!414757) (not e!366561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57934 (= res!414757 (validMask!0 mask!3053))))

(assert (=> start!57934 e!366561))

(assert (=> start!57934 true))

(declare-fun array_inv!14148 (array!38317) Bool)

(assert (=> start!57934 (array_inv!14148 a!2986)))

(declare-fun b!640328 () Bool)

(declare-fun e!366556 () Bool)

(declare-fun e!366558 () Bool)

(assert (=> b!640328 (= e!366556 e!366558)))

(declare-fun res!414756 () Bool)

(assert (=> b!640328 (=> res!414756 e!366558)))

(declare-fun lt!296403 () (_ BitVec 64))

(declare-fun lt!296404 () (_ BitVec 64))

(assert (=> b!640328 (= res!414756 (or (not (= (select (arr!18374 a!2986) j!136) lt!296404)) (not (= (select (arr!18374 a!2986) j!136) lt!296403)) (bvsge j!136 index!984)))))

(declare-fun e!366562 () Bool)

(assert (=> b!640328 e!366562))

(declare-fun res!414765 () Bool)

(assert (=> b!640328 (=> (not res!414765) (not e!366562))))

(assert (=> b!640328 (= res!414765 (= lt!296403 (select (arr!18374 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!640328 (= lt!296403 (select (store (arr!18374 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640329 () Bool)

(declare-fun e!366554 () Bool)

(assert (=> b!640329 (= e!366554 (not e!366556))))

(declare-fun res!414760 () Bool)

(assert (=> b!640329 (=> res!414760 e!366556)))

(declare-datatypes ((SeekEntryResult!6821 0))(
  ( (MissingZero!6821 (index!29603 (_ BitVec 32))) (Found!6821 (index!29604 (_ BitVec 32))) (Intermediate!6821 (undefined!7633 Bool) (index!29605 (_ BitVec 32)) (x!58386 (_ BitVec 32))) (Undefined!6821) (MissingVacant!6821 (index!29606 (_ BitVec 32))) )
))
(declare-fun lt!296407 () SeekEntryResult!6821)

(assert (=> b!640329 (= res!414760 (not (= lt!296407 (Found!6821 index!984))))))

(declare-fun lt!296413 () Unit!21642)

(assert (=> b!640329 (= lt!296413 e!366565)))

(declare-fun c!73154 () Bool)

(assert (=> b!640329 (= c!73154 (= lt!296407 Undefined!6821))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38317 (_ BitVec 32)) SeekEntryResult!6821)

(assert (=> b!640329 (= lt!296407 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296404 lt!296410 mask!3053))))

(declare-fun e!366559 () Bool)

(assert (=> b!640329 e!366559))

(declare-fun res!414764 () Bool)

(assert (=> b!640329 (=> (not res!414764) (not e!366559))))

(declare-fun lt!296411 () SeekEntryResult!6821)

(declare-fun lt!296415 () (_ BitVec 32))

(assert (=> b!640329 (= res!414764 (= lt!296411 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296415 vacantSpotIndex!68 lt!296404 lt!296410 mask!3053)))))

(assert (=> b!640329 (= lt!296411 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296415 vacantSpotIndex!68 (select (arr!18374 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640329 (= lt!296404 (select (store (arr!18374 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296406 () Unit!21642)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38317 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21642)

(assert (=> b!640329 (= lt!296406 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296415 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640329 (= lt!296415 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640330 () Bool)

(declare-fun res!414759 () Bool)

(assert (=> b!640330 (=> (not res!414759) (not e!366561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640330 (= res!414759 (validKeyInArray!0 k!1786))))

(declare-fun b!640331 () Bool)

(declare-fun Unit!21645 () Unit!21642)

(assert (=> b!640331 (= e!366565 Unit!21645)))

(declare-fun b!640332 () Bool)

(declare-fun res!414754 () Bool)

(assert (=> b!640332 (=> (not res!414754) (not e!366561))))

(assert (=> b!640332 (= res!414754 (and (= (size!18738 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18738 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18738 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640333 () Bool)

(declare-fun res!414763 () Bool)

(assert (=> b!640333 (=> (not res!414763) (not e!366561))))

(assert (=> b!640333 (= res!414763 (validKeyInArray!0 (select (arr!18374 a!2986) j!136)))))

(declare-fun b!640334 () Bool)

(declare-fun lt!296408 () SeekEntryResult!6821)

(assert (=> b!640334 (= e!366559 (= lt!296408 lt!296411))))

(declare-fun b!640335 () Bool)

(declare-fun e!366560 () Bool)

(assert (=> b!640335 (= e!366560 e!366557)))

(declare-fun res!414752 () Bool)

(assert (=> b!640335 (=> (not res!414752) (not e!366557))))

(assert (=> b!640335 (= res!414752 (arrayContainsKey!0 lt!296410 (select (arr!18374 a!2986) j!136) j!136))))

(declare-fun b!640336 () Bool)

(declare-fun e!366555 () Bool)

(assert (=> b!640336 (= e!366563 e!366555)))

(declare-fun res!414758 () Bool)

(assert (=> b!640336 (=> (not res!414758) (not e!366555))))

(assert (=> b!640336 (= res!414758 (= (select (store (arr!18374 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640336 (= lt!296410 (array!38318 (store (arr!18374 a!2986) i!1108 k!1786) (size!18738 a!2986)))))

(declare-fun b!640337 () Bool)

(declare-fun res!414767 () Bool)

(assert (=> b!640337 (=> (not res!414767) (not e!366561))))

(assert (=> b!640337 (= res!414767 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640338 () Bool)

(declare-fun res!414766 () Bool)

(assert (=> b!640338 (=> (not res!414766) (not e!366563))))

(assert (=> b!640338 (= res!414766 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18374 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640339 () Bool)

(assert (=> b!640339 (= e!366558 true)))

(declare-datatypes ((List!12468 0))(
  ( (Nil!12465) (Cons!12464 (h!13509 (_ BitVec 64)) (t!18704 List!12468)) )
))
(declare-fun arrayNoDuplicates!0 (array!38317 (_ BitVec 32) List!12468) Bool)

(assert (=> b!640339 (arrayNoDuplicates!0 lt!296410 j!136 Nil!12465)))

(declare-fun lt!296405 () Unit!21642)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38317 (_ BitVec 32) (_ BitVec 32)) Unit!21642)

(assert (=> b!640339 (= lt!296405 (lemmaNoDuplicateFromThenFromBigger!0 lt!296410 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640339 (arrayNoDuplicates!0 lt!296410 #b00000000000000000000000000000000 Nil!12465)))

(declare-fun lt!296409 () Unit!21642)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38317 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12468) Unit!21642)

(assert (=> b!640339 (= lt!296409 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12465))))

(assert (=> b!640339 (arrayContainsKey!0 lt!296410 (select (arr!18374 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296414 () Unit!21642)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38317 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21642)

(assert (=> b!640339 (= lt!296414 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296410 (select (arr!18374 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640340 () Bool)

(assert (=> b!640340 (= e!366562 e!366560)))

(declare-fun res!414761 () Bool)

(assert (=> b!640340 (=> res!414761 e!366560)))

(assert (=> b!640340 (= res!414761 (or (not (= (select (arr!18374 a!2986) j!136) lt!296404)) (not (= (select (arr!18374 a!2986) j!136) lt!296403)) (bvsge j!136 index!984)))))

(declare-fun b!640341 () Bool)

(assert (=> b!640341 (= e!366555 e!366554)))

(declare-fun res!414755 () Bool)

(assert (=> b!640341 (=> (not res!414755) (not e!366554))))

(assert (=> b!640341 (= res!414755 (and (= lt!296408 (Found!6821 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18374 a!2986) index!984) (select (arr!18374 a!2986) j!136))) (not (= (select (arr!18374 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640341 (= lt!296408 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18374 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640342 () Bool)

(assert (=> b!640342 (= e!366561 e!366563)))

(declare-fun res!414751 () Bool)

(assert (=> b!640342 (=> (not res!414751) (not e!366563))))

(declare-fun lt!296412 () SeekEntryResult!6821)

(assert (=> b!640342 (= res!414751 (or (= lt!296412 (MissingZero!6821 i!1108)) (= lt!296412 (MissingVacant!6821 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38317 (_ BitVec 32)) SeekEntryResult!6821)

(assert (=> b!640342 (= lt!296412 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640343 () Bool)

(declare-fun res!414762 () Bool)

(assert (=> b!640343 (=> (not res!414762) (not e!366563))))

(assert (=> b!640343 (= res!414762 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12465))))

(assert (= (and start!57934 res!414757) b!640332))

(assert (= (and b!640332 res!414754) b!640333))

(assert (= (and b!640333 res!414763) b!640330))

(assert (= (and b!640330 res!414759) b!640337))

(assert (= (and b!640337 res!414767) b!640342))

(assert (= (and b!640342 res!414751) b!640325))

(assert (= (and b!640325 res!414753) b!640343))

(assert (= (and b!640343 res!414762) b!640338))

(assert (= (and b!640338 res!414766) b!640336))

(assert (= (and b!640336 res!414758) b!640341))

(assert (= (and b!640341 res!414755) b!640329))

(assert (= (and b!640329 res!414764) b!640334))

(assert (= (and b!640329 c!73154) b!640326))

(assert (= (and b!640329 (not c!73154)) b!640331))

(assert (= (and b!640329 (not res!414760)) b!640328))

(assert (= (and b!640328 res!414765) b!640340))

(assert (= (and b!640340 (not res!414761)) b!640335))

(assert (= (and b!640335 res!414752) b!640327))

(assert (= (and b!640328 (not res!414756)) b!640339))

(declare-fun m!614231 () Bool)

(assert (=> b!640337 m!614231))

(declare-fun m!614233 () Bool)

(assert (=> b!640343 m!614233))

(declare-fun m!614235 () Bool)

(assert (=> b!640333 m!614235))

(assert (=> b!640333 m!614235))

(declare-fun m!614237 () Bool)

(assert (=> b!640333 m!614237))

(assert (=> b!640328 m!614235))

(declare-fun m!614239 () Bool)

(assert (=> b!640328 m!614239))

(declare-fun m!614241 () Bool)

(assert (=> b!640328 m!614241))

(declare-fun m!614243 () Bool)

(assert (=> b!640339 m!614243))

(assert (=> b!640339 m!614235))

(declare-fun m!614245 () Bool)

(assert (=> b!640339 m!614245))

(assert (=> b!640339 m!614235))

(declare-fun m!614247 () Bool)

(assert (=> b!640339 m!614247))

(declare-fun m!614249 () Bool)

(assert (=> b!640339 m!614249))

(assert (=> b!640339 m!614235))

(declare-fun m!614251 () Bool)

(assert (=> b!640339 m!614251))

(declare-fun m!614253 () Bool)

(assert (=> b!640339 m!614253))

(assert (=> b!640335 m!614235))

(assert (=> b!640335 m!614235))

(declare-fun m!614255 () Bool)

(assert (=> b!640335 m!614255))

(declare-fun m!614257 () Bool)

(assert (=> b!640329 m!614257))

(declare-fun m!614259 () Bool)

(assert (=> b!640329 m!614259))

(declare-fun m!614261 () Bool)

(assert (=> b!640329 m!614261))

(assert (=> b!640329 m!614239))

(assert (=> b!640329 m!614235))

(declare-fun m!614263 () Bool)

(assert (=> b!640329 m!614263))

(declare-fun m!614265 () Bool)

(assert (=> b!640329 m!614265))

(declare-fun m!614267 () Bool)

(assert (=> b!640329 m!614267))

(assert (=> b!640329 m!614235))

(declare-fun m!614269 () Bool)

(assert (=> b!640330 m!614269))

(declare-fun m!614271 () Bool)

(assert (=> start!57934 m!614271))

(declare-fun m!614273 () Bool)

(assert (=> start!57934 m!614273))

(assert (=> b!640327 m!614235))

(assert (=> b!640327 m!614235))

(declare-fun m!614275 () Bool)

(assert (=> b!640327 m!614275))

(declare-fun m!614277 () Bool)

(assert (=> b!640341 m!614277))

(assert (=> b!640341 m!614235))

(assert (=> b!640341 m!614235))

(declare-fun m!614279 () Bool)

(assert (=> b!640341 m!614279))

(assert (=> b!640336 m!614239))

(declare-fun m!614281 () Bool)

(assert (=> b!640336 m!614281))

(assert (=> b!640340 m!614235))

(declare-fun m!614283 () Bool)

(assert (=> b!640342 m!614283))

(declare-fun m!614285 () Bool)

(assert (=> b!640338 m!614285))

(declare-fun m!614287 () Bool)

(assert (=> b!640325 m!614287))

(push 1)

