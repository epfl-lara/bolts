; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55592 () Bool)

(assert start!55592)

(declare-fun b!608601 () Bool)

(declare-fun e!348560 () Bool)

(declare-fun e!348556 () Bool)

(assert (=> b!608601 (= e!348560 e!348556)))

(declare-fun res!391408 () Bool)

(assert (=> b!608601 (=> (not res!391408) (not e!348556))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6337 0))(
  ( (MissingZero!6337 (index!27622 (_ BitVec 32))) (Found!6337 (index!27623 (_ BitVec 32))) (Intermediate!6337 (undefined!7149 Bool) (index!27624 (_ BitVec 32)) (x!56455 (_ BitVec 32))) (Undefined!6337) (MissingVacant!6337 (index!27625 (_ BitVec 32))) )
))
(declare-fun lt!278154 () SeekEntryResult!6337)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37286 0))(
  ( (array!37287 (arr!17890 (Array (_ BitVec 32) (_ BitVec 64))) (size!18254 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37286)

(assert (=> b!608601 (= res!391408 (and (= lt!278154 (Found!6337 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17890 a!2986) index!984) (select (arr!17890 a!2986) j!136))) (not (= (select (arr!17890 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37286 (_ BitVec 32)) SeekEntryResult!6337)

(assert (=> b!608601 (= lt!278154 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17890 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608602 () Bool)

(declare-fun e!348551 () Bool)

(declare-fun e!348547 () Bool)

(assert (=> b!608602 (= e!348551 e!348547)))

(declare-fun res!391411 () Bool)

(assert (=> b!608602 (=> res!391411 e!348547)))

(assert (=> b!608602 (= res!391411 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19450 0))(
  ( (Unit!19451) )
))
(declare-fun lt!278151 () Unit!19450)

(declare-fun e!348554 () Unit!19450)

(assert (=> b!608602 (= lt!278151 e!348554)))

(declare-fun c!68972 () Bool)

(assert (=> b!608602 (= c!68972 (bvslt j!136 index!984))))

(declare-fun b!608603 () Bool)

(declare-fun e!348549 () Unit!19450)

(declare-fun Unit!19452 () Unit!19450)

(assert (=> b!608603 (= e!348549 Unit!19452)))

(assert (=> b!608603 false))

(declare-fun e!348559 () Bool)

(declare-fun lt!278147 () array!37286)

(declare-fun b!608605 () Bool)

(declare-fun arrayContainsKey!0 (array!37286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608605 (= e!348559 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) index!984))))

(declare-fun b!608606 () Bool)

(declare-fun res!391413 () Bool)

(declare-fun e!348561 () Bool)

(assert (=> b!608606 (=> res!391413 e!348561)))

(declare-datatypes ((List!11984 0))(
  ( (Nil!11981) (Cons!11980 (h!13025 (_ BitVec 64)) (t!18220 List!11984)) )
))
(declare-fun noDuplicate!332 (List!11984) Bool)

(assert (=> b!608606 (= res!391413 (not (noDuplicate!332 Nil!11981)))))

(declare-fun b!608607 () Bool)

(declare-fun e!348555 () Bool)

(assert (=> b!608607 (= e!348555 e!348560)))

(declare-fun res!391401 () Bool)

(assert (=> b!608607 (=> (not res!391401) (not e!348560))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!608607 (= res!391401 (= (select (store (arr!17890 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608607 (= lt!278147 (array!37287 (store (arr!17890 a!2986) i!1108 k0!1786) (size!18254 a!2986)))))

(declare-fun b!608608 () Bool)

(declare-fun res!391412 () Bool)

(declare-fun e!348553 () Bool)

(assert (=> b!608608 (=> (not res!391412) (not e!348553))))

(assert (=> b!608608 (= res!391412 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun e!348557 () Bool)

(declare-fun b!608609 () Bool)

(assert (=> b!608609 (= e!348557 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) index!984))))

(declare-fun b!608610 () Bool)

(declare-fun Unit!19453 () Unit!19450)

(assert (=> b!608610 (= e!348554 Unit!19453)))

(declare-fun lt!278149 () Unit!19450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37286 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19450)

(assert (=> b!608610 (= lt!278149 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278147 (select (arr!17890 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!608610 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278142 () Unit!19450)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37286 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11984) Unit!19450)

(assert (=> b!608610 (= lt!278142 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11981))))

(declare-fun arrayNoDuplicates!0 (array!37286 (_ BitVec 32) List!11984) Bool)

(assert (=> b!608610 (arrayNoDuplicates!0 lt!278147 #b00000000000000000000000000000000 Nil!11981)))

(declare-fun lt!278146 () Unit!19450)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37286 (_ BitVec 32) (_ BitVec 32)) Unit!19450)

(assert (=> b!608610 (= lt!278146 (lemmaNoDuplicateFromThenFromBigger!0 lt!278147 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608610 (arrayNoDuplicates!0 lt!278147 j!136 Nil!11981)))

(declare-fun lt!278144 () Unit!19450)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37286 (_ BitVec 64) (_ BitVec 32) List!11984) Unit!19450)

(assert (=> b!608610 (= lt!278144 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278147 (select (arr!17890 a!2986) j!136) j!136 Nil!11981))))

(assert (=> b!608610 false))

(declare-fun b!608611 () Bool)

(assert (=> b!608611 (= e!348547 e!348561)))

(declare-fun res!391399 () Bool)

(assert (=> b!608611 (=> res!391399 e!348561)))

(assert (=> b!608611 (= res!391399 (or (bvsge (size!18254 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18254 a!2986))))))

(assert (=> b!608611 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278155 () Unit!19450)

(assert (=> b!608611 (= lt!278155 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278147 (select (arr!17890 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608611 e!348557))

(declare-fun res!391397 () Bool)

(assert (=> b!608611 (=> (not res!391397) (not e!348557))))

(assert (=> b!608611 (= res!391397 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) j!136))))

(declare-fun b!608612 () Bool)

(declare-fun Unit!19454 () Unit!19450)

(assert (=> b!608612 (= e!348549 Unit!19454)))

(declare-fun b!608613 () Bool)

(declare-fun res!391415 () Bool)

(assert (=> b!608613 (=> (not res!391415) (not e!348555))))

(assert (=> b!608613 (= res!391415 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11981))))

(declare-fun b!608604 () Bool)

(declare-fun e!348550 () Bool)

(declare-fun e!348562 () Bool)

(assert (=> b!608604 (= e!348550 e!348562)))

(declare-fun res!391414 () Bool)

(assert (=> b!608604 (=> res!391414 e!348562)))

(declare-fun lt!278148 () (_ BitVec 64))

(declare-fun lt!278153 () (_ BitVec 64))

(assert (=> b!608604 (= res!391414 (or (not (= (select (arr!17890 a!2986) j!136) lt!278148)) (not (= (select (arr!17890 a!2986) j!136) lt!278153)) (bvsge j!136 index!984)))))

(declare-fun res!391398 () Bool)

(assert (=> start!55592 (=> (not res!391398) (not e!348553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55592 (= res!391398 (validMask!0 mask!3053))))

(assert (=> start!55592 e!348553))

(assert (=> start!55592 true))

(declare-fun array_inv!13664 (array!37286) Bool)

(assert (=> start!55592 (array_inv!13664 a!2986)))

(declare-fun b!608614 () Bool)

(declare-fun Unit!19455 () Unit!19450)

(assert (=> b!608614 (= e!348554 Unit!19455)))

(declare-fun b!608615 () Bool)

(assert (=> b!608615 (= e!348553 e!348555)))

(declare-fun res!391394 () Bool)

(assert (=> b!608615 (=> (not res!391394) (not e!348555))))

(declare-fun lt!278157 () SeekEntryResult!6337)

(assert (=> b!608615 (= res!391394 (or (= lt!278157 (MissingZero!6337 i!1108)) (= lt!278157 (MissingVacant!6337 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37286 (_ BitVec 32)) SeekEntryResult!6337)

(assert (=> b!608615 (= lt!278157 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!608616 () Bool)

(declare-fun res!391393 () Bool)

(assert (=> b!608616 (=> res!391393 e!348561)))

(declare-fun contains!3030 (List!11984 (_ BitVec 64)) Bool)

(assert (=> b!608616 (= res!391393 (contains!3030 Nil!11981 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608617 () Bool)

(declare-fun e!348552 () Bool)

(declare-fun lt!278141 () SeekEntryResult!6337)

(assert (=> b!608617 (= e!348552 (= lt!278154 lt!278141))))

(declare-fun b!608618 () Bool)

(declare-fun res!391403 () Bool)

(assert (=> b!608618 (=> (not res!391403) (not e!348553))))

(assert (=> b!608618 (= res!391403 (and (= (size!18254 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18254 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18254 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608619 () Bool)

(declare-fun e!348558 () Bool)

(assert (=> b!608619 (= e!348558 e!348551)))

(declare-fun res!391400 () Bool)

(assert (=> b!608619 (=> res!391400 e!348551)))

(assert (=> b!608619 (= res!391400 (or (not (= (select (arr!17890 a!2986) j!136) lt!278148)) (not (= (select (arr!17890 a!2986) j!136) lt!278153))))))

(assert (=> b!608619 e!348550))

(declare-fun res!391395 () Bool)

(assert (=> b!608619 (=> (not res!391395) (not e!348550))))

(assert (=> b!608619 (= res!391395 (= lt!278153 (select (arr!17890 a!2986) j!136)))))

(assert (=> b!608619 (= lt!278153 (select (store (arr!17890 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!608620 () Bool)

(declare-fun res!391396 () Bool)

(assert (=> b!608620 (=> (not res!391396) (not e!348555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37286 (_ BitVec 32)) Bool)

(assert (=> b!608620 (= res!391396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!608621 () Bool)

(assert (=> b!608621 (= e!348561 true)))

(declare-fun lt!278156 () Bool)

(assert (=> b!608621 (= lt!278156 (contains!3030 Nil!11981 k0!1786))))

(declare-fun b!608622 () Bool)

(declare-fun res!391407 () Bool)

(assert (=> b!608622 (=> (not res!391407) (not e!348553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608622 (= res!391407 (validKeyInArray!0 (select (arr!17890 a!2986) j!136)))))

(declare-fun b!608623 () Bool)

(assert (=> b!608623 (= e!348562 e!348559)))

(declare-fun res!391410 () Bool)

(assert (=> b!608623 (=> (not res!391410) (not e!348559))))

(assert (=> b!608623 (= res!391410 (arrayContainsKey!0 lt!278147 (select (arr!17890 a!2986) j!136) j!136))))

(declare-fun b!608624 () Bool)

(declare-fun res!391402 () Bool)

(assert (=> b!608624 (=> (not res!391402) (not e!348555))))

(assert (=> b!608624 (= res!391402 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17890 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608625 () Bool)

(declare-fun res!391409 () Bool)

(assert (=> b!608625 (=> res!391409 e!348561)))

(assert (=> b!608625 (= res!391409 (contains!3030 Nil!11981 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608626 () Bool)

(assert (=> b!608626 (= e!348556 (not e!348558))))

(declare-fun res!391406 () Bool)

(assert (=> b!608626 (=> res!391406 e!348558)))

(declare-fun lt!278152 () SeekEntryResult!6337)

(assert (=> b!608626 (= res!391406 (not (= lt!278152 (Found!6337 index!984))))))

(declare-fun lt!278150 () Unit!19450)

(assert (=> b!608626 (= lt!278150 e!348549)))

(declare-fun c!68971 () Bool)

(assert (=> b!608626 (= c!68971 (= lt!278152 Undefined!6337))))

(assert (=> b!608626 (= lt!278152 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278148 lt!278147 mask!3053))))

(assert (=> b!608626 e!348552))

(declare-fun res!391405 () Bool)

(assert (=> b!608626 (=> (not res!391405) (not e!348552))))

(declare-fun lt!278143 () (_ BitVec 32))

(assert (=> b!608626 (= res!391405 (= lt!278141 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278143 vacantSpotIndex!68 lt!278148 lt!278147 mask!3053)))))

(assert (=> b!608626 (= lt!278141 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278143 vacantSpotIndex!68 (select (arr!17890 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608626 (= lt!278148 (select (store (arr!17890 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278145 () Unit!19450)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37286 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19450)

(assert (=> b!608626 (= lt!278145 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278143 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608626 (= lt!278143 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608627 () Bool)

(declare-fun res!391404 () Bool)

(assert (=> b!608627 (=> (not res!391404) (not e!348553))))

(assert (=> b!608627 (= res!391404 (validKeyInArray!0 k0!1786))))

(assert (= (and start!55592 res!391398) b!608618))

(assert (= (and b!608618 res!391403) b!608622))

(assert (= (and b!608622 res!391407) b!608627))

(assert (= (and b!608627 res!391404) b!608608))

(assert (= (and b!608608 res!391412) b!608615))

(assert (= (and b!608615 res!391394) b!608620))

(assert (= (and b!608620 res!391396) b!608613))

(assert (= (and b!608613 res!391415) b!608624))

(assert (= (and b!608624 res!391402) b!608607))

(assert (= (and b!608607 res!391401) b!608601))

(assert (= (and b!608601 res!391408) b!608626))

(assert (= (and b!608626 res!391405) b!608617))

(assert (= (and b!608626 c!68971) b!608603))

(assert (= (and b!608626 (not c!68971)) b!608612))

(assert (= (and b!608626 (not res!391406)) b!608619))

(assert (= (and b!608619 res!391395) b!608604))

(assert (= (and b!608604 (not res!391414)) b!608623))

(assert (= (and b!608623 res!391410) b!608605))

(assert (= (and b!608619 (not res!391400)) b!608602))

(assert (= (and b!608602 c!68972) b!608610))

(assert (= (and b!608602 (not c!68972)) b!608614))

(assert (= (and b!608602 (not res!391411)) b!608611))

(assert (= (and b!608611 res!391397) b!608609))

(assert (= (and b!608611 (not res!391399)) b!608606))

(assert (= (and b!608606 (not res!391413)) b!608616))

(assert (= (and b!608616 (not res!391393)) b!608625))

(assert (= (and b!608625 (not res!391409)) b!608621))

(declare-fun m!585237 () Bool)

(assert (=> b!608604 m!585237))

(declare-fun m!585239 () Bool)

(assert (=> b!608606 m!585239))

(declare-fun m!585241 () Bool)

(assert (=> b!608616 m!585241))

(assert (=> b!608609 m!585237))

(assert (=> b!608609 m!585237))

(declare-fun m!585243 () Bool)

(assert (=> b!608609 m!585243))

(declare-fun m!585245 () Bool)

(assert (=> b!608601 m!585245))

(assert (=> b!608601 m!585237))

(assert (=> b!608601 m!585237))

(declare-fun m!585247 () Bool)

(assert (=> b!608601 m!585247))

(assert (=> b!608611 m!585237))

(assert (=> b!608611 m!585237))

(declare-fun m!585249 () Bool)

(assert (=> b!608611 m!585249))

(assert (=> b!608611 m!585237))

(declare-fun m!585251 () Bool)

(assert (=> b!608611 m!585251))

(assert (=> b!608611 m!585237))

(declare-fun m!585253 () Bool)

(assert (=> b!608611 m!585253))

(assert (=> b!608623 m!585237))

(assert (=> b!608623 m!585237))

(assert (=> b!608623 m!585253))

(declare-fun m!585255 () Bool)

(assert (=> b!608626 m!585255))

(declare-fun m!585257 () Bool)

(assert (=> b!608626 m!585257))

(declare-fun m!585259 () Bool)

(assert (=> b!608626 m!585259))

(assert (=> b!608626 m!585237))

(declare-fun m!585261 () Bool)

(assert (=> b!608626 m!585261))

(declare-fun m!585263 () Bool)

(assert (=> b!608626 m!585263))

(assert (=> b!608626 m!585237))

(declare-fun m!585265 () Bool)

(assert (=> b!608626 m!585265))

(declare-fun m!585267 () Bool)

(assert (=> b!608626 m!585267))

(declare-fun m!585269 () Bool)

(assert (=> b!608620 m!585269))

(declare-fun m!585271 () Bool)

(assert (=> b!608615 m!585271))

(assert (=> b!608607 m!585261))

(declare-fun m!585273 () Bool)

(assert (=> b!608607 m!585273))

(assert (=> b!608619 m!585237))

(assert (=> b!608619 m!585261))

(declare-fun m!585275 () Bool)

(assert (=> b!608619 m!585275))

(declare-fun m!585277 () Bool)

(assert (=> b!608627 m!585277))

(declare-fun m!585279 () Bool)

(assert (=> b!608625 m!585279))

(assert (=> b!608605 m!585237))

(assert (=> b!608605 m!585237))

(assert (=> b!608605 m!585243))

(declare-fun m!585281 () Bool)

(assert (=> b!608608 m!585281))

(declare-fun m!585283 () Bool)

(assert (=> b!608621 m!585283))

(assert (=> b!608622 m!585237))

(assert (=> b!608622 m!585237))

(declare-fun m!585285 () Bool)

(assert (=> b!608622 m!585285))

(declare-fun m!585287 () Bool)

(assert (=> start!55592 m!585287))

(declare-fun m!585289 () Bool)

(assert (=> start!55592 m!585289))

(assert (=> b!608610 m!585237))

(assert (=> b!608610 m!585237))

(declare-fun m!585291 () Bool)

(assert (=> b!608610 m!585291))

(declare-fun m!585293 () Bool)

(assert (=> b!608610 m!585293))

(declare-fun m!585295 () Bool)

(assert (=> b!608610 m!585295))

(assert (=> b!608610 m!585237))

(declare-fun m!585297 () Bool)

(assert (=> b!608610 m!585297))

(assert (=> b!608610 m!585237))

(declare-fun m!585299 () Bool)

(assert (=> b!608610 m!585299))

(declare-fun m!585301 () Bool)

(assert (=> b!608610 m!585301))

(declare-fun m!585303 () Bool)

(assert (=> b!608610 m!585303))

(declare-fun m!585305 () Bool)

(assert (=> b!608613 m!585305))

(declare-fun m!585307 () Bool)

(assert (=> b!608624 m!585307))

(check-sat (not b!608611) (not start!55592) (not b!608610) (not b!608625) (not b!608627) (not b!608622) (not b!608620) (not b!608615) (not b!608605) (not b!608623) (not b!608616) (not b!608626) (not b!608609) (not b!608608) (not b!608621) (not b!608601) (not b!608613) (not b!608606))
(check-sat)
