; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55258 () Bool)

(assert start!55258)

(declare-fun b!605027 () Bool)

(declare-fun res!388837 () Bool)

(declare-fun e!346269 () Bool)

(assert (=> b!605027 (=> (not res!388837) (not e!346269))))

(declare-datatypes ((array!37213 0))(
  ( (array!37214 (arr!17858 (Array (_ BitVec 32) (_ BitVec 64))) (size!18222 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37213)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605027 (= res!388837 (validKeyInArray!0 (select (arr!17858 a!2986) j!136)))))

(declare-fun b!605028 () Bool)

(declare-datatypes ((Unit!19258 0))(
  ( (Unit!19259) )
))
(declare-fun e!346272 () Unit!19258)

(declare-fun Unit!19260 () Unit!19258)

(assert (=> b!605028 (= e!346272 Unit!19260)))

(declare-fun lt!276096 () Unit!19258)

(declare-fun lt!276084 () array!37213)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37213 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19258)

(assert (=> b!605028 (= lt!276096 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276084 (select (arr!17858 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605028 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!276093 () Unit!19258)

(declare-datatypes ((List!11952 0))(
  ( (Nil!11949) (Cons!11948 (h!12993 (_ BitVec 64)) (t!18188 List!11952)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37213 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11952) Unit!19258)

(assert (=> b!605028 (= lt!276093 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11949))))

(declare-fun arrayNoDuplicates!0 (array!37213 (_ BitVec 32) List!11952) Bool)

(assert (=> b!605028 (arrayNoDuplicates!0 lt!276084 #b00000000000000000000000000000000 Nil!11949)))

(declare-fun lt!276099 () Unit!19258)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37213 (_ BitVec 32) (_ BitVec 32)) Unit!19258)

(assert (=> b!605028 (= lt!276099 (lemmaNoDuplicateFromThenFromBigger!0 lt!276084 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605028 (arrayNoDuplicates!0 lt!276084 j!136 Nil!11949)))

(declare-fun lt!276098 () Unit!19258)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37213 (_ BitVec 64) (_ BitVec 32) List!11952) Unit!19258)

(assert (=> b!605028 (= lt!276098 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276084 (select (arr!17858 a!2986) j!136) j!136 Nil!11949))))

(assert (=> b!605028 false))

(declare-fun b!605029 () Bool)

(declare-fun e!346277 () Bool)

(assert (=> b!605029 (= e!346269 e!346277)))

(declare-fun res!388847 () Bool)

(assert (=> b!605029 (=> (not res!388847) (not e!346277))))

(declare-datatypes ((SeekEntryResult!6305 0))(
  ( (MissingZero!6305 (index!27485 (_ BitVec 32))) (Found!6305 (index!27486 (_ BitVec 32))) (Intermediate!6305 (undefined!7117 Bool) (index!27487 (_ BitVec 32)) (x!56308 (_ BitVec 32))) (Undefined!6305) (MissingVacant!6305 (index!27488 (_ BitVec 32))) )
))
(declare-fun lt!276088 () SeekEntryResult!6305)

(assert (=> b!605029 (= res!388847 (or (= lt!276088 (MissingZero!6305 i!1108)) (= lt!276088 (MissingVacant!6305 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37213 (_ BitVec 32)) SeekEntryResult!6305)

(assert (=> b!605029 (= lt!276088 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!605030 () Bool)

(declare-fun e!346270 () Bool)

(declare-fun e!346279 () Bool)

(assert (=> b!605030 (= e!346270 e!346279)))

(declare-fun res!388840 () Bool)

(assert (=> b!605030 (=> (not res!388840) (not e!346279))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!276092 () SeekEntryResult!6305)

(assert (=> b!605030 (= res!388840 (and (= lt!276092 (Found!6305 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17858 a!2986) index!984) (select (arr!17858 a!2986) j!136))) (not (= (select (arr!17858 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37213 (_ BitVec 32)) SeekEntryResult!6305)

(assert (=> b!605030 (= lt!276092 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17858 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605031 () Bool)

(declare-fun e!346276 () Bool)

(assert (=> b!605031 (= e!346276 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) index!984))))

(declare-fun b!605032 () Bool)

(declare-fun res!388844 () Bool)

(assert (=> b!605032 (=> (not res!388844) (not e!346269))))

(assert (=> b!605032 (= res!388844 (validKeyInArray!0 k!1786))))

(declare-fun b!605033 () Bool)

(declare-fun e!346273 () Bool)

(declare-fun e!346282 () Bool)

(assert (=> b!605033 (= e!346273 e!346282)))

(declare-fun res!388849 () Bool)

(assert (=> b!605033 (=> res!388849 e!346282)))

(assert (=> b!605033 (= res!388849 (bvsge index!984 j!136))))

(declare-fun lt!276085 () Unit!19258)

(assert (=> b!605033 (= lt!276085 e!346272)))

(declare-fun c!68464 () Bool)

(assert (=> b!605033 (= c!68464 (bvslt j!136 index!984))))

(declare-fun b!605034 () Bool)

(declare-fun e!346275 () Bool)

(declare-fun lt!276097 () SeekEntryResult!6305)

(assert (=> b!605034 (= e!346275 (= lt!276092 lt!276097))))

(declare-fun b!605035 () Bool)

(declare-fun res!388832 () Bool)

(assert (=> b!605035 (=> (not res!388832) (not e!346277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37213 (_ BitVec 32)) Bool)

(assert (=> b!605035 (= res!388832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605036 () Bool)

(declare-fun e!346281 () Bool)

(assert (=> b!605036 (= e!346281 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) index!984))))

(declare-fun b!605037 () Bool)

(declare-fun e!346271 () Bool)

(assert (=> b!605037 (= e!346279 (not e!346271))))

(declare-fun res!388838 () Bool)

(assert (=> b!605037 (=> res!388838 e!346271)))

(declare-fun lt!276087 () SeekEntryResult!6305)

(assert (=> b!605037 (= res!388838 (not (= lt!276087 (Found!6305 index!984))))))

(declare-fun lt!276089 () Unit!19258)

(declare-fun e!346274 () Unit!19258)

(assert (=> b!605037 (= lt!276089 e!346274)))

(declare-fun c!68465 () Bool)

(assert (=> b!605037 (= c!68465 (= lt!276087 Undefined!6305))))

(declare-fun lt!276095 () (_ BitVec 64))

(assert (=> b!605037 (= lt!276087 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276095 lt!276084 mask!3053))))

(assert (=> b!605037 e!346275))

(declare-fun res!388835 () Bool)

(assert (=> b!605037 (=> (not res!388835) (not e!346275))))

(declare-fun lt!276091 () (_ BitVec 32))

(assert (=> b!605037 (= res!388835 (= lt!276097 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276091 vacantSpotIndex!68 lt!276095 lt!276084 mask!3053)))))

(assert (=> b!605037 (= lt!276097 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276091 vacantSpotIndex!68 (select (arr!17858 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605037 (= lt!276095 (select (store (arr!17858 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276090 () Unit!19258)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37213 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19258)

(assert (=> b!605037 (= lt!276090 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276091 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605037 (= lt!276091 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605038 () Bool)

(declare-fun res!388846 () Bool)

(assert (=> b!605038 (=> (not res!388846) (not e!346269))))

(assert (=> b!605038 (= res!388846 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!605039 () Bool)

(assert (=> b!605039 (= e!346271 e!346273)))

(declare-fun res!388845 () Bool)

(assert (=> b!605039 (=> res!388845 e!346273)))

(declare-fun lt!276086 () (_ BitVec 64))

(assert (=> b!605039 (= res!388845 (or (not (= (select (arr!17858 a!2986) j!136) lt!276095)) (not (= (select (arr!17858 a!2986) j!136) lt!276086))))))

(declare-fun e!346268 () Bool)

(assert (=> b!605039 e!346268))

(declare-fun res!388839 () Bool)

(assert (=> b!605039 (=> (not res!388839) (not e!346268))))

(assert (=> b!605039 (= res!388839 (= lt!276086 (select (arr!17858 a!2986) j!136)))))

(assert (=> b!605039 (= lt!276086 (select (store (arr!17858 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!605040 () Bool)

(declare-fun e!346280 () Bool)

(assert (=> b!605040 (= e!346280 e!346281)))

(declare-fun res!388833 () Bool)

(assert (=> b!605040 (=> (not res!388833) (not e!346281))))

(assert (=> b!605040 (= res!388833 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) j!136))))

(declare-fun b!605041 () Bool)

(declare-fun Unit!19261 () Unit!19258)

(assert (=> b!605041 (= e!346274 Unit!19261)))

(assert (=> b!605041 false))

(declare-fun b!605026 () Bool)

(assert (=> b!605026 (= e!346268 e!346280)))

(declare-fun res!388836 () Bool)

(assert (=> b!605026 (=> res!388836 e!346280)))

(assert (=> b!605026 (= res!388836 (or (not (= (select (arr!17858 a!2986) j!136) lt!276095)) (not (= (select (arr!17858 a!2986) j!136) lt!276086)) (bvsge j!136 index!984)))))

(declare-fun res!388850 () Bool)

(assert (=> start!55258 (=> (not res!388850) (not e!346269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55258 (= res!388850 (validMask!0 mask!3053))))

(assert (=> start!55258 e!346269))

(assert (=> start!55258 true))

(declare-fun array_inv!13632 (array!37213) Bool)

(assert (=> start!55258 (array_inv!13632 a!2986)))

(declare-fun b!605042 () Bool)

(declare-fun res!388834 () Bool)

(assert (=> b!605042 (=> (not res!388834) (not e!346269))))

(assert (=> b!605042 (= res!388834 (and (= (size!18222 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18222 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18222 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605043 () Bool)

(declare-fun res!388848 () Bool)

(assert (=> b!605043 (=> (not res!388848) (not e!346277))))

(assert (=> b!605043 (= res!388848 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11949))))

(declare-fun b!605044 () Bool)

(declare-fun Unit!19262 () Unit!19258)

(assert (=> b!605044 (= e!346272 Unit!19262)))

(declare-fun b!605045 () Bool)

(declare-fun Unit!19263 () Unit!19258)

(assert (=> b!605045 (= e!346274 Unit!19263)))

(declare-fun b!605046 () Bool)

(assert (=> b!605046 (= e!346277 e!346270)))

(declare-fun res!388843 () Bool)

(assert (=> b!605046 (=> (not res!388843) (not e!346270))))

(assert (=> b!605046 (= res!388843 (= (select (store (arr!17858 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605046 (= lt!276084 (array!37214 (store (arr!17858 a!2986) i!1108 k!1786) (size!18222 a!2986)))))

(declare-fun b!605047 () Bool)

(declare-fun res!388841 () Bool)

(assert (=> b!605047 (=> (not res!388841) (not e!346277))))

(assert (=> b!605047 (= res!388841 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17858 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605048 () Bool)

(assert (=> b!605048 (= e!346282 (bvsle #b00000000000000000000000000000000 (size!18222 a!2986)))))

(assert (=> b!605048 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276094 () Unit!19258)

(assert (=> b!605048 (= lt!276094 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276084 (select (arr!17858 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!605048 e!346276))

(declare-fun res!388842 () Bool)

(assert (=> b!605048 (=> (not res!388842) (not e!346276))))

(assert (=> b!605048 (= res!388842 (arrayContainsKey!0 lt!276084 (select (arr!17858 a!2986) j!136) j!136))))

(assert (= (and start!55258 res!388850) b!605042))

(assert (= (and b!605042 res!388834) b!605027))

(assert (= (and b!605027 res!388837) b!605032))

(assert (= (and b!605032 res!388844) b!605038))

(assert (= (and b!605038 res!388846) b!605029))

(assert (= (and b!605029 res!388847) b!605035))

(assert (= (and b!605035 res!388832) b!605043))

(assert (= (and b!605043 res!388848) b!605047))

(assert (= (and b!605047 res!388841) b!605046))

(assert (= (and b!605046 res!388843) b!605030))

(assert (= (and b!605030 res!388840) b!605037))

(assert (= (and b!605037 res!388835) b!605034))

(assert (= (and b!605037 c!68465) b!605041))

(assert (= (and b!605037 (not c!68465)) b!605045))

(assert (= (and b!605037 (not res!388838)) b!605039))

(assert (= (and b!605039 res!388839) b!605026))

(assert (= (and b!605026 (not res!388836)) b!605040))

(assert (= (and b!605040 res!388833) b!605036))

(assert (= (and b!605039 (not res!388845)) b!605033))

(assert (= (and b!605033 c!68464) b!605028))

(assert (= (and b!605033 (not c!68464)) b!605044))

(assert (= (and b!605033 (not res!388849)) b!605048))

(assert (= (and b!605048 res!388842) b!605031))

(declare-fun m!581945 () Bool)

(assert (=> b!605030 m!581945))

(declare-fun m!581947 () Bool)

(assert (=> b!605030 m!581947))

(assert (=> b!605030 m!581947))

(declare-fun m!581949 () Bool)

(assert (=> b!605030 m!581949))

(declare-fun m!581951 () Bool)

(assert (=> b!605047 m!581951))

(assert (=> b!605027 m!581947))

(assert (=> b!605027 m!581947))

(declare-fun m!581953 () Bool)

(assert (=> b!605027 m!581953))

(declare-fun m!581955 () Bool)

(assert (=> b!605029 m!581955))

(assert (=> b!605031 m!581947))

(assert (=> b!605031 m!581947))

(declare-fun m!581957 () Bool)

(assert (=> b!605031 m!581957))

(declare-fun m!581959 () Bool)

(assert (=> b!605035 m!581959))

(assert (=> b!605039 m!581947))

(declare-fun m!581961 () Bool)

(assert (=> b!605039 m!581961))

(declare-fun m!581963 () Bool)

(assert (=> b!605039 m!581963))

(declare-fun m!581965 () Bool)

(assert (=> b!605032 m!581965))

(declare-fun m!581967 () Bool)

(assert (=> start!55258 m!581967))

(declare-fun m!581969 () Bool)

(assert (=> start!55258 m!581969))

(assert (=> b!605048 m!581947))

(assert (=> b!605048 m!581947))

(declare-fun m!581971 () Bool)

(assert (=> b!605048 m!581971))

(assert (=> b!605048 m!581947))

(declare-fun m!581973 () Bool)

(assert (=> b!605048 m!581973))

(assert (=> b!605048 m!581947))

(declare-fun m!581975 () Bool)

(assert (=> b!605048 m!581975))

(assert (=> b!605036 m!581947))

(assert (=> b!605036 m!581947))

(assert (=> b!605036 m!581957))

(assert (=> b!605026 m!581947))

(declare-fun m!581977 () Bool)

(assert (=> b!605038 m!581977))

(assert (=> b!605046 m!581961))

(declare-fun m!581979 () Bool)

(assert (=> b!605046 m!581979))

(declare-fun m!581981 () Bool)

(assert (=> b!605037 m!581981))

(declare-fun m!581983 () Bool)

(assert (=> b!605037 m!581983))

(declare-fun m!581985 () Bool)

(assert (=> b!605037 m!581985))

(declare-fun m!581987 () Bool)

(assert (=> b!605037 m!581987))

(assert (=> b!605037 m!581947))

(assert (=> b!605037 m!581961))

(declare-fun m!581989 () Bool)

(assert (=> b!605037 m!581989))

(assert (=> b!605037 m!581947))

(declare-fun m!581991 () Bool)

(assert (=> b!605037 m!581991))

(declare-fun m!581993 () Bool)

(assert (=> b!605043 m!581993))

(assert (=> b!605040 m!581947))

(assert (=> b!605040 m!581947))

(assert (=> b!605040 m!581975))

(declare-fun m!581995 () Bool)

(assert (=> b!605028 m!581995))

(assert (=> b!605028 m!581947))

(declare-fun m!581997 () Bool)

(assert (=> b!605028 m!581997))

(assert (=> b!605028 m!581947))

(declare-fun m!581999 () Bool)

(assert (=> b!605028 m!581999))

(assert (=> b!605028 m!581947))

(declare-fun m!582001 () Bool)

(assert (=> b!605028 m!582001))

(assert (=> b!605028 m!581947))

(declare-fun m!582003 () Bool)

(assert (=> b!605028 m!582003))

(declare-fun m!582005 () Bool)

(assert (=> b!605028 m!582005))

(declare-fun m!582007 () Bool)

(assert (=> b!605028 m!582007))

(push 1)

