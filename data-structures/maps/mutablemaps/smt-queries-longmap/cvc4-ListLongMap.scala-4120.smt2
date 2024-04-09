; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56230 () Bool)

(assert start!56230)

(declare-fun b!623279 () Bool)

(declare-fun res!401802 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623279 (= res!401802 (bvsge j!136 index!984))))

(declare-fun e!357520 () Bool)

(assert (=> b!623279 (=> res!401802 e!357520)))

(declare-fun e!357512 () Bool)

(assert (=> b!623279 (= e!357512 e!357520)))

(declare-datatypes ((array!37663 0))(
  ( (array!37664 (arr!18074 (Array (_ BitVec 32) (_ BitVec 64))) (size!18438 (_ BitVec 32))) )
))
(declare-fun lt!289219 () array!37663)

(declare-fun a!2986 () array!37663)

(declare-fun b!623280 () Bool)

(declare-fun res!401799 () Bool)

(declare-fun arrayContainsKey!0 (array!37663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623280 (= res!401799 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) j!136))))

(declare-fun e!357523 () Bool)

(assert (=> b!623280 (=> (not res!401799) (not e!357523))))

(assert (=> b!623280 (= e!357520 e!357523)))

(declare-fun b!623281 () Bool)

(declare-fun res!401797 () Bool)

(declare-fun e!357525 () Bool)

(assert (=> b!623281 (=> (not res!401797) (not e!357525))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623281 (= res!401797 (validKeyInArray!0 k!1786))))

(declare-fun b!623282 () Bool)

(declare-fun res!401804 () Bool)

(declare-fun e!357526 () Bool)

(assert (=> b!623282 (=> (not res!401804) (not e!357526))))

(declare-datatypes ((List!12168 0))(
  ( (Nil!12165) (Cons!12164 (h!13209 (_ BitVec 64)) (t!18404 List!12168)) )
))
(declare-fun arrayNoDuplicates!0 (array!37663 (_ BitVec 32) List!12168) Bool)

(assert (=> b!623282 (= res!401804 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12165))))

(declare-fun b!623283 () Bool)

(assert (=> b!623283 (= e!357525 e!357526)))

(declare-fun res!401810 () Bool)

(assert (=> b!623283 (=> (not res!401810) (not e!357526))))

(declare-datatypes ((SeekEntryResult!6521 0))(
  ( (MissingZero!6521 (index!28367 (_ BitVec 32))) (Found!6521 (index!28368 (_ BitVec 32))) (Intermediate!6521 (undefined!7333 Bool) (index!28369 (_ BitVec 32)) (x!57154 (_ BitVec 32))) (Undefined!6521) (MissingVacant!6521 (index!28370 (_ BitVec 32))) )
))
(declare-fun lt!289228 () SeekEntryResult!6521)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623283 (= res!401810 (or (= lt!289228 (MissingZero!6521 i!1108)) (= lt!289228 (MissingVacant!6521 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37663 (_ BitVec 32)) SeekEntryResult!6521)

(assert (=> b!623283 (= lt!289228 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623284 () Bool)

(declare-fun e!357518 () Bool)

(assert (=> b!623284 (= e!357518 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) index!984))))

(declare-fun b!623285 () Bool)

(assert (=> b!623285 false))

(declare-datatypes ((Unit!21030 0))(
  ( (Unit!21031) )
))
(declare-fun lt!289229 () Unit!21030)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37663 (_ BitVec 64) (_ BitVec 32) List!12168) Unit!21030)

(assert (=> b!623285 (= lt!289229 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289219 (select (arr!18074 a!2986) j!136) j!136 Nil!12165))))

(assert (=> b!623285 (arrayNoDuplicates!0 lt!289219 j!136 Nil!12165)))

(declare-fun lt!289224 () Unit!21030)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37663 (_ BitVec 32) (_ BitVec 32)) Unit!21030)

(assert (=> b!623285 (= lt!289224 (lemmaNoDuplicateFromThenFromBigger!0 lt!289219 #b00000000000000000000000000000000 j!136))))

(assert (=> b!623285 (arrayNoDuplicates!0 lt!289219 #b00000000000000000000000000000000 Nil!12165)))

(declare-fun lt!289217 () Unit!21030)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37663 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12168) Unit!21030)

(assert (=> b!623285 (= lt!289217 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12165))))

(assert (=> b!623285 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!289222 () Unit!21030)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37663 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21030)

(assert (=> b!623285 (= lt!289222 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289219 (select (arr!18074 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!357519 () Unit!21030)

(declare-fun Unit!21032 () Unit!21030)

(assert (=> b!623285 (= e!357519 Unit!21032)))

(declare-fun b!623286 () Bool)

(declare-fun res!401805 () Bool)

(assert (=> b!623286 (=> (not res!401805) (not e!357526))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!623286 (= res!401805 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18074 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623287 () Bool)

(declare-fun res!401800 () Bool)

(assert (=> b!623287 (=> (not res!401800) (not e!357525))))

(assert (=> b!623287 (= res!401800 (validKeyInArray!0 (select (arr!18074 a!2986) j!136)))))

(declare-fun b!623289 () Bool)

(declare-fun e!357522 () Unit!21030)

(declare-fun Unit!21033 () Unit!21030)

(assert (=> b!623289 (= e!357522 Unit!21033)))

(declare-fun res!401813 () Bool)

(assert (=> b!623289 (= res!401813 (= (select (store (arr!18074 a!2986) i!1108 k!1786) index!984) (select (arr!18074 a!2986) j!136)))))

(assert (=> b!623289 (=> (not res!401813) (not e!357512))))

(assert (=> b!623289 e!357512))

(declare-fun c!71109 () Bool)

(assert (=> b!623289 (= c!71109 (bvslt j!136 index!984))))

(declare-fun lt!289218 () Unit!21030)

(assert (=> b!623289 (= lt!289218 e!357519)))

(declare-fun c!71111 () Bool)

(assert (=> b!623289 (= c!71111 (bvslt index!984 j!136))))

(declare-fun lt!289232 () Unit!21030)

(declare-fun e!357521 () Unit!21030)

(assert (=> b!623289 (= lt!289232 e!357521)))

(assert (=> b!623289 false))

(declare-fun b!623290 () Bool)

(declare-fun res!401808 () Bool)

(assert (=> b!623290 (=> (not res!401808) (not e!357526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37663 (_ BitVec 32)) Bool)

(assert (=> b!623290 (= res!401808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623291 () Bool)

(assert (=> b!623291 false))

(declare-fun lt!289231 () Unit!21030)

(assert (=> b!623291 (= lt!289231 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289219 (select (arr!18074 a!2986) j!136) index!984 Nil!12165))))

(assert (=> b!623291 (arrayNoDuplicates!0 lt!289219 index!984 Nil!12165)))

(declare-fun lt!289223 () Unit!21030)

(assert (=> b!623291 (= lt!289223 (lemmaNoDuplicateFromThenFromBigger!0 lt!289219 #b00000000000000000000000000000000 index!984))))

(assert (=> b!623291 (arrayNoDuplicates!0 lt!289219 #b00000000000000000000000000000000 Nil!12165)))

(declare-fun lt!289235 () Unit!21030)

(assert (=> b!623291 (= lt!289235 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12165))))

(assert (=> b!623291 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!289225 () Unit!21030)

(assert (=> b!623291 (= lt!289225 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289219 (select (arr!18074 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!623291 e!357518))

(declare-fun res!401801 () Bool)

(assert (=> b!623291 (=> (not res!401801) (not e!357518))))

(assert (=> b!623291 (= res!401801 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) j!136))))

(declare-fun Unit!21034 () Unit!21030)

(assert (=> b!623291 (= e!357521 Unit!21034)))

(declare-fun b!623292 () Bool)

(declare-fun res!401807 () Bool)

(assert (=> b!623292 (=> (not res!401807) (not e!357525))))

(assert (=> b!623292 (= res!401807 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623293 () Bool)

(declare-fun e!357515 () Bool)

(declare-fun lt!289226 () SeekEntryResult!6521)

(declare-fun lt!289234 () SeekEntryResult!6521)

(assert (=> b!623293 (= e!357515 (= lt!289226 lt!289234))))

(declare-fun b!623294 () Bool)

(assert (=> b!623294 (= e!357523 (arrayContainsKey!0 lt!289219 (select (arr!18074 a!2986) j!136) index!984))))

(declare-fun b!623295 () Bool)

(declare-fun e!357516 () Bool)

(declare-fun lt!289220 () (_ BitVec 64))

(assert (=> b!623295 (= e!357516 (validKeyInArray!0 lt!289220))))

(declare-fun b!623296 () Bool)

(declare-fun Unit!21035 () Unit!21030)

(assert (=> b!623296 (= e!357519 Unit!21035)))

(declare-fun b!623297 () Bool)

(declare-fun Unit!21036 () Unit!21030)

(assert (=> b!623297 (= e!357522 Unit!21036)))

(declare-fun b!623298 () Bool)

(declare-fun res!401812 () Bool)

(assert (=> b!623298 (=> (not res!401812) (not e!357525))))

(assert (=> b!623298 (= res!401812 (and (= (size!18438 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18438 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18438 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623288 () Bool)

(declare-fun e!357517 () Unit!21030)

(declare-fun Unit!21037 () Unit!21030)

(assert (=> b!623288 (= e!357517 Unit!21037)))

(assert (=> b!623288 false))

(declare-fun res!401809 () Bool)

(assert (=> start!56230 (=> (not res!401809) (not e!357525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56230 (= res!401809 (validMask!0 mask!3053))))

(assert (=> start!56230 e!357525))

(assert (=> start!56230 true))

(declare-fun array_inv!13848 (array!37663) Bool)

(assert (=> start!56230 (array_inv!13848 a!2986)))

(declare-fun b!623299 () Bool)

(declare-fun e!357513 () Bool)

(assert (=> b!623299 (= e!357526 e!357513)))

(declare-fun res!401803 () Bool)

(assert (=> b!623299 (=> (not res!401803) (not e!357513))))

(assert (=> b!623299 (= res!401803 (= (select (store (arr!18074 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623299 (= lt!289219 (array!37664 (store (arr!18074 a!2986) i!1108 k!1786) (size!18438 a!2986)))))

(declare-fun b!623300 () Bool)

(declare-fun e!357524 () Bool)

(assert (=> b!623300 (= e!357524 (not e!357516))))

(declare-fun res!401811 () Bool)

(assert (=> b!623300 (=> res!401811 e!357516)))

(declare-fun lt!289221 () SeekEntryResult!6521)

(assert (=> b!623300 (= res!401811 (or (= lt!289221 (MissingVacant!6521 vacantSpotIndex!68)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!289233 () Unit!21030)

(assert (=> b!623300 (= lt!289233 e!357522)))

(declare-fun c!71110 () Bool)

(assert (=> b!623300 (= c!71110 (= lt!289221 (Found!6521 index!984)))))

(declare-fun lt!289227 () Unit!21030)

(assert (=> b!623300 (= lt!289227 e!357517)))

(declare-fun c!71108 () Bool)

(assert (=> b!623300 (= c!71108 (= lt!289221 Undefined!6521))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37663 (_ BitVec 32)) SeekEntryResult!6521)

(assert (=> b!623300 (= lt!289221 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289220 lt!289219 mask!3053))))

(assert (=> b!623300 e!357515))

(declare-fun res!401798 () Bool)

(assert (=> b!623300 (=> (not res!401798) (not e!357515))))

(declare-fun lt!289230 () (_ BitVec 32))

(assert (=> b!623300 (= res!401798 (= lt!289234 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289230 vacantSpotIndex!68 lt!289220 lt!289219 mask!3053)))))

(assert (=> b!623300 (= lt!289234 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289230 vacantSpotIndex!68 (select (arr!18074 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623300 (= lt!289220 (select (store (arr!18074 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!289236 () Unit!21030)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37663 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21030)

(assert (=> b!623300 (= lt!289236 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289230 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623300 (= lt!289230 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!623301 () Bool)

(declare-fun Unit!21038 () Unit!21030)

(assert (=> b!623301 (= e!357517 Unit!21038)))

(declare-fun b!623302 () Bool)

(assert (=> b!623302 (= e!357513 e!357524)))

(declare-fun res!401806 () Bool)

(assert (=> b!623302 (=> (not res!401806) (not e!357524))))

(assert (=> b!623302 (= res!401806 (and (= lt!289226 (Found!6521 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18074 a!2986) index!984) (select (arr!18074 a!2986) j!136))) (not (= (select (arr!18074 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!623302 (= lt!289226 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18074 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!623303 () Bool)

(declare-fun Unit!21039 () Unit!21030)

(assert (=> b!623303 (= e!357521 Unit!21039)))

(assert (= (and start!56230 res!401809) b!623298))

(assert (= (and b!623298 res!401812) b!623287))

(assert (= (and b!623287 res!401800) b!623281))

(assert (= (and b!623281 res!401797) b!623292))

(assert (= (and b!623292 res!401807) b!623283))

(assert (= (and b!623283 res!401810) b!623290))

(assert (= (and b!623290 res!401808) b!623282))

(assert (= (and b!623282 res!401804) b!623286))

(assert (= (and b!623286 res!401805) b!623299))

(assert (= (and b!623299 res!401803) b!623302))

(assert (= (and b!623302 res!401806) b!623300))

(assert (= (and b!623300 res!401798) b!623293))

(assert (= (and b!623300 c!71108) b!623288))

(assert (= (and b!623300 (not c!71108)) b!623301))

(assert (= (and b!623300 c!71110) b!623289))

(assert (= (and b!623300 (not c!71110)) b!623297))

(assert (= (and b!623289 res!401813) b!623279))

(assert (= (and b!623279 (not res!401802)) b!623280))

(assert (= (and b!623280 res!401799) b!623294))

(assert (= (and b!623289 c!71109) b!623285))

(assert (= (and b!623289 (not c!71109)) b!623296))

(assert (= (and b!623289 c!71111) b!623291))

(assert (= (and b!623289 (not c!71111)) b!623303))

(assert (= (and b!623291 res!401801) b!623284))

(assert (= (and b!623300 (not res!401811)) b!623295))

(declare-fun m!599163 () Bool)

(assert (=> b!623290 m!599163))

(declare-fun m!599165 () Bool)

(assert (=> b!623281 m!599165))

(declare-fun m!599167 () Bool)

(assert (=> b!623292 m!599167))

(declare-fun m!599169 () Bool)

(assert (=> b!623295 m!599169))

(declare-fun m!599171 () Bool)

(assert (=> b!623300 m!599171))

(declare-fun m!599173 () Bool)

(assert (=> b!623300 m!599173))

(declare-fun m!599175 () Bool)

(assert (=> b!623300 m!599175))

(declare-fun m!599177 () Bool)

(assert (=> b!623300 m!599177))

(declare-fun m!599179 () Bool)

(assert (=> b!623300 m!599179))

(declare-fun m!599181 () Bool)

(assert (=> b!623300 m!599181))

(declare-fun m!599183 () Bool)

(assert (=> b!623300 m!599183))

(assert (=> b!623300 m!599175))

(declare-fun m!599185 () Bool)

(assert (=> b!623300 m!599185))

(assert (=> b!623289 m!599179))

(declare-fun m!599187 () Bool)

(assert (=> b!623289 m!599187))

(assert (=> b!623289 m!599175))

(declare-fun m!599189 () Bool)

(assert (=> b!623302 m!599189))

(assert (=> b!623302 m!599175))

(assert (=> b!623302 m!599175))

(declare-fun m!599191 () Bool)

(assert (=> b!623302 m!599191))

(assert (=> b!623284 m!599175))

(assert (=> b!623284 m!599175))

(declare-fun m!599193 () Bool)

(assert (=> b!623284 m!599193))

(assert (=> b!623285 m!599175))

(declare-fun m!599195 () Bool)

(assert (=> b!623285 m!599195))

(declare-fun m!599197 () Bool)

(assert (=> b!623285 m!599197))

(assert (=> b!623285 m!599175))

(declare-fun m!599199 () Bool)

(assert (=> b!623285 m!599199))

(assert (=> b!623285 m!599175))

(declare-fun m!599201 () Bool)

(assert (=> b!623285 m!599201))

(declare-fun m!599203 () Bool)

(assert (=> b!623285 m!599203))

(assert (=> b!623285 m!599175))

(declare-fun m!599205 () Bool)

(assert (=> b!623285 m!599205))

(declare-fun m!599207 () Bool)

(assert (=> b!623285 m!599207))

(declare-fun m!599209 () Bool)

(assert (=> b!623286 m!599209))

(assert (=> b!623287 m!599175))

(assert (=> b!623287 m!599175))

(declare-fun m!599211 () Bool)

(assert (=> b!623287 m!599211))

(declare-fun m!599213 () Bool)

(assert (=> start!56230 m!599213))

(declare-fun m!599215 () Bool)

(assert (=> start!56230 m!599215))

(assert (=> b!623294 m!599175))

(assert (=> b!623294 m!599175))

(assert (=> b!623294 m!599193))

(assert (=> b!623280 m!599175))

(assert (=> b!623280 m!599175))

(declare-fun m!599217 () Bool)

(assert (=> b!623280 m!599217))

(assert (=> b!623291 m!599175))

(declare-fun m!599219 () Bool)

(assert (=> b!623291 m!599219))

(assert (=> b!623291 m!599199))

(declare-fun m!599221 () Bool)

(assert (=> b!623291 m!599221))

(declare-fun m!599223 () Bool)

(assert (=> b!623291 m!599223))

(assert (=> b!623291 m!599207))

(assert (=> b!623291 m!599175))

(assert (=> b!623291 m!599217))

(assert (=> b!623291 m!599175))

(assert (=> b!623291 m!599175))

(declare-fun m!599225 () Bool)

(assert (=> b!623291 m!599225))

(assert (=> b!623291 m!599175))

(declare-fun m!599227 () Bool)

(assert (=> b!623291 m!599227))

(declare-fun m!599229 () Bool)

(assert (=> b!623282 m!599229))

(assert (=> b!623299 m!599179))

(declare-fun m!599231 () Bool)

(assert (=> b!623299 m!599231))

(declare-fun m!599233 () Bool)

(assert (=> b!623283 m!599233))

(push 1)

