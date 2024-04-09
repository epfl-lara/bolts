; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56068 () Bool)

(assert start!56068)

(declare-fun b!617339 () Bool)

(declare-datatypes ((Unit!20220 0))(
  ( (Unit!20221) )
))
(declare-fun e!354007 () Unit!20220)

(declare-fun Unit!20222 () Unit!20220)

(assert (=> b!617339 (= e!354007 Unit!20222)))

(declare-fun b!617340 () Bool)

(declare-fun res!397801 () Bool)

(declare-fun e!354015 () Bool)

(assert (=> b!617340 (=> (not res!397801) (not e!354015))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617340 (= res!397801 (validKeyInArray!0 k!1786))))

(declare-fun b!617341 () Bool)

(declare-fun e!354012 () Bool)

(declare-fun e!354013 () Bool)

(assert (=> b!617341 (= e!354012 e!354013)))

(declare-fun res!397804 () Bool)

(assert (=> b!617341 (=> (not res!397804) (not e!354013))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37501 0))(
  ( (array!37502 (arr!17993 (Array (_ BitVec 32) (_ BitVec 64))) (size!18357 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37501)

(assert (=> b!617341 (= res!397804 (= (select (store (arr!17993 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!284363 () array!37501)

(assert (=> b!617341 (= lt!284363 (array!37502 (store (arr!17993 a!2986) i!1108 k!1786) (size!18357 a!2986)))))

(declare-fun b!617342 () Bool)

(assert (=> b!617342 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!284372 () Unit!20220)

(declare-datatypes ((List!12087 0))(
  ( (Nil!12084) (Cons!12083 (h!13128 (_ BitVec 64)) (t!18323 List!12087)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37501 (_ BitVec 64) (_ BitVec 32) List!12087) Unit!20220)

(assert (=> b!617342 (= lt!284372 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284363 (select (arr!17993 a!2986) j!136) j!136 Nil!12084))))

(declare-fun arrayNoDuplicates!0 (array!37501 (_ BitVec 32) List!12087) Bool)

(assert (=> b!617342 (arrayNoDuplicates!0 lt!284363 j!136 Nil!12084)))

(declare-fun lt!284365 () Unit!20220)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37501 (_ BitVec 32) (_ BitVec 32)) Unit!20220)

(assert (=> b!617342 (= lt!284365 (lemmaNoDuplicateFromThenFromBigger!0 lt!284363 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617342 (arrayNoDuplicates!0 lt!284363 #b00000000000000000000000000000000 Nil!12084)))

(declare-fun lt!284375 () Unit!20220)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37501 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12087) Unit!20220)

(assert (=> b!617342 (= lt!284375 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12084))))

(declare-fun arrayContainsKey!0 (array!37501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617342 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284376 () Unit!20220)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37501 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20220)

(assert (=> b!617342 (= lt!284376 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284363 (select (arr!17993 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!354014 () Unit!20220)

(declare-fun Unit!20223 () Unit!20220)

(assert (=> b!617342 (= e!354014 Unit!20223)))

(declare-fun b!617343 () Bool)

(declare-fun Unit!20224 () Unit!20220)

(assert (=> b!617343 (= e!354014 Unit!20224)))

(declare-fun b!617344 () Bool)

(declare-fun e!354006 () Bool)

(declare-datatypes ((SeekEntryResult!6440 0))(
  ( (MissingZero!6440 (index!28043 (_ BitVec 32))) (Found!6440 (index!28044 (_ BitVec 32))) (Intermediate!6440 (undefined!7252 Bool) (index!28045 (_ BitVec 32)) (x!56857 (_ BitVec 32))) (Undefined!6440) (MissingVacant!6440 (index!28046 (_ BitVec 32))) )
))
(declare-fun lt!284359 () SeekEntryResult!6440)

(declare-fun lt!284366 () SeekEntryResult!6440)

(assert (=> b!617344 (= e!354006 (= lt!284359 lt!284366))))

(declare-fun b!617345 () Bool)

(declare-fun e!354010 () Unit!20220)

(declare-fun Unit!20225 () Unit!20220)

(assert (=> b!617345 (= e!354010 Unit!20225)))

(declare-fun b!617346 () Bool)

(declare-fun res!397816 () Bool)

(assert (=> b!617346 (=> (not res!397816) (not e!354015))))

(assert (=> b!617346 (= res!397816 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!397813 () Bool)

(declare-fun b!617347 () Bool)

(assert (=> b!617347 (= res!397813 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) j!136))))

(declare-fun e!354008 () Bool)

(assert (=> b!617347 (=> (not res!397813) (not e!354008))))

(declare-fun e!354009 () Bool)

(assert (=> b!617347 (= e!354009 e!354008)))

(declare-fun b!617348 () Bool)

(declare-fun e!354003 () Bool)

(assert (=> b!617348 (= e!354003 true)))

(assert (=> b!617348 (= (select (store (arr!17993 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617349 () Bool)

(declare-fun res!397808 () Bool)

(assert (=> b!617349 (=> (not res!397808) (not e!354015))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!617349 (= res!397808 (and (= (size!18357 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18357 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18357 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617350 () Bool)

(assert (=> b!617350 false))

(declare-fun lt!284357 () Unit!20220)

(assert (=> b!617350 (= lt!284357 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284363 (select (arr!17993 a!2986) j!136) index!984 Nil!12084))))

(assert (=> b!617350 (arrayNoDuplicates!0 lt!284363 index!984 Nil!12084)))

(declare-fun lt!284361 () Unit!20220)

(assert (=> b!617350 (= lt!284361 (lemmaNoDuplicateFromThenFromBigger!0 lt!284363 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617350 (arrayNoDuplicates!0 lt!284363 #b00000000000000000000000000000000 Nil!12084)))

(declare-fun lt!284368 () Unit!20220)

(assert (=> b!617350 (= lt!284368 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12084))))

(assert (=> b!617350 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284373 () Unit!20220)

(assert (=> b!617350 (= lt!284373 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284363 (select (arr!17993 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354016 () Bool)

(assert (=> b!617350 e!354016))

(declare-fun res!397805 () Bool)

(assert (=> b!617350 (=> (not res!397805) (not e!354016))))

(assert (=> b!617350 (= res!397805 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) j!136))))

(declare-fun e!354004 () Unit!20220)

(declare-fun Unit!20226 () Unit!20220)

(assert (=> b!617350 (= e!354004 Unit!20226)))

(declare-fun b!617351 () Bool)

(declare-fun Unit!20227 () Unit!20220)

(assert (=> b!617351 (= e!354007 Unit!20227)))

(declare-fun res!397817 () Bool)

(assert (=> b!617351 (= res!397817 (= (select (store (arr!17993 a!2986) i!1108 k!1786) index!984) (select (arr!17993 a!2986) j!136)))))

(declare-fun e!354011 () Bool)

(assert (=> b!617351 (=> (not res!397817) (not e!354011))))

(assert (=> b!617351 e!354011))

(declare-fun c!70139 () Bool)

(assert (=> b!617351 (= c!70139 (bvslt j!136 index!984))))

(declare-fun lt!284367 () Unit!20220)

(assert (=> b!617351 (= lt!284367 e!354014)))

(declare-fun c!70136 () Bool)

(assert (=> b!617351 (= c!70136 (bvslt index!984 j!136))))

(declare-fun lt!284360 () Unit!20220)

(assert (=> b!617351 (= lt!284360 e!354004)))

(assert (=> b!617351 false))

(declare-fun b!617352 () Bool)

(assert (=> b!617352 (= e!354016 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) index!984))))

(declare-fun b!617353 () Bool)

(declare-fun Unit!20228 () Unit!20220)

(assert (=> b!617353 (= e!354004 Unit!20228)))

(declare-fun b!617354 () Bool)

(declare-fun res!397806 () Bool)

(assert (=> b!617354 (=> (not res!397806) (not e!354015))))

(assert (=> b!617354 (= res!397806 (validKeyInArray!0 (select (arr!17993 a!2986) j!136)))))

(declare-fun b!617355 () Bool)

(declare-fun e!354002 () Bool)

(assert (=> b!617355 (= e!354013 e!354002)))

(declare-fun res!397809 () Bool)

(assert (=> b!617355 (=> (not res!397809) (not e!354002))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!617355 (= res!397809 (and (= lt!284359 (Found!6440 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17993 a!2986) index!984) (select (arr!17993 a!2986) j!136))) (not (= (select (arr!17993 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37501 (_ BitVec 32)) SeekEntryResult!6440)

(assert (=> b!617355 (= lt!284359 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17993 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617356 () Bool)

(declare-fun Unit!20229 () Unit!20220)

(assert (=> b!617356 (= e!354010 Unit!20229)))

(assert (=> b!617356 false))

(declare-fun b!617357 () Bool)

(declare-fun res!397811 () Bool)

(assert (=> b!617357 (=> (not res!397811) (not e!354012))))

(assert (=> b!617357 (= res!397811 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17993 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617358 () Bool)

(assert (=> b!617358 (= e!354008 (arrayContainsKey!0 lt!284363 (select (arr!17993 a!2986) j!136) index!984))))

(declare-fun b!617359 () Bool)

(declare-fun res!397815 () Bool)

(assert (=> b!617359 (= res!397815 (bvsge j!136 index!984))))

(assert (=> b!617359 (=> res!397815 e!354009)))

(assert (=> b!617359 (= e!354011 e!354009)))

(declare-fun res!397812 () Bool)

(assert (=> start!56068 (=> (not res!397812) (not e!354015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56068 (= res!397812 (validMask!0 mask!3053))))

(assert (=> start!56068 e!354015))

(assert (=> start!56068 true))

(declare-fun array_inv!13767 (array!37501) Bool)

(assert (=> start!56068 (array_inv!13767 a!2986)))

(declare-fun b!617360 () Bool)

(declare-fun res!397807 () Bool)

(assert (=> b!617360 (=> (not res!397807) (not e!354012))))

(assert (=> b!617360 (= res!397807 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12084))))

(declare-fun b!617361 () Bool)

(assert (=> b!617361 (= e!354015 e!354012)))

(declare-fun res!397814 () Bool)

(assert (=> b!617361 (=> (not res!397814) (not e!354012))))

(declare-fun lt!284371 () SeekEntryResult!6440)

(assert (=> b!617361 (= res!397814 (or (= lt!284371 (MissingZero!6440 i!1108)) (= lt!284371 (MissingVacant!6440 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37501 (_ BitVec 32)) SeekEntryResult!6440)

(assert (=> b!617361 (= lt!284371 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617362 () Bool)

(declare-fun res!397810 () Bool)

(assert (=> b!617362 (=> (not res!397810) (not e!354012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37501 (_ BitVec 32)) Bool)

(assert (=> b!617362 (= res!397810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617363 () Bool)

(assert (=> b!617363 (= e!354002 (not e!354003))))

(declare-fun res!397802 () Bool)

(assert (=> b!617363 (=> res!397802 e!354003)))

(declare-fun lt!284369 () SeekEntryResult!6440)

(assert (=> b!617363 (= res!397802 (not (= lt!284369 (MissingVacant!6440 vacantSpotIndex!68))))))

(declare-fun lt!284374 () Unit!20220)

(assert (=> b!617363 (= lt!284374 e!354007)))

(declare-fun c!70138 () Bool)

(assert (=> b!617363 (= c!70138 (= lt!284369 (Found!6440 index!984)))))

(declare-fun lt!284364 () Unit!20220)

(assert (=> b!617363 (= lt!284364 e!354010)))

(declare-fun c!70137 () Bool)

(assert (=> b!617363 (= c!70137 (= lt!284369 Undefined!6440))))

(declare-fun lt!284370 () (_ BitVec 64))

(assert (=> b!617363 (= lt!284369 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284370 lt!284363 mask!3053))))

(assert (=> b!617363 e!354006))

(declare-fun res!397803 () Bool)

(assert (=> b!617363 (=> (not res!397803) (not e!354006))))

(declare-fun lt!284358 () (_ BitVec 32))

(assert (=> b!617363 (= res!397803 (= lt!284366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284358 vacantSpotIndex!68 lt!284370 lt!284363 mask!3053)))))

(assert (=> b!617363 (= lt!284366 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284358 vacantSpotIndex!68 (select (arr!17993 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617363 (= lt!284370 (select (store (arr!17993 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284362 () Unit!20220)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37501 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20220)

(assert (=> b!617363 (= lt!284362 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284358 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617363 (= lt!284358 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56068 res!397812) b!617349))

(assert (= (and b!617349 res!397808) b!617354))

(assert (= (and b!617354 res!397806) b!617340))

(assert (= (and b!617340 res!397801) b!617346))

(assert (= (and b!617346 res!397816) b!617361))

(assert (= (and b!617361 res!397814) b!617362))

(assert (= (and b!617362 res!397810) b!617360))

(assert (= (and b!617360 res!397807) b!617357))

(assert (= (and b!617357 res!397811) b!617341))

(assert (= (and b!617341 res!397804) b!617355))

(assert (= (and b!617355 res!397809) b!617363))

(assert (= (and b!617363 res!397803) b!617344))

(assert (= (and b!617363 c!70137) b!617356))

(assert (= (and b!617363 (not c!70137)) b!617345))

(assert (= (and b!617363 c!70138) b!617351))

(assert (= (and b!617363 (not c!70138)) b!617339))

(assert (= (and b!617351 res!397817) b!617359))

(assert (= (and b!617359 (not res!397815)) b!617347))

(assert (= (and b!617347 res!397813) b!617358))

(assert (= (and b!617351 c!70139) b!617342))

(assert (= (and b!617351 (not c!70139)) b!617343))

(assert (= (and b!617351 c!70136) b!617350))

(assert (= (and b!617351 (not c!70136)) b!617353))

(assert (= (and b!617350 res!397805) b!617352))

(assert (= (and b!617363 (not res!397802)) b!617348))

(declare-fun m!593489 () Bool)

(assert (=> b!617352 m!593489))

(assert (=> b!617352 m!593489))

(declare-fun m!593491 () Bool)

(assert (=> b!617352 m!593491))

(declare-fun m!593493 () Bool)

(assert (=> b!617355 m!593493))

(assert (=> b!617355 m!593489))

(assert (=> b!617355 m!593489))

(declare-fun m!593495 () Bool)

(assert (=> b!617355 m!593495))

(assert (=> b!617358 m!593489))

(assert (=> b!617358 m!593489))

(assert (=> b!617358 m!593491))

(declare-fun m!593497 () Bool)

(assert (=> b!617361 m!593497))

(declare-fun m!593499 () Bool)

(assert (=> b!617360 m!593499))

(declare-fun m!593501 () Bool)

(assert (=> start!56068 m!593501))

(declare-fun m!593503 () Bool)

(assert (=> start!56068 m!593503))

(assert (=> b!617342 m!593489))

(declare-fun m!593505 () Bool)

(assert (=> b!617342 m!593505))

(assert (=> b!617342 m!593489))

(declare-fun m!593507 () Bool)

(assert (=> b!617342 m!593507))

(assert (=> b!617342 m!593489))

(declare-fun m!593509 () Bool)

(assert (=> b!617342 m!593509))

(declare-fun m!593511 () Bool)

(assert (=> b!617342 m!593511))

(assert (=> b!617342 m!593489))

(declare-fun m!593513 () Bool)

(assert (=> b!617342 m!593513))

(declare-fun m!593515 () Bool)

(assert (=> b!617342 m!593515))

(declare-fun m!593517 () Bool)

(assert (=> b!617342 m!593517))

(assert (=> b!617347 m!593489))

(assert (=> b!617347 m!593489))

(declare-fun m!593519 () Bool)

(assert (=> b!617347 m!593519))

(declare-fun m!593521 () Bool)

(assert (=> b!617341 m!593521))

(declare-fun m!593523 () Bool)

(assert (=> b!617341 m!593523))

(declare-fun m!593525 () Bool)

(assert (=> b!617362 m!593525))

(assert (=> b!617351 m!593521))

(declare-fun m!593527 () Bool)

(assert (=> b!617351 m!593527))

(assert (=> b!617351 m!593489))

(assert (=> b!617354 m!593489))

(assert (=> b!617354 m!593489))

(declare-fun m!593529 () Bool)

(assert (=> b!617354 m!593529))

(declare-fun m!593531 () Bool)

(assert (=> b!617346 m!593531))

(assert (=> b!617350 m!593489))

(declare-fun m!593533 () Bool)

(assert (=> b!617350 m!593533))

(assert (=> b!617350 m!593489))

(declare-fun m!593535 () Bool)

(assert (=> b!617350 m!593535))

(assert (=> b!617350 m!593507))

(declare-fun m!593537 () Bool)

(assert (=> b!617350 m!593537))

(assert (=> b!617350 m!593489))

(declare-fun m!593539 () Bool)

(assert (=> b!617350 m!593539))

(assert (=> b!617350 m!593517))

(assert (=> b!617350 m!593489))

(declare-fun m!593541 () Bool)

(assert (=> b!617350 m!593541))

(assert (=> b!617350 m!593489))

(assert (=> b!617350 m!593519))

(declare-fun m!593543 () Bool)

(assert (=> b!617340 m!593543))

(declare-fun m!593545 () Bool)

(assert (=> b!617363 m!593545))

(declare-fun m!593547 () Bool)

(assert (=> b!617363 m!593547))

(declare-fun m!593549 () Bool)

(assert (=> b!617363 m!593549))

(assert (=> b!617363 m!593489))

(assert (=> b!617363 m!593521))

(declare-fun m!593551 () Bool)

(assert (=> b!617363 m!593551))

(assert (=> b!617363 m!593489))

(declare-fun m!593553 () Bool)

(assert (=> b!617363 m!593553))

(declare-fun m!593555 () Bool)

(assert (=> b!617363 m!593555))

(declare-fun m!593557 () Bool)

(assert (=> b!617357 m!593557))

(assert (=> b!617348 m!593521))

(assert (=> b!617348 m!593527))

(push 1)

