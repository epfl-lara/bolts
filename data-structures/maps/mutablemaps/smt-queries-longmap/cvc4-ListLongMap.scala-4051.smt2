; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55450 () Bool)

(assert start!55450)

(declare-fun b!606364 () Bool)

(declare-datatypes ((Unit!19312 0))(
  ( (Unit!19313) )
))
(declare-fun e!347187 () Unit!19312)

(declare-fun Unit!19314 () Unit!19312)

(assert (=> b!606364 (= e!347187 Unit!19314)))

(declare-fun lt!276811 () Unit!19312)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37237 0))(
  ( (array!37238 (arr!17867 (Array (_ BitVec 32) (_ BitVec 64))) (size!18231 (_ BitVec 32))) )
))
(declare-fun lt!276810 () array!37237)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37237)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> b!606364 (= lt!276811 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276810 (select (arr!17867 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!606364 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!276823 () Unit!19312)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!11961 0))(
  ( (Nil!11958) (Cons!11957 (h!13002 (_ BitVec 64)) (t!18197 List!11961)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11961) Unit!19312)

(assert (=> b!606364 (= lt!276823 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11958))))

(declare-fun arrayNoDuplicates!0 (array!37237 (_ BitVec 32) List!11961) Bool)

(assert (=> b!606364 (arrayNoDuplicates!0 lt!276810 #b00000000000000000000000000000000 Nil!11958)))

(declare-fun lt!276812 () Unit!19312)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37237 (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> b!606364 (= lt!276812 (lemmaNoDuplicateFromThenFromBigger!0 lt!276810 #b00000000000000000000000000000000 j!136))))

(assert (=> b!606364 (arrayNoDuplicates!0 lt!276810 j!136 Nil!11958)))

(declare-fun lt!276815 () Unit!19312)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37237 (_ BitVec 64) (_ BitVec 32) List!11961) Unit!19312)

(assert (=> b!606364 (= lt!276815 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276810 (select (arr!17867 a!2986) j!136) j!136 Nil!11958))))

(assert (=> b!606364 false))

(declare-fun b!606365 () Bool)

(declare-fun e!347184 () Bool)

(declare-fun e!347178 () Bool)

(assert (=> b!606365 (= e!347184 e!347178)))

(declare-fun res!389656 () Bool)

(assert (=> b!606365 (=> (not res!389656) (not e!347178))))

(declare-datatypes ((SeekEntryResult!6314 0))(
  ( (MissingZero!6314 (index!27527 (_ BitVec 32))) (Found!6314 (index!27528 (_ BitVec 32))) (Intermediate!6314 (undefined!7126 Bool) (index!27529 (_ BitVec 32)) (x!56359 (_ BitVec 32))) (Undefined!6314) (MissingVacant!6314 (index!27530 (_ BitVec 32))) )
))
(declare-fun lt!276818 () SeekEntryResult!6314)

(assert (=> b!606365 (= res!389656 (or (= lt!276818 (MissingZero!6314 i!1108)) (= lt!276818 (MissingVacant!6314 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37237 (_ BitVec 32)) SeekEntryResult!6314)

(assert (=> b!606365 (= lt!276818 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!606366 () Bool)

(declare-fun e!347182 () Bool)

(assert (=> b!606366 (= e!347178 e!347182)))

(declare-fun res!389642 () Bool)

(assert (=> b!606366 (=> (not res!389642) (not e!347182))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!606366 (= res!389642 (= (select (store (arr!17867 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606366 (= lt!276810 (array!37238 (store (arr!17867 a!2986) i!1108 k!1786) (size!18231 a!2986)))))

(declare-fun b!606367 () Bool)

(declare-fun res!389644 () Bool)

(assert (=> b!606367 (=> (not res!389644) (not e!347178))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!606367 (= res!389644 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17867 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606368 () Bool)

(declare-fun e!347179 () Bool)

(assert (=> b!606368 (= e!347182 e!347179)))

(declare-fun res!389647 () Bool)

(assert (=> b!606368 (=> (not res!389647) (not e!347179))))

(declare-fun lt!276820 () SeekEntryResult!6314)

(assert (=> b!606368 (= res!389647 (and (= lt!276820 (Found!6314 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17867 a!2986) index!984) (select (arr!17867 a!2986) j!136))) (not (= (select (arr!17867 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37237 (_ BitVec 32)) SeekEntryResult!6314)

(assert (=> b!606368 (= lt!276820 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17867 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!606369 () Bool)

(declare-fun res!389660 () Bool)

(assert (=> b!606369 (=> (not res!389660) (not e!347178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37237 (_ BitVec 32)) Bool)

(assert (=> b!606369 (= res!389660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!606370 () Bool)

(declare-fun res!389662 () Bool)

(declare-fun e!347173 () Bool)

(assert (=> b!606370 (=> res!389662 e!347173)))

(declare-fun noDuplicate!309 (List!11961) Bool)

(assert (=> b!606370 (= res!389662 (not (noDuplicate!309 Nil!11958)))))

(declare-fun b!606371 () Bool)

(declare-fun res!389655 () Bool)

(assert (=> b!606371 (=> (not res!389655) (not e!347184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!606371 (= res!389655 (validKeyInArray!0 k!1786))))

(declare-fun b!606373 () Bool)

(declare-fun e!347180 () Unit!19312)

(declare-fun Unit!19315 () Unit!19312)

(assert (=> b!606373 (= e!347180 Unit!19315)))

(assert (=> b!606373 false))

(declare-fun b!606374 () Bool)

(declare-fun e!347174 () Bool)

(declare-fun e!347188 () Bool)

(assert (=> b!606374 (= e!347174 e!347188)))

(declare-fun res!389643 () Bool)

(assert (=> b!606374 (=> res!389643 e!347188)))

(assert (=> b!606374 (= res!389643 (bvsge index!984 j!136))))

(declare-fun lt!276813 () Unit!19312)

(assert (=> b!606374 (= lt!276813 e!347187)))

(declare-fun c!68729 () Bool)

(assert (=> b!606374 (= c!68729 (bvslt j!136 index!984))))

(declare-fun e!347186 () Bool)

(declare-fun b!606375 () Bool)

(assert (=> b!606375 (= e!347186 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) index!984))))

(declare-fun b!606376 () Bool)

(declare-fun Unit!19316 () Unit!19312)

(assert (=> b!606376 (= e!347187 Unit!19316)))

(declare-fun b!606377 () Bool)

(declare-fun e!347177 () Bool)

(declare-fun lt!276816 () SeekEntryResult!6314)

(assert (=> b!606377 (= e!347177 (= lt!276820 lt!276816))))

(declare-fun b!606378 () Bool)

(declare-fun e!347176 () Bool)

(assert (=> b!606378 (= e!347173 e!347176)))

(declare-fun res!389649 () Bool)

(assert (=> b!606378 (=> (not res!389649) (not e!347176))))

(declare-fun contains!3007 (List!11961 (_ BitVec 64)) Bool)

(assert (=> b!606378 (= res!389649 (not (contains!3007 Nil!11958 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!606379 () Bool)

(declare-fun Unit!19317 () Unit!19312)

(assert (=> b!606379 (= e!347180 Unit!19317)))

(declare-fun b!606380 () Bool)

(declare-fun res!389654 () Bool)

(assert (=> b!606380 (=> (not res!389654) (not e!347184))))

(assert (=> b!606380 (= res!389654 (and (= (size!18231 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18231 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18231 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!606381 () Bool)

(declare-fun e!347175 () Bool)

(declare-fun e!347183 () Bool)

(assert (=> b!606381 (= e!347175 e!347183)))

(declare-fun res!389658 () Bool)

(assert (=> b!606381 (=> (not res!389658) (not e!347183))))

(assert (=> b!606381 (= res!389658 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) j!136))))

(declare-fun b!606382 () Bool)

(declare-fun e!347185 () Bool)

(assert (=> b!606382 (= e!347179 (not e!347185))))

(declare-fun res!389648 () Bool)

(assert (=> b!606382 (=> res!389648 e!347185)))

(declare-fun lt!276824 () SeekEntryResult!6314)

(assert (=> b!606382 (= res!389648 (not (= lt!276824 (Found!6314 index!984))))))

(declare-fun lt!276814 () Unit!19312)

(assert (=> b!606382 (= lt!276814 e!347180)))

(declare-fun c!68728 () Bool)

(assert (=> b!606382 (= c!68728 (= lt!276824 Undefined!6314))))

(declare-fun lt!276821 () (_ BitVec 64))

(assert (=> b!606382 (= lt!276824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276821 lt!276810 mask!3053))))

(assert (=> b!606382 e!347177))

(declare-fun res!389650 () Bool)

(assert (=> b!606382 (=> (not res!389650) (not e!347177))))

(declare-fun lt!276825 () (_ BitVec 32))

(assert (=> b!606382 (= res!389650 (= lt!276816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 lt!276821 lt!276810 mask!3053)))))

(assert (=> b!606382 (= lt!276816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 (select (arr!17867 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!606382 (= lt!276821 (select (store (arr!17867 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276822 () Unit!19312)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> b!606382 (= lt!276822 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!606382 (= lt!276825 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!606383 () Bool)

(declare-fun res!389657 () Bool)

(assert (=> b!606383 (=> (not res!389657) (not e!347184))))

(assert (=> b!606383 (= res!389657 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!606384 () Bool)

(declare-fun res!389646 () Bool)

(assert (=> b!606384 (=> (not res!389646) (not e!347184))))

(assert (=> b!606384 (= res!389646 (validKeyInArray!0 (select (arr!17867 a!2986) j!136)))))

(declare-fun res!389645 () Bool)

(assert (=> start!55450 (=> (not res!389645) (not e!347184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55450 (= res!389645 (validMask!0 mask!3053))))

(assert (=> start!55450 e!347184))

(assert (=> start!55450 true))

(declare-fun array_inv!13641 (array!37237) Bool)

(assert (=> start!55450 (array_inv!13641 a!2986)))

(declare-fun b!606372 () Bool)

(assert (=> b!606372 (= e!347185 e!347174)))

(declare-fun res!389651 () Bool)

(assert (=> b!606372 (=> res!389651 e!347174)))

(declare-fun lt!276819 () (_ BitVec 64))

(assert (=> b!606372 (= res!389651 (or (not (= (select (arr!17867 a!2986) j!136) lt!276821)) (not (= (select (arr!17867 a!2986) j!136) lt!276819))))))

(declare-fun e!347181 () Bool)

(assert (=> b!606372 e!347181))

(declare-fun res!389652 () Bool)

(assert (=> b!606372 (=> (not res!389652) (not e!347181))))

(assert (=> b!606372 (= res!389652 (= lt!276819 (select (arr!17867 a!2986) j!136)))))

(assert (=> b!606372 (= lt!276819 (select (store (arr!17867 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!606385 () Bool)

(assert (=> b!606385 (= e!347181 e!347175)))

(declare-fun res!389661 () Bool)

(assert (=> b!606385 (=> res!389661 e!347175)))

(assert (=> b!606385 (= res!389661 (or (not (= (select (arr!17867 a!2986) j!136) lt!276821)) (not (= (select (arr!17867 a!2986) j!136) lt!276819)) (bvsge j!136 index!984)))))

(declare-fun b!606386 () Bool)

(assert (=> b!606386 (= e!347188 e!347173)))

(declare-fun res!389659 () Bool)

(assert (=> b!606386 (=> res!389659 e!347173)))

(assert (=> b!606386 (= res!389659 (or (bvsgt #b00000000000000000000000000000000 (size!18231 a!2986)) (bvsge (size!18231 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!606386 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276817 () Unit!19312)

(assert (=> b!606386 (= lt!276817 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276810 (select (arr!17867 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!606386 e!347186))

(declare-fun res!389653 () Bool)

(assert (=> b!606386 (=> (not res!389653) (not e!347186))))

(assert (=> b!606386 (= res!389653 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) j!136))))

(declare-fun b!606387 () Bool)

(assert (=> b!606387 (= e!347183 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) index!984))))

(declare-fun b!606388 () Bool)

(declare-fun res!389663 () Bool)

(assert (=> b!606388 (=> (not res!389663) (not e!347178))))

(assert (=> b!606388 (= res!389663 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11958))))

(declare-fun b!606389 () Bool)

(assert (=> b!606389 (= e!347176 (not (contains!3007 Nil!11958 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!55450 res!389645) b!606380))

(assert (= (and b!606380 res!389654) b!606384))

(assert (= (and b!606384 res!389646) b!606371))

(assert (= (and b!606371 res!389655) b!606383))

(assert (= (and b!606383 res!389657) b!606365))

(assert (= (and b!606365 res!389656) b!606369))

(assert (= (and b!606369 res!389660) b!606388))

(assert (= (and b!606388 res!389663) b!606367))

(assert (= (and b!606367 res!389644) b!606366))

(assert (= (and b!606366 res!389642) b!606368))

(assert (= (and b!606368 res!389647) b!606382))

(assert (= (and b!606382 res!389650) b!606377))

(assert (= (and b!606382 c!68728) b!606373))

(assert (= (and b!606382 (not c!68728)) b!606379))

(assert (= (and b!606382 (not res!389648)) b!606372))

(assert (= (and b!606372 res!389652) b!606385))

(assert (= (and b!606385 (not res!389661)) b!606381))

(assert (= (and b!606381 res!389658) b!606387))

(assert (= (and b!606372 (not res!389651)) b!606374))

(assert (= (and b!606374 c!68729) b!606364))

(assert (= (and b!606374 (not c!68729)) b!606376))

(assert (= (and b!606374 (not res!389643)) b!606386))

(assert (= (and b!606386 res!389653) b!606375))

(assert (= (and b!606386 (not res!389659)) b!606370))

(assert (= (and b!606370 (not res!389662)) b!606378))

(assert (= (and b!606378 res!389649) b!606389))

(declare-fun m!583211 () Bool)

(assert (=> b!606386 m!583211))

(assert (=> b!606386 m!583211))

(declare-fun m!583213 () Bool)

(assert (=> b!606386 m!583213))

(assert (=> b!606386 m!583211))

(declare-fun m!583215 () Bool)

(assert (=> b!606386 m!583215))

(assert (=> b!606386 m!583211))

(declare-fun m!583217 () Bool)

(assert (=> b!606386 m!583217))

(declare-fun m!583219 () Bool)

(assert (=> b!606366 m!583219))

(declare-fun m!583221 () Bool)

(assert (=> b!606366 m!583221))

(assert (=> b!606364 m!583211))

(assert (=> b!606364 m!583211))

(declare-fun m!583223 () Bool)

(assert (=> b!606364 m!583223))

(assert (=> b!606364 m!583211))

(declare-fun m!583225 () Bool)

(assert (=> b!606364 m!583225))

(declare-fun m!583227 () Bool)

(assert (=> b!606364 m!583227))

(declare-fun m!583229 () Bool)

(assert (=> b!606364 m!583229))

(assert (=> b!606364 m!583211))

(declare-fun m!583231 () Bool)

(assert (=> b!606364 m!583231))

(declare-fun m!583233 () Bool)

(assert (=> b!606364 m!583233))

(declare-fun m!583235 () Bool)

(assert (=> b!606364 m!583235))

(declare-fun m!583237 () Bool)

(assert (=> b!606367 m!583237))

(declare-fun m!583239 () Bool)

(assert (=> b!606370 m!583239))

(assert (=> b!606381 m!583211))

(assert (=> b!606381 m!583211))

(assert (=> b!606381 m!583217))

(assert (=> b!606385 m!583211))

(assert (=> b!606384 m!583211))

(assert (=> b!606384 m!583211))

(declare-fun m!583241 () Bool)

(assert (=> b!606384 m!583241))

(assert (=> b!606372 m!583211))

(assert (=> b!606372 m!583219))

(declare-fun m!583243 () Bool)

(assert (=> b!606372 m!583243))

(declare-fun m!583245 () Bool)

(assert (=> b!606368 m!583245))

(assert (=> b!606368 m!583211))

(assert (=> b!606368 m!583211))

(declare-fun m!583247 () Bool)

(assert (=> b!606368 m!583247))

(declare-fun m!583249 () Bool)

(assert (=> start!55450 m!583249))

(declare-fun m!583251 () Bool)

(assert (=> start!55450 m!583251))

(declare-fun m!583253 () Bool)

(assert (=> b!606365 m!583253))

(declare-fun m!583255 () Bool)

(assert (=> b!606378 m!583255))

(assert (=> b!606387 m!583211))

(assert (=> b!606387 m!583211))

(declare-fun m!583257 () Bool)

(assert (=> b!606387 m!583257))

(declare-fun m!583259 () Bool)

(assert (=> b!606382 m!583259))

(declare-fun m!583261 () Bool)

(assert (=> b!606382 m!583261))

(assert (=> b!606382 m!583211))

(declare-fun m!583263 () Bool)

(assert (=> b!606382 m!583263))

(assert (=> b!606382 m!583219))

(declare-fun m!583265 () Bool)

(assert (=> b!606382 m!583265))

(assert (=> b!606382 m!583211))

(declare-fun m!583267 () Bool)

(assert (=> b!606382 m!583267))

(declare-fun m!583269 () Bool)

(assert (=> b!606382 m!583269))

(declare-fun m!583271 () Bool)

(assert (=> b!606371 m!583271))

(declare-fun m!583273 () Bool)

(assert (=> b!606369 m!583273))

(assert (=> b!606375 m!583211))

(assert (=> b!606375 m!583211))

(assert (=> b!606375 m!583257))

(declare-fun m!583275 () Bool)

(assert (=> b!606383 m!583275))

(declare-fun m!583277 () Bool)

(assert (=> b!606388 m!583277))

(declare-fun m!583279 () Bool)

(assert (=> b!606389 m!583279))

(push 1)

(assert (not b!606382))

(assert (not b!606370))

(assert (not start!55450))

(assert (not b!606369))

(assert (not b!606387))

(assert (not b!606386))

(assert (not b!606389))

(assert (not b!606383))

(assert (not b!606381))

(assert (not b!606378))

(assert (not b!606368))

(assert (not b!606371))

(assert (not b!606364))

(assert (not b!606375))

(assert (not b!606365))

(assert (not b!606388))

(assert (not b!606384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87779 () Bool)

(declare-fun res!389684 () Bool)

(declare-fun e!347227 () Bool)

(assert (=> d!87779 (=> res!389684 e!347227)))

(assert (=> d!87779 (= res!389684 (is-Nil!11958 Nil!11958))))

(assert (=> d!87779 (= (noDuplicate!309 Nil!11958) e!347227)))

(declare-fun b!606446 () Bool)

(declare-fun e!347228 () Bool)

(assert (=> b!606446 (= e!347227 e!347228)))

(declare-fun res!389685 () Bool)

(assert (=> b!606446 (=> (not res!389685) (not e!347228))))

(assert (=> b!606446 (= res!389685 (not (contains!3007 (t!18197 Nil!11958) (h!13002 Nil!11958))))))

(declare-fun b!606447 () Bool)

(assert (=> b!606447 (= e!347228 (noDuplicate!309 (t!18197 Nil!11958)))))

(assert (= (and d!87779 (not res!389684)) b!606446))

(assert (= (and b!606446 res!389685) b!606447))

(declare-fun m!583311 () Bool)

(assert (=> b!606446 m!583311))

(declare-fun m!583313 () Bool)

(assert (=> b!606447 m!583313))

(assert (=> b!606370 d!87779))

(declare-fun d!87787 () Bool)

(declare-fun res!389694 () Bool)

(declare-fun e!347237 () Bool)

(assert (=> d!87787 (=> res!389694 e!347237)))

(assert (=> d!87787 (= res!389694 (= (select (arr!17867 lt!276810) j!136) (select (arr!17867 a!2986) j!136)))))

(assert (=> d!87787 (= (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) j!136) e!347237)))

(declare-fun b!606456 () Bool)

(declare-fun e!347238 () Bool)

(assert (=> b!606456 (= e!347237 e!347238)))

(declare-fun res!389695 () Bool)

(assert (=> b!606456 (=> (not res!389695) (not e!347238))))

(assert (=> b!606456 (= res!389695 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18231 lt!276810)))))

(declare-fun b!606457 () Bool)

(assert (=> b!606457 (= e!347238 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87787 (not res!389694)) b!606456))

(assert (= (and b!606456 res!389695) b!606457))

(declare-fun m!583323 () Bool)

(assert (=> d!87787 m!583323))

(assert (=> b!606457 m!583211))

(declare-fun m!583325 () Bool)

(assert (=> b!606457 m!583325))

(assert (=> b!606381 d!87787))

(declare-fun b!606511 () Bool)

(declare-fun e!347274 () SeekEntryResult!6314)

(assert (=> b!606511 (= e!347274 (Found!6314 index!984))))

(declare-fun b!606512 () Bool)

(declare-fun e!347276 () SeekEntryResult!6314)

(assert (=> b!606512 (= e!347276 (MissingVacant!6314 vacantSpotIndex!68))))

(declare-fun b!606513 () Bool)

(declare-fun c!68767 () Bool)

(declare-fun lt!276862 () (_ BitVec 64))

(assert (=> b!606513 (= c!68767 (= lt!276862 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606513 (= e!347274 e!347276)))

(declare-fun b!606515 () Bool)

(declare-fun e!347275 () SeekEntryResult!6314)

(assert (=> b!606515 (= e!347275 e!347274)))

(declare-fun c!68768 () Bool)

(assert (=> b!606515 (= c!68768 (= lt!276862 lt!276821))))

(declare-fun b!606516 () Bool)

(assert (=> b!606516 (= e!347275 Undefined!6314)))

(declare-fun d!87793 () Bool)

(declare-fun lt!276863 () SeekEntryResult!6314)

(assert (=> d!87793 (and (or (is-Undefined!6314 lt!276863) (not (is-Found!6314 lt!276863)) (and (bvsge (index!27528 lt!276863) #b00000000000000000000000000000000) (bvslt (index!27528 lt!276863) (size!18231 lt!276810)))) (or (is-Undefined!6314 lt!276863) (is-Found!6314 lt!276863) (not (is-MissingVacant!6314 lt!276863)) (not (= (index!27530 lt!276863) vacantSpotIndex!68)) (and (bvsge (index!27530 lt!276863) #b00000000000000000000000000000000) (bvslt (index!27530 lt!276863) (size!18231 lt!276810)))) (or (is-Undefined!6314 lt!276863) (ite (is-Found!6314 lt!276863) (= (select (arr!17867 lt!276810) (index!27528 lt!276863)) lt!276821) (and (is-MissingVacant!6314 lt!276863) (= (index!27530 lt!276863) vacantSpotIndex!68) (= (select (arr!17867 lt!276810) (index!27530 lt!276863)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87793 (= lt!276863 e!347275)))

(declare-fun c!68766 () Bool)

(assert (=> d!87793 (= c!68766 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87793 (= lt!276862 (select (arr!17867 lt!276810) index!984))))

(assert (=> d!87793 (validMask!0 mask!3053)))

(assert (=> d!87793 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276821 lt!276810 mask!3053) lt!276863)))

(declare-fun b!606514 () Bool)

(assert (=> b!606514 (= e!347276 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276821 lt!276810 mask!3053))))

(assert (= (and d!87793 c!68766) b!606516))

(assert (= (and d!87793 (not c!68766)) b!606515))

(assert (= (and b!606515 c!68768) b!606511))

(assert (= (and b!606515 (not c!68768)) b!606513))

(assert (= (and b!606513 c!68767) b!606512))

(assert (= (and b!606513 (not c!68767)) b!606514))

(declare-fun m!583351 () Bool)

(assert (=> d!87793 m!583351))

(declare-fun m!583353 () Bool)

(assert (=> d!87793 m!583353))

(declare-fun m!583355 () Bool)

(assert (=> d!87793 m!583355))

(assert (=> d!87793 m!583249))

(assert (=> b!606514 m!583259))

(assert (=> b!606514 m!583259))

(declare-fun m!583357 () Bool)

(assert (=> b!606514 m!583357))

(assert (=> b!606382 d!87793))

(declare-fun d!87807 () Bool)

(declare-fun lt!276867 () (_ BitVec 32))

(assert (=> d!87807 (and (bvsge lt!276867 #b00000000000000000000000000000000) (bvslt lt!276867 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87807 (= lt!276867 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87807 (validMask!0 mask!3053)))

(assert (=> d!87807 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276867)))

(declare-fun bs!18553 () Bool)

(assert (= bs!18553 d!87807))

(declare-fun m!583371 () Bool)

(assert (=> bs!18553 m!583371))

(assert (=> bs!18553 m!583249))

(assert (=> b!606382 d!87807))

(declare-fun b!606529 () Bool)

(declare-fun e!347290 () SeekEntryResult!6314)

(assert (=> b!606529 (= e!347290 (Found!6314 lt!276825))))

(declare-fun b!606532 () Bool)

(declare-fun e!347292 () SeekEntryResult!6314)

(assert (=> b!606532 (= e!347292 (MissingVacant!6314 vacantSpotIndex!68))))

(declare-fun b!606533 () Bool)

(declare-fun c!68771 () Bool)

(declare-fun lt!276868 () (_ BitVec 64))

(assert (=> b!606533 (= c!68771 (= lt!276868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606533 (= e!347290 e!347292)))

(declare-fun b!606535 () Bool)

(declare-fun e!347291 () SeekEntryResult!6314)

(assert (=> b!606535 (= e!347291 e!347290)))

(declare-fun c!68772 () Bool)

(assert (=> b!606535 (= c!68772 (= lt!276868 lt!276821))))

(declare-fun b!606536 () Bool)

(assert (=> b!606536 (= e!347291 Undefined!6314)))

(declare-fun lt!276869 () SeekEntryResult!6314)

(declare-fun d!87813 () Bool)

(assert (=> d!87813 (and (or (is-Undefined!6314 lt!276869) (not (is-Found!6314 lt!276869)) (and (bvsge (index!27528 lt!276869) #b00000000000000000000000000000000) (bvslt (index!27528 lt!276869) (size!18231 lt!276810)))) (or (is-Undefined!6314 lt!276869) (is-Found!6314 lt!276869) (not (is-MissingVacant!6314 lt!276869)) (not (= (index!27530 lt!276869) vacantSpotIndex!68)) (and (bvsge (index!27530 lt!276869) #b00000000000000000000000000000000) (bvslt (index!27530 lt!276869) (size!18231 lt!276810)))) (or (is-Undefined!6314 lt!276869) (ite (is-Found!6314 lt!276869) (= (select (arr!17867 lt!276810) (index!27528 lt!276869)) lt!276821) (and (is-MissingVacant!6314 lt!276869) (= (index!27530 lt!276869) vacantSpotIndex!68) (= (select (arr!17867 lt!276810) (index!27530 lt!276869)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87813 (= lt!276869 e!347291)))

(declare-fun c!68770 () Bool)

(assert (=> d!87813 (= c!68770 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87813 (= lt!276868 (select (arr!17867 lt!276810) lt!276825))))

(assert (=> d!87813 (validMask!0 mask!3053)))

(assert (=> d!87813 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 lt!276821 lt!276810 mask!3053) lt!276869)))

(declare-fun b!606534 () Bool)

(assert (=> b!606534 (= e!347292 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276825 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276821 lt!276810 mask!3053))))

(assert (= (and d!87813 c!68770) b!606536))

(assert (= (and d!87813 (not c!68770)) b!606535))

(assert (= (and b!606535 c!68772) b!606529))

(assert (= (and b!606535 (not c!68772)) b!606533))

(assert (= (and b!606533 c!68771) b!606532))

(assert (= (and b!606533 (not c!68771)) b!606534))

(declare-fun m!583373 () Bool)

(assert (=> d!87813 m!583373))

(declare-fun m!583375 () Bool)

(assert (=> d!87813 m!583375))

(declare-fun m!583377 () Bool)

(assert (=> d!87813 m!583377))

(assert (=> d!87813 m!583249))

(declare-fun m!583379 () Bool)

(assert (=> b!606534 m!583379))

(assert (=> b!606534 m!583379))

(declare-fun m!583381 () Bool)

(assert (=> b!606534 m!583381))

(assert (=> b!606382 d!87813))

(declare-fun d!87815 () Bool)

(declare-fun e!347321 () Bool)

(assert (=> d!87815 e!347321))

(declare-fun res!389749 () Bool)

(assert (=> d!87815 (=> (not res!389749) (not e!347321))))

(assert (=> d!87815 (= res!389749 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18231 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18231 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18231 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18231 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18231 a!2986))))))

(declare-fun lt!276880 () Unit!19312)

(declare-fun choose!9 (array!37237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> d!87815 (= lt!276880 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87815 (validMask!0 mask!3053)))

(assert (=> d!87815 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 mask!3053) lt!276880)))

(declare-fun b!606569 () Bool)

(assert (=> b!606569 (= e!347321 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 (select (arr!17867 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 (select (store (arr!17867 a!2986) i!1108 k!1786) j!136) (array!37238 (store (arr!17867 a!2986) i!1108 k!1786) (size!18231 a!2986)) mask!3053)))))

(assert (= (and d!87815 res!389749) b!606569))

(declare-fun m!583413 () Bool)

(assert (=> d!87815 m!583413))

(assert (=> d!87815 m!583249))

(assert (=> b!606569 m!583261))

(declare-fun m!583415 () Bool)

(assert (=> b!606569 m!583415))

(assert (=> b!606569 m!583211))

(assert (=> b!606569 m!583267))

(assert (=> b!606569 m!583211))

(assert (=> b!606569 m!583261))

(assert (=> b!606569 m!583219))

(assert (=> b!606382 d!87815))

(declare-fun b!606570 () Bool)

(declare-fun e!347322 () SeekEntryResult!6314)

(assert (=> b!606570 (= e!347322 (Found!6314 lt!276825))))

(declare-fun b!606571 () Bool)

(declare-fun e!347324 () SeekEntryResult!6314)

(assert (=> b!606571 (= e!347324 (MissingVacant!6314 vacantSpotIndex!68))))

(declare-fun b!606572 () Bool)

(declare-fun c!68778 () Bool)

(declare-fun lt!276881 () (_ BitVec 64))

(assert (=> b!606572 (= c!68778 (= lt!276881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606572 (= e!347322 e!347324)))

(declare-fun b!606574 () Bool)

(declare-fun e!347323 () SeekEntryResult!6314)

(assert (=> b!606574 (= e!347323 e!347322)))

(declare-fun c!68779 () Bool)

(assert (=> b!606574 (= c!68779 (= lt!276881 (select (arr!17867 a!2986) j!136)))))

(declare-fun b!606575 () Bool)

(assert (=> b!606575 (= e!347323 Undefined!6314)))

(declare-fun lt!276882 () SeekEntryResult!6314)

(declare-fun d!87829 () Bool)

(assert (=> d!87829 (and (or (is-Undefined!6314 lt!276882) (not (is-Found!6314 lt!276882)) (and (bvsge (index!27528 lt!276882) #b00000000000000000000000000000000) (bvslt (index!27528 lt!276882) (size!18231 a!2986)))) (or (is-Undefined!6314 lt!276882) (is-Found!6314 lt!276882) (not (is-MissingVacant!6314 lt!276882)) (not (= (index!27530 lt!276882) vacantSpotIndex!68)) (and (bvsge (index!27530 lt!276882) #b00000000000000000000000000000000) (bvslt (index!27530 lt!276882) (size!18231 a!2986)))) (or (is-Undefined!6314 lt!276882) (ite (is-Found!6314 lt!276882) (= (select (arr!17867 a!2986) (index!27528 lt!276882)) (select (arr!17867 a!2986) j!136)) (and (is-MissingVacant!6314 lt!276882) (= (index!27530 lt!276882) vacantSpotIndex!68) (= (select (arr!17867 a!2986) (index!27530 lt!276882)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87829 (= lt!276882 e!347323)))

(declare-fun c!68777 () Bool)

(assert (=> d!87829 (= c!68777 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87829 (= lt!276881 (select (arr!17867 a!2986) lt!276825))))

(assert (=> d!87829 (validMask!0 mask!3053)))

(assert (=> d!87829 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276825 vacantSpotIndex!68 (select (arr!17867 a!2986) j!136) a!2986 mask!3053) lt!276882)))

(declare-fun b!606573 () Bool)

(assert (=> b!606573 (= e!347324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276825 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17867 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87829 c!68777) b!606575))

(assert (= (and d!87829 (not c!68777)) b!606574))

(assert (= (and b!606574 c!68779) b!606570))

(assert (= (and b!606574 (not c!68779)) b!606572))

(assert (= (and b!606572 c!68778) b!606571))

(assert (= (and b!606572 (not c!68778)) b!606573))

(declare-fun m!583417 () Bool)

(assert (=> d!87829 m!583417))

(declare-fun m!583419 () Bool)

(assert (=> d!87829 m!583419))

(declare-fun m!583421 () Bool)

(assert (=> d!87829 m!583421))

(assert (=> d!87829 m!583249))

(assert (=> b!606573 m!583379))

(assert (=> b!606573 m!583379))

(assert (=> b!606573 m!583211))

(declare-fun m!583423 () Bool)

(assert (=> b!606573 m!583423))

(assert (=> b!606382 d!87829))

(declare-fun d!87831 () Bool)

(assert (=> d!87831 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!606371 d!87831))

(declare-fun d!87835 () Bool)

(declare-fun res!389755 () Bool)

(declare-fun e!347332 () Bool)

(assert (=> d!87835 (=> res!389755 e!347332)))

(assert (=> d!87835 (= res!389755 (= (select (arr!17867 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87835 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!347332)))

(declare-fun b!606585 () Bool)

(declare-fun e!347333 () Bool)

(assert (=> b!606585 (= e!347332 e!347333)))

(declare-fun res!389756 () Bool)

(assert (=> b!606585 (=> (not res!389756) (not e!347333))))

(assert (=> b!606585 (= res!389756 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18231 a!2986)))))

(declare-fun b!606586 () Bool)

(assert (=> b!606586 (= e!347333 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87835 (not res!389755)) b!606585))

(assert (= (and b!606585 res!389756) b!606586))

(declare-fun m!583429 () Bool)

(assert (=> d!87835 m!583429))

(declare-fun m!583431 () Bool)

(assert (=> b!606586 m!583431))

(assert (=> b!606383 d!87835))

(declare-fun d!87837 () Bool)

(assert (=> d!87837 (= (validKeyInArray!0 (select (arr!17867 a!2986) j!136)) (and (not (= (select (arr!17867 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17867 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!606384 d!87837))

(declare-fun d!87839 () Bool)

(assert (=> d!87839 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55450 d!87839))

(declare-fun d!87861 () Bool)

(assert (=> d!87861 (= (array_inv!13641 a!2986) (bvsge (size!18231 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55450 d!87861))

(declare-fun b!606649 () Bool)

(declare-fun e!347379 () Bool)

(declare-fun e!347382 () Bool)

(assert (=> b!606649 (= e!347379 e!347382)))

(declare-fun res!389785 () Bool)

(assert (=> b!606649 (=> (not res!389785) (not e!347382))))

(declare-fun e!347380 () Bool)

(assert (=> b!606649 (= res!389785 (not e!347380))))

(declare-fun res!389786 () Bool)

(assert (=> b!606649 (=> (not res!389786) (not e!347380))))

(assert (=> b!606649 (= res!389786 (validKeyInArray!0 (select (arr!17867 lt!276810) #b00000000000000000000000000000000)))))

(declare-fun bm!33096 () Bool)

(declare-fun call!33099 () Bool)

(declare-fun c!68799 () Bool)

(assert (=> bm!33096 (= call!33099 (arrayNoDuplicates!0 lt!276810 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68799 (Cons!11957 (select (arr!17867 lt!276810) #b00000000000000000000000000000000) Nil!11958) Nil!11958)))))

(declare-fun b!606650 () Bool)

(declare-fun e!347381 () Bool)

(assert (=> b!606650 (= e!347382 e!347381)))

(assert (=> b!606650 (= c!68799 (validKeyInArray!0 (select (arr!17867 lt!276810) #b00000000000000000000000000000000)))))

(declare-fun b!606651 () Bool)

(assert (=> b!606651 (= e!347380 (contains!3007 Nil!11958 (select (arr!17867 lt!276810) #b00000000000000000000000000000000)))))

(declare-fun d!87863 () Bool)

(declare-fun res!389787 () Bool)

(assert (=> d!87863 (=> res!389787 e!347379)))

(assert (=> d!87863 (= res!389787 (bvsge #b00000000000000000000000000000000 (size!18231 lt!276810)))))

(assert (=> d!87863 (= (arrayNoDuplicates!0 lt!276810 #b00000000000000000000000000000000 Nil!11958) e!347379)))

(declare-fun b!606652 () Bool)

(assert (=> b!606652 (= e!347381 call!33099)))

(declare-fun b!606653 () Bool)

(assert (=> b!606653 (= e!347381 call!33099)))

(assert (= (and d!87863 (not res!389787)) b!606649))

(assert (= (and b!606649 res!389786) b!606651))

(assert (= (and b!606649 res!389785) b!606650))

(assert (= (and b!606650 c!68799) b!606653))

(assert (= (and b!606650 (not c!68799)) b!606652))

(assert (= (or b!606653 b!606652) bm!33096))

(declare-fun m!583513 () Bool)

(assert (=> b!606649 m!583513))

(assert (=> b!606649 m!583513))

(declare-fun m!583515 () Bool)

(assert (=> b!606649 m!583515))

(assert (=> bm!33096 m!583513))

(declare-fun m!583517 () Bool)

(assert (=> bm!33096 m!583517))

(assert (=> b!606650 m!583513))

(assert (=> b!606650 m!583513))

(assert (=> b!606650 m!583515))

(assert (=> b!606651 m!583513))

(assert (=> b!606651 m!583513))

(declare-fun m!583519 () Bool)

(assert (=> b!606651 m!583519))

(assert (=> b!606364 d!87863))

(declare-fun d!87877 () Bool)

(assert (=> d!87877 (arrayContainsKey!0 lt!276810 (select (arr!17867 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276927 () Unit!19312)

(declare-fun choose!114 (array!37237 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> d!87877 (= lt!276927 (choose!114 lt!276810 (select (arr!17867 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87877 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87877 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276810 (select (arr!17867 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276927)))

(declare-fun bs!18560 () Bool)

(assert (= bs!18560 d!87877))

(assert (=> bs!18560 m!583211))

(assert (=> bs!18560 m!583223))

(assert (=> bs!18560 m!583211))

(declare-fun m!583527 () Bool)

(assert (=> bs!18560 m!583527))

(assert (=> b!606364 d!87877))

(declare-fun d!87883 () Bool)

(assert (=> d!87883 (arrayNoDuplicates!0 lt!276810 j!136 Nil!11958)))

(declare-fun lt!276933 () Unit!19312)

(declare-fun choose!39 (array!37237 (_ BitVec 32) (_ BitVec 32)) Unit!19312)

(assert (=> d!87883 (= lt!276933 (choose!39 lt!276810 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87883 (bvslt (size!18231 lt!276810) #b01111111111111111111111111111111)))

(assert (=> d!87883 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276810 #b00000000000000000000000000000000 j!136) lt!276933)))

(declare-fun bs!18562 () Bool)

(assert (= bs!18562 d!87883))

(assert (=> bs!18562 m!583229))

(declare-fun m!583541 () Bool)

(assert (=> bs!18562 m!583541))

(assert (=> b!606364 d!87883))

(declare-fun b!606667 () Bool)

(declare-fun e!347393 () Bool)

(declare-fun e!347396 () Bool)

(assert (=> b!606667 (= e!347393 e!347396)))

(declare-fun res!389795 () Bool)

(assert (=> b!606667 (=> (not res!389795) (not e!347396))))

(declare-fun e!347394 () Bool)

(assert (=> b!606667 (= res!389795 (not e!347394))))

(declare-fun res!389796 () Bool)

(assert (=> b!606667 (=> (not res!389796) (not e!347394))))

(assert (=> b!606667 (= res!389796 (validKeyInArray!0 (select (arr!17867 lt!276810) j!136)))))

(declare-fun call!33100 () Bool)

(declare-fun c!68803 () Bool)

(declare-fun bm!33097 () Bool)

(assert (=> bm!33097 (= call!33100 (arrayNoDuplicates!0 lt!276810 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68803 (Cons!11957 (select (arr!17867 lt!276810) j!136) Nil!11958) Nil!11958)))))

(declare-fun b!606668 () Bool)

(declare-fun e!347395 () Bool)

(assert (=> b!606668 (= e!347396 e!347395)))

(assert (=> b!606668 (= c!68803 (validKeyInArray!0 (select (arr!17867 lt!276810) j!136)))))

(declare-fun b!606669 () Bool)

(assert (=> b!606669 (= e!347394 (contains!3007 Nil!11958 (select (arr!17867 lt!276810) j!136)))))

(declare-fun d!87891 () Bool)

(declare-fun res!389797 () Bool)

(assert (=> d!87891 (=> res!389797 e!347393)))

(assert (=> d!87891 (= res!389797 (bvsge j!136 (size!18231 lt!276810)))))

(assert (=> d!87891 (= (arrayNoDuplicates!0 lt!276810 j!136 Nil!11958) e!347393)))

(declare-fun b!606670 () Bool)

(assert (=> b!606670 (= e!347395 call!33100)))

(declare-fun b!606671 () Bool)

(assert (=> b!606671 (= e!347395 call!33100)))

(assert (= (and d!87891 (not res!389797)) b!606667))

(assert (= (and b!606667 res!389796) b!606669))

(assert (= (and b!606667 res!389795) b!606668))

(assert (= (and b!606668 c!68803) b!606671))

(assert (= (and b!606668 (not c!68803)) b!606670))

(assert (= (or b!606671 b!606670) bm!33097))

(assert (=> b!606667 m!583323))

(assert (=> b!606667 m!583323))

(declare-fun m!583543 () Bool)

(assert (=> b!606667 m!583543))

(assert (=> bm!33097 m!583323))

(declare-fun m!583545 () Bool)

