; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55260 () Bool)

(assert start!55260)

(declare-fun b!605095 () Bool)

(declare-fun e!346321 () Bool)

(declare-fun e!346327 () Bool)

(assert (=> b!605095 (= e!346321 e!346327)))

(declare-fun res!388896 () Bool)

(assert (=> b!605095 (=> res!388896 e!346327)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37215 0))(
  ( (array!37216 (arr!17859 (Array (_ BitVec 32) (_ BitVec 64))) (size!18223 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37215)

(declare-fun lt!276136 () (_ BitVec 64))

(declare-fun lt!276133 () (_ BitVec 64))

(assert (=> b!605095 (= res!388896 (or (not (= (select (arr!17859 a!2986) j!136) lt!276133)) (not (= (select (arr!17859 a!2986) j!136) lt!276136)) (bvsge j!136 index!984)))))

(declare-fun b!605096 () Bool)

(declare-fun res!388900 () Bool)

(declare-fun e!346318 () Bool)

(assert (=> b!605096 (=> (not res!388900) (not e!346318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605096 (= res!388900 (validKeyInArray!0 (select (arr!17859 a!2986) j!136)))))

(declare-fun b!605097 () Bool)

(declare-fun e!346324 () Bool)

(declare-fun e!346314 () Bool)

(assert (=> b!605097 (= e!346324 e!346314)))

(declare-fun res!388901 () Bool)

(assert (=> b!605097 (=> (not res!388901) (not e!346314))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!605097 (= res!388901 (= (select (store (arr!17859 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!276132 () array!37215)

(assert (=> b!605097 (= lt!276132 (array!37216 (store (arr!17859 a!2986) i!1108 k!1786) (size!18223 a!2986)))))

(declare-fun res!388893 () Bool)

(assert (=> start!55260 (=> (not res!388893) (not e!346318))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55260 (= res!388893 (validMask!0 mask!3053))))

(assert (=> start!55260 e!346318))

(assert (=> start!55260 true))

(declare-fun array_inv!13633 (array!37215) Bool)

(assert (=> start!55260 (array_inv!13633 a!2986)))

(declare-fun b!605098 () Bool)

(declare-fun res!388907 () Bool)

(assert (=> b!605098 (=> (not res!388907) (not e!346324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37215 (_ BitVec 32)) Bool)

(assert (=> b!605098 (= res!388907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605099 () Bool)

(declare-fun res!388891 () Bool)

(assert (=> b!605099 (=> (not res!388891) (not e!346318))))

(assert (=> b!605099 (= res!388891 (validKeyInArray!0 k!1786))))

(declare-fun b!605100 () Bool)

(declare-datatypes ((Unit!19264 0))(
  ( (Unit!19265) )
))
(declare-fun e!346315 () Unit!19264)

(declare-fun Unit!19266 () Unit!19264)

(assert (=> b!605100 (= e!346315 Unit!19266)))

(assert (=> b!605100 false))

(declare-fun b!605101 () Bool)

(declare-fun e!346313 () Bool)

(assert (=> b!605101 (= e!346313 (or (bvsgt #b00000000000000000000000000000000 (size!18223 a!2986)) (bvslt (size!18223 a!2986) #b01111111111111111111111111111111)))))

(declare-fun arrayContainsKey!0 (array!37215 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605101 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276147 () Unit!19264)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19264)

(assert (=> b!605101 (= lt!276147 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!346317 () Bool)

(assert (=> b!605101 e!346317))

(declare-fun res!388897 () Bool)

(assert (=> b!605101 (=> (not res!388897) (not e!346317))))

(assert (=> b!605101 (= res!388897 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136))))

(declare-fun b!605102 () Bool)

(declare-fun e!346326 () Bool)

(declare-fun e!346316 () Bool)

(assert (=> b!605102 (= e!346326 e!346316)))

(declare-fun res!388904 () Bool)

(assert (=> b!605102 (=> res!388904 e!346316)))

(assert (=> b!605102 (= res!388904 (or (not (= (select (arr!17859 a!2986) j!136) lt!276133)) (not (= (select (arr!17859 a!2986) j!136) lt!276136))))))

(assert (=> b!605102 e!346321))

(declare-fun res!388902 () Bool)

(assert (=> b!605102 (=> (not res!388902) (not e!346321))))

(assert (=> b!605102 (= res!388902 (= lt!276136 (select (arr!17859 a!2986) j!136)))))

(assert (=> b!605102 (= lt!276136 (select (store (arr!17859 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!605103 () Bool)

(declare-fun e!346322 () Bool)

(assert (=> b!605103 (= e!346314 e!346322)))

(declare-fun res!388903 () Bool)

(assert (=> b!605103 (=> (not res!388903) (not e!346322))))

(declare-datatypes ((SeekEntryResult!6306 0))(
  ( (MissingZero!6306 (index!27489 (_ BitVec 32))) (Found!6306 (index!27490 (_ BitVec 32))) (Intermediate!6306 (undefined!7118 Bool) (index!27491 (_ BitVec 32)) (x!56317 (_ BitVec 32))) (Undefined!6306) (MissingVacant!6306 (index!27492 (_ BitVec 32))) )
))
(declare-fun lt!276141 () SeekEntryResult!6306)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!605103 (= res!388903 (and (= lt!276141 (Found!6306 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17859 a!2986) index!984) (select (arr!17859 a!2986) j!136))) (not (= (select (arr!17859 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37215 (_ BitVec 32)) SeekEntryResult!6306)

(assert (=> b!605103 (= lt!276141 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17859 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605104 () Bool)

(declare-fun e!346319 () Unit!19264)

(declare-fun Unit!19267 () Unit!19264)

(assert (=> b!605104 (= e!346319 Unit!19267)))

(declare-fun lt!276145 () Unit!19264)

(assert (=> b!605104 (= lt!276145 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276132 (select (arr!17859 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!605104 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276138 () Unit!19264)

(declare-datatypes ((List!11953 0))(
  ( (Nil!11950) (Cons!11949 (h!12994 (_ BitVec 64)) (t!18189 List!11953)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11953) Unit!19264)

(assert (=> b!605104 (= lt!276138 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11950))))

(declare-fun arrayNoDuplicates!0 (array!37215 (_ BitVec 32) List!11953) Bool)

(assert (=> b!605104 (arrayNoDuplicates!0 lt!276132 #b00000000000000000000000000000000 Nil!11950)))

(declare-fun lt!276144 () Unit!19264)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37215 (_ BitVec 32) (_ BitVec 32)) Unit!19264)

(assert (=> b!605104 (= lt!276144 (lemmaNoDuplicateFromThenFromBigger!0 lt!276132 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605104 (arrayNoDuplicates!0 lt!276132 j!136 Nil!11950)))

(declare-fun lt!276143 () Unit!19264)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37215 (_ BitVec 64) (_ BitVec 32) List!11953) Unit!19264)

(assert (=> b!605104 (= lt!276143 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136 Nil!11950))))

(assert (=> b!605104 false))

(declare-fun b!605105 () Bool)

(assert (=> b!605105 (= e!346316 e!346313)))

(declare-fun res!388898 () Bool)

(assert (=> b!605105 (=> res!388898 e!346313)))

(assert (=> b!605105 (= res!388898 (bvsge index!984 j!136))))

(declare-fun lt!276135 () Unit!19264)

(assert (=> b!605105 (= lt!276135 e!346319)))

(declare-fun c!68470 () Bool)

(assert (=> b!605105 (= c!68470 (bvslt j!136 index!984))))

(declare-fun b!605106 () Bool)

(declare-fun res!388895 () Bool)

(assert (=> b!605106 (=> (not res!388895) (not e!346318))))

(assert (=> b!605106 (= res!388895 (and (= (size!18223 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18223 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18223 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!605107 () Bool)

(declare-fun Unit!19268 () Unit!19264)

(assert (=> b!605107 (= e!346315 Unit!19268)))

(declare-fun e!346323 () Bool)

(declare-fun b!605108 () Bool)

(assert (=> b!605108 (= e!346323 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) index!984))))

(declare-fun b!605109 () Bool)

(assert (=> b!605109 (= e!346317 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) index!984))))

(declare-fun b!605110 () Bool)

(declare-fun Unit!19269 () Unit!19264)

(assert (=> b!605110 (= e!346319 Unit!19269)))

(declare-fun b!605111 () Bool)

(assert (=> b!605111 (= e!346318 e!346324)))

(declare-fun res!388892 () Bool)

(assert (=> b!605111 (=> (not res!388892) (not e!346324))))

(declare-fun lt!276137 () SeekEntryResult!6306)

(assert (=> b!605111 (= res!388892 (or (= lt!276137 (MissingZero!6306 i!1108)) (= lt!276137 (MissingVacant!6306 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37215 (_ BitVec 32)) SeekEntryResult!6306)

(assert (=> b!605111 (= lt!276137 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!605112 () Bool)

(declare-fun res!388890 () Bool)

(assert (=> b!605112 (=> (not res!388890) (not e!346324))))

(assert (=> b!605112 (= res!388890 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11950))))

(declare-fun b!605113 () Bool)

(declare-fun res!388899 () Bool)

(assert (=> b!605113 (=> (not res!388899) (not e!346324))))

(assert (=> b!605113 (= res!388899 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17859 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605114 () Bool)

(declare-fun e!346325 () Bool)

(declare-fun lt!276134 () SeekEntryResult!6306)

(assert (=> b!605114 (= e!346325 (= lt!276141 lt!276134))))

(declare-fun b!605115 () Bool)

(assert (=> b!605115 (= e!346322 (not e!346326))))

(declare-fun res!388905 () Bool)

(assert (=> b!605115 (=> res!388905 e!346326)))

(declare-fun lt!276140 () SeekEntryResult!6306)

(assert (=> b!605115 (= res!388905 (not (= lt!276140 (Found!6306 index!984))))))

(declare-fun lt!276139 () Unit!19264)

(assert (=> b!605115 (= lt!276139 e!346315)))

(declare-fun c!68471 () Bool)

(assert (=> b!605115 (= c!68471 (= lt!276140 Undefined!6306))))

(assert (=> b!605115 (= lt!276140 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276133 lt!276132 mask!3053))))

(assert (=> b!605115 e!346325))

(declare-fun res!388889 () Bool)

(assert (=> b!605115 (=> (not res!388889) (not e!346325))))

(declare-fun lt!276142 () (_ BitVec 32))

(assert (=> b!605115 (= res!388889 (= lt!276134 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276142 vacantSpotIndex!68 lt!276133 lt!276132 mask!3053)))))

(assert (=> b!605115 (= lt!276134 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276142 vacantSpotIndex!68 (select (arr!17859 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605115 (= lt!276133 (select (store (arr!17859 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!276146 () Unit!19264)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37215 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19264)

(assert (=> b!605115 (= lt!276146 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276142 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605115 (= lt!276142 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605116 () Bool)

(assert (=> b!605116 (= e!346327 e!346323)))

(declare-fun res!388894 () Bool)

(assert (=> b!605116 (=> (not res!388894) (not e!346323))))

(assert (=> b!605116 (= res!388894 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136))))

(declare-fun b!605117 () Bool)

(declare-fun res!388906 () Bool)

(assert (=> b!605117 (=> (not res!388906) (not e!346318))))

(assert (=> b!605117 (= res!388906 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!55260 res!388893) b!605106))

(assert (= (and b!605106 res!388895) b!605096))

(assert (= (and b!605096 res!388900) b!605099))

(assert (= (and b!605099 res!388891) b!605117))

(assert (= (and b!605117 res!388906) b!605111))

(assert (= (and b!605111 res!388892) b!605098))

(assert (= (and b!605098 res!388907) b!605112))

(assert (= (and b!605112 res!388890) b!605113))

(assert (= (and b!605113 res!388899) b!605097))

(assert (= (and b!605097 res!388901) b!605103))

(assert (= (and b!605103 res!388903) b!605115))

(assert (= (and b!605115 res!388889) b!605114))

(assert (= (and b!605115 c!68471) b!605100))

(assert (= (and b!605115 (not c!68471)) b!605107))

(assert (= (and b!605115 (not res!388905)) b!605102))

(assert (= (and b!605102 res!388902) b!605095))

(assert (= (and b!605095 (not res!388896)) b!605116))

(assert (= (and b!605116 res!388894) b!605108))

(assert (= (and b!605102 (not res!388904)) b!605105))

(assert (= (and b!605105 c!68470) b!605104))

(assert (= (and b!605105 (not c!68470)) b!605110))

(assert (= (and b!605105 (not res!388898)) b!605101))

(assert (= (and b!605101 res!388897) b!605109))

(declare-fun m!582009 () Bool)

(assert (=> b!605117 m!582009))

(declare-fun m!582011 () Bool)

(assert (=> b!605116 m!582011))

(assert (=> b!605116 m!582011))

(declare-fun m!582013 () Bool)

(assert (=> b!605116 m!582013))

(assert (=> b!605102 m!582011))

(declare-fun m!582015 () Bool)

(assert (=> b!605102 m!582015))

(declare-fun m!582017 () Bool)

(assert (=> b!605102 m!582017))

(declare-fun m!582019 () Bool)

(assert (=> b!605113 m!582019))

(declare-fun m!582021 () Bool)

(assert (=> b!605099 m!582021))

(assert (=> b!605095 m!582011))

(declare-fun m!582023 () Bool)

(assert (=> b!605112 m!582023))

(assert (=> b!605108 m!582011))

(assert (=> b!605108 m!582011))

(declare-fun m!582025 () Bool)

(assert (=> b!605108 m!582025))

(declare-fun m!582027 () Bool)

(assert (=> b!605098 m!582027))

(declare-fun m!582029 () Bool)

(assert (=> b!605103 m!582029))

(assert (=> b!605103 m!582011))

(assert (=> b!605103 m!582011))

(declare-fun m!582031 () Bool)

(assert (=> b!605103 m!582031))

(assert (=> b!605109 m!582011))

(assert (=> b!605109 m!582011))

(assert (=> b!605109 m!582025))

(assert (=> b!605097 m!582015))

(declare-fun m!582033 () Bool)

(assert (=> b!605097 m!582033))

(assert (=> b!605104 m!582011))

(declare-fun m!582035 () Bool)

(assert (=> b!605104 m!582035))

(declare-fun m!582037 () Bool)

(assert (=> b!605104 m!582037))

(assert (=> b!605104 m!582011))

(declare-fun m!582039 () Bool)

(assert (=> b!605104 m!582039))

(assert (=> b!605104 m!582011))

(declare-fun m!582041 () Bool)

(assert (=> b!605104 m!582041))

(declare-fun m!582043 () Bool)

(assert (=> b!605104 m!582043))

(declare-fun m!582045 () Bool)

(assert (=> b!605104 m!582045))

(declare-fun m!582047 () Bool)

(assert (=> b!605104 m!582047))

(assert (=> b!605104 m!582011))

(assert (=> b!605096 m!582011))

(assert (=> b!605096 m!582011))

(declare-fun m!582049 () Bool)

(assert (=> b!605096 m!582049))

(declare-fun m!582051 () Bool)

(assert (=> start!55260 m!582051))

(declare-fun m!582053 () Bool)

(assert (=> start!55260 m!582053))

(declare-fun m!582055 () Bool)

(assert (=> b!605111 m!582055))

(declare-fun m!582057 () Bool)

(assert (=> b!605115 m!582057))

(declare-fun m!582059 () Bool)

(assert (=> b!605115 m!582059))

(declare-fun m!582061 () Bool)

(assert (=> b!605115 m!582061))

(assert (=> b!605115 m!582011))

(declare-fun m!582063 () Bool)

(assert (=> b!605115 m!582063))

(assert (=> b!605115 m!582015))

(declare-fun m!582065 () Bool)

(assert (=> b!605115 m!582065))

(assert (=> b!605115 m!582011))

(declare-fun m!582067 () Bool)

(assert (=> b!605115 m!582067))

(assert (=> b!605101 m!582011))

(assert (=> b!605101 m!582011))

(declare-fun m!582069 () Bool)

(assert (=> b!605101 m!582069))

(assert (=> b!605101 m!582011))

(declare-fun m!582071 () Bool)

(assert (=> b!605101 m!582071))

(assert (=> b!605101 m!582011))

(assert (=> b!605101 m!582013))

(push 1)

(assert (not b!605098))

(assert (not b!605096))

(assert (not b!605104))

(assert (not b!605108))

(assert (not b!605116))

(assert (not b!605101))

(assert (not b!605112))

(assert (not b!605103))

(assert (not b!605099))

(assert (not start!55260))

(assert (not b!605111))

(assert (not b!605117))

(assert (not b!605115))

(assert (not b!605109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87481 () Bool)

(declare-fun res!389046 () Bool)

(declare-fun e!346455 () Bool)

(assert (=> d!87481 (=> res!389046 e!346455)))

(assert (=> d!87481 (= res!389046 (= (select (arr!17859 lt!276132) j!136) (select (arr!17859 a!2986) j!136)))))

(assert (=> d!87481 (= (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136) e!346455)))

(declare-fun b!605306 () Bool)

(declare-fun e!346456 () Bool)

(assert (=> b!605306 (= e!346455 e!346456)))

(declare-fun res!389047 () Bool)

(assert (=> b!605306 (=> (not res!389047) (not e!346456))))

(assert (=> b!605306 (= res!389047 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18223 lt!276132)))))

(declare-fun b!605307 () Bool)

(assert (=> b!605307 (= e!346456 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87481 (not res!389046)) b!605306))

(assert (= (and b!605306 res!389047) b!605307))

(declare-fun m!582243 () Bool)

(assert (=> d!87481 m!582243))

(assert (=> b!605307 m!582011))

(declare-fun m!582245 () Bool)

(assert (=> b!605307 m!582245))

(assert (=> b!605116 d!87481))

(declare-fun d!87483 () Bool)

(assert (=> d!87483 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55260 d!87483))

(declare-fun d!87489 () Bool)

(assert (=> d!87489 (= (array_inv!13633 a!2986) (bvsge (size!18223 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55260 d!87489))

(declare-fun d!87491 () Bool)

(declare-fun res!389054 () Bool)

(declare-fun e!346464 () Bool)

(assert (=> d!87491 (=> res!389054 e!346464)))

(assert (=> d!87491 (= res!389054 (= (select (arr!17859 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87491 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!346464)))

(declare-fun b!605316 () Bool)

(declare-fun e!346465 () Bool)

(assert (=> b!605316 (= e!346464 e!346465)))

(declare-fun res!389055 () Bool)

(assert (=> b!605316 (=> (not res!389055) (not e!346465))))

(assert (=> b!605316 (= res!389055 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18223 a!2986)))))

(declare-fun b!605317 () Bool)

(assert (=> b!605317 (= e!346465 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87491 (not res!389054)) b!605316))

(assert (= (and b!605316 res!389055) b!605317))

(declare-fun m!582259 () Bool)

(assert (=> d!87491 m!582259))

(declare-fun m!582261 () Bool)

(assert (=> b!605317 m!582261))

(assert (=> b!605117 d!87491))

(declare-fun d!87493 () Bool)

(assert (=> d!87493 (= (validKeyInArray!0 (select (arr!17859 a!2986) j!136)) (and (not (= (select (arr!17859 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17859 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605096 d!87493))

(declare-fun b!605376 () Bool)

(declare-fun e!346498 () SeekEntryResult!6306)

(assert (=> b!605376 (= e!346498 Undefined!6306)))

(declare-fun d!87495 () Bool)

(declare-fun lt!276286 () SeekEntryResult!6306)

(assert (=> d!87495 (and (or (is-Undefined!6306 lt!276286) (not (is-Found!6306 lt!276286)) (and (bvsge (index!27490 lt!276286) #b00000000000000000000000000000000) (bvslt (index!27490 lt!276286) (size!18223 a!2986)))) (or (is-Undefined!6306 lt!276286) (is-Found!6306 lt!276286) (not (is-MissingVacant!6306 lt!276286)) (not (= (index!27492 lt!276286) vacantSpotIndex!68)) (and (bvsge (index!27492 lt!276286) #b00000000000000000000000000000000) (bvslt (index!27492 lt!276286) (size!18223 a!2986)))) (or (is-Undefined!6306 lt!276286) (ite (is-Found!6306 lt!276286) (= (select (arr!17859 a!2986) (index!27490 lt!276286)) (select (arr!17859 a!2986) j!136)) (and (is-MissingVacant!6306 lt!276286) (= (index!27492 lt!276286) vacantSpotIndex!68) (= (select (arr!17859 a!2986) (index!27492 lt!276286)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87495 (= lt!276286 e!346498)))

(declare-fun c!68526 () Bool)

(assert (=> d!87495 (= c!68526 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276287 () (_ BitVec 64))

(assert (=> d!87495 (= lt!276287 (select (arr!17859 a!2986) index!984))))

(assert (=> d!87495 (validMask!0 mask!3053)))

(assert (=> d!87495 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17859 a!2986) j!136) a!2986 mask!3053) lt!276286)))

(declare-fun b!605377 () Bool)

(declare-fun c!68525 () Bool)

(assert (=> b!605377 (= c!68525 (= lt!276287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346497 () SeekEntryResult!6306)

(declare-fun e!346499 () SeekEntryResult!6306)

(assert (=> b!605377 (= e!346497 e!346499)))

(declare-fun b!605378 () Bool)

(assert (=> b!605378 (= e!346498 e!346497)))

(declare-fun c!68527 () Bool)

(assert (=> b!605378 (= c!68527 (= lt!276287 (select (arr!17859 a!2986) j!136)))))

(declare-fun b!605379 () Bool)

(assert (=> b!605379 (= e!346497 (Found!6306 index!984))))

(declare-fun b!605380 () Bool)

(assert (=> b!605380 (= e!346499 (MissingVacant!6306 vacantSpotIndex!68))))

(declare-fun b!605381 () Bool)

(assert (=> b!605381 (= e!346499 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17859 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87495 c!68526) b!605376))

(assert (= (and d!87495 (not c!68526)) b!605378))

(assert (= (and b!605378 c!68527) b!605379))

(assert (= (and b!605378 (not c!68527)) b!605377))

(assert (= (and b!605377 c!68525) b!605380))

(assert (= (and b!605377 (not c!68525)) b!605381))

(declare-fun m!582299 () Bool)

(assert (=> d!87495 m!582299))

(declare-fun m!582301 () Bool)

(assert (=> d!87495 m!582301))

(assert (=> d!87495 m!582029))

(assert (=> d!87495 m!582051))

(assert (=> b!605381 m!582057))

(assert (=> b!605381 m!582057))

(assert (=> b!605381 m!582011))

(declare-fun m!582303 () Bool)

(assert (=> b!605381 m!582303))

(assert (=> b!605103 d!87495))

(declare-fun d!87509 () Bool)

(assert (=> d!87509 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276290 () Unit!19264)

(declare-fun choose!114 (array!37215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19264)

(assert (=> d!87509 (= lt!276290 (choose!114 lt!276132 (select (arr!17859 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87509 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87509 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276132 (select (arr!17859 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276290)))

(declare-fun bs!18518 () Bool)

(assert (= bs!18518 d!87509))

(assert (=> bs!18518 m!582011))

(assert (=> bs!18518 m!582035))

(assert (=> bs!18518 m!582011))

(declare-fun m!582305 () Bool)

(assert (=> bs!18518 m!582305))

(assert (=> b!605104 d!87509))

(declare-fun b!605419 () Bool)

(declare-fun e!346525 () Bool)

(declare-fun e!346524 () Bool)

(assert (=> b!605419 (= e!346525 e!346524)))

(declare-fun c!68542 () Bool)

(assert (=> b!605419 (= c!68542 (validKeyInArray!0 (select (arr!17859 lt!276132) #b00000000000000000000000000000000)))))

(declare-fun b!605420 () Bool)

(declare-fun e!346526 () Bool)

(declare-fun contains!3000 (List!11953 (_ BitVec 64)) Bool)

(assert (=> b!605420 (= e!346526 (contains!3000 Nil!11950 (select (arr!17859 lt!276132) #b00000000000000000000000000000000)))))

(declare-fun bm!33037 () Bool)

(declare-fun call!33040 () Bool)

(assert (=> bm!33037 (= call!33040 (arrayNoDuplicates!0 lt!276132 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68542 (Cons!11949 (select (arr!17859 lt!276132) #b00000000000000000000000000000000) Nil!11950) Nil!11950)))))

(declare-fun b!605421 () Bool)

(declare-fun e!346523 () Bool)

(assert (=> b!605421 (= e!346523 e!346525)))

(declare-fun res!389070 () Bool)

(assert (=> b!605421 (=> (not res!389070) (not e!346525))))

(assert (=> b!605421 (= res!389070 (not e!346526))))

(declare-fun res!389071 () Bool)

(assert (=> b!605421 (=> (not res!389071) (not e!346526))))

(assert (=> b!605421 (= res!389071 (validKeyInArray!0 (select (arr!17859 lt!276132) #b00000000000000000000000000000000)))))

(declare-fun d!87511 () Bool)

(declare-fun res!389069 () Bool)

(assert (=> d!87511 (=> res!389069 e!346523)))

(assert (=> d!87511 (= res!389069 (bvsge #b00000000000000000000000000000000 (size!18223 lt!276132)))))

(assert (=> d!87511 (= (arrayNoDuplicates!0 lt!276132 #b00000000000000000000000000000000 Nil!11950) e!346523)))

(declare-fun b!605422 () Bool)

(assert (=> b!605422 (= e!346524 call!33040)))

(declare-fun b!605423 () Bool)

(assert (=> b!605423 (= e!346524 call!33040)))

(assert (= (and d!87511 (not res!389069)) b!605421))

(assert (= (and b!605421 res!389071) b!605420))

(assert (= (and b!605421 res!389070) b!605419))

(assert (= (and b!605419 c!68542) b!605423))

(assert (= (and b!605419 (not c!68542)) b!605422))

(assert (= (or b!605423 b!605422) bm!33037))

(declare-fun m!582323 () Bool)

(assert (=> b!605419 m!582323))

(assert (=> b!605419 m!582323))

(declare-fun m!582325 () Bool)

(assert (=> b!605419 m!582325))

(assert (=> b!605420 m!582323))

(assert (=> b!605420 m!582323))

(declare-fun m!582327 () Bool)

(assert (=> b!605420 m!582327))

(assert (=> bm!33037 m!582323))

(declare-fun m!582329 () Bool)

(assert (=> bm!33037 m!582329))

(assert (=> b!605421 m!582323))

(assert (=> b!605421 m!582323))

(assert (=> b!605421 m!582325))

(assert (=> b!605104 d!87511))

(declare-fun d!87519 () Bool)

(declare-fun res!389072 () Bool)

(declare-fun e!346527 () Bool)

(assert (=> d!87519 (=> res!389072 e!346527)))

(assert (=> d!87519 (= res!389072 (= (select (arr!17859 lt!276132) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17859 a!2986) j!136)))))

(assert (=> d!87519 (= (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346527)))

(declare-fun b!605424 () Bool)

(declare-fun e!346528 () Bool)

(assert (=> b!605424 (= e!346527 e!346528)))

(declare-fun res!389073 () Bool)

(assert (=> b!605424 (=> (not res!389073) (not e!346528))))

(assert (=> b!605424 (= res!389073 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18223 lt!276132)))))

(declare-fun b!605425 () Bool)

(assert (=> b!605425 (= e!346528 (arrayContainsKey!0 lt!276132 (select (arr!17859 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87519 (not res!389072)) b!605424))

(assert (= (and b!605424 res!389073) b!605425))

(declare-fun m!582331 () Bool)

(assert (=> d!87519 m!582331))

(assert (=> b!605425 m!582011))

(declare-fun m!582333 () Bool)

(assert (=> b!605425 m!582333))

(assert (=> b!605104 d!87519))

(declare-fun b!605426 () Bool)

(declare-fun e!346531 () Bool)

(declare-fun e!346530 () Bool)

(assert (=> b!605426 (= e!346531 e!346530)))

(declare-fun c!68543 () Bool)

(assert (=> b!605426 (= c!68543 (validKeyInArray!0 (select (arr!17859 lt!276132) j!136)))))

(declare-fun b!605427 () Bool)

(declare-fun e!346532 () Bool)

(assert (=> b!605427 (= e!346532 (contains!3000 Nil!11950 (select (arr!17859 lt!276132) j!136)))))

(declare-fun call!33041 () Bool)

(declare-fun bm!33038 () Bool)

(assert (=> bm!33038 (= call!33041 (arrayNoDuplicates!0 lt!276132 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68543 (Cons!11949 (select (arr!17859 lt!276132) j!136) Nil!11950) Nil!11950)))))

(declare-fun b!605428 () Bool)

(declare-fun e!346529 () Bool)

(assert (=> b!605428 (= e!346529 e!346531)))

(declare-fun res!389075 () Bool)

(assert (=> b!605428 (=> (not res!389075) (not e!346531))))

(assert (=> b!605428 (= res!389075 (not e!346532))))

(declare-fun res!389076 () Bool)

(assert (=> b!605428 (=> (not res!389076) (not e!346532))))

(assert (=> b!605428 (= res!389076 (validKeyInArray!0 (select (arr!17859 lt!276132) j!136)))))

(declare-fun d!87521 () Bool)

(declare-fun res!389074 () Bool)

(assert (=> d!87521 (=> res!389074 e!346529)))

(assert (=> d!87521 (= res!389074 (bvsge j!136 (size!18223 lt!276132)))))

(assert (=> d!87521 (= (arrayNoDuplicates!0 lt!276132 j!136 Nil!11950) e!346529)))

(declare-fun b!605429 () Bool)

(assert (=> b!605429 (= e!346530 call!33041)))

(declare-fun b!605430 () Bool)

(assert (=> b!605430 (= e!346530 call!33041)))

(assert (= (and d!87521 (not res!389074)) b!605428))

(assert (= (and b!605428 res!389076) b!605427))

(assert (= (and b!605428 res!389075) b!605426))

(assert (= (and b!605426 c!68543) b!605430))

(assert (= (and b!605426 (not c!68543)) b!605429))

(assert (= (or b!605430 b!605429) bm!33038))

(assert (=> b!605426 m!582243))

(assert (=> b!605426 m!582243))

(declare-fun m!582335 () Bool)

(assert (=> b!605426 m!582335))

(assert (=> b!605427 m!582243))

(assert (=> b!605427 m!582243))

(declare-fun m!582337 () Bool)

(assert (=> b!605427 m!582337))

(assert (=> bm!33038 m!582243))

(declare-fun m!582339 () Bool)

(assert (=> bm!33038 m!582339))

(assert (=> b!605428 m!582243))

(assert (=> b!605428 m!582243))

(assert (=> b!605428 m!582335))

(assert (=> b!605104 d!87521))

(declare-fun d!87523 () Bool)

(declare-fun e!346540 () Bool)

(assert (=> d!87523 e!346540))

(declare-fun res!389081 () Bool)

(assert (=> d!87523 (=> (not res!389081) (not e!346540))))

(assert (=> d!87523 (= res!389081 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18223 a!2986))))))

(declare-fun lt!276310 () Unit!19264)

(declare-fun choose!41 (array!37215 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11953) Unit!19264)

(assert (=> d!87523 (= lt!276310 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11950))))

(assert (=> d!87523 (bvslt (size!18223 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87523 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11950) lt!276310)))

(declare-fun b!605441 () Bool)

(assert (=> b!605441 (= e!346540 (arrayNoDuplicates!0 (array!37216 (store (arr!17859 a!2986) i!1108 k!1786) (size!18223 a!2986)) #b00000000000000000000000000000000 Nil!11950))))

(assert (= (and d!87523 res!389081) b!605441))

(declare-fun m!582357 () Bool)

(assert (=> d!87523 m!582357))

(assert (=> b!605441 m!582015))

(declare-fun m!582359 () Bool)

(assert (=> b!605441 m!582359))

(assert (=> b!605104 d!87523))

(declare-fun d!87535 () Bool)

(assert (=> d!87535 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18223 lt!276132)) (not (= (select (arr!17859 lt!276132) j!136) (select (arr!17859 a!2986) j!136))))))

(declare-fun lt!276313 () Unit!19264)

(declare-fun choose!21 (array!37215 (_ BitVec 64) (_ BitVec 32) List!11953) Unit!19264)

(assert (=> d!87535 (= lt!276313 (choose!21 lt!276132 (select (arr!17859 a!2986) j!136) j!136 Nil!11950))))

(assert (=> d!87535 (bvslt (size!18223 lt!276132) #b01111111111111111111111111111111)))

(assert (=> d!87535 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276132 (select (arr!17859 a!2986) j!136) j!136 Nil!11950) lt!276313)))

(declare-fun bs!18521 () Bool)

(assert (= bs!18521 d!87535))

(assert (=> bs!18521 m!582243))

(assert (=> bs!18521 m!582011))

(declare-fun m!582361 () Bool)

(assert (=> bs!18521 m!582361))

(assert (=> b!605104 d!87535))

(declare-fun d!87541 () Bool)

(assert (=> d!87541 (arrayNoDuplicates!0 lt!276132 j!136 Nil!11950)))

(declare-fun lt!276322 () Unit!19264)

(declare-fun choose!39 (array!37215 (_ BitVec 32) (_ BitVec 32)) Unit!19264)

(assert (=> d!87541 (= lt!276322 (choose!39 lt!276132 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87541 (bvslt (size!18223 lt!276132) #b01111111111111111111111111111111)))

(assert (=> d!87541 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276132 #b00000000000000000000000000000000 j!136) lt!276322)))

(declare-fun bs!18522 () Bool)

(assert (= bs!18522 d!87541))

(assert (=> bs!18522 m!582037))

(declare-fun m!582367 () Bool)

(assert (=> bs!18522 m!582367))

(assert (=> b!605104 d!87541))

(declare-fun b!605456 () Bool)

(declare-fun e!346554 () SeekEntryResult!6306)

(assert (=> b!605456 (= e!346554 Undefined!6306)))

(declare-fun lt!276323 () SeekEntryResult!6306)

(declare-fun d!87545 () Bool)

(assert (=> d!87545 (and (or (is-Undefined!6306 lt!276323) (not (is-Found!6306 lt!276323)) (and (bvsge (index!27490 lt!276323) #b00000000000000000000000000000000) (bvslt (index!27490 lt!276323) (size!18223 lt!276132)))) (or (is-Undefined!6306 lt!276323) (is-Found!6306 lt!276323) (not (is-MissingVacant!6306 lt!276323)) (not (= (index!27492 lt!276323) vacantSpotIndex!68)) (and (bvsge (index!27492 lt!276323) #b00000000000000000000000000000000) (bvslt (index!27492 lt!276323) (size!18223 lt!276132)))) (or (is-Undefined!6306 lt!276323) (ite (is-Found!6306 lt!276323) (= (select (arr!17859 lt!276132) (index!27490 lt!276323)) lt!276133) (and (is-MissingVacant!6306 lt!276323) (= (index!27492 lt!276323) vacantSpotIndex!68) (= (select (arr!17859 lt!276132) (index!27492 lt!276323)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87545 (= lt!276323 e!346554)))

(declare-fun c!68550 () Bool)

(assert (=> d!87545 (= c!68550 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!276324 () (_ BitVec 64))

(assert (=> d!87545 (= lt!276324 (select (arr!17859 lt!276132) index!984))))

(assert (=> d!87545 (validMask!0 mask!3053)))

(assert (=> d!87545 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276133 lt!276132 mask!3053) lt!276323)))

(declare-fun b!605457 () Bool)

(declare-fun c!68549 () Bool)

(assert (=> b!605457 (= c!68549 (= lt!276324 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346553 () SeekEntryResult!6306)

(declare-fun e!346555 () SeekEntryResult!6306)

(assert (=> b!605457 (= e!346553 e!346555)))

(declare-fun b!605458 () Bool)

(assert (=> b!605458 (= e!346554 e!346553)))

(declare-fun c!68551 () Bool)

(assert (=> b!605458 (= c!68551 (= lt!276324 lt!276133))))

(declare-fun b!605459 () Bool)

(assert (=> b!605459 (= e!346553 (Found!6306 index!984))))

(declare-fun b!605460 () Bool)

(assert (=> b!605460 (= e!346555 (MissingVacant!6306 vacantSpotIndex!68))))

(declare-fun b!605461 () Bool)

(assert (=> b!605461 (= e!346555 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276133 lt!276132 mask!3053))))

(assert (= (and d!87545 c!68550) b!605456))

(assert (= (and d!87545 (not c!68550)) b!605458))

(assert (= (and b!605458 c!68551) b!605459))

(assert (= (and b!605458 (not c!68551)) b!605457))

(assert (= (and b!605457 c!68549) b!605460))

(assert (= (and b!605457 (not c!68549)) b!605461))

(declare-fun m!582369 () Bool)

(assert (=> d!87545 m!582369))

(declare-fun m!582371 () Bool)

(assert (=> d!87545 m!582371))

(declare-fun m!582373 () Bool)

(assert (=> d!87545 m!582373))

(assert (=> d!87545 m!582051))

(assert (=> b!605461 m!582057))

(assert (=> b!605461 m!582057))

(declare-fun m!582381 () Bool)

(assert (=> b!605461 m!582381))

(assert (=> b!605115 d!87545))

(declare-fun d!87547 () Bool)

(declare-fun lt!276330 () (_ BitVec 32))

(assert (=> d!87547 (and (bvsge lt!276330 #b00000000000000000000000000000000) (bvslt lt!276330 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87547 (= lt!276330 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87547 (validMask!0 mask!3053)))

(assert (=> d!87547 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276330)))

(declare-fun bs!18523 () Bool)

(assert (= bs!18523 d!87547))

(declare-fun m!582385 () Bool)

(assert (=> bs!18523 m!582385))

(assert (=> bs!18523 m!582051))

(assert (=> b!605115 d!87547))

(declare-fun d!87549 () Bool)

(declare-fun e!346579 () Bool)

(assert (=> d!87549 e!346579))

(declare-fun res!389110 () Bool)

(assert (=> d!87549 (=> (not res!389110) (not e!346579))))

(assert (=> d!87549 (= res!389110 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18223 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18223 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18223 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18223 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18223 a!2986))))))

