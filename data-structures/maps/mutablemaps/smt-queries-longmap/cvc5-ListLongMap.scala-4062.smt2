; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55608 () Bool)

(assert start!55608)

(declare-fun b!609249 () Bool)

(declare-fun res!391955 () Bool)

(declare-fun e!348939 () Bool)

(assert (=> b!609249 (=> res!391955 e!348939)))

(declare-datatypes ((List!11992 0))(
  ( (Nil!11989) (Cons!11988 (h!13033 (_ BitVec 64)) (t!18228 List!11992)) )
))
(declare-fun noDuplicate!340 (List!11992) Bool)

(assert (=> b!609249 (= res!391955 (not (noDuplicate!340 Nil!11989)))))

(declare-fun b!609250 () Bool)

(declare-fun res!391951 () Bool)

(declare-fun e!348937 () Bool)

(assert (=> b!609250 (=> (not res!391951) (not e!348937))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609250 (= res!391951 (validKeyInArray!0 k!1786))))

(declare-fun b!609251 () Bool)

(declare-fun res!391959 () Bool)

(assert (=> b!609251 (=> res!391959 e!348939)))

(declare-fun contains!3038 (List!11992 (_ BitVec 64)) Bool)

(assert (=> b!609251 (= res!391959 (contains!3038 Nil!11989 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609252 () Bool)

(declare-fun e!348931 () Bool)

(declare-fun e!348933 () Bool)

(assert (=> b!609252 (= e!348931 e!348933)))

(declare-fun res!391957 () Bool)

(assert (=> b!609252 (=> (not res!391957) (not e!348933))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37302 0))(
  ( (array!37303 (arr!17898 (Array (_ BitVec 32) (_ BitVec 64))) (size!18262 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37302)

(assert (=> b!609252 (= res!391957 (= (select (store (arr!17898 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!278564 () array!37302)

(assert (=> b!609252 (= lt!278564 (array!37303 (store (arr!17898 a!2986) i!1108 k!1786) (size!18262 a!2986)))))

(declare-fun b!609253 () Bool)

(declare-fun res!391964 () Bool)

(assert (=> b!609253 (=> (not res!391964) (not e!348931))))

(declare-fun arrayNoDuplicates!0 (array!37302 (_ BitVec 32) List!11992) Bool)

(assert (=> b!609253 (= res!391964 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11989))))

(declare-fun b!609254 () Bool)

(declare-fun e!348938 () Bool)

(declare-fun e!348940 () Bool)

(assert (=> b!609254 (= e!348938 (not e!348940))))

(declare-fun res!391952 () Bool)

(assert (=> b!609254 (=> res!391952 e!348940)))

(declare-datatypes ((SeekEntryResult!6345 0))(
  ( (MissingZero!6345 (index!27654 (_ BitVec 32))) (Found!6345 (index!27655 (_ BitVec 32))) (Intermediate!6345 (undefined!7157 Bool) (index!27656 (_ BitVec 32)) (x!56487 (_ BitVec 32))) (Undefined!6345) (MissingVacant!6345 (index!27657 (_ BitVec 32))) )
))
(declare-fun lt!278565 () SeekEntryResult!6345)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!609254 (= res!391952 (not (= lt!278565 (Found!6345 index!984))))))

(declare-datatypes ((Unit!19498 0))(
  ( (Unit!19499) )
))
(declare-fun lt!278549 () Unit!19498)

(declare-fun e!348934 () Unit!19498)

(assert (=> b!609254 (= lt!278549 e!348934)))

(declare-fun c!69020 () Bool)

(assert (=> b!609254 (= c!69020 (= lt!278565 Undefined!6345))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!278556 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37302 (_ BitVec 32)) SeekEntryResult!6345)

(assert (=> b!609254 (= lt!278565 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278556 lt!278564 mask!3053))))

(declare-fun e!348942 () Bool)

(assert (=> b!609254 e!348942))

(declare-fun res!391953 () Bool)

(assert (=> b!609254 (=> (not res!391953) (not e!348942))))

(declare-fun lt!278559 () SeekEntryResult!6345)

(declare-fun lt!278562 () (_ BitVec 32))

(assert (=> b!609254 (= res!391953 (= lt!278559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278562 vacantSpotIndex!68 lt!278556 lt!278564 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!609254 (= lt!278559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278562 vacantSpotIndex!68 (select (arr!17898 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609254 (= lt!278556 (select (store (arr!17898 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278553 () Unit!19498)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37302 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19498)

(assert (=> b!609254 (= lt!278553 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278562 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609254 (= lt!278562 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609255 () Bool)

(assert (=> b!609255 (= e!348937 e!348931)))

(declare-fun res!391956 () Bool)

(assert (=> b!609255 (=> (not res!391956) (not e!348931))))

(declare-fun lt!278560 () SeekEntryResult!6345)

(assert (=> b!609255 (= res!391956 (or (= lt!278560 (MissingZero!6345 i!1108)) (= lt!278560 (MissingVacant!6345 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37302 (_ BitVec 32)) SeekEntryResult!6345)

(assert (=> b!609255 (= lt!278560 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609256 () Bool)

(declare-fun res!391947 () Bool)

(assert (=> b!609256 (=> res!391947 e!348939)))

(assert (=> b!609256 (= res!391947 (contains!3038 Nil!11989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609257 () Bool)

(assert (=> b!609257 (= e!348933 e!348938)))

(declare-fun res!391960 () Bool)

(assert (=> b!609257 (=> (not res!391960) (not e!348938))))

(declare-fun lt!278558 () SeekEntryResult!6345)

(assert (=> b!609257 (= res!391960 (and (= lt!278558 (Found!6345 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17898 a!2986) index!984) (select (arr!17898 a!2986) j!136))) (not (= (select (arr!17898 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609257 (= lt!278558 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17898 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609259 () Bool)

(declare-fun e!348944 () Bool)

(assert (=> b!609259 (= e!348944 e!348939)))

(declare-fun res!391946 () Bool)

(assert (=> b!609259 (=> res!391946 e!348939)))

(assert (=> b!609259 (= res!391946 (or (bvsge (size!18262 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18262 a!2986))))))

(declare-fun arrayContainsKey!0 (array!37302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609259 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278550 () Unit!19498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19498)

(assert (=> b!609259 (= lt!278550 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278564 (select (arr!17898 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348943 () Bool)

(assert (=> b!609259 e!348943))

(declare-fun res!391950 () Bool)

(assert (=> b!609259 (=> (not res!391950) (not e!348943))))

(assert (=> b!609259 (= res!391950 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) j!136))))

(declare-fun b!609260 () Bool)

(declare-fun e!348935 () Unit!19498)

(declare-fun Unit!19500 () Unit!19498)

(assert (=> b!609260 (= e!348935 Unit!19500)))

(declare-fun b!609261 () Bool)

(declare-fun res!391962 () Bool)

(assert (=> b!609261 (=> (not res!391962) (not e!348931))))

(assert (=> b!609261 (= res!391962 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17898 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609262 () Bool)

(declare-fun e!348941 () Bool)

(declare-fun e!348932 () Bool)

(assert (=> b!609262 (= e!348941 e!348932)))

(declare-fun res!391965 () Bool)

(assert (=> b!609262 (=> (not res!391965) (not e!348932))))

(assert (=> b!609262 (= res!391965 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) j!136))))

(declare-fun b!609263 () Bool)

(declare-fun Unit!19501 () Unit!19498)

(assert (=> b!609263 (= e!348934 Unit!19501)))

(assert (=> b!609263 false))

(declare-fun b!609264 () Bool)

(declare-fun e!348936 () Bool)

(assert (=> b!609264 (= e!348940 e!348936)))

(declare-fun res!391954 () Bool)

(assert (=> b!609264 (=> res!391954 e!348936)))

(declare-fun lt!278561 () (_ BitVec 64))

(assert (=> b!609264 (= res!391954 (or (not (= (select (arr!17898 a!2986) j!136) lt!278556)) (not (= (select (arr!17898 a!2986) j!136) lt!278561))))))

(declare-fun e!348946 () Bool)

(assert (=> b!609264 e!348946))

(declare-fun res!391945 () Bool)

(assert (=> b!609264 (=> (not res!391945) (not e!348946))))

(assert (=> b!609264 (= res!391945 (= lt!278561 (select (arr!17898 a!2986) j!136)))))

(assert (=> b!609264 (= lt!278561 (select (store (arr!17898 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609265 () Bool)

(assert (=> b!609265 (= e!348942 (= lt!278558 lt!278559))))

(declare-fun b!609266 () Bool)

(assert (=> b!609266 (= e!348939 true)))

(declare-fun lt!278555 () Bool)

(assert (=> b!609266 (= lt!278555 (contains!3038 Nil!11989 k!1786))))

(declare-fun b!609267 () Bool)

(declare-fun Unit!19502 () Unit!19498)

(assert (=> b!609267 (= e!348934 Unit!19502)))

(declare-fun b!609268 () Bool)

(assert (=> b!609268 (= e!348943 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) index!984))))

(declare-fun b!609269 () Bool)

(declare-fun res!391948 () Bool)

(assert (=> b!609269 (=> (not res!391948) (not e!348937))))

(assert (=> b!609269 (= res!391948 (validKeyInArray!0 (select (arr!17898 a!2986) j!136)))))

(declare-fun b!609270 () Bool)

(declare-fun Unit!19503 () Unit!19498)

(assert (=> b!609270 (= e!348935 Unit!19503)))

(declare-fun lt!278557 () Unit!19498)

(assert (=> b!609270 (= lt!278557 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278564 (select (arr!17898 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609270 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278551 () Unit!19498)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37302 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11992) Unit!19498)

(assert (=> b!609270 (= lt!278551 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11989))))

(assert (=> b!609270 (arrayNoDuplicates!0 lt!278564 #b00000000000000000000000000000000 Nil!11989)))

(declare-fun lt!278552 () Unit!19498)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37302 (_ BitVec 32) (_ BitVec 32)) Unit!19498)

(assert (=> b!609270 (= lt!278552 (lemmaNoDuplicateFromThenFromBigger!0 lt!278564 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609270 (arrayNoDuplicates!0 lt!278564 j!136 Nil!11989)))

(declare-fun lt!278563 () Unit!19498)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37302 (_ BitVec 64) (_ BitVec 32) List!11992) Unit!19498)

(assert (=> b!609270 (= lt!278563 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278564 (select (arr!17898 a!2986) j!136) j!136 Nil!11989))))

(assert (=> b!609270 false))

(declare-fun b!609271 () Bool)

(assert (=> b!609271 (= e!348946 e!348941)))

(declare-fun res!391949 () Bool)

(assert (=> b!609271 (=> res!391949 e!348941)))

(assert (=> b!609271 (= res!391949 (or (not (= (select (arr!17898 a!2986) j!136) lt!278556)) (not (= (select (arr!17898 a!2986) j!136) lt!278561)) (bvsge j!136 index!984)))))

(declare-fun b!609272 () Bool)

(declare-fun res!391961 () Bool)

(assert (=> b!609272 (=> (not res!391961) (not e!348937))))

(assert (=> b!609272 (= res!391961 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609273 () Bool)

(assert (=> b!609273 (= e!348932 (arrayContainsKey!0 lt!278564 (select (arr!17898 a!2986) j!136) index!984))))

(declare-fun b!609274 () Bool)

(declare-fun res!391963 () Bool)

(assert (=> b!609274 (=> (not res!391963) (not e!348937))))

(assert (=> b!609274 (= res!391963 (and (= (size!18262 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18262 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18262 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609275 () Bool)

(declare-fun res!391966 () Bool)

(assert (=> b!609275 (=> (not res!391966) (not e!348931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37302 (_ BitVec 32)) Bool)

(assert (=> b!609275 (= res!391966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609258 () Bool)

(assert (=> b!609258 (= e!348936 e!348944)))

(declare-fun res!391967 () Bool)

(assert (=> b!609258 (=> res!391967 e!348944)))

(assert (=> b!609258 (= res!391967 (bvsge index!984 j!136))))

(declare-fun lt!278554 () Unit!19498)

(assert (=> b!609258 (= lt!278554 e!348935)))

(declare-fun c!69019 () Bool)

(assert (=> b!609258 (= c!69019 (bvslt j!136 index!984))))

(declare-fun res!391958 () Bool)

(assert (=> start!55608 (=> (not res!391958) (not e!348937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55608 (= res!391958 (validMask!0 mask!3053))))

(assert (=> start!55608 e!348937))

(assert (=> start!55608 true))

(declare-fun array_inv!13672 (array!37302) Bool)

(assert (=> start!55608 (array_inv!13672 a!2986)))

(assert (= (and start!55608 res!391958) b!609274))

(assert (= (and b!609274 res!391963) b!609269))

(assert (= (and b!609269 res!391948) b!609250))

(assert (= (and b!609250 res!391951) b!609272))

(assert (= (and b!609272 res!391961) b!609255))

(assert (= (and b!609255 res!391956) b!609275))

(assert (= (and b!609275 res!391966) b!609253))

(assert (= (and b!609253 res!391964) b!609261))

(assert (= (and b!609261 res!391962) b!609252))

(assert (= (and b!609252 res!391957) b!609257))

(assert (= (and b!609257 res!391960) b!609254))

(assert (= (and b!609254 res!391953) b!609265))

(assert (= (and b!609254 c!69020) b!609263))

(assert (= (and b!609254 (not c!69020)) b!609267))

(assert (= (and b!609254 (not res!391952)) b!609264))

(assert (= (and b!609264 res!391945) b!609271))

(assert (= (and b!609271 (not res!391949)) b!609262))

(assert (= (and b!609262 res!391965) b!609273))

(assert (= (and b!609264 (not res!391954)) b!609258))

(assert (= (and b!609258 c!69019) b!609270))

(assert (= (and b!609258 (not c!69019)) b!609260))

(assert (= (and b!609258 (not res!391967)) b!609259))

(assert (= (and b!609259 res!391950) b!609268))

(assert (= (and b!609259 (not res!391946)) b!609249))

(assert (= (and b!609249 (not res!391955)) b!609256))

(assert (= (and b!609256 (not res!391947)) b!609251))

(assert (= (and b!609251 (not res!391959)) b!609266))

(declare-fun m!585813 () Bool)

(assert (=> b!609249 m!585813))

(declare-fun m!585815 () Bool)

(assert (=> b!609254 m!585815))

(declare-fun m!585817 () Bool)

(assert (=> b!609254 m!585817))

(declare-fun m!585819 () Bool)

(assert (=> b!609254 m!585819))

(declare-fun m!585821 () Bool)

(assert (=> b!609254 m!585821))

(declare-fun m!585823 () Bool)

(assert (=> b!609254 m!585823))

(declare-fun m!585825 () Bool)

(assert (=> b!609254 m!585825))

(declare-fun m!585827 () Bool)

(assert (=> b!609254 m!585827))

(assert (=> b!609254 m!585827))

(declare-fun m!585829 () Bool)

(assert (=> b!609254 m!585829))

(declare-fun m!585831 () Bool)

(assert (=> b!609261 m!585831))

(assert (=> b!609252 m!585819))

(declare-fun m!585833 () Bool)

(assert (=> b!609252 m!585833))

(declare-fun m!585835 () Bool)

(assert (=> b!609255 m!585835))

(assert (=> b!609270 m!585827))

(declare-fun m!585837 () Bool)

(assert (=> b!609270 m!585837))

(assert (=> b!609270 m!585827))

(declare-fun m!585839 () Bool)

(assert (=> b!609270 m!585839))

(declare-fun m!585841 () Bool)

(assert (=> b!609270 m!585841))

(assert (=> b!609270 m!585827))

(declare-fun m!585843 () Bool)

(assert (=> b!609270 m!585843))

(assert (=> b!609270 m!585827))

(declare-fun m!585845 () Bool)

(assert (=> b!609270 m!585845))

(declare-fun m!585847 () Bool)

(assert (=> b!609270 m!585847))

(declare-fun m!585849 () Bool)

(assert (=> b!609270 m!585849))

(declare-fun m!585851 () Bool)

(assert (=> b!609272 m!585851))

(declare-fun m!585853 () Bool)

(assert (=> b!609251 m!585853))

(declare-fun m!585855 () Bool)

(assert (=> b!609253 m!585855))

(assert (=> b!609273 m!585827))

(assert (=> b!609273 m!585827))

(declare-fun m!585857 () Bool)

(assert (=> b!609273 m!585857))

(declare-fun m!585859 () Bool)

(assert (=> b!609275 m!585859))

(assert (=> b!609259 m!585827))

(assert (=> b!609259 m!585827))

(declare-fun m!585861 () Bool)

(assert (=> b!609259 m!585861))

(assert (=> b!609259 m!585827))

(declare-fun m!585863 () Bool)

(assert (=> b!609259 m!585863))

(assert (=> b!609259 m!585827))

(declare-fun m!585865 () Bool)

(assert (=> b!609259 m!585865))

(declare-fun m!585867 () Bool)

(assert (=> b!609257 m!585867))

(assert (=> b!609257 m!585827))

(assert (=> b!609257 m!585827))

(declare-fun m!585869 () Bool)

(assert (=> b!609257 m!585869))

(declare-fun m!585871 () Bool)

(assert (=> b!609266 m!585871))

(assert (=> b!609268 m!585827))

(assert (=> b!609268 m!585827))

(assert (=> b!609268 m!585857))

(declare-fun m!585873 () Bool)

(assert (=> b!609250 m!585873))

(declare-fun m!585875 () Bool)

(assert (=> b!609256 m!585875))

(declare-fun m!585877 () Bool)

(assert (=> start!55608 m!585877))

(declare-fun m!585879 () Bool)

(assert (=> start!55608 m!585879))

(assert (=> b!609271 m!585827))

(assert (=> b!609264 m!585827))

(assert (=> b!609264 m!585819))

(declare-fun m!585881 () Bool)

(assert (=> b!609264 m!585881))

(assert (=> b!609269 m!585827))

(assert (=> b!609269 m!585827))

(declare-fun m!585883 () Bool)

(assert (=> b!609269 m!585883))

(assert (=> b!609262 m!585827))

(assert (=> b!609262 m!585827))

(assert (=> b!609262 m!585865))

(push 1)

