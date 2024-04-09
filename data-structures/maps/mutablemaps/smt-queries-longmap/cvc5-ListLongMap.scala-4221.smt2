; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57936 () Bool)

(assert start!57936)

(declare-fun b!640382 () Bool)

(declare-datatypes ((Unit!21646 0))(
  ( (Unit!21647) )
))
(declare-fun e!366594 () Unit!21646)

(declare-fun Unit!21648 () Unit!21646)

(assert (=> b!640382 (= e!366594 Unit!21648)))

(declare-fun b!640383 () Bool)

(declare-fun res!414811 () Bool)

(declare-fun e!366596 () Bool)

(assert (=> b!640383 (=> (not res!414811) (not e!366596))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38319 0))(
  ( (array!38320 (arr!18375 (Array (_ BitVec 32) (_ BitVec 64))) (size!18739 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38319)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!640383 (= res!414811 (and (= (size!18739 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18739 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18739 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640384 () Bool)

(declare-fun res!414814 () Bool)

(assert (=> b!640384 (=> (not res!414814) (not e!366596))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38319 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640384 (= res!414814 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640385 () Bool)

(declare-fun e!366593 () Bool)

(assert (=> b!640385 (= e!366593 (or (bvsge (size!18739 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18739 a!2986))))))

(declare-fun lt!296449 () array!38319)

(declare-datatypes ((List!12469 0))(
  ( (Nil!12466) (Cons!12465 (h!13510 (_ BitVec 64)) (t!18705 List!12469)) )
))
(declare-fun arrayNoDuplicates!0 (array!38319 (_ BitVec 32) List!12469) Bool)

(assert (=> b!640385 (arrayNoDuplicates!0 lt!296449 j!136 Nil!12466)))

(declare-fun lt!296442 () Unit!21646)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38319 (_ BitVec 32) (_ BitVec 32)) Unit!21646)

(assert (=> b!640385 (= lt!296442 (lemmaNoDuplicateFromThenFromBigger!0 lt!296449 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640385 (arrayNoDuplicates!0 lt!296449 #b00000000000000000000000000000000 Nil!12466)))

(declare-fun lt!296446 () Unit!21646)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38319 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12469) Unit!21646)

(assert (=> b!640385 (= lt!296446 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12466))))

(assert (=> b!640385 (arrayContainsKey!0 lt!296449 (select (arr!18375 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296453 () Unit!21646)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38319 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21646)

(assert (=> b!640385 (= lt!296453 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296449 (select (arr!18375 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640386 () Bool)

(declare-fun res!414815 () Bool)

(assert (=> b!640386 (=> (not res!414815) (not e!366596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640386 (= res!414815 (validKeyInArray!0 (select (arr!18375 a!2986) j!136)))))

(declare-fun b!640387 () Bool)

(declare-fun e!366599 () Bool)

(declare-fun e!366595 () Bool)

(assert (=> b!640387 (= e!366599 e!366595)))

(declare-fun res!414812 () Bool)

(assert (=> b!640387 (=> res!414812 e!366595)))

(declare-fun lt!296454 () (_ BitVec 64))

(declare-fun lt!296448 () (_ BitVec 64))

(assert (=> b!640387 (= res!414812 (or (not (= (select (arr!18375 a!2986) j!136) lt!296454)) (not (= (select (arr!18375 a!2986) j!136) lt!296448)) (bvsge j!136 index!984)))))

(declare-fun b!640388 () Bool)

(declare-fun res!414809 () Bool)

(declare-fun e!366592 () Bool)

(assert (=> b!640388 (=> (not res!414809) (not e!366592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38319 (_ BitVec 32)) Bool)

(assert (=> b!640388 (= res!414809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640389 () Bool)

(declare-fun res!414818 () Bool)

(assert (=> b!640389 (=> (not res!414818) (not e!366596))))

(assert (=> b!640389 (= res!414818 (validKeyInArray!0 k!1786))))

(declare-fun b!640390 () Bool)

(declare-fun e!366601 () Bool)

(declare-datatypes ((SeekEntryResult!6822 0))(
  ( (MissingZero!6822 (index!29607 (_ BitVec 32))) (Found!6822 (index!29608 (_ BitVec 32))) (Intermediate!6822 (undefined!7634 Bool) (index!29609 (_ BitVec 32)) (x!58395 (_ BitVec 32))) (Undefined!6822) (MissingVacant!6822 (index!29610 (_ BitVec 32))) )
))
(declare-fun lt!296451 () SeekEntryResult!6822)

(declare-fun lt!296445 () SeekEntryResult!6822)

(assert (=> b!640390 (= e!366601 (= lt!296451 lt!296445))))

(declare-fun b!640391 () Bool)

(declare-fun e!366600 () Bool)

(assert (=> b!640391 (= e!366592 e!366600)))

(declare-fun res!414807 () Bool)

(assert (=> b!640391 (=> (not res!414807) (not e!366600))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!640391 (= res!414807 (= (select (store (arr!18375 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640391 (= lt!296449 (array!38320 (store (arr!18375 a!2986) i!1108 k!1786) (size!18739 a!2986)))))

(declare-fun b!640392 () Bool)

(declare-fun e!366591 () Bool)

(assert (=> b!640392 (= e!366600 e!366591)))

(declare-fun res!414802 () Bool)

(assert (=> b!640392 (=> (not res!414802) (not e!366591))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!640392 (= res!414802 (and (= lt!296451 (Found!6822 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18375 a!2986) index!984) (select (arr!18375 a!2986) j!136))) (not (= (select (arr!18375 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38319 (_ BitVec 32)) SeekEntryResult!6822)

(assert (=> b!640392 (= lt!296451 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18375 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!414805 () Bool)

(assert (=> start!57936 (=> (not res!414805) (not e!366596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57936 (= res!414805 (validMask!0 mask!3053))))

(assert (=> start!57936 e!366596))

(assert (=> start!57936 true))

(declare-fun array_inv!14149 (array!38319) Bool)

(assert (=> start!57936 (array_inv!14149 a!2986)))

(declare-fun b!640393 () Bool)

(declare-fun e!366590 () Bool)

(assert (=> b!640393 (= e!366595 e!366590)))

(declare-fun res!414817 () Bool)

(assert (=> b!640393 (=> (not res!414817) (not e!366590))))

(assert (=> b!640393 (= res!414817 (arrayContainsKey!0 lt!296449 (select (arr!18375 a!2986) j!136) j!136))))

(declare-fun b!640394 () Bool)

(declare-fun e!366598 () Bool)

(assert (=> b!640394 (= e!366591 (not e!366598))))

(declare-fun res!414816 () Bool)

(assert (=> b!640394 (=> res!414816 e!366598)))

(declare-fun lt!296444 () SeekEntryResult!6822)

(assert (=> b!640394 (= res!414816 (not (= lt!296444 (Found!6822 index!984))))))

(declare-fun lt!296447 () Unit!21646)

(assert (=> b!640394 (= lt!296447 e!366594)))

(declare-fun c!73157 () Bool)

(assert (=> b!640394 (= c!73157 (= lt!296444 Undefined!6822))))

(assert (=> b!640394 (= lt!296444 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296454 lt!296449 mask!3053))))

(assert (=> b!640394 e!366601))

(declare-fun res!414803 () Bool)

(assert (=> b!640394 (=> (not res!414803) (not e!366601))))

(declare-fun lt!296450 () (_ BitVec 32))

(assert (=> b!640394 (= res!414803 (= lt!296445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296450 vacantSpotIndex!68 lt!296454 lt!296449 mask!3053)))))

(assert (=> b!640394 (= lt!296445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296450 vacantSpotIndex!68 (select (arr!18375 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640394 (= lt!296454 (select (store (arr!18375 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296443 () Unit!21646)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38319 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21646)

(assert (=> b!640394 (= lt!296443 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296450 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640394 (= lt!296450 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640395 () Bool)

(assert (=> b!640395 (= e!366598 e!366593)))

(declare-fun res!414806 () Bool)

(assert (=> b!640395 (=> res!414806 e!366593)))

(assert (=> b!640395 (= res!414806 (or (not (= (select (arr!18375 a!2986) j!136) lt!296454)) (not (= (select (arr!18375 a!2986) j!136) lt!296448)) (bvsge j!136 index!984)))))

(assert (=> b!640395 e!366599))

(declare-fun res!414808 () Bool)

(assert (=> b!640395 (=> (not res!414808) (not e!366599))))

(assert (=> b!640395 (= res!414808 (= lt!296448 (select (arr!18375 a!2986) j!136)))))

(assert (=> b!640395 (= lt!296448 (select (store (arr!18375 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640396 () Bool)

(assert (=> b!640396 (= e!366596 e!366592)))

(declare-fun res!414813 () Bool)

(assert (=> b!640396 (=> (not res!414813) (not e!366592))))

(declare-fun lt!296452 () SeekEntryResult!6822)

(assert (=> b!640396 (= res!414813 (or (= lt!296452 (MissingZero!6822 i!1108)) (= lt!296452 (MissingVacant!6822 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38319 (_ BitVec 32)) SeekEntryResult!6822)

(assert (=> b!640396 (= lt!296452 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640397 () Bool)

(assert (=> b!640397 (= e!366590 (arrayContainsKey!0 lt!296449 (select (arr!18375 a!2986) j!136) index!984))))

(declare-fun b!640398 () Bool)

(declare-fun Unit!21649 () Unit!21646)

(assert (=> b!640398 (= e!366594 Unit!21649)))

(assert (=> b!640398 false))

(declare-fun b!640399 () Bool)

(declare-fun res!414810 () Bool)

(assert (=> b!640399 (=> (not res!414810) (not e!366592))))

(assert (=> b!640399 (= res!414810 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18375 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640400 () Bool)

(declare-fun res!414804 () Bool)

(assert (=> b!640400 (=> (not res!414804) (not e!366592))))

(assert (=> b!640400 (= res!414804 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12466))))

(assert (= (and start!57936 res!414805) b!640383))

(assert (= (and b!640383 res!414811) b!640386))

(assert (= (and b!640386 res!414815) b!640389))

(assert (= (and b!640389 res!414818) b!640384))

(assert (= (and b!640384 res!414814) b!640396))

(assert (= (and b!640396 res!414813) b!640388))

(assert (= (and b!640388 res!414809) b!640400))

(assert (= (and b!640400 res!414804) b!640399))

(assert (= (and b!640399 res!414810) b!640391))

(assert (= (and b!640391 res!414807) b!640392))

(assert (= (and b!640392 res!414802) b!640394))

(assert (= (and b!640394 res!414803) b!640390))

(assert (= (and b!640394 c!73157) b!640398))

(assert (= (and b!640394 (not c!73157)) b!640382))

(assert (= (and b!640394 (not res!414816)) b!640395))

(assert (= (and b!640395 res!414808) b!640387))

(assert (= (and b!640387 (not res!414812)) b!640393))

(assert (= (and b!640393 res!414817) b!640397))

(assert (= (and b!640395 (not res!414806)) b!640385))

(declare-fun m!614289 () Bool)

(assert (=> b!640388 m!614289))

(declare-fun m!614291 () Bool)

(assert (=> b!640391 m!614291))

(declare-fun m!614293 () Bool)

(assert (=> b!640391 m!614293))

(declare-fun m!614295 () Bool)

(assert (=> b!640397 m!614295))

(assert (=> b!640397 m!614295))

(declare-fun m!614297 () Bool)

(assert (=> b!640397 m!614297))

(assert (=> b!640395 m!614295))

(assert (=> b!640395 m!614291))

(declare-fun m!614299 () Bool)

(assert (=> b!640395 m!614299))

(declare-fun m!614301 () Bool)

(assert (=> b!640385 m!614301))

(assert (=> b!640385 m!614295))

(declare-fun m!614303 () Bool)

(assert (=> b!640385 m!614303))

(assert (=> b!640385 m!614295))

(declare-fun m!614305 () Bool)

(assert (=> b!640385 m!614305))

(declare-fun m!614307 () Bool)

(assert (=> b!640385 m!614307))

(assert (=> b!640385 m!614295))

(declare-fun m!614309 () Bool)

(assert (=> b!640385 m!614309))

(declare-fun m!614311 () Bool)

(assert (=> b!640385 m!614311))

(declare-fun m!614313 () Bool)

(assert (=> b!640384 m!614313))

(declare-fun m!614315 () Bool)

(assert (=> b!640394 m!614315))

(declare-fun m!614317 () Bool)

(assert (=> b!640394 m!614317))

(assert (=> b!640394 m!614295))

(assert (=> b!640394 m!614291))

(declare-fun m!614319 () Bool)

(assert (=> b!640394 m!614319))

(assert (=> b!640394 m!614295))

(declare-fun m!614321 () Bool)

(assert (=> b!640394 m!614321))

(declare-fun m!614323 () Bool)

(assert (=> b!640394 m!614323))

(declare-fun m!614325 () Bool)

(assert (=> b!640394 m!614325))

(assert (=> b!640386 m!614295))

(assert (=> b!640386 m!614295))

(declare-fun m!614327 () Bool)

(assert (=> b!640386 m!614327))

(assert (=> b!640393 m!614295))

(assert (=> b!640393 m!614295))

(declare-fun m!614329 () Bool)

(assert (=> b!640393 m!614329))

(assert (=> b!640387 m!614295))

(declare-fun m!614331 () Bool)

(assert (=> b!640389 m!614331))

(declare-fun m!614333 () Bool)

(assert (=> start!57936 m!614333))

(declare-fun m!614335 () Bool)

(assert (=> start!57936 m!614335))

(declare-fun m!614337 () Bool)

(assert (=> b!640400 m!614337))

(declare-fun m!614339 () Bool)

(assert (=> b!640392 m!614339))

(assert (=> b!640392 m!614295))

(assert (=> b!640392 m!614295))

(declare-fun m!614341 () Bool)

(assert (=> b!640392 m!614341))

(declare-fun m!614343 () Bool)

(assert (=> b!640396 m!614343))

(declare-fun m!614345 () Bool)

(assert (=> b!640399 m!614345))

(push 1)

(assert (not b!640385))

(assert (not start!57936))

(assert (not b!640384))

(assert (not b!640386))

(assert (not b!640400))

(assert (not b!640394))

(assert (not b!640397))

(assert (not b!640389))

(assert (not b!640393))

(assert (not b!640396))

(assert (not b!640388))

(assert (not b!640392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

