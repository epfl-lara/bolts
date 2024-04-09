; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59576 () Bool)

(assert start!59576)

(declare-fun b!657185 () Bool)

(declare-fun e!377522 () Bool)

(declare-fun e!377528 () Bool)

(assert (=> b!657185 (= e!377522 e!377528)))

(declare-fun res!426247 () Bool)

(assert (=> b!657185 (=> (not res!426247) (not e!377528))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!38690 0))(
  ( (array!38691 (arr!18538 (Array (_ BitVec 32) (_ BitVec 64))) (size!18902 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38690)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657185 (= res!426247 (= (select (store (arr!18538 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!306971 () array!38690)

(assert (=> b!657185 (= lt!306971 (array!38691 (store (arr!18538 a!2986) i!1108 k0!1786) (size!18902 a!2986)))))

(declare-fun b!657186 () Bool)

(assert (=> b!657186 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!22694 0))(
  ( (Unit!22695) )
))
(declare-fun lt!306985 () Unit!22694)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((List!12632 0))(
  ( (Nil!12629) (Cons!12628 (h!13673 (_ BitVec 64)) (t!18868 List!12632)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38690 (_ BitVec 64) (_ BitVec 32) List!12632) Unit!22694)

(assert (=> b!657186 (= lt!306985 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306971 (select (arr!18538 a!2986) j!136) index!984 Nil!12629))))

(declare-fun arrayNoDuplicates!0 (array!38690 (_ BitVec 32) List!12632) Bool)

(assert (=> b!657186 (arrayNoDuplicates!0 lt!306971 index!984 Nil!12629)))

(declare-fun lt!306970 () Unit!22694)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38690 (_ BitVec 32) (_ BitVec 32)) Unit!22694)

(assert (=> b!657186 (= lt!306970 (lemmaNoDuplicateFromThenFromBigger!0 lt!306971 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657186 (arrayNoDuplicates!0 lt!306971 #b00000000000000000000000000000000 Nil!12629)))

(declare-fun lt!306980 () Unit!22694)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12632) Unit!22694)

(assert (=> b!657186 (= lt!306980 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12629))))

(declare-fun arrayContainsKey!0 (array!38690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657186 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306983 () Unit!22694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22694)

(assert (=> b!657186 (= lt!306983 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306971 (select (arr!18538 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377533 () Bool)

(assert (=> b!657186 e!377533))

(declare-fun res!426259 () Bool)

(assert (=> b!657186 (=> (not res!426259) (not e!377533))))

(assert (=> b!657186 (= res!426259 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) j!136))))

(declare-fun e!377523 () Unit!22694)

(declare-fun Unit!22696 () Unit!22694)

(assert (=> b!657186 (= e!377523 Unit!22696)))

(declare-fun b!657187 () Bool)

(declare-fun res!426256 () Bool)

(assert (=> b!657187 (= res!426256 (bvsge j!136 index!984))))

(declare-fun e!377526 () Bool)

(assert (=> b!657187 (=> res!426256 e!377526)))

(declare-fun e!377519 () Bool)

(assert (=> b!657187 (= e!377519 e!377526)))

(declare-fun b!657188 () Bool)

(declare-fun e!377520 () Bool)

(assert (=> b!657188 (= e!377520 e!377522)))

(declare-fun res!426260 () Bool)

(assert (=> b!657188 (=> (not res!426260) (not e!377522))))

(declare-datatypes ((SeekEntryResult!6985 0))(
  ( (MissingZero!6985 (index!30304 (_ BitVec 32))) (Found!6985 (index!30305 (_ BitVec 32))) (Intermediate!6985 (undefined!7797 Bool) (index!30306 (_ BitVec 32)) (x!59125 (_ BitVec 32))) (Undefined!6985) (MissingVacant!6985 (index!30307 (_ BitVec 32))) )
))
(declare-fun lt!306979 () SeekEntryResult!6985)

(assert (=> b!657188 (= res!426260 (or (= lt!306979 (MissingZero!6985 i!1108)) (= lt!306979 (MissingVacant!6985 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38690 (_ BitVec 32)) SeekEntryResult!6985)

(assert (=> b!657188 (= lt!306979 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun e!377521 () Bool)

(declare-fun b!657189 () Bool)

(assert (=> b!657189 (= e!377521 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) index!984))))

(declare-fun b!657191 () Bool)

(declare-fun res!426263 () Bool)

(assert (=> b!657191 (= res!426263 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) j!136))))

(assert (=> b!657191 (=> (not res!426263) (not e!377521))))

(assert (=> b!657191 (= e!377526 e!377521)))

(declare-fun b!657192 () Bool)

(declare-fun res!426258 () Bool)

(assert (=> b!657192 (=> (not res!426258) (not e!377522))))

(assert (=> b!657192 (= res!426258 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12629))))

(declare-fun b!657193 () Bool)

(declare-fun e!377531 () Unit!22694)

(declare-fun Unit!22697 () Unit!22694)

(assert (=> b!657193 (= e!377531 Unit!22697)))

(declare-fun res!426262 () Bool)

(assert (=> b!657193 (= res!426262 (= (select (store (arr!18538 a!2986) i!1108 k0!1786) index!984) (select (arr!18538 a!2986) j!136)))))

(assert (=> b!657193 (=> (not res!426262) (not e!377519))))

(assert (=> b!657193 e!377519))

(declare-fun c!75839 () Bool)

(assert (=> b!657193 (= c!75839 (bvslt j!136 index!984))))

(declare-fun lt!306968 () Unit!22694)

(declare-fun e!377532 () Unit!22694)

(assert (=> b!657193 (= lt!306968 e!377532)))

(declare-fun c!75838 () Bool)

(assert (=> b!657193 (= c!75838 (bvslt index!984 j!136))))

(declare-fun lt!306974 () Unit!22694)

(assert (=> b!657193 (= lt!306974 e!377523)))

(assert (=> b!657193 false))

(declare-fun b!657194 () Bool)

(declare-fun e!377524 () Bool)

(declare-fun e!377529 () Bool)

(assert (=> b!657194 (= e!377524 (not e!377529))))

(declare-fun res!426255 () Bool)

(assert (=> b!657194 (=> res!426255 e!377529)))

(declare-fun lt!306973 () SeekEntryResult!6985)

(assert (=> b!657194 (= res!426255 (not (= lt!306973 (MissingVacant!6985 vacantSpotIndex!68))))))

(declare-fun lt!306982 () Unit!22694)

(assert (=> b!657194 (= lt!306982 e!377531)))

(declare-fun c!75836 () Bool)

(assert (=> b!657194 (= c!75836 (= lt!306973 (Found!6985 index!984)))))

(declare-fun lt!306969 () Unit!22694)

(declare-fun e!377530 () Unit!22694)

(assert (=> b!657194 (= lt!306969 e!377530)))

(declare-fun c!75837 () Bool)

(assert (=> b!657194 (= c!75837 (= lt!306973 Undefined!6985))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!306976 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38690 (_ BitVec 32)) SeekEntryResult!6985)

(assert (=> b!657194 (= lt!306973 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306976 lt!306971 mask!3053))))

(declare-fun e!377525 () Bool)

(assert (=> b!657194 e!377525))

(declare-fun res!426257 () Bool)

(assert (=> b!657194 (=> (not res!426257) (not e!377525))))

(declare-fun lt!306981 () (_ BitVec 32))

(declare-fun lt!306977 () SeekEntryResult!6985)

(assert (=> b!657194 (= res!426257 (= lt!306977 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306981 vacantSpotIndex!68 lt!306976 lt!306971 mask!3053)))))

(assert (=> b!657194 (= lt!306977 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306981 vacantSpotIndex!68 (select (arr!18538 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657194 (= lt!306976 (select (store (arr!18538 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!306987 () Unit!22694)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38690 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22694)

(assert (=> b!657194 (= lt!306987 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306981 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657194 (= lt!306981 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657195 () Bool)

(assert (=> b!657195 (= e!377533 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) index!984))))

(declare-fun b!657196 () Bool)

(declare-fun res!426261 () Bool)

(assert (=> b!657196 (=> (not res!426261) (not e!377520))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657196 (= res!426261 (validKeyInArray!0 (select (arr!18538 a!2986) j!136)))))

(declare-fun b!657197 () Bool)

(declare-fun Unit!22698 () Unit!22694)

(assert (=> b!657197 (= e!377532 Unit!22698)))

(declare-fun b!657198 () Bool)

(declare-fun lt!306975 () SeekEntryResult!6985)

(assert (=> b!657198 (= e!377525 (= lt!306975 lt!306977))))

(declare-fun b!657199 () Bool)

(declare-fun res!426252 () Bool)

(assert (=> b!657199 (=> (not res!426252) (not e!377520))))

(assert (=> b!657199 (= res!426252 (validKeyInArray!0 k0!1786))))

(declare-fun b!657200 () Bool)

(declare-fun Unit!22699 () Unit!22694)

(assert (=> b!657200 (= e!377530 Unit!22699)))

(assert (=> b!657200 false))

(declare-fun b!657201 () Bool)

(declare-fun Unit!22700 () Unit!22694)

(assert (=> b!657201 (= e!377523 Unit!22700)))

(declare-fun b!657190 () Bool)

(assert (=> b!657190 false))

(declare-fun lt!306986 () Unit!22694)

(assert (=> b!657190 (= lt!306986 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306971 (select (arr!18538 a!2986) j!136) j!136 Nil!12629))))

(assert (=> b!657190 (arrayNoDuplicates!0 lt!306971 j!136 Nil!12629)))

(declare-fun lt!306978 () Unit!22694)

(assert (=> b!657190 (= lt!306978 (lemmaNoDuplicateFromThenFromBigger!0 lt!306971 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657190 (arrayNoDuplicates!0 lt!306971 #b00000000000000000000000000000000 Nil!12629)))

(declare-fun lt!306984 () Unit!22694)

(assert (=> b!657190 (= lt!306984 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12629))))

(assert (=> b!657190 (arrayContainsKey!0 lt!306971 (select (arr!18538 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306972 () Unit!22694)

(assert (=> b!657190 (= lt!306972 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306971 (select (arr!18538 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22701 () Unit!22694)

(assert (=> b!657190 (= e!377532 Unit!22701)))

(declare-fun res!426248 () Bool)

(assert (=> start!59576 (=> (not res!426248) (not e!377520))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59576 (= res!426248 (validMask!0 mask!3053))))

(assert (=> start!59576 e!377520))

(assert (=> start!59576 true))

(declare-fun array_inv!14312 (array!38690) Bool)

(assert (=> start!59576 (array_inv!14312 a!2986)))

(declare-fun b!657202 () Bool)

(declare-fun res!426253 () Bool)

(assert (=> b!657202 (=> (not res!426253) (not e!377522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38690 (_ BitVec 32)) Bool)

(assert (=> b!657202 (= res!426253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657203 () Bool)

(declare-fun Unit!22702 () Unit!22694)

(assert (=> b!657203 (= e!377530 Unit!22702)))

(declare-fun b!657204 () Bool)

(declare-fun res!426254 () Bool)

(assert (=> b!657204 (=> (not res!426254) (not e!377522))))

(assert (=> b!657204 (= res!426254 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18538 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657205 () Bool)

(declare-fun Unit!22703 () Unit!22694)

(assert (=> b!657205 (= e!377531 Unit!22703)))

(declare-fun b!657206 () Bool)

(assert (=> b!657206 (= e!377528 e!377524)))

(declare-fun res!426251 () Bool)

(assert (=> b!657206 (=> (not res!426251) (not e!377524))))

(assert (=> b!657206 (= res!426251 (and (= lt!306975 (Found!6985 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18538 a!2986) index!984) (select (arr!18538 a!2986) j!136))) (not (= (select (arr!18538 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657206 (= lt!306975 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18538 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657207 () Bool)

(assert (=> b!657207 (= e!377529 true)))

(assert (=> b!657207 (= (select (store (arr!18538 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657208 () Bool)

(declare-fun res!426250 () Bool)

(assert (=> b!657208 (=> (not res!426250) (not e!377520))))

(assert (=> b!657208 (= res!426250 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657209 () Bool)

(declare-fun res!426249 () Bool)

(assert (=> b!657209 (=> (not res!426249) (not e!377520))))

(assert (=> b!657209 (= res!426249 (and (= (size!18902 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18902 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18902 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!59576 res!426248) b!657209))

(assert (= (and b!657209 res!426249) b!657196))

(assert (= (and b!657196 res!426261) b!657199))

(assert (= (and b!657199 res!426252) b!657208))

(assert (= (and b!657208 res!426250) b!657188))

(assert (= (and b!657188 res!426260) b!657202))

(assert (= (and b!657202 res!426253) b!657192))

(assert (= (and b!657192 res!426258) b!657204))

(assert (= (and b!657204 res!426254) b!657185))

(assert (= (and b!657185 res!426247) b!657206))

(assert (= (and b!657206 res!426251) b!657194))

(assert (= (and b!657194 res!426257) b!657198))

(assert (= (and b!657194 c!75837) b!657200))

(assert (= (and b!657194 (not c!75837)) b!657203))

(assert (= (and b!657194 c!75836) b!657193))

(assert (= (and b!657194 (not c!75836)) b!657205))

(assert (= (and b!657193 res!426262) b!657187))

(assert (= (and b!657187 (not res!426256)) b!657191))

(assert (= (and b!657191 res!426263) b!657189))

(assert (= (and b!657193 c!75839) b!657190))

(assert (= (and b!657193 (not c!75839)) b!657197))

(assert (= (and b!657193 c!75838) b!657186))

(assert (= (and b!657193 (not c!75838)) b!657201))

(assert (= (and b!657186 res!426259) b!657195))

(assert (= (and b!657194 (not res!426255)) b!657207))

(declare-fun m!630301 () Bool)

(assert (=> b!657190 m!630301))

(declare-fun m!630303 () Bool)

(assert (=> b!657190 m!630303))

(assert (=> b!657190 m!630301))

(declare-fun m!630305 () Bool)

(assert (=> b!657190 m!630305))

(assert (=> b!657190 m!630301))

(declare-fun m!630307 () Bool)

(assert (=> b!657190 m!630307))

(declare-fun m!630309 () Bool)

(assert (=> b!657190 m!630309))

(declare-fun m!630311 () Bool)

(assert (=> b!657190 m!630311))

(assert (=> b!657190 m!630301))

(declare-fun m!630313 () Bool)

(assert (=> b!657190 m!630313))

(declare-fun m!630315 () Bool)

(assert (=> b!657190 m!630315))

(assert (=> b!657189 m!630301))

(assert (=> b!657189 m!630301))

(declare-fun m!630317 () Bool)

(assert (=> b!657189 m!630317))

(declare-fun m!630319 () Bool)

(assert (=> b!657204 m!630319))

(declare-fun m!630321 () Bool)

(assert (=> b!657188 m!630321))

(declare-fun m!630323 () Bool)

(assert (=> b!657206 m!630323))

(assert (=> b!657206 m!630301))

(assert (=> b!657206 m!630301))

(declare-fun m!630325 () Bool)

(assert (=> b!657206 m!630325))

(assert (=> b!657196 m!630301))

(assert (=> b!657196 m!630301))

(declare-fun m!630327 () Bool)

(assert (=> b!657196 m!630327))

(assert (=> b!657186 m!630301))

(declare-fun m!630329 () Bool)

(assert (=> b!657186 m!630329))

(assert (=> b!657186 m!630301))

(assert (=> b!657186 m!630301))

(declare-fun m!630331 () Bool)

(assert (=> b!657186 m!630331))

(declare-fun m!630333 () Bool)

(assert (=> b!657186 m!630333))

(assert (=> b!657186 m!630311))

(assert (=> b!657186 m!630301))

(declare-fun m!630335 () Bool)

(assert (=> b!657186 m!630335))

(declare-fun m!630337 () Bool)

(assert (=> b!657186 m!630337))

(assert (=> b!657186 m!630301))

(declare-fun m!630339 () Bool)

(assert (=> b!657186 m!630339))

(assert (=> b!657186 m!630315))

(declare-fun m!630341 () Bool)

(assert (=> b!657193 m!630341))

(declare-fun m!630343 () Bool)

(assert (=> b!657193 m!630343))

(assert (=> b!657193 m!630301))

(assert (=> b!657194 m!630301))

(declare-fun m!630345 () Bool)

(assert (=> b!657194 m!630345))

(declare-fun m!630347 () Bool)

(assert (=> b!657194 m!630347))

(declare-fun m!630349 () Bool)

(assert (=> b!657194 m!630349))

(assert (=> b!657194 m!630301))

(assert (=> b!657194 m!630341))

(declare-fun m!630351 () Bool)

(assert (=> b!657194 m!630351))

(declare-fun m!630353 () Bool)

(assert (=> b!657194 m!630353))

(declare-fun m!630355 () Bool)

(assert (=> b!657194 m!630355))

(declare-fun m!630357 () Bool)

(assert (=> start!59576 m!630357))

(declare-fun m!630359 () Bool)

(assert (=> start!59576 m!630359))

(assert (=> b!657191 m!630301))

(assert (=> b!657191 m!630301))

(assert (=> b!657191 m!630331))

(assert (=> b!657207 m!630341))

(assert (=> b!657207 m!630343))

(assert (=> b!657195 m!630301))

(assert (=> b!657195 m!630301))

(assert (=> b!657195 m!630317))

(declare-fun m!630361 () Bool)

(assert (=> b!657202 m!630361))

(declare-fun m!630363 () Bool)

(assert (=> b!657199 m!630363))

(assert (=> b!657185 m!630341))

(declare-fun m!630365 () Bool)

(assert (=> b!657185 m!630365))

(declare-fun m!630367 () Bool)

(assert (=> b!657208 m!630367))

(declare-fun m!630369 () Bool)

(assert (=> b!657192 m!630369))

(check-sat (not b!657196) (not b!657186) (not b!657188) (not start!59576) (not b!657206) (not b!657192) (not b!657202) (not b!657208) (not b!657189) (not b!657194) (not b!657190) (not b!657195) (not b!657199) (not b!657191))
(check-sat)
