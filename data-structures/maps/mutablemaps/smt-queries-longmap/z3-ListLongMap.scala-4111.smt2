; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56174 () Bool)

(assert start!56174)

(declare-fun b!621255 () Bool)

(declare-fun res!400460 () Bool)

(declare-fun e!356333 () Bool)

(assert (=> b!621255 (=> (not res!400460) (not e!356333))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621255 (= res!400460 (validKeyInArray!0 k0!1786))))

(declare-fun b!621256 () Bool)

(declare-fun res!400455 () Bool)

(assert (=> b!621256 (=> (not res!400455) (not e!356333))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37607 0))(
  ( (array!37608 (arr!18046 (Array (_ BitVec 32) (_ BitVec 64))) (size!18410 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37607)

(assert (=> b!621256 (= res!400455 (and (= (size!18410 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18410 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18410 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621257 () Bool)

(declare-fun res!400447 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621257 (= res!400447 (bvsge j!136 index!984))))

(declare-fun e!356338 () Bool)

(assert (=> b!621257 (=> res!400447 e!356338)))

(declare-fun e!356339 () Bool)

(assert (=> b!621257 (= e!356339 e!356338)))

(declare-fun e!356334 () Bool)

(declare-fun lt!287542 () array!37607)

(declare-fun b!621258 () Bool)

(declare-fun arrayContainsKey!0 (array!37607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621258 (= e!356334 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) index!984))))

(declare-fun b!621259 () Bool)

(declare-fun res!400457 () Bool)

(declare-fun e!356336 () Bool)

(assert (=> b!621259 (=> (not res!400457) (not e!356336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37607 (_ BitVec 32)) Bool)

(assert (=> b!621259 (= res!400457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621260 () Bool)

(declare-fun res!400454 () Bool)

(assert (=> b!621260 (=> (not res!400454) (not e!356333))))

(assert (=> b!621260 (= res!400454 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621261 () Bool)

(declare-datatypes ((Unit!20750 0))(
  ( (Unit!20751) )
))
(declare-fun e!356328 () Unit!20750)

(declare-fun Unit!20752 () Unit!20750)

(assert (=> b!621261 (= e!356328 Unit!20752)))

(assert (=> b!621261 false))

(declare-fun b!621262 () Bool)

(declare-fun e!356340 () Unit!20750)

(declare-fun Unit!20753 () Unit!20750)

(assert (=> b!621262 (= e!356340 Unit!20753)))

(declare-fun b!621263 () Bool)

(declare-fun res!400456 () Bool)

(assert (=> b!621263 (=> (not res!400456) (not e!356336))))

(declare-datatypes ((List!12140 0))(
  ( (Nil!12137) (Cons!12136 (h!13181 (_ BitVec 64)) (t!18376 List!12140)) )
))
(declare-fun arrayNoDuplicates!0 (array!37607 (_ BitVec 32) List!12140) Bool)

(assert (=> b!621263 (= res!400456 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12137))))

(declare-fun b!621264 () Bool)

(declare-fun res!400451 () Bool)

(assert (=> b!621264 (=> (not res!400451) (not e!356333))))

(assert (=> b!621264 (= res!400451 (validKeyInArray!0 (select (arr!18046 a!2986) j!136)))))

(declare-fun b!621265 () Bool)

(declare-fun e!356329 () Bool)

(assert (=> b!621265 (= e!356329 (not true))))

(declare-fun lt!287543 () Unit!20750)

(declare-fun e!356335 () Unit!20750)

(assert (=> b!621265 (= lt!287543 e!356335)))

(declare-fun c!70773 () Bool)

(declare-datatypes ((SeekEntryResult!6493 0))(
  ( (MissingZero!6493 (index!28255 (_ BitVec 32))) (Found!6493 (index!28256 (_ BitVec 32))) (Intermediate!6493 (undefined!7305 Bool) (index!28257 (_ BitVec 32)) (x!57054 (_ BitVec 32))) (Undefined!6493) (MissingVacant!6493 (index!28258 (_ BitVec 32))) )
))
(declare-fun lt!287555 () SeekEntryResult!6493)

(assert (=> b!621265 (= c!70773 (= lt!287555 (Found!6493 index!984)))))

(declare-fun lt!287552 () Unit!20750)

(assert (=> b!621265 (= lt!287552 e!356328)))

(declare-fun c!70774 () Bool)

(assert (=> b!621265 (= c!70774 (= lt!287555 Undefined!6493))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!287551 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37607 (_ BitVec 32)) SeekEntryResult!6493)

(assert (=> b!621265 (= lt!287555 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287551 lt!287542 mask!3053))))

(declare-fun e!356330 () Bool)

(assert (=> b!621265 e!356330))

(declare-fun res!400449 () Bool)

(assert (=> b!621265 (=> (not res!400449) (not e!356330))))

(declare-fun lt!287540 () SeekEntryResult!6493)

(declare-fun lt!287544 () (_ BitVec 32))

(assert (=> b!621265 (= res!400449 (= lt!287540 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287544 vacantSpotIndex!68 lt!287551 lt!287542 mask!3053)))))

(assert (=> b!621265 (= lt!287540 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287544 vacantSpotIndex!68 (select (arr!18046 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621265 (= lt!287551 (select (store (arr!18046 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287539 () Unit!20750)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37607 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20750)

(assert (=> b!621265 (= lt!287539 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287544 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621265 (= lt!287544 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621266 () Bool)

(assert (=> b!621266 false))

(declare-fun lt!287546 () Unit!20750)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37607 (_ BitVec 64) (_ BitVec 32) List!12140) Unit!20750)

(assert (=> b!621266 (= lt!287546 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287542 (select (arr!18046 a!2986) j!136) j!136 Nil!12137))))

(assert (=> b!621266 (arrayNoDuplicates!0 lt!287542 j!136 Nil!12137)))

(declare-fun lt!287547 () Unit!20750)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37607 (_ BitVec 32) (_ BitVec 32)) Unit!20750)

(assert (=> b!621266 (= lt!287547 (lemmaNoDuplicateFromThenFromBigger!0 lt!287542 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621266 (arrayNoDuplicates!0 lt!287542 #b00000000000000000000000000000000 Nil!12137)))

(declare-fun lt!287554 () Unit!20750)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37607 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12140) Unit!20750)

(assert (=> b!621266 (= lt!287554 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12137))))

(assert (=> b!621266 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287550 () Unit!20750)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37607 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20750)

(assert (=> b!621266 (= lt!287550 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287542 (select (arr!18046 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!356331 () Unit!20750)

(declare-fun Unit!20754 () Unit!20750)

(assert (=> b!621266 (= e!356331 Unit!20754)))

(declare-fun b!621267 () Bool)

(declare-fun res!400453 () Bool)

(assert (=> b!621267 (=> (not res!400453) (not e!356336))))

(assert (=> b!621267 (= res!400453 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18046 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621268 () Bool)

(declare-fun Unit!20755 () Unit!20750)

(assert (=> b!621268 (= e!356335 Unit!20755)))

(declare-fun res!400448 () Bool)

(assert (=> b!621268 (= res!400448 (= (select (store (arr!18046 a!2986) i!1108 k0!1786) index!984) (select (arr!18046 a!2986) j!136)))))

(assert (=> b!621268 (=> (not res!400448) (not e!356339))))

(assert (=> b!621268 e!356339))

(declare-fun c!70775 () Bool)

(assert (=> b!621268 (= c!70775 (bvslt j!136 index!984))))

(declare-fun lt!287556 () Unit!20750)

(assert (=> b!621268 (= lt!287556 e!356331)))

(declare-fun c!70772 () Bool)

(assert (=> b!621268 (= c!70772 (bvslt index!984 j!136))))

(declare-fun lt!287548 () Unit!20750)

(assert (=> b!621268 (= lt!287548 e!356340)))

(assert (=> b!621268 false))

(declare-fun b!621269 () Bool)

(declare-fun Unit!20756 () Unit!20750)

(assert (=> b!621269 (= e!356328 Unit!20756)))

(declare-fun res!400458 () Bool)

(assert (=> start!56174 (=> (not res!400458) (not e!356333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56174 (= res!400458 (validMask!0 mask!3053))))

(assert (=> start!56174 e!356333))

(assert (=> start!56174 true))

(declare-fun array_inv!13820 (array!37607) Bool)

(assert (=> start!56174 (array_inv!13820 a!2986)))

(declare-fun b!621270 () Bool)

(declare-fun lt!287538 () SeekEntryResult!6493)

(assert (=> b!621270 (= e!356330 (= lt!287538 lt!287540))))

(declare-fun b!621271 () Bool)

(declare-fun Unit!20757 () Unit!20750)

(assert (=> b!621271 (= e!356331 Unit!20757)))

(declare-fun b!621272 () Bool)

(declare-fun Unit!20758 () Unit!20750)

(assert (=> b!621272 (= e!356335 Unit!20758)))

(declare-fun b!621273 () Bool)

(assert (=> b!621273 false))

(declare-fun lt!287549 () Unit!20750)

(assert (=> b!621273 (= lt!287549 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287542 (select (arr!18046 a!2986) j!136) index!984 Nil!12137))))

(assert (=> b!621273 (arrayNoDuplicates!0 lt!287542 index!984 Nil!12137)))

(declare-fun lt!287545 () Unit!20750)

(assert (=> b!621273 (= lt!287545 (lemmaNoDuplicateFromThenFromBigger!0 lt!287542 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621273 (arrayNoDuplicates!0 lt!287542 #b00000000000000000000000000000000 Nil!12137)))

(declare-fun lt!287541 () Unit!20750)

(assert (=> b!621273 (= lt!287541 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12137))))

(assert (=> b!621273 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287553 () Unit!20750)

(assert (=> b!621273 (= lt!287553 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287542 (select (arr!18046 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621273 e!356334))

(declare-fun res!400446 () Bool)

(assert (=> b!621273 (=> (not res!400446) (not e!356334))))

(assert (=> b!621273 (= res!400446 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) j!136))))

(declare-fun Unit!20759 () Unit!20750)

(assert (=> b!621273 (= e!356340 Unit!20759)))

(declare-fun b!621274 () Bool)

(declare-fun e!356341 () Bool)

(assert (=> b!621274 (= e!356336 e!356341)))

(declare-fun res!400459 () Bool)

(assert (=> b!621274 (=> (not res!400459) (not e!356341))))

(assert (=> b!621274 (= res!400459 (= (select (store (arr!18046 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621274 (= lt!287542 (array!37608 (store (arr!18046 a!2986) i!1108 k0!1786) (size!18410 a!2986)))))

(declare-fun res!400452 () Bool)

(declare-fun b!621275 () Bool)

(assert (=> b!621275 (= res!400452 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) j!136))))

(declare-fun e!356332 () Bool)

(assert (=> b!621275 (=> (not res!400452) (not e!356332))))

(assert (=> b!621275 (= e!356338 e!356332)))

(declare-fun b!621276 () Bool)

(assert (=> b!621276 (= e!356341 e!356329)))

(declare-fun res!400450 () Bool)

(assert (=> b!621276 (=> (not res!400450) (not e!356329))))

(assert (=> b!621276 (= res!400450 (and (= lt!287538 (Found!6493 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18046 a!2986) index!984) (select (arr!18046 a!2986) j!136))) (not (= (select (arr!18046 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621276 (= lt!287538 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18046 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621277 () Bool)

(assert (=> b!621277 (= e!356332 (arrayContainsKey!0 lt!287542 (select (arr!18046 a!2986) j!136) index!984))))

(declare-fun b!621278 () Bool)

(assert (=> b!621278 (= e!356333 e!356336)))

(declare-fun res!400445 () Bool)

(assert (=> b!621278 (=> (not res!400445) (not e!356336))))

(declare-fun lt!287537 () SeekEntryResult!6493)

(assert (=> b!621278 (= res!400445 (or (= lt!287537 (MissingZero!6493 i!1108)) (= lt!287537 (MissingVacant!6493 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37607 (_ BitVec 32)) SeekEntryResult!6493)

(assert (=> b!621278 (= lt!287537 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!56174 res!400458) b!621256))

(assert (= (and b!621256 res!400455) b!621264))

(assert (= (and b!621264 res!400451) b!621255))

(assert (= (and b!621255 res!400460) b!621260))

(assert (= (and b!621260 res!400454) b!621278))

(assert (= (and b!621278 res!400445) b!621259))

(assert (= (and b!621259 res!400457) b!621263))

(assert (= (and b!621263 res!400456) b!621267))

(assert (= (and b!621267 res!400453) b!621274))

(assert (= (and b!621274 res!400459) b!621276))

(assert (= (and b!621276 res!400450) b!621265))

(assert (= (and b!621265 res!400449) b!621270))

(assert (= (and b!621265 c!70774) b!621261))

(assert (= (and b!621265 (not c!70774)) b!621269))

(assert (= (and b!621265 c!70773) b!621268))

(assert (= (and b!621265 (not c!70773)) b!621272))

(assert (= (and b!621268 res!400448) b!621257))

(assert (= (and b!621257 (not res!400447)) b!621275))

(assert (= (and b!621275 res!400452) b!621277))

(assert (= (and b!621268 c!70775) b!621266))

(assert (= (and b!621268 (not c!70775)) b!621271))

(assert (= (and b!621268 c!70772) b!621273))

(assert (= (and b!621268 (not c!70772)) b!621262))

(assert (= (and b!621273 res!400446) b!621258))

(declare-fun m!597199 () Bool)

(assert (=> b!621277 m!597199))

(assert (=> b!621277 m!597199))

(declare-fun m!597201 () Bool)

(assert (=> b!621277 m!597201))

(declare-fun m!597203 () Bool)

(assert (=> b!621274 m!597203))

(declare-fun m!597205 () Bool)

(assert (=> b!621274 m!597205))

(declare-fun m!597207 () Bool)

(assert (=> b!621260 m!597207))

(declare-fun m!597209 () Bool)

(assert (=> b!621259 m!597209))

(declare-fun m!597211 () Bool)

(assert (=> b!621267 m!597211))

(declare-fun m!597213 () Bool)

(assert (=> b!621278 m!597213))

(declare-fun m!597215 () Bool)

(assert (=> b!621265 m!597215))

(declare-fun m!597217 () Bool)

(assert (=> b!621265 m!597217))

(assert (=> b!621265 m!597199))

(assert (=> b!621265 m!597203))

(declare-fun m!597219 () Bool)

(assert (=> b!621265 m!597219))

(declare-fun m!597221 () Bool)

(assert (=> b!621265 m!597221))

(declare-fun m!597223 () Bool)

(assert (=> b!621265 m!597223))

(assert (=> b!621265 m!597199))

(declare-fun m!597225 () Bool)

(assert (=> b!621265 m!597225))

(declare-fun m!597227 () Bool)

(assert (=> b!621255 m!597227))

(assert (=> b!621268 m!597203))

(declare-fun m!597229 () Bool)

(assert (=> b!621268 m!597229))

(assert (=> b!621268 m!597199))

(assert (=> b!621266 m!597199))

(declare-fun m!597231 () Bool)

(assert (=> b!621266 m!597231))

(assert (=> b!621266 m!597199))

(declare-fun m!597233 () Bool)

(assert (=> b!621266 m!597233))

(assert (=> b!621266 m!597199))

(declare-fun m!597235 () Bool)

(assert (=> b!621266 m!597235))

(assert (=> b!621266 m!597199))

(declare-fun m!597237 () Bool)

(assert (=> b!621266 m!597237))

(declare-fun m!597239 () Bool)

(assert (=> b!621266 m!597239))

(declare-fun m!597241 () Bool)

(assert (=> b!621266 m!597241))

(declare-fun m!597243 () Bool)

(assert (=> b!621266 m!597243))

(assert (=> b!621275 m!597199))

(assert (=> b!621275 m!597199))

(declare-fun m!597245 () Bool)

(assert (=> b!621275 m!597245))

(assert (=> b!621264 m!597199))

(assert (=> b!621264 m!597199))

(declare-fun m!597247 () Bool)

(assert (=> b!621264 m!597247))

(declare-fun m!597249 () Bool)

(assert (=> start!56174 m!597249))

(declare-fun m!597251 () Bool)

(assert (=> start!56174 m!597251))

(declare-fun m!597253 () Bool)

(assert (=> b!621263 m!597253))

(assert (=> b!621273 m!597199))

(declare-fun m!597255 () Bool)

(assert (=> b!621273 m!597255))

(assert (=> b!621273 m!597199))

(assert (=> b!621273 m!597245))

(declare-fun m!597257 () Bool)

(assert (=> b!621273 m!597257))

(assert (=> b!621273 m!597199))

(assert (=> b!621273 m!597199))

(declare-fun m!597259 () Bool)

(assert (=> b!621273 m!597259))

(assert (=> b!621273 m!597199))

(declare-fun m!597261 () Bool)

(assert (=> b!621273 m!597261))

(declare-fun m!597263 () Bool)

(assert (=> b!621273 m!597263))

(assert (=> b!621273 m!597241))

(assert (=> b!621273 m!597243))

(assert (=> b!621258 m!597199))

(assert (=> b!621258 m!597199))

(assert (=> b!621258 m!597201))

(declare-fun m!597265 () Bool)

(assert (=> b!621276 m!597265))

(assert (=> b!621276 m!597199))

(assert (=> b!621276 m!597199))

(declare-fun m!597267 () Bool)

(assert (=> b!621276 m!597267))

(check-sat (not b!621258) (not b!621278) (not b!621275) (not b!621264) (not b!621255) (not b!621273) (not b!621263) (not b!621259) (not b!621266) (not b!621277) (not start!56174) (not b!621276) (not b!621260) (not b!621265))
(check-sat)
