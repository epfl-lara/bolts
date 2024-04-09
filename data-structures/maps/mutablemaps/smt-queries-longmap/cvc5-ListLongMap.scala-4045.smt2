; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55152 () Bool)

(assert start!55152)

(declare-fun b!603934 () Bool)

(declare-fun e!345550 () Bool)

(declare-fun e!345554 () Bool)

(assert (=> b!603934 (= e!345550 e!345554)))

(declare-fun res!388083 () Bool)

(assert (=> b!603934 (=> res!388083 e!345554)))

(declare-fun lt!275424 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275423 () (_ BitVec 64))

(declare-datatypes ((array!37188 0))(
  ( (array!37189 (arr!17847 (Array (_ BitVec 32) (_ BitVec 64))) (size!18211 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37188)

(assert (=> b!603934 (= res!388083 (or (not (= (select (arr!17847 a!2986) j!136) lt!275423)) (not (= (select (arr!17847 a!2986) j!136) lt!275424))))))

(declare-fun e!345547 () Bool)

(assert (=> b!603934 e!345547))

(declare-fun res!388096 () Bool)

(assert (=> b!603934 (=> (not res!388096) (not e!345547))))

(assert (=> b!603934 (= res!388096 (= lt!275424 (select (arr!17847 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!603934 (= lt!275424 (select (store (arr!17847 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603935 () Bool)

(declare-fun e!345551 () Bool)

(assert (=> b!603935 (= e!345551 (not e!345550))))

(declare-fun res!388100 () Bool)

(assert (=> b!603935 (=> res!388100 e!345550)))

(declare-datatypes ((SeekEntryResult!6294 0))(
  ( (MissingZero!6294 (index!27438 (_ BitVec 32))) (Found!6294 (index!27439 (_ BitVec 32))) (Intermediate!6294 (undefined!7106 Bool) (index!27440 (_ BitVec 32)) (x!56264 (_ BitVec 32))) (Undefined!6294) (MissingVacant!6294 (index!27441 (_ BitVec 32))) )
))
(declare-fun lt!275422 () SeekEntryResult!6294)

(assert (=> b!603935 (= res!388100 (not (= lt!275422 (Found!6294 index!984))))))

(declare-datatypes ((Unit!19192 0))(
  ( (Unit!19193) )
))
(declare-fun lt!275409 () Unit!19192)

(declare-fun e!345559 () Unit!19192)

(assert (=> b!603935 (= lt!275409 e!345559)))

(declare-fun c!68294 () Bool)

(assert (=> b!603935 (= c!68294 (= lt!275422 Undefined!6294))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!275420 () array!37188)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37188 (_ BitVec 32)) SeekEntryResult!6294)

(assert (=> b!603935 (= lt!275422 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275423 lt!275420 mask!3053))))

(declare-fun e!345557 () Bool)

(assert (=> b!603935 e!345557))

(declare-fun res!388093 () Bool)

(assert (=> b!603935 (=> (not res!388093) (not e!345557))))

(declare-fun lt!275421 () SeekEntryResult!6294)

(declare-fun lt!275411 () (_ BitVec 32))

(assert (=> b!603935 (= res!388093 (= lt!275421 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275411 vacantSpotIndex!68 lt!275423 lt!275420 mask!3053)))))

(assert (=> b!603935 (= lt!275421 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275411 vacantSpotIndex!68 (select (arr!17847 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603935 (= lt!275423 (select (store (arr!17847 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275414 () Unit!19192)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37188 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19192)

(assert (=> b!603935 (= lt!275414 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275411 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603935 (= lt!275411 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603936 () Bool)

(declare-fun res!388085 () Bool)

(declare-fun e!345545 () Bool)

(assert (=> b!603936 (=> (not res!388085) (not e!345545))))

(declare-fun arrayContainsKey!0 (array!37188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603936 (= res!388085 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603937 () Bool)

(declare-fun res!388089 () Bool)

(declare-fun e!345553 () Bool)

(assert (=> b!603937 (=> (not res!388089) (not e!345553))))

(assert (=> b!603937 (= res!388089 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17847 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603938 () Bool)

(declare-fun res!388098 () Bool)

(assert (=> b!603938 (=> (not res!388098) (not e!345553))))

(declare-datatypes ((List!11941 0))(
  ( (Nil!11938) (Cons!11937 (h!12982 (_ BitVec 64)) (t!18177 List!11941)) )
))
(declare-fun arrayNoDuplicates!0 (array!37188 (_ BitVec 32) List!11941) Bool)

(assert (=> b!603938 (= res!388098 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11938))))

(declare-fun b!603939 () Bool)

(declare-fun e!345552 () Unit!19192)

(declare-fun Unit!19194 () Unit!19192)

(assert (=> b!603939 (= e!345552 Unit!19194)))

(declare-fun lt!275410 () Unit!19192)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37188 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19192)

(assert (=> b!603939 (= lt!275410 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275420 (select (arr!17847 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603939 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275413 () Unit!19192)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37188 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11941) Unit!19192)

(assert (=> b!603939 (= lt!275413 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11938))))

(assert (=> b!603939 (arrayNoDuplicates!0 lt!275420 #b00000000000000000000000000000000 Nil!11938)))

(declare-fun lt!275412 () Unit!19192)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37188 (_ BitVec 32) (_ BitVec 32)) Unit!19192)

(assert (=> b!603939 (= lt!275412 (lemmaNoDuplicateFromThenFromBigger!0 lt!275420 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603939 (arrayNoDuplicates!0 lt!275420 j!136 Nil!11938)))

(declare-fun lt!275418 () Unit!19192)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37188 (_ BitVec 64) (_ BitVec 32) List!11941) Unit!19192)

(assert (=> b!603939 (= lt!275418 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275420 (select (arr!17847 a!2986) j!136) j!136 Nil!11938))))

(assert (=> b!603939 false))

(declare-fun b!603940 () Bool)

(declare-fun e!345546 () Bool)

(assert (=> b!603940 (= e!345546 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(assert (=> b!603940 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275415 () Unit!19192)

(assert (=> b!603940 (= lt!275415 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275420 (select (arr!17847 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!345549 () Bool)

(assert (=> b!603940 e!345549))

(declare-fun res!388084 () Bool)

(assert (=> b!603940 (=> (not res!388084) (not e!345549))))

(assert (=> b!603940 (= res!388084 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) j!136))))

(declare-fun b!603941 () Bool)

(declare-fun e!345556 () Bool)

(assert (=> b!603941 (= e!345547 e!345556)))

(declare-fun res!388097 () Bool)

(assert (=> b!603941 (=> res!388097 e!345556)))

(assert (=> b!603941 (= res!388097 (or (not (= (select (arr!17847 a!2986) j!136) lt!275423)) (not (= (select (arr!17847 a!2986) j!136) lt!275424)) (bvsge j!136 index!984)))))

(declare-fun b!603942 () Bool)

(declare-fun e!345555 () Bool)

(assert (=> b!603942 (= e!345555 e!345551)))

(declare-fun res!388099 () Bool)

(assert (=> b!603942 (=> (not res!388099) (not e!345551))))

(declare-fun lt!275417 () SeekEntryResult!6294)

(assert (=> b!603942 (= res!388099 (and (= lt!275417 (Found!6294 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17847 a!2986) index!984) (select (arr!17847 a!2986) j!136))) (not (= (select (arr!17847 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!603942 (= lt!275417 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17847 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603943 () Bool)

(declare-fun Unit!19195 () Unit!19192)

(assert (=> b!603943 (= e!345559 Unit!19195)))

(assert (=> b!603943 false))

(declare-fun b!603944 () Bool)

(assert (=> b!603944 (= e!345549 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) index!984))))

(declare-fun b!603945 () Bool)

(declare-fun res!388086 () Bool)

(assert (=> b!603945 (=> (not res!388086) (not e!345545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603945 (= res!388086 (validKeyInArray!0 k!1786))))

(declare-fun b!603946 () Bool)

(declare-fun res!388092 () Bool)

(assert (=> b!603946 (=> (not res!388092) (not e!345545))))

(assert (=> b!603946 (= res!388092 (validKeyInArray!0 (select (arr!17847 a!2986) j!136)))))

(declare-fun b!603948 () Bool)

(assert (=> b!603948 (= e!345553 e!345555)))

(declare-fun res!388087 () Bool)

(assert (=> b!603948 (=> (not res!388087) (not e!345555))))

(assert (=> b!603948 (= res!388087 (= (select (store (arr!17847 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603948 (= lt!275420 (array!37189 (store (arr!17847 a!2986) i!1108 k!1786) (size!18211 a!2986)))))

(declare-fun b!603949 () Bool)

(assert (=> b!603949 (= e!345557 (= lt!275417 lt!275421))))

(declare-fun b!603950 () Bool)

(assert (=> b!603950 (= e!345545 e!345553)))

(declare-fun res!388091 () Bool)

(assert (=> b!603950 (=> (not res!388091) (not e!345553))))

(declare-fun lt!275416 () SeekEntryResult!6294)

(assert (=> b!603950 (= res!388091 (or (= lt!275416 (MissingZero!6294 i!1108)) (= lt!275416 (MissingVacant!6294 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37188 (_ BitVec 32)) SeekEntryResult!6294)

(assert (=> b!603950 (= lt!275416 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603951 () Bool)

(declare-fun Unit!19196 () Unit!19192)

(assert (=> b!603951 (= e!345552 Unit!19196)))

(declare-fun b!603952 () Bool)

(declare-fun res!388095 () Bool)

(assert (=> b!603952 (=> (not res!388095) (not e!345545))))

(assert (=> b!603952 (= res!388095 (and (= (size!18211 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18211 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18211 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!345548 () Bool)

(declare-fun b!603953 () Bool)

(assert (=> b!603953 (= e!345548 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) index!984))))

(declare-fun b!603954 () Bool)

(assert (=> b!603954 (= e!345554 e!345546)))

(declare-fun res!388088 () Bool)

(assert (=> b!603954 (=> res!388088 e!345546)))

(assert (=> b!603954 (= res!388088 (bvsge index!984 j!136))))

(declare-fun lt!275419 () Unit!19192)

(assert (=> b!603954 (= lt!275419 e!345552)))

(declare-fun c!68293 () Bool)

(assert (=> b!603954 (= c!68293 (bvslt j!136 index!984))))

(declare-fun res!388090 () Bool)

(assert (=> start!55152 (=> (not res!388090) (not e!345545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55152 (= res!388090 (validMask!0 mask!3053))))

(assert (=> start!55152 e!345545))

(assert (=> start!55152 true))

(declare-fun array_inv!13621 (array!37188) Bool)

(assert (=> start!55152 (array_inv!13621 a!2986)))

(declare-fun b!603947 () Bool)

(assert (=> b!603947 (= e!345556 e!345548)))

(declare-fun res!388082 () Bool)

(assert (=> b!603947 (=> (not res!388082) (not e!345548))))

(assert (=> b!603947 (= res!388082 (arrayContainsKey!0 lt!275420 (select (arr!17847 a!2986) j!136) j!136))))

(declare-fun b!603955 () Bool)

(declare-fun Unit!19197 () Unit!19192)

(assert (=> b!603955 (= e!345559 Unit!19197)))

(declare-fun b!603956 () Bool)

(declare-fun res!388094 () Bool)

(assert (=> b!603956 (=> (not res!388094) (not e!345553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37188 (_ BitVec 32)) Bool)

(assert (=> b!603956 (= res!388094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!55152 res!388090) b!603952))

(assert (= (and b!603952 res!388095) b!603946))

(assert (= (and b!603946 res!388092) b!603945))

(assert (= (and b!603945 res!388086) b!603936))

(assert (= (and b!603936 res!388085) b!603950))

(assert (= (and b!603950 res!388091) b!603956))

(assert (= (and b!603956 res!388094) b!603938))

(assert (= (and b!603938 res!388098) b!603937))

(assert (= (and b!603937 res!388089) b!603948))

(assert (= (and b!603948 res!388087) b!603942))

(assert (= (and b!603942 res!388099) b!603935))

(assert (= (and b!603935 res!388093) b!603949))

(assert (= (and b!603935 c!68294) b!603943))

(assert (= (and b!603935 (not c!68294)) b!603955))

(assert (= (and b!603935 (not res!388100)) b!603934))

(assert (= (and b!603934 res!388096) b!603941))

(assert (= (and b!603941 (not res!388097)) b!603947))

(assert (= (and b!603947 res!388082) b!603953))

(assert (= (and b!603934 (not res!388083)) b!603954))

(assert (= (and b!603954 c!68293) b!603939))

(assert (= (and b!603954 (not c!68293)) b!603951))

(assert (= (and b!603954 (not res!388088)) b!603940))

(assert (= (and b!603940 res!388084) b!603944))

(declare-fun m!580911 () Bool)

(assert (=> b!603946 m!580911))

(assert (=> b!603946 m!580911))

(declare-fun m!580913 () Bool)

(assert (=> b!603946 m!580913))

(assert (=> b!603947 m!580911))

(assert (=> b!603947 m!580911))

(declare-fun m!580915 () Bool)

(assert (=> b!603947 m!580915))

(declare-fun m!580917 () Bool)

(assert (=> b!603950 m!580917))

(declare-fun m!580919 () Bool)

(assert (=> b!603945 m!580919))

(declare-fun m!580921 () Bool)

(assert (=> b!603936 m!580921))

(assert (=> b!603944 m!580911))

(assert (=> b!603944 m!580911))

(declare-fun m!580923 () Bool)

(assert (=> b!603944 m!580923))

(assert (=> b!603941 m!580911))

(assert (=> b!603940 m!580911))

(assert (=> b!603940 m!580911))

(declare-fun m!580925 () Bool)

(assert (=> b!603940 m!580925))

(assert (=> b!603940 m!580911))

(declare-fun m!580927 () Bool)

(assert (=> b!603940 m!580927))

(assert (=> b!603940 m!580911))

(assert (=> b!603940 m!580915))

(assert (=> b!603934 m!580911))

(declare-fun m!580929 () Bool)

(assert (=> b!603934 m!580929))

(declare-fun m!580931 () Bool)

(assert (=> b!603934 m!580931))

(declare-fun m!580933 () Bool)

(assert (=> b!603942 m!580933))

(assert (=> b!603942 m!580911))

(assert (=> b!603942 m!580911))

(declare-fun m!580935 () Bool)

(assert (=> b!603942 m!580935))

(declare-fun m!580937 () Bool)

(assert (=> start!55152 m!580937))

(declare-fun m!580939 () Bool)

(assert (=> start!55152 m!580939))

(assert (=> b!603948 m!580929))

(declare-fun m!580941 () Bool)

(assert (=> b!603948 m!580941))

(declare-fun m!580943 () Bool)

(assert (=> b!603937 m!580943))

(declare-fun m!580945 () Bool)

(assert (=> b!603956 m!580945))

(declare-fun m!580947 () Bool)

(assert (=> b!603938 m!580947))

(assert (=> b!603939 m!580911))

(declare-fun m!580949 () Bool)

(assert (=> b!603939 m!580949))

(assert (=> b!603939 m!580911))

(assert (=> b!603939 m!580911))

(declare-fun m!580951 () Bool)

(assert (=> b!603939 m!580951))

(assert (=> b!603939 m!580911))

(declare-fun m!580953 () Bool)

(assert (=> b!603939 m!580953))

(declare-fun m!580955 () Bool)

(assert (=> b!603939 m!580955))

(declare-fun m!580957 () Bool)

(assert (=> b!603939 m!580957))

(declare-fun m!580959 () Bool)

(assert (=> b!603939 m!580959))

(declare-fun m!580961 () Bool)

(assert (=> b!603939 m!580961))

(assert (=> b!603953 m!580911))

(assert (=> b!603953 m!580911))

(assert (=> b!603953 m!580923))

(declare-fun m!580963 () Bool)

(assert (=> b!603935 m!580963))

(declare-fun m!580965 () Bool)

(assert (=> b!603935 m!580965))

(assert (=> b!603935 m!580911))

(declare-fun m!580967 () Bool)

(assert (=> b!603935 m!580967))

(assert (=> b!603935 m!580929))

(declare-fun m!580969 () Bool)

(assert (=> b!603935 m!580969))

(declare-fun m!580971 () Bool)

(assert (=> b!603935 m!580971))

(assert (=> b!603935 m!580911))

(declare-fun m!580973 () Bool)

(assert (=> b!603935 m!580973))

(push 1)

