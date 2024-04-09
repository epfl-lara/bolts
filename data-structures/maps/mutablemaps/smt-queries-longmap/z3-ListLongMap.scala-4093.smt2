; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56066 () Bool)

(assert start!56066)

(declare-fun b!617264 () Bool)

(declare-datatypes ((Unit!20210 0))(
  ( (Unit!20211) )
))
(declare-fun e!353970 () Unit!20210)

(declare-fun Unit!20212 () Unit!20210)

(assert (=> b!617264 (= e!353970 Unit!20212)))

(declare-fun b!617265 () Bool)

(declare-fun e!353960 () Bool)

(assert (=> b!617265 (= e!353960 true)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37499 0))(
  ( (array!37500 (arr!17992 (Array (_ BitVec 32) (_ BitVec 64))) (size!18356 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37499)

(assert (=> b!617265 (= (select (store (arr!17992 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617266 () Bool)

(declare-fun res!397764 () Bool)

(declare-fun e!353965 () Bool)

(assert (=> b!617266 (=> (not res!397764) (not e!353965))))

(declare-fun arrayContainsKey!0 (array!37499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617266 (= res!397764 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617267 () Bool)

(declare-fun e!353962 () Bool)

(declare-datatypes ((SeekEntryResult!6439 0))(
  ( (MissingZero!6439 (index!28039 (_ BitVec 32))) (Found!6439 (index!28040 (_ BitVec 32))) (Intermediate!6439 (undefined!7251 Bool) (index!28041 (_ BitVec 32)) (x!56856 (_ BitVec 32))) (Undefined!6439) (MissingVacant!6439 (index!28042 (_ BitVec 32))) )
))
(declare-fun lt!284307 () SeekEntryResult!6439)

(declare-fun lt!284311 () SeekEntryResult!6439)

(assert (=> b!617267 (= e!353962 (= lt!284307 lt!284311))))

(declare-fun b!617268 () Bool)

(declare-fun Unit!20213 () Unit!20210)

(assert (=> b!617268 (= e!353970 Unit!20213)))

(assert (=> b!617268 false))

(declare-fun b!617269 () Bool)

(declare-fun e!353966 () Unit!20210)

(declare-fun Unit!20214 () Unit!20210)

(assert (=> b!617269 (= e!353966 Unit!20214)))

(declare-fun b!617270 () Bool)

(declare-fun e!353961 () Bool)

(assert (=> b!617270 (= e!353965 e!353961)))

(declare-fun res!397766 () Bool)

(assert (=> b!617270 (=> (not res!397766) (not e!353961))))

(declare-fun lt!284314 () SeekEntryResult!6439)

(assert (=> b!617270 (= res!397766 (or (= lt!284314 (MissingZero!6439 i!1108)) (= lt!284314 (MissingVacant!6439 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37499 (_ BitVec 32)) SeekEntryResult!6439)

(assert (=> b!617270 (= lt!284314 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!617272 () Bool)

(declare-fun e!353968 () Unit!20210)

(declare-fun Unit!20215 () Unit!20210)

(assert (=> b!617272 (= e!353968 Unit!20215)))

(declare-fun b!617273 () Bool)

(declare-fun res!397750 () Bool)

(assert (=> b!617273 (=> (not res!397750) (not e!353961))))

(declare-datatypes ((List!12086 0))(
  ( (Nil!12083) (Cons!12082 (h!13127 (_ BitVec 64)) (t!18322 List!12086)) )
))
(declare-fun arrayNoDuplicates!0 (array!37499 (_ BitVec 32) List!12086) Bool)

(assert (=> b!617273 (= res!397750 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12083))))

(declare-fun b!617274 () Bool)

(assert (=> b!617274 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!284312 () Unit!20210)

(declare-fun lt!284300 () array!37499)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37499 (_ BitVec 64) (_ BitVec 32) List!12086) Unit!20210)

(assert (=> b!617274 (= lt!284312 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284300 (select (arr!17992 a!2986) j!136) index!984 Nil!12083))))

(assert (=> b!617274 (arrayNoDuplicates!0 lt!284300 index!984 Nil!12083)))

(declare-fun lt!284304 () Unit!20210)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37499 (_ BitVec 32) (_ BitVec 32)) Unit!20210)

(assert (=> b!617274 (= lt!284304 (lemmaNoDuplicateFromThenFromBigger!0 lt!284300 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617274 (arrayNoDuplicates!0 lt!284300 #b00000000000000000000000000000000 Nil!12083)))

(declare-fun lt!284310 () Unit!20210)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37499 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12086) Unit!20210)

(assert (=> b!617274 (= lt!284310 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12083))))

(assert (=> b!617274 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284303 () Unit!20210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37499 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20210)

(assert (=> b!617274 (= lt!284303 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284300 (select (arr!17992 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353971 () Bool)

(assert (=> b!617274 e!353971))

(declare-fun res!397762 () Bool)

(assert (=> b!617274 (=> (not res!397762) (not e!353971))))

(assert (=> b!617274 (= res!397762 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) j!136))))

(declare-fun Unit!20216 () Unit!20210)

(assert (=> b!617274 (= e!353968 Unit!20216)))

(declare-fun b!617275 () Bool)

(declare-fun res!397756 () Bool)

(assert (=> b!617275 (= res!397756 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) j!136))))

(declare-fun e!353969 () Bool)

(assert (=> b!617275 (=> (not res!397756) (not e!353969))))

(declare-fun e!353967 () Bool)

(assert (=> b!617275 (= e!353967 e!353969)))

(declare-fun b!617276 () Bool)

(declare-fun res!397761 () Bool)

(assert (=> b!617276 (=> (not res!397761) (not e!353965))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617276 (= res!397761 (validKeyInArray!0 (select (arr!17992 a!2986) j!136)))))

(declare-fun b!617277 () Bool)

(assert (=> b!617277 (= e!353971 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) index!984))))

(declare-fun b!617278 () Bool)

(declare-fun res!397758 () Bool)

(assert (=> b!617278 (=> (not res!397758) (not e!353965))))

(assert (=> b!617278 (= res!397758 (validKeyInArray!0 k0!1786))))

(declare-fun b!617279 () Bool)

(assert (=> b!617279 false))

(declare-fun lt!284306 () Unit!20210)

(assert (=> b!617279 (= lt!284306 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284300 (select (arr!17992 a!2986) j!136) j!136 Nil!12083))))

(assert (=> b!617279 (arrayNoDuplicates!0 lt!284300 j!136 Nil!12083)))

(declare-fun lt!284301 () Unit!20210)

(assert (=> b!617279 (= lt!284301 (lemmaNoDuplicateFromThenFromBigger!0 lt!284300 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617279 (arrayNoDuplicates!0 lt!284300 #b00000000000000000000000000000000 Nil!12083)))

(declare-fun lt!284297 () Unit!20210)

(assert (=> b!617279 (= lt!284297 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12083))))

(assert (=> b!617279 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284302 () Unit!20210)

(assert (=> b!617279 (= lt!284302 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284300 (select (arr!17992 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353963 () Unit!20210)

(declare-fun Unit!20217 () Unit!20210)

(assert (=> b!617279 (= e!353963 Unit!20217)))

(declare-fun b!617280 () Bool)

(declare-fun e!353957 () Bool)

(assert (=> b!617280 (= e!353957 (not e!353960))))

(declare-fun res!397760 () Bool)

(assert (=> b!617280 (=> res!397760 e!353960)))

(declare-fun lt!284308 () SeekEntryResult!6439)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617280 (= res!397760 (not (= lt!284308 (MissingVacant!6439 vacantSpotIndex!68))))))

(declare-fun lt!284316 () Unit!20210)

(assert (=> b!617280 (= lt!284316 e!353966)))

(declare-fun c!70126 () Bool)

(assert (=> b!617280 (= c!70126 (= lt!284308 (Found!6439 index!984)))))

(declare-fun lt!284298 () Unit!20210)

(assert (=> b!617280 (= lt!284298 e!353970)))

(declare-fun c!70124 () Bool)

(assert (=> b!617280 (= c!70124 (= lt!284308 Undefined!6439))))

(declare-fun lt!284315 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37499 (_ BitVec 32)) SeekEntryResult!6439)

(assert (=> b!617280 (= lt!284308 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284315 lt!284300 mask!3053))))

(assert (=> b!617280 e!353962))

(declare-fun res!397763 () Bool)

(assert (=> b!617280 (=> (not res!397763) (not e!353962))))

(declare-fun lt!284313 () (_ BitVec 32))

(assert (=> b!617280 (= res!397763 (= lt!284311 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284313 vacantSpotIndex!68 lt!284315 lt!284300 mask!3053)))))

(assert (=> b!617280 (= lt!284311 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284313 vacantSpotIndex!68 (select (arr!17992 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617280 (= lt!284315 (select (store (arr!17992 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!284305 () Unit!20210)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37499 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20210)

(assert (=> b!617280 (= lt!284305 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284313 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617280 (= lt!284313 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617281 () Bool)

(declare-fun res!397765 () Bool)

(assert (=> b!617281 (=> (not res!397765) (not e!353961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37499 (_ BitVec 32)) Bool)

(assert (=> b!617281 (= res!397765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617282 () Bool)

(declare-fun Unit!20218 () Unit!20210)

(assert (=> b!617282 (= e!353963 Unit!20218)))

(declare-fun b!617283 () Bool)

(declare-fun res!397755 () Bool)

(assert (=> b!617283 (= res!397755 (bvsge j!136 index!984))))

(assert (=> b!617283 (=> res!397755 e!353967)))

(declare-fun e!353964 () Bool)

(assert (=> b!617283 (= e!353964 e!353967)))

(declare-fun b!617284 () Bool)

(declare-fun res!397753 () Bool)

(assert (=> b!617284 (=> (not res!397753) (not e!353961))))

(assert (=> b!617284 (= res!397753 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17992 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617285 () Bool)

(declare-fun res!397759 () Bool)

(assert (=> b!617285 (=> (not res!397759) (not e!353965))))

(assert (=> b!617285 (= res!397759 (and (= (size!18356 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18356 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18356 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617286 () Bool)

(declare-fun e!353958 () Bool)

(assert (=> b!617286 (= e!353961 e!353958)))

(declare-fun res!397752 () Bool)

(assert (=> b!617286 (=> (not res!397752) (not e!353958))))

(assert (=> b!617286 (= res!397752 (= (select (store (arr!17992 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617286 (= lt!284300 (array!37500 (store (arr!17992 a!2986) i!1108 k0!1786) (size!18356 a!2986)))))

(declare-fun res!397754 () Bool)

(assert (=> start!56066 (=> (not res!397754) (not e!353965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56066 (= res!397754 (validMask!0 mask!3053))))

(assert (=> start!56066 e!353965))

(assert (=> start!56066 true))

(declare-fun array_inv!13766 (array!37499) Bool)

(assert (=> start!56066 (array_inv!13766 a!2986)))

(declare-fun b!617271 () Bool)

(assert (=> b!617271 (= e!353958 e!353957)))

(declare-fun res!397751 () Bool)

(assert (=> b!617271 (=> (not res!397751) (not e!353957))))

(assert (=> b!617271 (= res!397751 (and (= lt!284307 (Found!6439 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17992 a!2986) index!984) (select (arr!17992 a!2986) j!136))) (not (= (select (arr!17992 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617271 (= lt!284307 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17992 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617287 () Bool)

(declare-fun Unit!20219 () Unit!20210)

(assert (=> b!617287 (= e!353966 Unit!20219)))

(declare-fun res!397757 () Bool)

(assert (=> b!617287 (= res!397757 (= (select (store (arr!17992 a!2986) i!1108 k0!1786) index!984) (select (arr!17992 a!2986) j!136)))))

(assert (=> b!617287 (=> (not res!397757) (not e!353964))))

(assert (=> b!617287 e!353964))

(declare-fun c!70127 () Bool)

(assert (=> b!617287 (= c!70127 (bvslt j!136 index!984))))

(declare-fun lt!284299 () Unit!20210)

(assert (=> b!617287 (= lt!284299 e!353963)))

(declare-fun c!70125 () Bool)

(assert (=> b!617287 (= c!70125 (bvslt index!984 j!136))))

(declare-fun lt!284309 () Unit!20210)

(assert (=> b!617287 (= lt!284309 e!353968)))

(assert (=> b!617287 false))

(declare-fun b!617288 () Bool)

(assert (=> b!617288 (= e!353969 (arrayContainsKey!0 lt!284300 (select (arr!17992 a!2986) j!136) index!984))))

(assert (= (and start!56066 res!397754) b!617285))

(assert (= (and b!617285 res!397759) b!617276))

(assert (= (and b!617276 res!397761) b!617278))

(assert (= (and b!617278 res!397758) b!617266))

(assert (= (and b!617266 res!397764) b!617270))

(assert (= (and b!617270 res!397766) b!617281))

(assert (= (and b!617281 res!397765) b!617273))

(assert (= (and b!617273 res!397750) b!617284))

(assert (= (and b!617284 res!397753) b!617286))

(assert (= (and b!617286 res!397752) b!617271))

(assert (= (and b!617271 res!397751) b!617280))

(assert (= (and b!617280 res!397763) b!617267))

(assert (= (and b!617280 c!70124) b!617268))

(assert (= (and b!617280 (not c!70124)) b!617264))

(assert (= (and b!617280 c!70126) b!617287))

(assert (= (and b!617280 (not c!70126)) b!617269))

(assert (= (and b!617287 res!397757) b!617283))

(assert (= (and b!617283 (not res!397755)) b!617275))

(assert (= (and b!617275 res!397756) b!617288))

(assert (= (and b!617287 c!70127) b!617279))

(assert (= (and b!617287 (not c!70127)) b!617282))

(assert (= (and b!617287 c!70125) b!617274))

(assert (= (and b!617287 (not c!70125)) b!617272))

(assert (= (and b!617274 res!397762) b!617277))

(assert (= (and b!617280 (not res!397760)) b!617265))

(declare-fun m!593419 () Bool)

(assert (=> b!617278 m!593419))

(declare-fun m!593421 () Bool)

(assert (=> b!617288 m!593421))

(assert (=> b!617288 m!593421))

(declare-fun m!593423 () Bool)

(assert (=> b!617288 m!593423))

(assert (=> b!617277 m!593421))

(assert (=> b!617277 m!593421))

(assert (=> b!617277 m!593423))

(declare-fun m!593425 () Bool)

(assert (=> b!617273 m!593425))

(declare-fun m!593427 () Bool)

(assert (=> b!617265 m!593427))

(declare-fun m!593429 () Bool)

(assert (=> b!617265 m!593429))

(declare-fun m!593431 () Bool)

(assert (=> b!617280 m!593431))

(declare-fun m!593433 () Bool)

(assert (=> b!617280 m!593433))

(assert (=> b!617280 m!593421))

(assert (=> b!617280 m!593427))

(declare-fun m!593435 () Bool)

(assert (=> b!617280 m!593435))

(assert (=> b!617280 m!593421))

(declare-fun m!593437 () Bool)

(assert (=> b!617280 m!593437))

(declare-fun m!593439 () Bool)

(assert (=> b!617280 m!593439))

(declare-fun m!593441 () Bool)

(assert (=> b!617280 m!593441))

(assert (=> b!617275 m!593421))

(assert (=> b!617275 m!593421))

(declare-fun m!593443 () Bool)

(assert (=> b!617275 m!593443))

(assert (=> b!617286 m!593427))

(declare-fun m!593445 () Bool)

(assert (=> b!617286 m!593445))

(declare-fun m!593447 () Bool)

(assert (=> b!617281 m!593447))

(declare-fun m!593449 () Bool)

(assert (=> b!617266 m!593449))

(declare-fun m!593451 () Bool)

(assert (=> b!617284 m!593451))

(assert (=> b!617276 m!593421))

(assert (=> b!617276 m!593421))

(declare-fun m!593453 () Bool)

(assert (=> b!617276 m!593453))

(assert (=> b!617279 m!593421))

(declare-fun m!593455 () Bool)

(assert (=> b!617279 m!593455))

(assert (=> b!617279 m!593421))

(declare-fun m!593457 () Bool)

(assert (=> b!617279 m!593457))

(assert (=> b!617279 m!593421))

(declare-fun m!593459 () Bool)

(assert (=> b!617279 m!593459))

(declare-fun m!593461 () Bool)

(assert (=> b!617279 m!593461))

(assert (=> b!617279 m!593421))

(declare-fun m!593463 () Bool)

(assert (=> b!617279 m!593463))

(declare-fun m!593465 () Bool)

(assert (=> b!617279 m!593465))

(declare-fun m!593467 () Bool)

(assert (=> b!617279 m!593467))

(declare-fun m!593469 () Bool)

(assert (=> start!56066 m!593469))

(declare-fun m!593471 () Bool)

(assert (=> start!56066 m!593471))

(declare-fun m!593473 () Bool)

(assert (=> b!617271 m!593473))

(assert (=> b!617271 m!593421))

(assert (=> b!617271 m!593421))

(declare-fun m!593475 () Bool)

(assert (=> b!617271 m!593475))

(declare-fun m!593477 () Bool)

(assert (=> b!617274 m!593477))

(declare-fun m!593479 () Bool)

(assert (=> b!617274 m!593479))

(assert (=> b!617274 m!593421))

(assert (=> b!617274 m!593421))

(declare-fun m!593481 () Bool)

(assert (=> b!617274 m!593481))

(assert (=> b!617274 m!593421))

(declare-fun m!593483 () Bool)

(assert (=> b!617274 m!593483))

(assert (=> b!617274 m!593421))

(assert (=> b!617274 m!593443))

(assert (=> b!617274 m!593421))

(declare-fun m!593485 () Bool)

(assert (=> b!617274 m!593485))

(assert (=> b!617274 m!593465))

(assert (=> b!617274 m!593467))

(assert (=> b!617287 m!593427))

(assert (=> b!617287 m!593429))

(assert (=> b!617287 m!593421))

(declare-fun m!593487 () Bool)

(assert (=> b!617270 m!593487))

(check-sat (not b!617278) (not b!617273) (not b!617275) (not b!617270) (not b!617281) (not start!56066) (not b!617288) (not b!617274) (not b!617271) (not b!617280) (not b!617266) (not b!617276) (not b!617279) (not b!617277))
(check-sat)
