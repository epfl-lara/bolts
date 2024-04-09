; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54190 () Bool)

(assert start!54190)

(declare-fun b!592079 () Bool)

(declare-fun e!338113 () Bool)

(declare-fun e!338108 () Bool)

(assert (=> b!592079 (= e!338113 e!338108)))

(declare-fun res!379115 () Bool)

(assert (=> b!592079 (=> res!379115 e!338108)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!268807 () (_ BitVec 64))

(declare-fun lt!268801 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36883 0))(
  ( (array!36884 (arr!17708 (Array (_ BitVec 32) (_ BitVec 64))) (size!18072 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36883)

(assert (=> b!592079 (= res!379115 (or (not (= (select (arr!17708 a!2986) j!136) lt!268807)) (not (= (select (arr!17708 a!2986) j!136) lt!268801)) (bvsge j!136 index!984)))))

(declare-fun b!592080 () Bool)

(declare-fun e!338114 () Bool)

(declare-fun e!338112 () Bool)

(assert (=> b!592080 (= e!338114 e!338112)))

(declare-fun res!379105 () Bool)

(assert (=> b!592080 (=> (not res!379105) (not e!338112))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6155 0))(
  ( (MissingZero!6155 (index!26855 (_ BitVec 32))) (Found!6155 (index!26856 (_ BitVec 32))) (Intermediate!6155 (undefined!6967 Bool) (index!26857 (_ BitVec 32)) (x!55668 (_ BitVec 32))) (Undefined!6155) (MissingVacant!6155 (index!26858 (_ BitVec 32))) )
))
(declare-fun lt!268806 () SeekEntryResult!6155)

(assert (=> b!592080 (= res!379105 (and (= lt!268806 (Found!6155 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17708 a!2986) index!984) (select (arr!17708 a!2986) j!136))) (not (= (select (arr!17708 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36883 (_ BitVec 32)) SeekEntryResult!6155)

(assert (=> b!592080 (= lt!268806 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17708 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592081 () Bool)

(declare-fun res!379110 () Bool)

(declare-fun e!338118 () Bool)

(assert (=> b!592081 (=> (not res!379110) (not e!338118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592081 (= res!379110 (validKeyInArray!0 (select (arr!17708 a!2986) j!136)))))

(declare-fun b!592083 () Bool)

(declare-fun e!338117 () Bool)

(assert (=> b!592083 (= e!338108 e!338117)))

(declare-fun res!379120 () Bool)

(assert (=> b!592083 (=> (not res!379120) (not e!338117))))

(declare-fun lt!268804 () array!36883)

(declare-fun arrayContainsKey!0 (array!36883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592083 (= res!379120 (arrayContainsKey!0 lt!268804 (select (arr!17708 a!2986) j!136) j!136))))

(declare-fun b!592084 () Bool)

(declare-fun res!379109 () Bool)

(assert (=> b!592084 (=> (not res!379109) (not e!338118))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!592084 (= res!379109 (validKeyInArray!0 k!1786))))

(declare-fun b!592085 () Bool)

(declare-fun res!379106 () Bool)

(assert (=> b!592085 (=> (not res!379106) (not e!338118))))

(assert (=> b!592085 (= res!379106 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592086 () Bool)

(declare-fun res!379114 () Bool)

(declare-fun e!338111 () Bool)

(assert (=> b!592086 (=> (not res!379114) (not e!338111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36883 (_ BitVec 32)) Bool)

(assert (=> b!592086 (= res!379114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592087 () Bool)

(declare-datatypes ((Unit!18564 0))(
  ( (Unit!18565) )
))
(declare-fun e!338115 () Unit!18564)

(declare-fun Unit!18566 () Unit!18564)

(assert (=> b!592087 (= e!338115 Unit!18566)))

(assert (=> b!592087 false))

(declare-fun b!592088 () Bool)

(declare-fun e!338109 () Bool)

(assert (=> b!592088 (= e!338109 (or (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18072 a!2986))))))

(assert (=> b!592088 (arrayContainsKey!0 lt!268804 (select (arr!17708 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268799 () Unit!18564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36883 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18564)

(assert (=> b!592088 (= lt!268799 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268804 (select (arr!17708 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592089 () Bool)

(declare-fun e!338119 () Bool)

(assert (=> b!592089 (= e!338119 e!338109)))

(declare-fun res!379108 () Bool)

(assert (=> b!592089 (=> res!379108 e!338109)))

(assert (=> b!592089 (= res!379108 (or (not (= (select (arr!17708 a!2986) j!136) lt!268807)) (not (= (select (arr!17708 a!2986) j!136) lt!268801)) (bvsge j!136 index!984)))))

(assert (=> b!592089 e!338113))

(declare-fun res!379119 () Bool)

(assert (=> b!592089 (=> (not res!379119) (not e!338113))))

(assert (=> b!592089 (= res!379119 (= lt!268801 (select (arr!17708 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!592089 (= lt!268801 (select (store (arr!17708 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!592090 () Bool)

(assert (=> b!592090 (= e!338118 e!338111)))

(declare-fun res!379107 () Bool)

(assert (=> b!592090 (=> (not res!379107) (not e!338111))))

(declare-fun lt!268802 () SeekEntryResult!6155)

(assert (=> b!592090 (= res!379107 (or (= lt!268802 (MissingZero!6155 i!1108)) (= lt!268802 (MissingVacant!6155 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36883 (_ BitVec 32)) SeekEntryResult!6155)

(assert (=> b!592090 (= lt!268802 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!592091 () Bool)

(assert (=> b!592091 (= e!338111 e!338114)))

(declare-fun res!379112 () Bool)

(assert (=> b!592091 (=> (not res!379112) (not e!338114))))

(assert (=> b!592091 (= res!379112 (= (select (store (arr!17708 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!592091 (= lt!268804 (array!36884 (store (arr!17708 a!2986) i!1108 k!1786) (size!18072 a!2986)))))

(declare-fun b!592092 () Bool)

(assert (=> b!592092 (= e!338117 (arrayContainsKey!0 lt!268804 (select (arr!17708 a!2986) j!136) index!984))))

(declare-fun b!592093 () Bool)

(declare-fun res!379111 () Bool)

(assert (=> b!592093 (=> (not res!379111) (not e!338118))))

(assert (=> b!592093 (= res!379111 (and (= (size!18072 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18072 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18072 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592082 () Bool)

(declare-fun Unit!18567 () Unit!18564)

(assert (=> b!592082 (= e!338115 Unit!18567)))

(declare-fun res!379121 () Bool)

(assert (=> start!54190 (=> (not res!379121) (not e!338118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54190 (= res!379121 (validMask!0 mask!3053))))

(assert (=> start!54190 e!338118))

(assert (=> start!54190 true))

(declare-fun array_inv!13482 (array!36883) Bool)

(assert (=> start!54190 (array_inv!13482 a!2986)))

(declare-fun b!592094 () Bool)

(declare-fun res!379116 () Bool)

(assert (=> b!592094 (=> (not res!379116) (not e!338111))))

(declare-datatypes ((List!11802 0))(
  ( (Nil!11799) (Cons!11798 (h!12843 (_ BitVec 64)) (t!18038 List!11802)) )
))
(declare-fun arrayNoDuplicates!0 (array!36883 (_ BitVec 32) List!11802) Bool)

(assert (=> b!592094 (= res!379116 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11799))))

(declare-fun b!592095 () Bool)

(declare-fun res!379117 () Bool)

(assert (=> b!592095 (=> (not res!379117) (not e!338111))))

(assert (=> b!592095 (= res!379117 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17708 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592096 () Bool)

(assert (=> b!592096 (= e!338112 (not e!338119))))

(declare-fun res!379113 () Bool)

(assert (=> b!592096 (=> res!379113 e!338119)))

(declare-fun lt!268803 () SeekEntryResult!6155)

(assert (=> b!592096 (= res!379113 (not (= lt!268803 (Found!6155 index!984))))))

(declare-fun lt!268808 () Unit!18564)

(assert (=> b!592096 (= lt!268808 e!338115)))

(declare-fun c!66854 () Bool)

(assert (=> b!592096 (= c!66854 (= lt!268803 Undefined!6155))))

(assert (=> b!592096 (= lt!268803 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268807 lt!268804 mask!3053))))

(declare-fun e!338116 () Bool)

(assert (=> b!592096 e!338116))

(declare-fun res!379118 () Bool)

(assert (=> b!592096 (=> (not res!379118) (not e!338116))))

(declare-fun lt!268805 () (_ BitVec 32))

(declare-fun lt!268809 () SeekEntryResult!6155)

(assert (=> b!592096 (= res!379118 (= lt!268809 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268805 vacantSpotIndex!68 lt!268807 lt!268804 mask!3053)))))

(assert (=> b!592096 (= lt!268809 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268805 vacantSpotIndex!68 (select (arr!17708 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592096 (= lt!268807 (select (store (arr!17708 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268800 () Unit!18564)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18564)

(assert (=> b!592096 (= lt!268800 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268805 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592096 (= lt!268805 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592097 () Bool)

(assert (=> b!592097 (= e!338116 (= lt!268806 lt!268809))))

(assert (= (and start!54190 res!379121) b!592093))

(assert (= (and b!592093 res!379111) b!592081))

(assert (= (and b!592081 res!379110) b!592084))

(assert (= (and b!592084 res!379109) b!592085))

(assert (= (and b!592085 res!379106) b!592090))

(assert (= (and b!592090 res!379107) b!592086))

(assert (= (and b!592086 res!379114) b!592094))

(assert (= (and b!592094 res!379116) b!592095))

(assert (= (and b!592095 res!379117) b!592091))

(assert (= (and b!592091 res!379112) b!592080))

(assert (= (and b!592080 res!379105) b!592096))

(assert (= (and b!592096 res!379118) b!592097))

(assert (= (and b!592096 c!66854) b!592087))

(assert (= (and b!592096 (not c!66854)) b!592082))

(assert (= (and b!592096 (not res!379113)) b!592089))

(assert (= (and b!592089 res!379119) b!592079))

(assert (= (and b!592079 (not res!379115)) b!592083))

(assert (= (and b!592083 res!379120) b!592092))

(assert (= (and b!592089 (not res!379108)) b!592088))

(declare-fun m!570241 () Bool)

(assert (=> b!592094 m!570241))

(declare-fun m!570243 () Bool)

(assert (=> b!592080 m!570243))

(declare-fun m!570245 () Bool)

(assert (=> b!592080 m!570245))

(assert (=> b!592080 m!570245))

(declare-fun m!570247 () Bool)

(assert (=> b!592080 m!570247))

(declare-fun m!570249 () Bool)

(assert (=> b!592090 m!570249))

(declare-fun m!570251 () Bool)

(assert (=> b!592085 m!570251))

(declare-fun m!570253 () Bool)

(assert (=> b!592084 m!570253))

(declare-fun m!570255 () Bool)

(assert (=> start!54190 m!570255))

(declare-fun m!570257 () Bool)

(assert (=> start!54190 m!570257))

(declare-fun m!570259 () Bool)

(assert (=> b!592091 m!570259))

(declare-fun m!570261 () Bool)

(assert (=> b!592091 m!570261))

(assert (=> b!592083 m!570245))

(assert (=> b!592083 m!570245))

(declare-fun m!570263 () Bool)

(assert (=> b!592083 m!570263))

(assert (=> b!592079 m!570245))

(declare-fun m!570265 () Bool)

(assert (=> b!592086 m!570265))

(assert (=> b!592092 m!570245))

(assert (=> b!592092 m!570245))

(declare-fun m!570267 () Bool)

(assert (=> b!592092 m!570267))

(assert (=> b!592088 m!570245))

(assert (=> b!592088 m!570245))

(declare-fun m!570269 () Bool)

(assert (=> b!592088 m!570269))

(assert (=> b!592088 m!570245))

(declare-fun m!570271 () Bool)

(assert (=> b!592088 m!570271))

(declare-fun m!570273 () Bool)

(assert (=> b!592096 m!570273))

(declare-fun m!570275 () Bool)

(assert (=> b!592096 m!570275))

(declare-fun m!570277 () Bool)

(assert (=> b!592096 m!570277))

(assert (=> b!592096 m!570245))

(assert (=> b!592096 m!570259))

(declare-fun m!570279 () Bool)

(assert (=> b!592096 m!570279))

(declare-fun m!570281 () Bool)

(assert (=> b!592096 m!570281))

(assert (=> b!592096 m!570245))

(declare-fun m!570283 () Bool)

(assert (=> b!592096 m!570283))

(declare-fun m!570285 () Bool)

(assert (=> b!592095 m!570285))

(assert (=> b!592089 m!570245))

(assert (=> b!592089 m!570259))

(declare-fun m!570287 () Bool)

(assert (=> b!592089 m!570287))

(assert (=> b!592081 m!570245))

(assert (=> b!592081 m!570245))

(declare-fun m!570289 () Bool)

(assert (=> b!592081 m!570289))

(push 1)

(assert (not b!592080))

(assert (not b!592085))

(assert (not b!592081))

(assert (not b!592083))

(assert (not start!54190))

(assert (not b!592088))

(assert (not b!592092))

(assert (not b!592090))

(assert (not b!592084))

(assert (not b!592094))

(assert (not b!592086))

(assert (not b!592096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

