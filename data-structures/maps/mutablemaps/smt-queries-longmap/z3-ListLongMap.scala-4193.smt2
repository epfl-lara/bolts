; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57266 () Bool)

(assert start!57266)

(declare-fun b!633267 () Bool)

(declare-fun res!409604 () Bool)

(declare-fun e!362096 () Bool)

(assert (=> b!633267 (=> (not res!409604) (not e!362096))))

(declare-datatypes ((array!38132 0))(
  ( (array!38133 (arr!18292 (Array (_ BitVec 32) (_ BitVec 64))) (size!18656 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38132)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633267 (= res!409604 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633268 () Bool)

(declare-fun res!409600 () Bool)

(assert (=> b!633268 (=> (not res!409600) (not e!362096))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633268 (= res!409600 (validKeyInArray!0 (select (arr!18292 a!2986) j!136)))))

(declare-fun b!633269 () Bool)

(declare-datatypes ((Unit!21314 0))(
  ( (Unit!21315) )
))
(declare-fun e!362092 () Unit!21314)

(declare-fun Unit!21316 () Unit!21314)

(assert (=> b!633269 (= e!362092 Unit!21316)))

(assert (=> b!633269 false))

(declare-fun res!409589 () Bool)

(assert (=> start!57266 (=> (not res!409589) (not e!362096))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57266 (= res!409589 (validMask!0 mask!3053))))

(assert (=> start!57266 e!362096))

(assert (=> start!57266 true))

(declare-fun array_inv!14066 (array!38132) Bool)

(assert (=> start!57266 (array_inv!14066 a!2986)))

(declare-fun b!633270 () Bool)

(declare-fun res!409597 () Bool)

(declare-fun e!362098 () Bool)

(assert (=> b!633270 (=> (not res!409597) (not e!362098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38132 (_ BitVec 32)) Bool)

(assert (=> b!633270 (= res!409597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633271 () Bool)

(declare-fun e!362093 () Bool)

(declare-fun e!362101 () Bool)

(assert (=> b!633271 (= e!362093 e!362101)))

(declare-fun res!409594 () Bool)

(assert (=> b!633271 (=> res!409594 e!362101)))

(declare-fun lt!292739 () (_ BitVec 64))

(declare-fun lt!292737 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633271 (= res!409594 (or (not (= (select (arr!18292 a!2986) j!136) lt!292737)) (not (= (select (arr!18292 a!2986) j!136) lt!292739)) (bvsge j!136 index!984)))))

(declare-fun b!633272 () Bool)

(declare-fun res!409595 () Bool)

(assert (=> b!633272 (=> (not res!409595) (not e!362096))))

(assert (=> b!633272 (= res!409595 (validKeyInArray!0 k0!1786))))

(declare-fun b!633273 () Bool)

(declare-fun e!362094 () Bool)

(declare-fun e!362100 () Bool)

(assert (=> b!633273 (= e!362094 e!362100)))

(declare-fun res!409599 () Bool)

(assert (=> b!633273 (=> (not res!409599) (not e!362100))))

(declare-datatypes ((SeekEntryResult!6739 0))(
  ( (MissingZero!6739 (index!29254 (_ BitVec 32))) (Found!6739 (index!29255 (_ BitVec 32))) (Intermediate!6739 (undefined!7551 Bool) (index!29256 (_ BitVec 32)) (x!58025 (_ BitVec 32))) (Undefined!6739) (MissingVacant!6739 (index!29257 (_ BitVec 32))) )
))
(declare-fun lt!292731 () SeekEntryResult!6739)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633273 (= res!409599 (and (= lt!292731 (Found!6739 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18292 a!2986) index!984) (select (arr!18292 a!2986) j!136))) (not (= (select (arr!18292 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38132 (_ BitVec 32)) SeekEntryResult!6739)

(assert (=> b!633273 (= lt!292731 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18292 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633274 () Bool)

(assert (=> b!633274 (= e!362098 e!362094)))

(declare-fun res!409601 () Bool)

(assert (=> b!633274 (=> (not res!409601) (not e!362094))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633274 (= res!409601 (= (select (store (arr!18292 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292735 () array!38132)

(assert (=> b!633274 (= lt!292735 (array!38133 (store (arr!18292 a!2986) i!1108 k0!1786) (size!18656 a!2986)))))

(declare-fun b!633275 () Bool)

(declare-fun res!409590 () Bool)

(assert (=> b!633275 (=> (not res!409590) (not e!362096))))

(assert (=> b!633275 (= res!409590 (and (= (size!18656 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18656 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18656 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633276 () Bool)

(declare-fun e!362099 () Bool)

(assert (=> b!633276 (= e!362100 (not e!362099))))

(declare-fun res!409591 () Bool)

(assert (=> b!633276 (=> res!409591 e!362099)))

(declare-fun lt!292732 () SeekEntryResult!6739)

(assert (=> b!633276 (= res!409591 (not (= lt!292732 (Found!6739 index!984))))))

(declare-fun lt!292733 () Unit!21314)

(assert (=> b!633276 (= lt!292733 e!362092)))

(declare-fun c!72206 () Bool)

(assert (=> b!633276 (= c!72206 (= lt!292732 Undefined!6739))))

(assert (=> b!633276 (= lt!292732 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292737 lt!292735 mask!3053))))

(declare-fun e!362091 () Bool)

(assert (=> b!633276 e!362091))

(declare-fun res!409602 () Bool)

(assert (=> b!633276 (=> (not res!409602) (not e!362091))))

(declare-fun lt!292734 () SeekEntryResult!6739)

(declare-fun lt!292738 () (_ BitVec 32))

(assert (=> b!633276 (= res!409602 (= lt!292734 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292738 vacantSpotIndex!68 lt!292737 lt!292735 mask!3053)))))

(assert (=> b!633276 (= lt!292734 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292738 vacantSpotIndex!68 (select (arr!18292 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633276 (= lt!292737 (select (store (arr!18292 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292736 () Unit!21314)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38132 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21314)

(assert (=> b!633276 (= lt!292736 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292738 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633276 (= lt!292738 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633277 () Bool)

(assert (=> b!633277 (= e!362099 true)))

(assert (=> b!633277 e!362093))

(declare-fun res!409603 () Bool)

(assert (=> b!633277 (=> (not res!409603) (not e!362093))))

(assert (=> b!633277 (= res!409603 (= lt!292739 (select (arr!18292 a!2986) j!136)))))

(assert (=> b!633277 (= lt!292739 (select (store (arr!18292 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!633278 () Bool)

(declare-fun res!409596 () Bool)

(assert (=> b!633278 (=> (not res!409596) (not e!362098))))

(declare-datatypes ((List!12386 0))(
  ( (Nil!12383) (Cons!12382 (h!13427 (_ BitVec 64)) (t!18622 List!12386)) )
))
(declare-fun arrayNoDuplicates!0 (array!38132 (_ BitVec 32) List!12386) Bool)

(assert (=> b!633278 (= res!409596 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12383))))

(declare-fun b!633279 () Bool)

(assert (=> b!633279 (= e!362091 (= lt!292731 lt!292734))))

(declare-fun b!633280 () Bool)

(declare-fun Unit!21317 () Unit!21314)

(assert (=> b!633280 (= e!362092 Unit!21317)))

(declare-fun b!633281 () Bool)

(declare-fun e!362095 () Bool)

(assert (=> b!633281 (= e!362101 e!362095)))

(declare-fun res!409593 () Bool)

(assert (=> b!633281 (=> (not res!409593) (not e!362095))))

(assert (=> b!633281 (= res!409593 (arrayContainsKey!0 lt!292735 (select (arr!18292 a!2986) j!136) j!136))))

(declare-fun b!633282 () Bool)

(assert (=> b!633282 (= e!362095 (arrayContainsKey!0 lt!292735 (select (arr!18292 a!2986) j!136) index!984))))

(declare-fun b!633283 () Bool)

(declare-fun res!409598 () Bool)

(assert (=> b!633283 (=> (not res!409598) (not e!362098))))

(assert (=> b!633283 (= res!409598 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18292 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633284 () Bool)

(assert (=> b!633284 (= e!362096 e!362098)))

(declare-fun res!409592 () Bool)

(assert (=> b!633284 (=> (not res!409592) (not e!362098))))

(declare-fun lt!292740 () SeekEntryResult!6739)

(assert (=> b!633284 (= res!409592 (or (= lt!292740 (MissingZero!6739 i!1108)) (= lt!292740 (MissingVacant!6739 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38132 (_ BitVec 32)) SeekEntryResult!6739)

(assert (=> b!633284 (= lt!292740 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!57266 res!409589) b!633275))

(assert (= (and b!633275 res!409590) b!633268))

(assert (= (and b!633268 res!409600) b!633272))

(assert (= (and b!633272 res!409595) b!633267))

(assert (= (and b!633267 res!409604) b!633284))

(assert (= (and b!633284 res!409592) b!633270))

(assert (= (and b!633270 res!409597) b!633278))

(assert (= (and b!633278 res!409596) b!633283))

(assert (= (and b!633283 res!409598) b!633274))

(assert (= (and b!633274 res!409601) b!633273))

(assert (= (and b!633273 res!409599) b!633276))

(assert (= (and b!633276 res!409602) b!633279))

(assert (= (and b!633276 c!72206) b!633269))

(assert (= (and b!633276 (not c!72206)) b!633280))

(assert (= (and b!633276 (not res!409591)) b!633277))

(assert (= (and b!633277 res!409603) b!633271))

(assert (= (and b!633271 (not res!409594)) b!633281))

(assert (= (and b!633281 res!409593) b!633282))

(declare-fun m!607987 () Bool)

(assert (=> start!57266 m!607987))

(declare-fun m!607989 () Bool)

(assert (=> start!57266 m!607989))

(declare-fun m!607991 () Bool)

(assert (=> b!633284 m!607991))

(declare-fun m!607993 () Bool)

(assert (=> b!633281 m!607993))

(assert (=> b!633281 m!607993))

(declare-fun m!607995 () Bool)

(assert (=> b!633281 m!607995))

(assert (=> b!633271 m!607993))

(declare-fun m!607997 () Bool)

(assert (=> b!633276 m!607997))

(declare-fun m!607999 () Bool)

(assert (=> b!633276 m!607999))

(assert (=> b!633276 m!607993))

(declare-fun m!608001 () Bool)

(assert (=> b!633276 m!608001))

(assert (=> b!633276 m!607993))

(declare-fun m!608003 () Bool)

(assert (=> b!633276 m!608003))

(declare-fun m!608005 () Bool)

(assert (=> b!633276 m!608005))

(declare-fun m!608007 () Bool)

(assert (=> b!633276 m!608007))

(declare-fun m!608009 () Bool)

(assert (=> b!633276 m!608009))

(declare-fun m!608011 () Bool)

(assert (=> b!633272 m!608011))

(assert (=> b!633274 m!608003))

(declare-fun m!608013 () Bool)

(assert (=> b!633274 m!608013))

(declare-fun m!608015 () Bool)

(assert (=> b!633270 m!608015))

(assert (=> b!633282 m!607993))

(assert (=> b!633282 m!607993))

(declare-fun m!608017 () Bool)

(assert (=> b!633282 m!608017))

(declare-fun m!608019 () Bool)

(assert (=> b!633267 m!608019))

(assert (=> b!633277 m!607993))

(assert (=> b!633277 m!608003))

(declare-fun m!608021 () Bool)

(assert (=> b!633277 m!608021))

(declare-fun m!608023 () Bool)

(assert (=> b!633273 m!608023))

(assert (=> b!633273 m!607993))

(assert (=> b!633273 m!607993))

(declare-fun m!608025 () Bool)

(assert (=> b!633273 m!608025))

(declare-fun m!608027 () Bool)

(assert (=> b!633283 m!608027))

(assert (=> b!633268 m!607993))

(assert (=> b!633268 m!607993))

(declare-fun m!608029 () Bool)

(assert (=> b!633268 m!608029))

(declare-fun m!608031 () Bool)

(assert (=> b!633278 m!608031))

(check-sat (not b!633282) (not b!633270) (not b!633272) (not b!633278) (not b!633267) (not b!633284) (not b!633268) (not b!633276) (not b!633281) (not b!633273) (not start!57266))
(check-sat)
