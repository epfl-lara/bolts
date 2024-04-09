; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54342 () Bool)

(assert start!54342)

(declare-fun b!593227 () Bool)

(declare-fun e!338857 () Bool)

(declare-fun e!338860 () Bool)

(assert (=> b!593227 (= e!338857 e!338860)))

(declare-fun res!379804 () Bool)

(assert (=> b!593227 (=> (not res!379804) (not e!338860))))

(declare-datatypes ((SeekEntryResult!6165 0))(
  ( (MissingZero!6165 (index!26901 (_ BitVec 32))) (Found!6165 (index!26902 (_ BitVec 32))) (Intermediate!6165 (undefined!6977 Bool) (index!26903 (_ BitVec 32)) (x!55728 (_ BitVec 32))) (Undefined!6165) (MissingVacant!6165 (index!26904 (_ BitVec 32))) )
))
(declare-fun lt!269368 () SeekEntryResult!6165)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!593227 (= res!379804 (or (= lt!269368 (MissingZero!6165 i!1108)) (= lt!269368 (MissingVacant!6165 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36909 0))(
  ( (array!36910 (arr!17718 (Array (_ BitVec 32) (_ BitVec 64))) (size!18082 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36909)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36909 (_ BitVec 32)) SeekEntryResult!6165)

(assert (=> b!593227 (= lt!269368 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!269365 () array!36909)

(declare-fun e!338856 () Bool)

(declare-fun b!593228 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!36909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593228 (= e!338856 (arrayContainsKey!0 lt!269365 (select (arr!17718 a!2986) j!136) index!984))))

(declare-fun b!593229 () Bool)

(declare-fun e!338859 () Bool)

(declare-fun e!338850 () Bool)

(assert (=> b!593229 (= e!338859 e!338850)))

(declare-fun res!379799 () Bool)

(assert (=> b!593229 (=> res!379799 e!338850)))

(declare-fun lt!269364 () (_ BitVec 64))

(declare-fun lt!269371 () (_ BitVec 64))

(assert (=> b!593229 (= res!379799 (or (not (= (select (arr!17718 a!2986) j!136) lt!269371)) (not (= (select (arr!17718 a!2986) j!136) lt!269364)) (bvsge j!136 index!984)))))

(declare-fun b!593230 () Bool)

(declare-fun res!379797 () Bool)

(assert (=> b!593230 (=> (not res!379797) (not e!338860))))

(declare-datatypes ((List!11812 0))(
  ( (Nil!11809) (Cons!11808 (h!12853 (_ BitVec 64)) (t!18048 List!11812)) )
))
(declare-fun arrayNoDuplicates!0 (array!36909 (_ BitVec 32) List!11812) Bool)

(assert (=> b!593230 (= res!379797 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11809))))

(declare-fun b!593231 () Bool)

(declare-fun e!338855 () Bool)

(assert (=> b!593231 (= e!338860 e!338855)))

(declare-fun res!379814 () Bool)

(assert (=> b!593231 (=> (not res!379814) (not e!338855))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!593231 (= res!379814 (= (select (store (arr!17718 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593231 (= lt!269365 (array!36910 (store (arr!17718 a!2986) i!1108 k!1786) (size!18082 a!2986)))))

(declare-fun b!593232 () Bool)

(declare-fun res!379803 () Bool)

(assert (=> b!593232 (=> (not res!379803) (not e!338857))))

(assert (=> b!593232 (= res!379803 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593233 () Bool)

(declare-datatypes ((Unit!18604 0))(
  ( (Unit!18605) )
))
(declare-fun e!338853 () Unit!18604)

(declare-fun Unit!18606 () Unit!18604)

(assert (=> b!593233 (= e!338853 Unit!18606)))

(declare-fun b!593234 () Bool)

(declare-fun e!338858 () Bool)

(declare-fun lt!269372 () SeekEntryResult!6165)

(declare-fun lt!269369 () SeekEntryResult!6165)

(assert (=> b!593234 (= e!338858 (= lt!269372 lt!269369))))

(declare-fun b!593235 () Bool)

(declare-fun res!379810 () Bool)

(assert (=> b!593235 (=> (not res!379810) (not e!338860))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!593235 (= res!379810 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17718 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593236 () Bool)

(declare-fun e!338848 () Bool)

(declare-fun e!338852 () Bool)

(assert (=> b!593236 (= e!338848 (not e!338852))))

(declare-fun res!379808 () Bool)

(assert (=> b!593236 (=> res!379808 e!338852)))

(declare-fun lt!269373 () SeekEntryResult!6165)

(assert (=> b!593236 (= res!379808 (not (= lt!269373 (Found!6165 index!984))))))

(declare-fun lt!269366 () Unit!18604)

(assert (=> b!593236 (= lt!269366 e!338853)))

(declare-fun c!67082 () Bool)

(assert (=> b!593236 (= c!67082 (= lt!269373 Undefined!6165))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36909 (_ BitVec 32)) SeekEntryResult!6165)

(assert (=> b!593236 (= lt!269373 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269371 lt!269365 mask!3053))))

(assert (=> b!593236 e!338858))

(declare-fun res!379798 () Bool)

(assert (=> b!593236 (=> (not res!379798) (not e!338858))))

(declare-fun lt!269367 () (_ BitVec 32))

(assert (=> b!593236 (= res!379798 (= lt!269369 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269367 vacantSpotIndex!68 lt!269371 lt!269365 mask!3053)))))

(assert (=> b!593236 (= lt!269369 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269367 vacantSpotIndex!68 (select (arr!17718 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593236 (= lt!269371 (select (store (arr!17718 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269363 () Unit!18604)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18604)

(assert (=> b!593236 (= lt!269363 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269367 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593236 (= lt!269367 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!593237 () Bool)

(declare-fun e!338854 () Bool)

(declare-fun noDuplicate!232 (List!11812) Bool)

(assert (=> b!593237 (= e!338854 (noDuplicate!232 Nil!11809))))

(declare-fun b!593238 () Bool)

(declare-fun res!379800 () Bool)

(assert (=> b!593238 (=> (not res!379800) (not e!338857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593238 (= res!379800 (validKeyInArray!0 k!1786))))

(declare-fun b!593239 () Bool)

(declare-fun e!338851 () Bool)

(assert (=> b!593239 (= e!338851 e!338854)))

(declare-fun res!379805 () Bool)

(assert (=> b!593239 (=> res!379805 e!338854)))

(assert (=> b!593239 (= res!379805 (or (bvsgt #b00000000000000000000000000000000 (size!18082 a!2986)) (bvsge (size!18082 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!593239 (arrayContainsKey!0 lt!269365 (select (arr!17718 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269370 () Unit!18604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36909 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18604)

(assert (=> b!593239 (= lt!269370 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269365 (select (arr!17718 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593240 () Bool)

(declare-fun res!379812 () Bool)

(assert (=> b!593240 (=> (not res!379812) (not e!338857))))

(assert (=> b!593240 (= res!379812 (validKeyInArray!0 (select (arr!17718 a!2986) j!136)))))

(declare-fun res!379801 () Bool)

(assert (=> start!54342 (=> (not res!379801) (not e!338857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54342 (= res!379801 (validMask!0 mask!3053))))

(assert (=> start!54342 e!338857))

(assert (=> start!54342 true))

(declare-fun array_inv!13492 (array!36909) Bool)

(assert (=> start!54342 (array_inv!13492 a!2986)))

(declare-fun b!593241 () Bool)

(declare-fun res!379813 () Bool)

(assert (=> b!593241 (=> (not res!379813) (not e!338860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36909 (_ BitVec 32)) Bool)

(assert (=> b!593241 (= res!379813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!593242 () Bool)

(declare-fun Unit!18607 () Unit!18604)

(assert (=> b!593242 (= e!338853 Unit!18607)))

(assert (=> b!593242 false))

(declare-fun b!593243 () Bool)

(assert (=> b!593243 (= e!338855 e!338848)))

(declare-fun res!379809 () Bool)

(assert (=> b!593243 (=> (not res!379809) (not e!338848))))

(assert (=> b!593243 (= res!379809 (and (= lt!269372 (Found!6165 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17718 a!2986) index!984) (select (arr!17718 a!2986) j!136))) (not (= (select (arr!17718 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!593243 (= lt!269372 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17718 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593244 () Bool)

(assert (=> b!593244 (= e!338850 e!338856)))

(declare-fun res!379807 () Bool)

(assert (=> b!593244 (=> (not res!379807) (not e!338856))))

(assert (=> b!593244 (= res!379807 (arrayContainsKey!0 lt!269365 (select (arr!17718 a!2986) j!136) j!136))))

(declare-fun b!593245 () Bool)

(assert (=> b!593245 (= e!338852 e!338851)))

(declare-fun res!379802 () Bool)

(assert (=> b!593245 (=> res!379802 e!338851)))

(assert (=> b!593245 (= res!379802 (or (not (= (select (arr!17718 a!2986) j!136) lt!269371)) (not (= (select (arr!17718 a!2986) j!136) lt!269364)) (bvsge j!136 index!984)))))

(assert (=> b!593245 e!338859))

(declare-fun res!379811 () Bool)

(assert (=> b!593245 (=> (not res!379811) (not e!338859))))

(assert (=> b!593245 (= res!379811 (= lt!269364 (select (arr!17718 a!2986) j!136)))))

(assert (=> b!593245 (= lt!269364 (select (store (arr!17718 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!593246 () Bool)

(declare-fun res!379806 () Bool)

(assert (=> b!593246 (=> (not res!379806) (not e!338857))))

(assert (=> b!593246 (= res!379806 (and (= (size!18082 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18082 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18082 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54342 res!379801) b!593246))

(assert (= (and b!593246 res!379806) b!593240))

(assert (= (and b!593240 res!379812) b!593238))

(assert (= (and b!593238 res!379800) b!593232))

(assert (= (and b!593232 res!379803) b!593227))

(assert (= (and b!593227 res!379804) b!593241))

(assert (= (and b!593241 res!379813) b!593230))

(assert (= (and b!593230 res!379797) b!593235))

(assert (= (and b!593235 res!379810) b!593231))

(assert (= (and b!593231 res!379814) b!593243))

(assert (= (and b!593243 res!379809) b!593236))

(assert (= (and b!593236 res!379798) b!593234))

(assert (= (and b!593236 c!67082) b!593242))

(assert (= (and b!593236 (not c!67082)) b!593233))

(assert (= (and b!593236 (not res!379808)) b!593245))

(assert (= (and b!593245 res!379811) b!593229))

(assert (= (and b!593229 (not res!379799)) b!593244))

(assert (= (and b!593244 res!379807) b!593228))

(assert (= (and b!593245 (not res!379802)) b!593239))

(assert (= (and b!593239 (not res!379805)) b!593237))

(declare-fun m!571233 () Bool)

(assert (=> b!593241 m!571233))

(declare-fun m!571235 () Bool)

(assert (=> b!593239 m!571235))

(assert (=> b!593239 m!571235))

(declare-fun m!571237 () Bool)

(assert (=> b!593239 m!571237))

(assert (=> b!593239 m!571235))

(declare-fun m!571239 () Bool)

(assert (=> b!593239 m!571239))

(declare-fun m!571241 () Bool)

(assert (=> b!593231 m!571241))

(declare-fun m!571243 () Bool)

(assert (=> b!593231 m!571243))

(declare-fun m!571245 () Bool)

(assert (=> b!593235 m!571245))

(assert (=> b!593228 m!571235))

(assert (=> b!593228 m!571235))

(declare-fun m!571247 () Bool)

(assert (=> b!593228 m!571247))

(declare-fun m!571249 () Bool)

(assert (=> start!54342 m!571249))

(declare-fun m!571251 () Bool)

(assert (=> start!54342 m!571251))

(declare-fun m!571253 () Bool)

(assert (=> b!593236 m!571253))

(declare-fun m!571255 () Bool)

(assert (=> b!593236 m!571255))

(declare-fun m!571257 () Bool)

(assert (=> b!593236 m!571257))

(assert (=> b!593236 m!571235))

(assert (=> b!593236 m!571241))

(declare-fun m!571259 () Bool)

(assert (=> b!593236 m!571259))

(assert (=> b!593236 m!571235))

(declare-fun m!571261 () Bool)

(assert (=> b!593236 m!571261))

(declare-fun m!571263 () Bool)

(assert (=> b!593236 m!571263))

(assert (=> b!593244 m!571235))

(assert (=> b!593244 m!571235))

(declare-fun m!571265 () Bool)

(assert (=> b!593244 m!571265))

(assert (=> b!593240 m!571235))

(assert (=> b!593240 m!571235))

(declare-fun m!571267 () Bool)

(assert (=> b!593240 m!571267))

(declare-fun m!571269 () Bool)

(assert (=> b!593238 m!571269))

(declare-fun m!571271 () Bool)

(assert (=> b!593237 m!571271))

(declare-fun m!571273 () Bool)

(assert (=> b!593232 m!571273))

(assert (=> b!593229 m!571235))

(declare-fun m!571275 () Bool)

(assert (=> b!593227 m!571275))

(declare-fun m!571277 () Bool)

(assert (=> b!593230 m!571277))

(declare-fun m!571279 () Bool)

(assert (=> b!593243 m!571279))

(assert (=> b!593243 m!571235))

(assert (=> b!593243 m!571235))

(declare-fun m!571281 () Bool)

(assert (=> b!593243 m!571281))

(assert (=> b!593245 m!571235))

(assert (=> b!593245 m!571241))

(declare-fun m!571283 () Bool)

(assert (=> b!593245 m!571283))

(push 1)

(assert (not b!593232))

(assert (not b!593240))

(assert (not b!593243))

(assert (not b!593228))

(assert (not start!54342))

(assert (not b!593230))

(assert (not b!593239))

(assert (not b!593237))

(assert (not b!593244))

(assert (not b!593238))

(assert (not b!593241))

(assert (not b!593236))

(assert (not b!593227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!32864 () Bool)

(declare-fun call!32867 () Bool)

(assert (=> bm!32864 (= call!32867 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!593431 () Bool)

(declare-fun e!338983 () Bool)

(assert (=> b!593431 (= e!338983 call!32867)))

(declare-fun b!593432 () Bool)

(declare-fun e!338984 () Bool)

(assert (=> b!593432 (= e!338984 e!338983)))

(declare-fun lt!269467 () (_ BitVec 64))

(assert (=> b!593432 (= lt!269467 (select (arr!17718 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269466 () Unit!18604)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36909 (_ BitVec 64) (_ BitVec 32)) Unit!18604)

(assert (=> b!593432 (= lt!269466 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269467 #b00000000000000000000000000000000))))

(assert (=> b!593432 (arrayContainsKey!0 a!2986 lt!269467 #b00000000000000000000000000000000)))

(declare-fun lt!269465 () Unit!18604)

(assert (=> b!593432 (= lt!269465 lt!269466)))

(declare-fun res!379948 () Bool)

(assert (=> b!593432 (= res!379948 (= (seekEntryOrOpen!0 (select (arr!17718 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6165 #b00000000000000000000000000000000)))))

(assert (=> b!593432 (=> (not res!379948) (not e!338983))))

(declare-fun b!593433 () Bool)

(assert (=> b!593433 (= e!338984 call!32867)))

(declare-fun d!86329 () Bool)

(declare-fun res!379947 () Bool)

(declare-fun e!338985 () Bool)

(assert (=> d!86329 (=> res!379947 e!338985)))

(assert (=> d!86329 (= res!379947 (bvsge #b00000000000000000000000000000000 (size!18082 a!2986)))))

(assert (=> d!86329 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!338985)))

(declare-fun b!593434 () Bool)

(assert (=> b!593434 (= e!338985 e!338984)))

(declare-fun c!67109 () Bool)

(assert (=> b!593434 (= c!67109 (validKeyInArray!0 (select (arr!17718 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86329 (not res!379947)) b!593434))

(assert (= (and b!593434 c!67109) b!593432))

(assert (= (and b!593434 (not c!67109)) b!593433))

(assert (= (and b!593432 res!379948) b!593431))

(assert (= (or b!593431 b!593433) bm!32864))

(declare-fun m!571439 () Bool)

(assert (=> bm!32864 m!571439))

(declare-fun m!571441 () Bool)

(assert (=> b!593432 m!571441))

(declare-fun m!571443 () Bool)

(assert (=> b!593432 m!571443))

(declare-fun m!571445 () Bool)

(assert (=> b!593432 m!571445))

(assert (=> b!593432 m!571441))

(declare-fun m!571447 () Bool)

(assert (=> b!593432 m!571447))

(assert (=> b!593434 m!571441))

(assert (=> b!593434 m!571441))

(declare-fun m!571449 () Bool)

(assert (=> b!593434 m!571449))

(assert (=> b!593241 d!86329))

(declare-fun b!593461 () Bool)

(declare-fun e!339004 () Bool)

(declare-fun contains!2918 (List!11812 (_ BitVec 64)) Bool)

(assert (=> b!593461 (= e!339004 (contains!2918 Nil!11809 (select (arr!17718 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32869 () Bool)

(declare-fun call!32872 () Bool)

(declare-fun c!67118 () Bool)

(assert (=> bm!32869 (= call!32872 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67118 (Cons!11808 (select (arr!17718 a!2986) #b00000000000000000000000000000000) Nil!11809) Nil!11809)))))

(declare-fun b!593462 () Bool)

(declare-fun e!339005 () Bool)

(declare-fun e!339007 () Bool)

(assert (=> b!593462 (= e!339005 e!339007)))

(declare-fun res!379959 () Bool)

(assert (=> b!593462 (=> (not res!379959) (not e!339007))))

(assert (=> b!593462 (= res!379959 (not e!339004))))

(declare-fun res!379961 () Bool)

(assert (=> b!593462 (=> (not res!379961) (not e!339004))))

(assert (=> b!593462 (= res!379961 (validKeyInArray!0 (select (arr!17718 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!86343 () Bool)

(declare-fun res!379960 () Bool)

(assert (=> d!86343 (=> res!379960 e!339005)))

(assert (=> d!86343 (= res!379960 (bvsge #b00000000000000000000000000000000 (size!18082 a!2986)))))

(assert (=> d!86343 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11809) e!339005)))

(declare-fun b!593463 () Bool)

(declare-fun e!339006 () Bool)

(assert (=> b!593463 (= e!339006 call!32872)))

(declare-fun b!593464 () Bool)

(assert (=> b!593464 (= e!339007 e!339006)))

(assert (=> b!593464 (= c!67118 (validKeyInArray!0 (select (arr!17718 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!593467 () Bool)

(assert (=> b!593467 (= e!339006 call!32872)))

(assert (= (and d!86343 (not res!379960)) b!593462))

(assert (= (and b!593462 res!379961) b!593461))

(assert (= (and b!593462 res!379959) b!593464))

(assert (= (and b!593464 c!67118) b!593463))

(assert (= (and b!593464 (not c!67118)) b!593467))

(assert (= (or b!593463 b!593467) bm!32869))

(assert (=> b!593461 m!571441))

(assert (=> b!593461 m!571441))

(declare-fun m!571451 () Bool)

(assert (=> b!593461 m!571451))

(assert (=> bm!32869 m!571441))

(declare-fun m!571453 () Bool)

(assert (=> bm!32869 m!571453))

(assert (=> b!593462 m!571441))

(assert (=> b!593462 m!571441))

(assert (=> b!593462 m!571449))

(assert (=> b!593464 m!571441))

(assert (=> b!593464 m!571441))

(assert (=> b!593464 m!571449))

(assert (=> b!593230 d!86343))

(declare-fun lt!269497 () SeekEntryResult!6165)

(declare-fun d!86345 () Bool)

(assert (=> d!86345 (and (or (is-Undefined!6165 lt!269497) (not (is-Found!6165 lt!269497)) (and (bvsge (index!26902 lt!269497) #b00000000000000000000000000000000) (bvslt (index!26902 lt!269497) (size!18082 a!2986)))) (or (is-Undefined!6165 lt!269497) (is-Found!6165 lt!269497) (not (is-MissingVacant!6165 lt!269497)) (not (= (index!26904 lt!269497) vacantSpotIndex!68)) (and (bvsge (index!26904 lt!269497) #b00000000000000000000000000000000) (bvslt (index!26904 lt!269497) (size!18082 a!2986)))) (or (is-Undefined!6165 lt!269497) (ite (is-Found!6165 lt!269497) (= (select (arr!17718 a!2986) (index!26902 lt!269497)) (select (arr!17718 a!2986) j!136)) (and (is-MissingVacant!6165 lt!269497) (= (index!26904 lt!269497) vacantSpotIndex!68) (= (select (arr!17718 a!2986) (index!26904 lt!269497)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339043 () SeekEntryResult!6165)

(assert (=> d!86345 (= lt!269497 e!339043)))

(declare-fun c!67142 () Bool)

(assert (=> d!86345 (= c!67142 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!269496 () (_ BitVec 64))

(assert (=> d!86345 (= lt!269496 (select (arr!17718 a!2986) index!984))))

(assert (=> d!86345 (validMask!0 mask!3053)))

(assert (=> d!86345 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17718 a!2986) j!136) a!2986 mask!3053) lt!269497)))

(declare-fun b!593520 () Bool)

(declare-fun e!339041 () SeekEntryResult!6165)

(assert (=> b!593520 (= e!339041 (Found!6165 index!984))))

(declare-fun b!593521 () Bool)

(assert (=> b!593521 (= e!339043 e!339041)))

(declare-fun c!67141 () Bool)

(assert (=> b!593521 (= c!67141 (= lt!269496 (select (arr!17718 a!2986) j!136)))))

(declare-fun b!593522 () Bool)

(declare-fun e!339042 () SeekEntryResult!6165)

(assert (=> b!593522 (= e!339042 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17718 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593523 () Bool)

(declare-fun c!67140 () Bool)

(assert (=> b!593523 (= c!67140 (= lt!269496 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593523 (= e!339041 e!339042)))

(declare-fun b!593524 () Bool)

(assert (=> b!593524 (= e!339043 Undefined!6165)))

(declare-fun b!593525 () Bool)

(assert (=> b!593525 (= e!339042 (MissingVacant!6165 vacantSpotIndex!68))))

(assert (= (and d!86345 c!67142) b!593524))

(assert (= (and d!86345 (not c!67142)) b!593521))

(assert (= (and b!593521 c!67141) b!593520))

(assert (= (and b!593521 (not c!67141)) b!593523))

(assert (= (and b!593523 c!67140) b!593525))

(assert (= (and b!593523 (not c!67140)) b!593522))

(declare-fun m!571505 () Bool)

(assert (=> d!86345 m!571505))

(declare-fun m!571507 () Bool)

(assert (=> d!86345 m!571507))

(assert (=> d!86345 m!571279))

(assert (=> d!86345 m!571249))

(assert (=> b!593522 m!571255))

(assert (=> b!593522 m!571255))

(assert (=> b!593522 m!571235))

(declare-fun m!571509 () Bool)

(assert (=> b!593522 m!571509))

(assert (=> b!593243 d!86345))

(declare-fun d!86367 () Bool)

(declare-fun res!379978 () Bool)

(declare-fun e!339048 () Bool)

(assert (=> d!86367 (=> res!379978 e!339048)))

(assert (=> d!86367 (= res!379978 (= (select (arr!17718 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86367 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!339048)))

(declare-fun b!593530 () Bool)

(declare-fun e!339049 () Bool)

(assert (=> b!593530 (= e!339048 e!339049)))

(declare-fun res!379979 () Bool)

(assert (=> b!593530 (=> (not res!379979) (not e!339049))))

(assert (=> b!593530 (= res!379979 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18082 a!2986)))))

(declare-fun b!593531 () Bool)

(assert (=> b!593531 (= e!339049 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86367 (not res!379978)) b!593530))

(assert (= (and b!593530 res!379979) b!593531))

(assert (=> d!86367 m!571441))

(declare-fun m!571511 () Bool)

(assert (=> b!593531 m!571511))

(assert (=> b!593232 d!86367))

(declare-fun d!86369 () Bool)

(declare-fun res!379980 () Bool)

(declare-fun e!339050 () Bool)

(assert (=> d!86369 (=> res!379980 e!339050)))

(assert (=> d!86369 (= res!379980 (= (select (arr!17718 lt!269365) j!136) (select (arr!17718 a!2986) j!136)))))

(assert (=> d!86369 (= (arrayContainsKey!0 lt!269365 (select (arr!17718 a!2986) j!136) j!136) e!339050)))

(declare-fun b!593532 () Bool)

(declare-fun e!339051 () Bool)

(assert (=> b!593532 (= e!339050 e!339051)))

(declare-fun res!379981 () Bool)

(assert (=> b!593532 (=> (not res!379981) (not e!339051))))

(assert (=> b!593532 (= res!379981 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18082 lt!269365)))))

(declare-fun b!593533 () Bool)

(assert (=> b!593533 (= e!339051 (arrayContainsKey!0 lt!269365 (select (arr!17718 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86369 (not res!379980)) b!593532))

(assert (= (and b!593532 res!379981) b!593533))

(declare-fun m!571513 () Bool)

(assert (=> d!86369 m!571513))

(assert (=> b!593533 m!571235))

(declare-fun m!571515 () Bool)

(assert (=> b!593533 m!571515))

(assert (=> b!593244 d!86369))

(declare-fun d!86371 () Bool)

(declare-fun lt!269501 () SeekEntryResult!6165)

(assert (=> d!86371 (and (or (is-Undefined!6165 lt!269501) (not (is-Found!6165 lt!269501)) (and (bvsge (index!26902 lt!269501) #b00000000000000000000000000000000) (bvslt (index!26902 lt!269501) (size!18082 lt!269365)))) (or (is-Undefined!6165 lt!269501) (is-Found!6165 lt!269501) (not (is-MissingVacant!6165 lt!269501)) (not (= (index!26904 lt!269501) vacantSpotIndex!68)) (and (bvsge (index!26904 lt!269501) #b00000000000000000000000000000000) (bvslt (index!26904 lt!269501) (size!18082 lt!269365)))) (or (is-Undefined!6165 lt!269501) (ite (is-Found!6165 lt!269501) (= (select (arr!17718 lt!269365) (index!26902 lt!269501)) lt!269371) (and (is-MissingVacant!6165 lt!269501) (= (index!26904 lt!269501) vacantSpotIndex!68) (= (select (arr!17718 lt!269365) (index!26904 lt!269501)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339056 () SeekEntryResult!6165)

(assert (=> d!86371 (= lt!269501 e!339056)))

(declare-fun c!67145 () Bool)

(assert (=> d!86371 (= c!67145 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!269500 () (_ BitVec 64))

(assert (=> d!86371 (= lt!269500 (select (arr!17718 lt!269365) lt!269367))))

