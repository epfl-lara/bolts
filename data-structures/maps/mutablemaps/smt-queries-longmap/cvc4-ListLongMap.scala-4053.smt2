; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55558 () Bool)

(assert start!55558)

(declare-fun b!607224 () Bool)

(declare-datatypes ((Unit!19348 0))(
  ( (Unit!19349) )
))
(declare-fun e!347742 () Unit!19348)

(declare-fun Unit!19350 () Unit!19348)

(assert (=> b!607224 (= e!347742 Unit!19350)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37252 0))(
  ( (array!37253 (arr!17873 (Array (_ BitVec 32) (_ BitVec 64))) (size!18237 (_ BitVec 32))) )
))
(declare-fun lt!277279 () array!37252)

(declare-fun lt!277276 () Unit!19348)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37252 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19348)

(assert (=> b!607224 (= lt!277276 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277279 (select (arr!17873 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607224 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!277274 () Unit!19348)

(declare-datatypes ((List!11967 0))(
  ( (Nil!11964) (Cons!11963 (h!13008 (_ BitVec 64)) (t!18203 List!11967)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37252 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11967) Unit!19348)

(assert (=> b!607224 (= lt!277274 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11964))))

(declare-fun arrayNoDuplicates!0 (array!37252 (_ BitVec 32) List!11967) Bool)

(assert (=> b!607224 (arrayNoDuplicates!0 lt!277279 #b00000000000000000000000000000000 Nil!11964)))

(declare-fun lt!277282 () Unit!19348)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37252 (_ BitVec 32) (_ BitVec 32)) Unit!19348)

(assert (=> b!607224 (= lt!277282 (lemmaNoDuplicateFromThenFromBigger!0 lt!277279 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607224 (arrayNoDuplicates!0 lt!277279 j!136 Nil!11964)))

(declare-fun lt!277284 () Unit!19348)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37252 (_ BitVec 64) (_ BitVec 32) List!11967) Unit!19348)

(assert (=> b!607224 (= lt!277284 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277279 (select (arr!17873 a!2986) j!136) j!136 Nil!11964))))

(assert (=> b!607224 false))

(declare-fun b!607225 () Bool)

(declare-fun res!390236 () Bool)

(declare-fun e!347737 () Bool)

(assert (=> b!607225 (=> (not res!390236) (not e!347737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607225 (= res!390236 (validKeyInArray!0 (select (arr!17873 a!2986) j!136)))))

(declare-fun b!607226 () Bool)

(declare-fun res!390235 () Bool)

(declare-fun e!347743 () Bool)

(assert (=> b!607226 (=> res!390235 e!347743)))

(declare-fun noDuplicate!315 (List!11967) Bool)

(assert (=> b!607226 (= res!390235 (not (noDuplicate!315 Nil!11964)))))

(declare-fun b!607227 () Bool)

(declare-fun Unit!19351 () Unit!19348)

(assert (=> b!607227 (= e!347742 Unit!19351)))

(declare-fun res!390225 () Bool)

(assert (=> start!55558 (=> (not res!390225) (not e!347737))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55558 (= res!390225 (validMask!0 mask!3053))))

(assert (=> start!55558 e!347737))

(assert (=> start!55558 true))

(declare-fun array_inv!13647 (array!37252) Bool)

(assert (=> start!55558 (array_inv!13647 a!2986)))

(declare-fun b!607228 () Bool)

(declare-fun e!347734 () Bool)

(assert (=> b!607228 (= e!347737 e!347734)))

(declare-fun res!390230 () Bool)

(assert (=> b!607228 (=> (not res!390230) (not e!347734))))

(declare-datatypes ((SeekEntryResult!6320 0))(
  ( (MissingZero!6320 (index!27554 (_ BitVec 32))) (Found!6320 (index!27555 (_ BitVec 32))) (Intermediate!6320 (undefined!7132 Bool) (index!27556 (_ BitVec 32)) (x!56390 (_ BitVec 32))) (Undefined!6320) (MissingVacant!6320 (index!27557 (_ BitVec 32))) )
))
(declare-fun lt!277287 () SeekEntryResult!6320)

(assert (=> b!607228 (= res!390230 (or (= lt!277287 (MissingZero!6320 i!1108)) (= lt!277287 (MissingVacant!6320 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37252 (_ BitVec 32)) SeekEntryResult!6320)

(assert (=> b!607228 (= lt!277287 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607229 () Bool)

(declare-fun e!347741 () Bool)

(declare-fun e!347738 () Bool)

(assert (=> b!607229 (= e!347741 e!347738)))

(declare-fun res!390222 () Bool)

(assert (=> b!607229 (=> res!390222 e!347738)))

(declare-fun lt!277289 () (_ BitVec 64))

(declare-fun lt!277286 () (_ BitVec 64))

(assert (=> b!607229 (= res!390222 (or (not (= (select (arr!17873 a!2986) j!136) lt!277286)) (not (= (select (arr!17873 a!2986) j!136) lt!277289))))))

(declare-fun e!347733 () Bool)

(assert (=> b!607229 e!347733))

(declare-fun res!390227 () Bool)

(assert (=> b!607229 (=> (not res!390227) (not e!347733))))

(assert (=> b!607229 (= res!390227 (= lt!277289 (select (arr!17873 a!2986) j!136)))))

(assert (=> b!607229 (= lt!277289 (select (store (arr!17873 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607230 () Bool)

(declare-fun e!347735 () Bool)

(assert (=> b!607230 (= e!347734 e!347735)))

(declare-fun res!390223 () Bool)

(assert (=> b!607230 (=> (not res!390223) (not e!347735))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!607230 (= res!390223 (= (select (store (arr!17873 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607230 (= lt!277279 (array!37253 (store (arr!17873 a!2986) i!1108 k!1786) (size!18237 a!2986)))))

(declare-fun b!607231 () Bool)

(declare-fun e!347739 () Unit!19348)

(declare-fun Unit!19352 () Unit!19348)

(assert (=> b!607231 (= e!347739 Unit!19352)))

(declare-fun b!607232 () Bool)

(declare-fun e!347744 () Bool)

(assert (=> b!607232 (= e!347744 (not e!347741))))

(declare-fun res!390229 () Bool)

(assert (=> b!607232 (=> res!390229 e!347741)))

(declare-fun lt!277275 () SeekEntryResult!6320)

(assert (=> b!607232 (= res!390229 (not (= lt!277275 (Found!6320 index!984))))))

(declare-fun lt!277285 () Unit!19348)

(assert (=> b!607232 (= lt!277285 e!347739)))

(declare-fun c!68869 () Bool)

(assert (=> b!607232 (= c!68869 (= lt!277275 Undefined!6320))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37252 (_ BitVec 32)) SeekEntryResult!6320)

(assert (=> b!607232 (= lt!277275 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277286 lt!277279 mask!3053))))

(declare-fun e!347736 () Bool)

(assert (=> b!607232 e!347736))

(declare-fun res!390240 () Bool)

(assert (=> b!607232 (=> (not res!390240) (not e!347736))))

(declare-fun lt!277283 () (_ BitVec 32))

(declare-fun lt!277288 () SeekEntryResult!6320)

(assert (=> b!607232 (= res!390240 (= lt!277288 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277283 vacantSpotIndex!68 lt!277286 lt!277279 mask!3053)))))

(assert (=> b!607232 (= lt!277288 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277283 vacantSpotIndex!68 (select (arr!17873 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!607232 (= lt!277286 (select (store (arr!17873 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277290 () Unit!19348)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37252 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19348)

(assert (=> b!607232 (= lt!277290 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277283 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607232 (= lt!277283 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607233 () Bool)

(assert (=> b!607233 (= e!347743 true)))

(declare-fun lt!277277 () Bool)

(declare-fun contains!3013 (List!11967 (_ BitVec 64)) Bool)

(assert (=> b!607233 (= lt!277277 (contains!3013 Nil!11964 k!1786))))

(declare-fun b!607234 () Bool)

(declare-fun Unit!19353 () Unit!19348)

(assert (=> b!607234 (= e!347739 Unit!19353)))

(assert (=> b!607234 false))

(declare-fun b!607235 () Bool)

(declare-fun e!347732 () Bool)

(assert (=> b!607235 (= e!347732 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) index!984))))

(declare-fun b!607236 () Bool)

(declare-fun e!347746 () Bool)

(assert (=> b!607236 (= e!347733 e!347746)))

(declare-fun res!390224 () Bool)

(assert (=> b!607236 (=> res!390224 e!347746)))

(assert (=> b!607236 (= res!390224 (or (not (= (select (arr!17873 a!2986) j!136) lt!277286)) (not (= (select (arr!17873 a!2986) j!136) lt!277289)) (bvsge j!136 index!984)))))

(declare-fun b!607237 () Bool)

(declare-fun e!347740 () Bool)

(assert (=> b!607237 (= e!347738 e!347740)))

(declare-fun res!390220 () Bool)

(assert (=> b!607237 (=> res!390220 e!347740)))

(assert (=> b!607237 (= res!390220 (bvsge index!984 j!136))))

(declare-fun lt!277278 () Unit!19348)

(assert (=> b!607237 (= lt!277278 e!347742)))

(declare-fun c!68870 () Bool)

(assert (=> b!607237 (= c!68870 (bvslt j!136 index!984))))

(declare-fun b!607238 () Bool)

(declare-fun lt!277281 () SeekEntryResult!6320)

(assert (=> b!607238 (= e!347736 (= lt!277281 lt!277288))))

(declare-fun b!607239 () Bool)

(assert (=> b!607239 (= e!347740 e!347743)))

(declare-fun res!390232 () Bool)

(assert (=> b!607239 (=> res!390232 e!347743)))

(assert (=> b!607239 (= res!390232 (or (bvsge (size!18237 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18237 a!2986))))))

(assert (=> b!607239 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277280 () Unit!19348)

(assert (=> b!607239 (= lt!277280 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277279 (select (arr!17873 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607239 e!347732))

(declare-fun res!390221 () Bool)

(assert (=> b!607239 (=> (not res!390221) (not e!347732))))

(assert (=> b!607239 (= res!390221 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) j!136))))

(declare-fun b!607240 () Bool)

(declare-fun res!390228 () Bool)

(assert (=> b!607240 (=> (not res!390228) (not e!347734))))

(assert (=> b!607240 (= res!390228 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11964))))

(declare-fun b!607241 () Bool)

(declare-fun e!347745 () Bool)

(assert (=> b!607241 (= e!347746 e!347745)))

(declare-fun res!390239 () Bool)

(assert (=> b!607241 (=> (not res!390239) (not e!347745))))

(assert (=> b!607241 (= res!390239 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) j!136))))

(declare-fun b!607242 () Bool)

(assert (=> b!607242 (= e!347735 e!347744)))

(declare-fun res!390234 () Bool)

(assert (=> b!607242 (=> (not res!390234) (not e!347744))))

(assert (=> b!607242 (= res!390234 (and (= lt!277281 (Found!6320 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17873 a!2986) index!984) (select (arr!17873 a!2986) j!136))) (not (= (select (arr!17873 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607242 (= lt!277281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17873 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607243 () Bool)

(declare-fun res!390226 () Bool)

(assert (=> b!607243 (=> (not res!390226) (not e!347737))))

(assert (=> b!607243 (= res!390226 (and (= (size!18237 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18237 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18237 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607244 () Bool)

(declare-fun res!390233 () Bool)

(assert (=> b!607244 (=> (not res!390233) (not e!347737))))

(assert (=> b!607244 (= res!390233 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607245 () Bool)

(declare-fun res!390241 () Bool)

(assert (=> b!607245 (=> (not res!390241) (not e!347737))))

(assert (=> b!607245 (= res!390241 (validKeyInArray!0 k!1786))))

(declare-fun b!607246 () Bool)

(declare-fun res!390237 () Bool)

(assert (=> b!607246 (=> (not res!390237) (not e!347734))))

(assert (=> b!607246 (= res!390237 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17873 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607247 () Bool)

(declare-fun res!390238 () Bool)

(assert (=> b!607247 (=> res!390238 e!347743)))

(assert (=> b!607247 (= res!390238 (contains!3013 Nil!11964 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607248 () Bool)

(declare-fun res!390231 () Bool)

(assert (=> b!607248 (=> res!390231 e!347743)))

(assert (=> b!607248 (= res!390231 (contains!3013 Nil!11964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607249 () Bool)

(declare-fun res!390242 () Bool)

(assert (=> b!607249 (=> (not res!390242) (not e!347734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37252 (_ BitVec 32)) Bool)

(assert (=> b!607249 (= res!390242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607250 () Bool)

(assert (=> b!607250 (= e!347745 (arrayContainsKey!0 lt!277279 (select (arr!17873 a!2986) j!136) index!984))))

(assert (= (and start!55558 res!390225) b!607243))

(assert (= (and b!607243 res!390226) b!607225))

(assert (= (and b!607225 res!390236) b!607245))

(assert (= (and b!607245 res!390241) b!607244))

(assert (= (and b!607244 res!390233) b!607228))

(assert (= (and b!607228 res!390230) b!607249))

(assert (= (and b!607249 res!390242) b!607240))

(assert (= (and b!607240 res!390228) b!607246))

(assert (= (and b!607246 res!390237) b!607230))

(assert (= (and b!607230 res!390223) b!607242))

(assert (= (and b!607242 res!390234) b!607232))

(assert (= (and b!607232 res!390240) b!607238))

(assert (= (and b!607232 c!68869) b!607234))

(assert (= (and b!607232 (not c!68869)) b!607231))

(assert (= (and b!607232 (not res!390229)) b!607229))

(assert (= (and b!607229 res!390227) b!607236))

(assert (= (and b!607236 (not res!390224)) b!607241))

(assert (= (and b!607241 res!390239) b!607250))

(assert (= (and b!607229 (not res!390222)) b!607237))

(assert (= (and b!607237 c!68870) b!607224))

(assert (= (and b!607237 (not c!68870)) b!607227))

(assert (= (and b!607237 (not res!390220)) b!607239))

(assert (= (and b!607239 res!390221) b!607235))

(assert (= (and b!607239 (not res!390232)) b!607226))

(assert (= (and b!607226 (not res!390235)) b!607248))

(assert (= (and b!607248 (not res!390231)) b!607247))

(assert (= (and b!607247 (not res!390238)) b!607233))

(declare-fun m!584013 () Bool)

(assert (=> b!607244 m!584013))

(declare-fun m!584015 () Bool)

(assert (=> b!607225 m!584015))

(assert (=> b!607225 m!584015))

(declare-fun m!584017 () Bool)

(assert (=> b!607225 m!584017))

(declare-fun m!584019 () Bool)

(assert (=> b!607230 m!584019))

(declare-fun m!584021 () Bool)

(assert (=> b!607230 m!584021))

(assert (=> b!607224 m!584015))

(assert (=> b!607224 m!584015))

(declare-fun m!584023 () Bool)

(assert (=> b!607224 m!584023))

(declare-fun m!584025 () Bool)

(assert (=> b!607224 m!584025))

(declare-fun m!584027 () Bool)

(assert (=> b!607224 m!584027))

(assert (=> b!607224 m!584015))

(declare-fun m!584029 () Bool)

(assert (=> b!607224 m!584029))

(assert (=> b!607224 m!584015))

(declare-fun m!584031 () Bool)

(assert (=> b!607224 m!584031))

(declare-fun m!584033 () Bool)

(assert (=> b!607224 m!584033))

(declare-fun m!584035 () Bool)

(assert (=> b!607224 m!584035))

(assert (=> b!607241 m!584015))

(assert (=> b!607241 m!584015))

(declare-fun m!584037 () Bool)

(assert (=> b!607241 m!584037))

(assert (=> b!607236 m!584015))

(declare-fun m!584039 () Bool)

(assert (=> b!607226 m!584039))

(assert (=> b!607235 m!584015))

(assert (=> b!607235 m!584015))

(declare-fun m!584041 () Bool)

(assert (=> b!607235 m!584041))

(declare-fun m!584043 () Bool)

(assert (=> b!607246 m!584043))

(assert (=> b!607229 m!584015))

(assert (=> b!607229 m!584019))

(declare-fun m!584045 () Bool)

(assert (=> b!607229 m!584045))

(declare-fun m!584047 () Bool)

(assert (=> b!607247 m!584047))

(declare-fun m!584049 () Bool)

(assert (=> start!55558 m!584049))

(declare-fun m!584051 () Bool)

(assert (=> start!55558 m!584051))

(declare-fun m!584053 () Bool)

(assert (=> b!607232 m!584053))

(declare-fun m!584055 () Bool)

(assert (=> b!607232 m!584055))

(assert (=> b!607232 m!584019))

(declare-fun m!584057 () Bool)

(assert (=> b!607232 m!584057))

(declare-fun m!584059 () Bool)

(assert (=> b!607232 m!584059))

(assert (=> b!607232 m!584015))

(declare-fun m!584061 () Bool)

(assert (=> b!607232 m!584061))

(declare-fun m!584063 () Bool)

(assert (=> b!607232 m!584063))

(assert (=> b!607232 m!584015))

(assert (=> b!607239 m!584015))

(assert (=> b!607239 m!584015))

(declare-fun m!584065 () Bool)

(assert (=> b!607239 m!584065))

(assert (=> b!607239 m!584015))

(declare-fun m!584067 () Bool)

(assert (=> b!607239 m!584067))

(assert (=> b!607239 m!584015))

(assert (=> b!607239 m!584037))

(declare-fun m!584069 () Bool)

(assert (=> b!607242 m!584069))

(assert (=> b!607242 m!584015))

(assert (=> b!607242 m!584015))

(declare-fun m!584071 () Bool)

(assert (=> b!607242 m!584071))

(assert (=> b!607250 m!584015))

(assert (=> b!607250 m!584015))

(assert (=> b!607250 m!584041))

(declare-fun m!584073 () Bool)

(assert (=> b!607228 m!584073))

(declare-fun m!584075 () Bool)

(assert (=> b!607233 m!584075))

(declare-fun m!584077 () Bool)

(assert (=> b!607248 m!584077))

(declare-fun m!584079 () Bool)

(assert (=> b!607240 m!584079))

(declare-fun m!584081 () Bool)

(assert (=> b!607245 m!584081))

(declare-fun m!584083 () Bool)

(assert (=> b!607249 m!584083))

(push 1)

