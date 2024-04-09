; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57932 () Bool)

(assert start!57932)

(declare-fun b!640268 () Bool)

(declare-fun res!414700 () Bool)

(declare-fun e!366522 () Bool)

(assert (=> b!640268 (=> (not res!414700) (not e!366522))))

(declare-datatypes ((array!38315 0))(
  ( (array!38316 (arr!18373 (Array (_ BitVec 32) (_ BitVec 64))) (size!18737 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38315)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640268 (= res!414700 (validKeyInArray!0 (select (arr!18373 a!2986) j!136)))))

(declare-fun b!640269 () Bool)

(declare-fun e!366528 () Bool)

(declare-fun e!366525 () Bool)

(assert (=> b!640269 (= e!366528 e!366525)))

(declare-fun res!414710 () Bool)

(assert (=> b!640269 (=> (not res!414710) (not e!366525))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!640269 (= res!414710 (= (select (store (arr!18373 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!296371 () array!38315)

(assert (=> b!640269 (= lt!296371 (array!38316 (store (arr!18373 a!2986) i!1108 k0!1786) (size!18737 a!2986)))))

(declare-fun b!640270 () Bool)

(declare-fun res!414713 () Bool)

(assert (=> b!640270 (=> (not res!414713) (not e!366528))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640270 (= res!414713 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18373 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640271 () Bool)

(declare-fun e!366524 () Bool)

(declare-datatypes ((SeekEntryResult!6820 0))(
  ( (MissingZero!6820 (index!29599 (_ BitVec 32))) (Found!6820 (index!29600 (_ BitVec 32))) (Intermediate!6820 (undefined!7632 Bool) (index!29601 (_ BitVec 32)) (x!58385 (_ BitVec 32))) (Undefined!6820) (MissingVacant!6820 (index!29602 (_ BitVec 32))) )
))
(declare-fun lt!296368 () SeekEntryResult!6820)

(declare-fun lt!296376 () SeekEntryResult!6820)

(assert (=> b!640271 (= e!366524 (= lt!296368 lt!296376))))

(declare-fun b!640272 () Bool)

(declare-datatypes ((Unit!21638 0))(
  ( (Unit!21639) )
))
(declare-fun e!366519 () Unit!21638)

(declare-fun Unit!21640 () Unit!21638)

(assert (=> b!640272 (= e!366519 Unit!21640)))

(assert (=> b!640272 false))

(declare-fun b!640273 () Bool)

(assert (=> b!640273 (= e!366522 e!366528)))

(declare-fun res!414705 () Bool)

(assert (=> b!640273 (=> (not res!414705) (not e!366528))))

(declare-fun lt!296373 () SeekEntryResult!6820)

(assert (=> b!640273 (= res!414705 (or (= lt!296373 (MissingZero!6820 i!1108)) (= lt!296373 (MissingVacant!6820 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38315 (_ BitVec 32)) SeekEntryResult!6820)

(assert (=> b!640273 (= lt!296373 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!640274 () Bool)

(declare-fun e!366526 () Bool)

(declare-fun e!366521 () Bool)

(assert (=> b!640274 (= e!366526 e!366521)))

(declare-fun res!414707 () Bool)

(assert (=> b!640274 (=> res!414707 e!366521)))

(declare-fun lt!296365 () (_ BitVec 64))

(declare-fun lt!296367 () (_ BitVec 64))

(assert (=> b!640274 (= res!414707 (or (not (= (select (arr!18373 a!2986) j!136) lt!296367)) (not (= (select (arr!18373 a!2986) j!136) lt!296365)) (bvsge j!136 index!984)))))

(declare-fun e!366529 () Bool)

(assert (=> b!640274 e!366529))

(declare-fun res!414712 () Bool)

(assert (=> b!640274 (=> (not res!414712) (not e!366529))))

(assert (=> b!640274 (= res!414712 (= lt!296365 (select (arr!18373 a!2986) j!136)))))

(assert (=> b!640274 (= lt!296365 (select (store (arr!18373 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!640276 () Bool)

(declare-fun e!366520 () Bool)

(assert (=> b!640276 (= e!366529 e!366520)))

(declare-fun res!414708 () Bool)

(assert (=> b!640276 (=> res!414708 e!366520)))

(assert (=> b!640276 (= res!414708 (or (not (= (select (arr!18373 a!2986) j!136) lt!296367)) (not (= (select (arr!18373 a!2986) j!136) lt!296365)) (bvsge j!136 index!984)))))

(declare-fun b!640277 () Bool)

(declare-fun res!414709 () Bool)

(assert (=> b!640277 (=> (not res!414709) (not e!366528))))

(declare-datatypes ((List!12467 0))(
  ( (Nil!12464) (Cons!12463 (h!13508 (_ BitVec 64)) (t!18703 List!12467)) )
))
(declare-fun arrayNoDuplicates!0 (array!38315 (_ BitVec 32) List!12467) Bool)

(assert (=> b!640277 (= res!414709 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12464))))

(declare-fun b!640278 () Bool)

(declare-fun e!366518 () Bool)

(assert (=> b!640278 (= e!366518 (not e!366526))))

(declare-fun res!414702 () Bool)

(assert (=> b!640278 (=> res!414702 e!366526)))

(declare-fun lt!296369 () SeekEntryResult!6820)

(assert (=> b!640278 (= res!414702 (not (= lt!296369 (Found!6820 index!984))))))

(declare-fun lt!296364 () Unit!21638)

(assert (=> b!640278 (= lt!296364 e!366519)))

(declare-fun c!73151 () Bool)

(assert (=> b!640278 (= c!73151 (= lt!296369 Undefined!6820))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38315 (_ BitVec 32)) SeekEntryResult!6820)

(assert (=> b!640278 (= lt!296369 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296367 lt!296371 mask!3053))))

(assert (=> b!640278 e!366524))

(declare-fun res!414701 () Bool)

(assert (=> b!640278 (=> (not res!414701) (not e!366524))))

(declare-fun lt!296366 () (_ BitVec 32))

(assert (=> b!640278 (= res!414701 (= lt!296376 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296366 vacantSpotIndex!68 lt!296367 lt!296371 mask!3053)))))

(assert (=> b!640278 (= lt!296376 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296366 vacantSpotIndex!68 (select (arr!18373 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640278 (= lt!296367 (select (store (arr!18373 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!296375 () Unit!21638)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21638)

(assert (=> b!640278 (= lt!296375 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296366 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640278 (= lt!296366 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640279 () Bool)

(declare-fun res!414711 () Bool)

(assert (=> b!640279 (=> (not res!414711) (not e!366528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38315 (_ BitVec 32)) Bool)

(assert (=> b!640279 (= res!414711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640280 () Bool)

(declare-fun e!366527 () Bool)

(assert (=> b!640280 (= e!366520 e!366527)))

(declare-fun res!414715 () Bool)

(assert (=> b!640280 (=> (not res!414715) (not e!366527))))

(declare-fun arrayContainsKey!0 (array!38315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640280 (= res!414715 (arrayContainsKey!0 lt!296371 (select (arr!18373 a!2986) j!136) j!136))))

(declare-fun b!640281 () Bool)

(declare-fun res!414716 () Bool)

(assert (=> b!640281 (=> (not res!414716) (not e!366522))))

(assert (=> b!640281 (= res!414716 (and (= (size!18737 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18737 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18737 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640282 () Bool)

(assert (=> b!640282 (= e!366521 true)))

(assert (=> b!640282 (arrayNoDuplicates!0 lt!296371 j!136 Nil!12464)))

(declare-fun lt!296374 () Unit!21638)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38315 (_ BitVec 32) (_ BitVec 32)) Unit!21638)

(assert (=> b!640282 (= lt!296374 (lemmaNoDuplicateFromThenFromBigger!0 lt!296371 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640282 (arrayNoDuplicates!0 lt!296371 #b00000000000000000000000000000000 Nil!12464)))

(declare-fun lt!296372 () Unit!21638)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38315 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12467) Unit!21638)

(assert (=> b!640282 (= lt!296372 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12464))))

(assert (=> b!640282 (arrayContainsKey!0 lt!296371 (select (arr!18373 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296370 () Unit!21638)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38315 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21638)

(assert (=> b!640282 (= lt!296370 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296371 (select (arr!18373 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640283 () Bool)

(assert (=> b!640283 (= e!366527 (arrayContainsKey!0 lt!296371 (select (arr!18373 a!2986) j!136) index!984))))

(declare-fun b!640284 () Bool)

(declare-fun Unit!21641 () Unit!21638)

(assert (=> b!640284 (= e!366519 Unit!21641)))

(declare-fun res!414704 () Bool)

(assert (=> start!57932 (=> (not res!414704) (not e!366522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57932 (= res!414704 (validMask!0 mask!3053))))

(assert (=> start!57932 e!366522))

(assert (=> start!57932 true))

(declare-fun array_inv!14147 (array!38315) Bool)

(assert (=> start!57932 (array_inv!14147 a!2986)))

(declare-fun b!640275 () Bool)

(declare-fun res!414714 () Bool)

(assert (=> b!640275 (=> (not res!414714) (not e!366522))))

(assert (=> b!640275 (= res!414714 (validKeyInArray!0 k0!1786))))

(declare-fun b!640285 () Bool)

(declare-fun res!414703 () Bool)

(assert (=> b!640285 (=> (not res!414703) (not e!366522))))

(assert (=> b!640285 (= res!414703 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640286 () Bool)

(assert (=> b!640286 (= e!366525 e!366518)))

(declare-fun res!414706 () Bool)

(assert (=> b!640286 (=> (not res!414706) (not e!366518))))

(assert (=> b!640286 (= res!414706 (and (= lt!296368 (Found!6820 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18373 a!2986) index!984) (select (arr!18373 a!2986) j!136))) (not (= (select (arr!18373 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640286 (= lt!296368 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18373 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!57932 res!414704) b!640281))

(assert (= (and b!640281 res!414716) b!640268))

(assert (= (and b!640268 res!414700) b!640275))

(assert (= (and b!640275 res!414714) b!640285))

(assert (= (and b!640285 res!414703) b!640273))

(assert (= (and b!640273 res!414705) b!640279))

(assert (= (and b!640279 res!414711) b!640277))

(assert (= (and b!640277 res!414709) b!640270))

(assert (= (and b!640270 res!414713) b!640269))

(assert (= (and b!640269 res!414710) b!640286))

(assert (= (and b!640286 res!414706) b!640278))

(assert (= (and b!640278 res!414701) b!640271))

(assert (= (and b!640278 c!73151) b!640272))

(assert (= (and b!640278 (not c!73151)) b!640284))

(assert (= (and b!640278 (not res!414702)) b!640274))

(assert (= (and b!640274 res!414712) b!640276))

(assert (= (and b!640276 (not res!414708)) b!640280))

(assert (= (and b!640280 res!414715) b!640283))

(assert (= (and b!640274 (not res!414707)) b!640282))

(declare-fun m!614173 () Bool)

(assert (=> start!57932 m!614173))

(declare-fun m!614175 () Bool)

(assert (=> start!57932 m!614175))

(declare-fun m!614177 () Bool)

(assert (=> b!640279 m!614177))

(declare-fun m!614179 () Bool)

(assert (=> b!640282 m!614179))

(declare-fun m!614181 () Bool)

(assert (=> b!640282 m!614181))

(assert (=> b!640282 m!614179))

(declare-fun m!614183 () Bool)

(assert (=> b!640282 m!614183))

(declare-fun m!614185 () Bool)

(assert (=> b!640282 m!614185))

(assert (=> b!640282 m!614179))

(declare-fun m!614187 () Bool)

(assert (=> b!640282 m!614187))

(declare-fun m!614189 () Bool)

(assert (=> b!640282 m!614189))

(declare-fun m!614191 () Bool)

(assert (=> b!640282 m!614191))

(declare-fun m!614193 () Bool)

(assert (=> b!640278 m!614193))

(declare-fun m!614195 () Bool)

(assert (=> b!640278 m!614195))

(assert (=> b!640278 m!614179))

(declare-fun m!614197 () Bool)

(assert (=> b!640278 m!614197))

(assert (=> b!640278 m!614179))

(declare-fun m!614199 () Bool)

(assert (=> b!640278 m!614199))

(declare-fun m!614201 () Bool)

(assert (=> b!640278 m!614201))

(declare-fun m!614203 () Bool)

(assert (=> b!640278 m!614203))

(declare-fun m!614205 () Bool)

(assert (=> b!640278 m!614205))

(declare-fun m!614207 () Bool)

(assert (=> b!640273 m!614207))

(declare-fun m!614209 () Bool)

(assert (=> b!640285 m!614209))

(assert (=> b!640276 m!614179))

(assert (=> b!640268 m!614179))

(assert (=> b!640268 m!614179))

(declare-fun m!614211 () Bool)

(assert (=> b!640268 m!614211))

(assert (=> b!640269 m!614203))

(declare-fun m!614213 () Bool)

(assert (=> b!640269 m!614213))

(declare-fun m!614215 () Bool)

(assert (=> b!640277 m!614215))

(assert (=> b!640283 m!614179))

(assert (=> b!640283 m!614179))

(declare-fun m!614217 () Bool)

(assert (=> b!640283 m!614217))

(assert (=> b!640274 m!614179))

(assert (=> b!640274 m!614203))

(declare-fun m!614219 () Bool)

(assert (=> b!640274 m!614219))

(declare-fun m!614221 () Bool)

(assert (=> b!640286 m!614221))

(assert (=> b!640286 m!614179))

(assert (=> b!640286 m!614179))

(declare-fun m!614223 () Bool)

(assert (=> b!640286 m!614223))

(declare-fun m!614225 () Bool)

(assert (=> b!640275 m!614225))

(declare-fun m!614227 () Bool)

(assert (=> b!640270 m!614227))

(assert (=> b!640280 m!614179))

(assert (=> b!640280 m!614179))

(declare-fun m!614229 () Bool)

(assert (=> b!640280 m!614229))

(check-sat (not start!57932) (not b!640285) (not b!640282) (not b!640275) (not b!640279) (not b!640280) (not b!640278) (not b!640277) (not b!640273) (not b!640286) (not b!640268) (not b!640283))
(check-sat)
