; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54742 () Bool)

(assert start!54742)

(declare-fun b!597818 () Bool)

(declare-fun e!341676 () Bool)

(declare-fun e!341678 () Bool)

(assert (=> b!597818 (= e!341676 e!341678)))

(declare-fun res!383296 () Bool)

(assert (=> b!597818 (=> (not res!383296) (not e!341678))))

(declare-datatypes ((SeekEntryResult!6215 0))(
  ( (MissingZero!6215 (index!27113 (_ BitVec 32))) (Found!6215 (index!27114 (_ BitVec 32))) (Intermediate!6215 (undefined!7027 Bool) (index!27115 (_ BitVec 32)) (x!55942 (_ BitVec 32))) (Undefined!6215) (MissingVacant!6215 (index!27116 (_ BitVec 32))) )
))
(declare-fun lt!271649 () SeekEntryResult!6215)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!597818 (= res!383296 (or (= lt!271649 (MissingZero!6215 i!1108)) (= lt!271649 (MissingVacant!6215 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37021 0))(
  ( (array!37022 (arr!17768 (Array (_ BitVec 32) (_ BitVec 64))) (size!18132 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37021)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37021 (_ BitVec 32)) SeekEntryResult!6215)

(assert (=> b!597818 (= lt!271649 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!597819 () Bool)

(declare-fun e!341677 () Bool)

(declare-fun e!341680 () Bool)

(assert (=> b!597819 (= e!341677 e!341680)))

(declare-fun res!383298 () Bool)

(assert (=> b!597819 (=> res!383298 e!341680)))

(declare-fun lt!271646 () (_ BitVec 64))

(declare-fun lt!271656 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!597819 (= res!383298 (or (not (= (select (arr!17768 a!2986) j!136) lt!271646)) (not (= (select (arr!17768 a!2986) j!136) lt!271656)) (bvsge j!136 index!984)))))

(declare-fun b!597820 () Bool)

(declare-fun res!383291 () Bool)

(assert (=> b!597820 (=> (not res!383291) (not e!341678))))

(declare-datatypes ((List!11862 0))(
  ( (Nil!11859) (Cons!11858 (h!12903 (_ BitVec 64)) (t!18098 List!11862)) )
))
(declare-fun arrayNoDuplicates!0 (array!37021 (_ BitVec 32) List!11862) Bool)

(assert (=> b!597820 (= res!383291 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11859))))

(declare-fun b!597822 () Bool)

(declare-fun e!341681 () Bool)

(declare-fun e!341684 () Bool)

(assert (=> b!597822 (= e!341681 e!341684)))

(declare-fun res!383293 () Bool)

(assert (=> b!597822 (=> res!383293 e!341684)))

(assert (=> b!597822 (= res!383293 (or (not (= (select (arr!17768 a!2986) j!136) lt!271646)) (not (= (select (arr!17768 a!2986) j!136) lt!271656)) (bvsge j!136 index!984)))))

(assert (=> b!597822 e!341677))

(declare-fun res!383295 () Bool)

(assert (=> b!597822 (=> (not res!383295) (not e!341677))))

(assert (=> b!597822 (= res!383295 (= lt!271656 (select (arr!17768 a!2986) j!136)))))

(assert (=> b!597822 (= lt!271656 (select (store (arr!17768 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!597823 () Bool)

(declare-fun e!341685 () Bool)

(assert (=> b!597823 (= e!341684 e!341685)))

(declare-fun res!383289 () Bool)

(assert (=> b!597823 (=> res!383289 e!341685)))

(assert (=> b!597823 (= res!383289 (or (bvsgt #b00000000000000000000000000000000 (size!18132 a!2986)) (bvsge (size!18132 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!271651 () array!37021)

(assert (=> b!597823 (arrayNoDuplicates!0 lt!271651 #b00000000000000000000000000000000 Nil!11859)))

(declare-datatypes ((Unit!18804 0))(
  ( (Unit!18805) )
))
(declare-fun lt!271647 () Unit!18804)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37021 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11862) Unit!18804)

(assert (=> b!597823 (= lt!271647 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11859))))

(declare-fun arrayContainsKey!0 (array!37021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597823 (arrayContainsKey!0 lt!271651 (select (arr!17768 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271650 () Unit!18804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37021 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18804)

(assert (=> b!597823 (= lt!271650 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271651 (select (arr!17768 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597824 () Bool)

(declare-fun e!341682 () Bool)

(assert (=> b!597824 (= e!341678 e!341682)))

(declare-fun res!383297 () Bool)

(assert (=> b!597824 (=> (not res!383297) (not e!341682))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!597824 (= res!383297 (= (select (store (arr!17768 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597824 (= lt!271651 (array!37022 (store (arr!17768 a!2986) i!1108 k!1786) (size!18132 a!2986)))))

(declare-fun b!597825 () Bool)

(declare-fun res!383288 () Bool)

(assert (=> b!597825 (=> (not res!383288) (not e!341678))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!597825 (= res!383288 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17768 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597826 () Bool)

(declare-fun e!341675 () Bool)

(assert (=> b!597826 (= e!341680 e!341675)))

(declare-fun res!383303 () Bool)

(assert (=> b!597826 (=> (not res!383303) (not e!341675))))

(assert (=> b!597826 (= res!383303 (arrayContainsKey!0 lt!271651 (select (arr!17768 a!2986) j!136) j!136))))

(declare-fun b!597827 () Bool)

(assert (=> b!597827 (= e!341675 (arrayContainsKey!0 lt!271651 (select (arr!17768 a!2986) j!136) index!984))))

(declare-fun b!597828 () Bool)

(declare-fun e!341674 () Bool)

(assert (=> b!597828 (= e!341674 (not e!341681))))

(declare-fun res!383301 () Bool)

(assert (=> b!597828 (=> res!383301 e!341681)))

(declare-fun lt!271655 () SeekEntryResult!6215)

(assert (=> b!597828 (= res!383301 (not (= lt!271655 (Found!6215 index!984))))))

(declare-fun lt!271653 () Unit!18804)

(declare-fun e!341683 () Unit!18804)

(assert (=> b!597828 (= lt!271653 e!341683)))

(declare-fun c!67634 () Bool)

(assert (=> b!597828 (= c!67634 (= lt!271655 Undefined!6215))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37021 (_ BitVec 32)) SeekEntryResult!6215)

(assert (=> b!597828 (= lt!271655 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271646 lt!271651 mask!3053))))

(declare-fun e!341673 () Bool)

(assert (=> b!597828 e!341673))

(declare-fun res!383286 () Bool)

(assert (=> b!597828 (=> (not res!383286) (not e!341673))))

(declare-fun lt!271645 () SeekEntryResult!6215)

(declare-fun lt!271648 () (_ BitVec 32))

(assert (=> b!597828 (= res!383286 (= lt!271645 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271648 vacantSpotIndex!68 lt!271646 lt!271651 mask!3053)))))

(assert (=> b!597828 (= lt!271645 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271648 vacantSpotIndex!68 (select (arr!17768 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!597828 (= lt!271646 (select (store (arr!17768 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271654 () Unit!18804)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18804)

(assert (=> b!597828 (= lt!271654 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271648 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597828 (= lt!271648 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597829 () Bool)

(declare-fun res!383290 () Bool)

(assert (=> b!597829 (=> (not res!383290) (not e!341676))))

(assert (=> b!597829 (= res!383290 (and (= (size!18132 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18132 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18132 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!597830 () Bool)

(declare-fun res!383302 () Bool)

(assert (=> b!597830 (=> (not res!383302) (not e!341678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37021 (_ BitVec 32)) Bool)

(assert (=> b!597830 (= res!383302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!597831 () Bool)

(declare-fun e!341679 () Bool)

(declare-fun contains!2962 (List!11862 (_ BitVec 64)) Bool)

(assert (=> b!597831 (= e!341679 (not (contains!2962 Nil!11859 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597821 () Bool)

(declare-fun res!383287 () Bool)

(assert (=> b!597821 (=> (not res!383287) (not e!341676))))

(assert (=> b!597821 (= res!383287 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!383285 () Bool)

(assert (=> start!54742 (=> (not res!383285) (not e!341676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54742 (= res!383285 (validMask!0 mask!3053))))

(assert (=> start!54742 e!341676))

(assert (=> start!54742 true))

(declare-fun array_inv!13542 (array!37021) Bool)

(assert (=> start!54742 (array_inv!13542 a!2986)))

(declare-fun b!597832 () Bool)

(declare-fun res!383299 () Bool)

(assert (=> b!597832 (=> (not res!383299) (not e!341676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597832 (= res!383299 (validKeyInArray!0 k!1786))))

(declare-fun b!597833 () Bool)

(declare-fun lt!271652 () SeekEntryResult!6215)

(assert (=> b!597833 (= e!341673 (= lt!271652 lt!271645))))

(declare-fun b!597834 () Bool)

(assert (=> b!597834 (= e!341685 e!341679)))

(declare-fun res!383294 () Bool)

(assert (=> b!597834 (=> (not res!383294) (not e!341679))))

(assert (=> b!597834 (= res!383294 (not (contains!2962 Nil!11859 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597835 () Bool)

(assert (=> b!597835 (= e!341682 e!341674)))

(declare-fun res!383300 () Bool)

(assert (=> b!597835 (=> (not res!383300) (not e!341674))))

(assert (=> b!597835 (= res!383300 (and (= lt!271652 (Found!6215 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17768 a!2986) index!984) (select (arr!17768 a!2986) j!136))) (not (= (select (arr!17768 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!597835 (= lt!271652 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17768 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597836 () Bool)

(declare-fun res!383284 () Bool)

(assert (=> b!597836 (=> (not res!383284) (not e!341676))))

(assert (=> b!597836 (= res!383284 (validKeyInArray!0 (select (arr!17768 a!2986) j!136)))))

(declare-fun b!597837 () Bool)

(declare-fun Unit!18806 () Unit!18804)

(assert (=> b!597837 (= e!341683 Unit!18806)))

(assert (=> b!597837 false))

(declare-fun b!597838 () Bool)

(declare-fun Unit!18807 () Unit!18804)

(assert (=> b!597838 (= e!341683 Unit!18807)))

(declare-fun b!597839 () Bool)

(declare-fun res!383292 () Bool)

(assert (=> b!597839 (=> res!383292 e!341685)))

(declare-fun noDuplicate!276 (List!11862) Bool)

(assert (=> b!597839 (= res!383292 (not (noDuplicate!276 Nil!11859)))))

(assert (= (and start!54742 res!383285) b!597829))

(assert (= (and b!597829 res!383290) b!597836))

(assert (= (and b!597836 res!383284) b!597832))

(assert (= (and b!597832 res!383299) b!597821))

(assert (= (and b!597821 res!383287) b!597818))

(assert (= (and b!597818 res!383296) b!597830))

(assert (= (and b!597830 res!383302) b!597820))

(assert (= (and b!597820 res!383291) b!597825))

(assert (= (and b!597825 res!383288) b!597824))

(assert (= (and b!597824 res!383297) b!597835))

(assert (= (and b!597835 res!383300) b!597828))

(assert (= (and b!597828 res!383286) b!597833))

(assert (= (and b!597828 c!67634) b!597837))

(assert (= (and b!597828 (not c!67634)) b!597838))

(assert (= (and b!597828 (not res!383301)) b!597822))

(assert (= (and b!597822 res!383295) b!597819))

(assert (= (and b!597819 (not res!383298)) b!597826))

(assert (= (and b!597826 res!383303) b!597827))

(assert (= (and b!597822 (not res!383293)) b!597823))

(assert (= (and b!597823 (not res!383289)) b!597839))

(assert (= (and b!597839 (not res!383292)) b!597834))

(assert (= (and b!597834 res!383294) b!597831))

(declare-fun m!575205 () Bool)

(assert (=> b!597819 m!575205))

(assert (=> b!597836 m!575205))

(assert (=> b!597836 m!575205))

(declare-fun m!575207 () Bool)

(assert (=> b!597836 m!575207))

(declare-fun m!575209 () Bool)

(assert (=> b!597839 m!575209))

(assert (=> b!597823 m!575205))

(assert (=> b!597823 m!575205))

(declare-fun m!575211 () Bool)

(assert (=> b!597823 m!575211))

(assert (=> b!597823 m!575205))

(declare-fun m!575213 () Bool)

(assert (=> b!597823 m!575213))

(declare-fun m!575215 () Bool)

(assert (=> b!597823 m!575215))

(declare-fun m!575217 () Bool)

(assert (=> b!597823 m!575217))

(declare-fun m!575219 () Bool)

(assert (=> start!54742 m!575219))

(declare-fun m!575221 () Bool)

(assert (=> start!54742 m!575221))

(declare-fun m!575223 () Bool)

(assert (=> b!597821 m!575223))

(assert (=> b!597827 m!575205))

(assert (=> b!597827 m!575205))

(declare-fun m!575225 () Bool)

(assert (=> b!597827 m!575225))

(declare-fun m!575227 () Bool)

(assert (=> b!597835 m!575227))

(assert (=> b!597835 m!575205))

(assert (=> b!597835 m!575205))

(declare-fun m!575229 () Bool)

(assert (=> b!597835 m!575229))

(declare-fun m!575231 () Bool)

(assert (=> b!597831 m!575231))

(declare-fun m!575233 () Bool)

(assert (=> b!597832 m!575233))

(declare-fun m!575235 () Bool)

(assert (=> b!597818 m!575235))

(declare-fun m!575237 () Bool)

(assert (=> b!597824 m!575237))

(declare-fun m!575239 () Bool)

(assert (=> b!597824 m!575239))

(assert (=> b!597826 m!575205))

(assert (=> b!597826 m!575205))

(declare-fun m!575241 () Bool)

(assert (=> b!597826 m!575241))

(declare-fun m!575243 () Bool)

(assert (=> b!597825 m!575243))

(assert (=> b!597822 m!575205))

(assert (=> b!597822 m!575237))

(declare-fun m!575245 () Bool)

(assert (=> b!597822 m!575245))

(declare-fun m!575247 () Bool)

(assert (=> b!597834 m!575247))

(declare-fun m!575249 () Bool)

(assert (=> b!597828 m!575249))

(declare-fun m!575251 () Bool)

(assert (=> b!597828 m!575251))

(assert (=> b!597828 m!575205))

(assert (=> b!597828 m!575237))

(declare-fun m!575253 () Bool)

(assert (=> b!597828 m!575253))

(declare-fun m!575255 () Bool)

(assert (=> b!597828 m!575255))

(assert (=> b!597828 m!575205))

(declare-fun m!575257 () Bool)

(assert (=> b!597828 m!575257))

(declare-fun m!575259 () Bool)

(assert (=> b!597828 m!575259))

(declare-fun m!575261 () Bool)

(assert (=> b!597830 m!575261))

(declare-fun m!575263 () Bool)

(assert (=> b!597820 m!575263))

(push 1)

(assert (not start!54742))

(assert (not b!597834))

(assert (not b!597823))

(assert (not b!597830))

(assert (not b!597818))

(assert (not b!597820))

(assert (not b!597831))

(assert (not b!597821))

(assert (not b!597839))

(assert (not b!597827))

(assert (not b!597832))

(assert (not b!597835))

(assert (not b!597826))

(assert (not b!597828))

(assert (not b!597836))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!597931 () Bool)

(declare-fun e!341755 () Bool)

(declare-fun e!341754 () Bool)

(assert (=> b!597931 (= e!341755 e!341754)))

(declare-fun c!67659 () Bool)

(assert (=> b!597931 (= c!67659 (validKeyInArray!0 (select (arr!17768 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597932 () Bool)

(declare-fun call!32946 () Bool)

(assert (=> b!597932 (= e!341754 call!32946)))

(declare-fun b!597933 () Bool)

(declare-fun e!341756 () Bool)

(assert (=> b!597933 (= e!341754 e!341756)))

(declare-fun lt!271689 () (_ BitVec 64))

(assert (=> b!597933 (= lt!271689 (select (arr!17768 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271688 () Unit!18804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37021 (_ BitVec 64) (_ BitVec 32)) Unit!18804)

(assert (=> b!597933 (= lt!271688 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271689 #b00000000000000000000000000000000))))

(assert (=> b!597933 (arrayContainsKey!0 a!2986 lt!271689 #b00000000000000000000000000000000)))

(declare-fun lt!271690 () Unit!18804)

(assert (=> b!597933 (= lt!271690 lt!271688)))

(declare-fun res!383347 () Bool)

(assert (=> b!597933 (= res!383347 (= (seekEntryOrOpen!0 (select (arr!17768 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6215 #b00000000000000000000000000000000)))))

(assert (=> b!597933 (=> (not res!383347) (not e!341756))))

(declare-fun d!86857 () Bool)

(declare-fun res!383348 () Bool)

(assert (=> d!86857 (=> res!383348 e!341755)))

(assert (=> d!86857 (= res!383348 (bvsge #b00000000000000000000000000000000 (size!18132 a!2986)))))

(assert (=> d!86857 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341755)))

(declare-fun b!597934 () Bool)

(assert (=> b!597934 (= e!341756 call!32946)))

(declare-fun bm!32943 () Bool)

(assert (=> bm!32943 (= call!32946 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!86857 (not res!383348)) b!597931))

(assert (= (and b!597931 c!67659) b!597933))

(assert (= (and b!597931 (not c!67659)) b!597932))

(assert (= (and b!597933 res!383347) b!597934))

(assert (= (or b!597934 b!597932) bm!32943))

(declare-fun m!575331 () Bool)

(assert (=> b!597931 m!575331))

(assert (=> b!597931 m!575331))

(declare-fun m!575333 () Bool)

(assert (=> b!597931 m!575333))

(assert (=> b!597933 m!575331))

(declare-fun m!575335 () Bool)

(assert (=> b!597933 m!575335))

(declare-fun m!575337 () Bool)

(assert (=> b!597933 m!575337))

(assert (=> b!597933 m!575331))

(declare-fun m!575339 () Bool)

(assert (=> b!597933 m!575339))

(declare-fun m!575341 () Bool)

(assert (=> bm!32943 m!575341))

(assert (=> b!597830 d!86857))

(declare-fun b!597957 () Bool)

(declare-fun e!341773 () Bool)

(assert (=> b!597957 (= e!341773 (contains!2962 Nil!11859 (select (arr!17768 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32946 () Bool)

(declare-fun call!32949 () Bool)

(declare-fun c!67668 () Bool)

(assert (=> bm!32946 (= call!32949 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67668 (Cons!11858 (select (arr!17768 a!2986) #b00000000000000000000000000000000) Nil!11859) Nil!11859)))))

(declare-fun b!597958 () Bool)

(declare-fun e!341774 () Bool)

(declare-fun e!341772 () Bool)

(assert (=> b!597958 (= e!341774 e!341772)))

(declare-fun res!383356 () Bool)

(assert (=> b!597958 (=> (not res!383356) (not e!341772))))

(assert (=> b!597958 (= res!383356 (not e!341773))))

(declare-fun res!383355 () Bool)

(assert (=> b!597958 (=> (not res!383355) (not e!341773))))

(assert (=> b!597958 (= res!383355 (validKeyInArray!0 (select (arr!17768 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597959 () Bool)

(declare-fun e!341771 () Bool)

(assert (=> b!597959 (= e!341771 call!32949)))

(declare-fun d!86863 () Bool)

(declare-fun res!383357 () Bool)

(assert (=> d!86863 (=> res!383357 e!341774)))

(assert (=> d!86863 (= res!383357 (bvsge #b00000000000000000000000000000000 (size!18132 a!2986)))))

(assert (=> d!86863 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11859) e!341774)))

(declare-fun b!597960 () Bool)

(assert (=> b!597960 (= e!341772 e!341771)))

(assert (=> b!597960 (= c!67668 (validKeyInArray!0 (select (arr!17768 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597961 () Bool)

(assert (=> b!597961 (= e!341771 call!32949)))

(assert (= (and d!86863 (not res!383357)) b!597958))

(assert (= (and b!597958 res!383355) b!597957))

(assert (= (and b!597958 res!383356) b!597960))

(assert (= (and b!597960 c!67668) b!597959))

(assert (= (and b!597960 (not c!67668)) b!597961))

(assert (= (or b!597959 b!597961) bm!32946))

(assert (=> b!597957 m!575331))

(assert (=> b!597957 m!575331))

(declare-fun m!575343 () Bool)

(assert (=> b!597957 m!575343))

(assert (=> bm!32946 m!575331))

(declare-fun m!575345 () Bool)

(assert (=> bm!32946 m!575345))

(assert (=> b!597958 m!575331))

(assert (=> b!597958 m!575331))

(assert (=> b!597958 m!575333))

(assert (=> b!597960 m!575331))

(assert (=> b!597960 m!575331))

(assert (=> b!597960 m!575333))

(assert (=> b!597820 d!86863))

(declare-fun d!86865 () Bool)

(declare-fun res!383362 () Bool)

(declare-fun e!341782 () Bool)

(assert (=> d!86865 (=> res!383362 e!341782)))

(assert (=> d!86865 (= res!383362 (is-Nil!11859 Nil!11859))))

(assert (=> d!86865 (= (noDuplicate!276 Nil!11859) e!341782)))

(declare-fun b!597972 () Bool)

(declare-fun e!341783 () Bool)

(assert (=> b!597972 (= e!341782 e!341783)))

(declare-fun res!383363 () Bool)

(assert (=> b!597972 (=> (not res!383363) (not e!341783))))

(assert (=> b!597972 (= res!383363 (not (contains!2962 (t!18098 Nil!11859) (h!12903 Nil!11859))))))

(declare-fun b!597973 () Bool)

(assert (=> b!597973 (= e!341783 (noDuplicate!276 (t!18098 Nil!11859)))))

(assert (= (and d!86865 (not res!383362)) b!597972))

(assert (= (and b!597972 res!383363) b!597973))

(declare-fun m!575353 () Bool)

(assert (=> b!597972 m!575353))

(declare-fun m!575355 () Bool)

(assert (=> b!597973 m!575355))

(assert (=> b!597839 d!86865))

(declare-fun b!598023 () Bool)

(declare-fun e!341817 () SeekEntryResult!6215)

(declare-fun lt!271725 () SeekEntryResult!6215)

(assert (=> b!598023 (= e!341817 (Found!6215 (index!27115 lt!271725)))))

(declare-fun b!598024 () Bool)

(declare-fun e!341815 () SeekEntryResult!6215)

(assert (=> b!598024 (= e!341815 e!341817)))

(declare-fun lt!271726 () (_ BitVec 64))

(assert (=> b!598024 (= lt!271726 (select (arr!17768 a!2986) (index!27115 lt!271725)))))

(declare-fun c!67691 () Bool)

(assert (=> b!598024 (= c!67691 (= lt!271726 k!1786))))

(declare-fun b!598025 () Bool)

(declare-fun c!67690 () Bool)

(assert (=> b!598025 (= c!67690 (= lt!271726 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341816 () SeekEntryResult!6215)

(assert (=> b!598025 (= e!341817 e!341816)))

(declare-fun b!598026 () Bool)

(assert (=> b!598026 (= e!341815 Undefined!6215)))

(declare-fun d!86873 () Bool)

(declare-fun lt!271724 () SeekEntryResult!6215)

(assert (=> d!86873 (and (or (is-Undefined!6215 lt!271724) (not (is-Found!6215 lt!271724)) (and (bvsge (index!27114 lt!271724) #b00000000000000000000000000000000) (bvslt (index!27114 lt!271724) (size!18132 a!2986)))) (or (is-Undefined!6215 lt!271724) (is-Found!6215 lt!271724) (not (is-MissingZero!6215 lt!271724)) (and (bvsge (index!27113 lt!271724) #b00000000000000000000000000000000) (bvslt (index!27113 lt!271724) (size!18132 a!2986)))) (or (is-Undefined!6215 lt!271724) (is-Found!6215 lt!271724) (is-MissingZero!6215 lt!271724) (not (is-MissingVacant!6215 lt!271724)) (and (bvsge (index!27116 lt!271724) #b00000000000000000000000000000000) (bvslt (index!27116 lt!271724) (size!18132 a!2986)))) (or (is-Undefined!6215 lt!271724) (ite (is-Found!6215 lt!271724) (= (select (arr!17768 a!2986) (index!27114 lt!271724)) k!1786) (ite (is-MissingZero!6215 lt!271724) (= (select (arr!17768 a!2986) (index!27113 lt!271724)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6215 lt!271724) (= (select (arr!17768 a!2986) (index!27116 lt!271724)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86873 (= lt!271724 e!341815)))

(declare-fun c!67692 () Bool)

(assert (=> d!86873 (= c!67692 (and (is-Intermediate!6215 lt!271725) (undefined!7027 lt!271725)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37021 (_ BitVec 32)) SeekEntryResult!6215)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86873 (= lt!271725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!86873 (validMask!0 mask!3053)))

(assert (=> d!86873 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!271724)))

(declare-fun b!598027 () Bool)

(assert (=> b!598027 (= e!341816 (MissingZero!6215 (index!27115 lt!271725)))))

(declare-fun b!598028 () Bool)

(assert (=> b!598028 (= e!341816 (seekKeyOrZeroReturnVacant!0 (x!55942 lt!271725) (index!27115 lt!271725) (index!27115 lt!271725) k!1786 a!2986 mask!3053))))

(assert (= (and d!86873 c!67692) b!598026))

(assert (= (and d!86873 (not c!67692)) b!598024))

(assert (= (and b!598024 c!67691) b!598023))

(assert (= (and b!598024 (not c!67691)) b!598025))

(assert (= (and b!598025 c!67690) b!598027))

(assert (= (and b!598025 (not c!67690)) b!598028))

(declare-fun m!575407 () Bool)

(assert (=> b!598024 m!575407))

(declare-fun m!575409 () Bool)

(assert (=> d!86873 m!575409))

(assert (=> d!86873 m!575219))

(declare-fun m!575411 () Bool)

(assert (=> d!86873 m!575411))

(declare-fun m!575413 () Bool)

(assert (=> d!86873 m!575413))

(declare-fun m!575415 () Bool)

(assert (=> d!86873 m!575415))

(assert (=> d!86873 m!575415))

(declare-fun m!575417 () Bool)

(assert (=> d!86873 m!575417))

(declare-fun m!575419 () Bool)

(assert (=> b!598028 m!575419))

(assert (=> b!597818 d!86873))

(declare-fun d!86899 () Bool)

(declare-fun res!383387 () Bool)

(declare-fun e!341828 () Bool)

(assert (=> d!86899 (=> res!383387 e!341828)))

(assert (=> d!86899 (= res!383387 (= (select (arr!17768 lt!271651) index!984) (select (arr!17768 a!2986) j!136)))))

(assert (=> d!86899 (= (arrayContainsKey!0 lt!271651 (select (arr!17768 a!2986) j!136) index!984) e!341828)))

(declare-fun b!598039 () Bool)

(declare-fun e!341829 () Bool)

(assert (=> b!598039 (= e!341828 e!341829)))

(declare-fun res!383388 () Bool)

(assert (=> b!598039 (=> (not res!383388) (not e!341829))))

(assert (=> b!598039 (= res!383388 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18132 lt!271651)))))

(declare-fun b!598040 () Bool)

(assert (=> b!598040 (= e!341829 (arrayContainsKey!0 lt!271651 (select (arr!17768 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86899 (not res!383387)) b!598039))

(assert (= (and b!598039 res!383388) b!598040))

(declare-fun m!575425 () Bool)

(assert (=> d!86899 m!575425))

(assert (=> b!598040 m!575205))

(declare-fun m!575427 () Bool)

(assert (=> b!598040 m!575427))

(assert (=> b!597827 d!86899))

(declare-fun b!598083 () Bool)

(declare-fun e!341854 () SeekEntryResult!6215)

(assert (=> b!598083 (= e!341854 Undefined!6215)))

(declare-fun d!86903 () Bool)

(declare-fun lt!271749 () SeekEntryResult!6215)

(assert (=> d!86903 (and (or (is-Undefined!6215 lt!271749) (not (is-Found!6215 lt!271749)) (and (bvsge (index!27114 lt!271749) #b00000000000000000000000000000000) (bvslt (index!27114 lt!271749) (size!18132 lt!271651)))) (or (is-Undefined!6215 lt!271749) (is-Found!6215 lt!271749) (not (is-MissingVacant!6215 lt!271749)) (not (= (index!27116 lt!271749) vacantSpotIndex!68)) (and (bvsge (index!27116 lt!271749) #b00000000000000000000000000000000) (bvslt (index!27116 lt!271749) (size!18132 lt!271651)))) (or (is-Undefined!6215 lt!271749) (ite (is-Found!6215 lt!271749) (= (select (arr!17768 lt!271651) (index!27114 lt!271749)) lt!271646) (and (is-MissingVacant!6215 lt!271749) (= (index!27116 lt!271749) vacantSpotIndex!68) (= (select (arr!17768 lt!271651) (index!27116 lt!271749)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86903 (= lt!271749 e!341854)))

(declare-fun c!67713 () Bool)

(assert (=> d!86903 (= c!67713 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!271750 () (_ BitVec 64))

(assert (=> d!86903 (= lt!271750 (select (arr!17768 lt!271651) index!984))))

(assert (=> d!86903 (validMask!0 mask!3053)))

(assert (=> d!86903 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271646 lt!271651 mask!3053) lt!271749)))

(declare-fun b!598084 () Bool)

(declare-fun e!341856 () SeekEntryResult!6215)

(assert (=> b!598084 (= e!341854 e!341856)))

(declare-fun c!67711 () Bool)

(assert (=> b!598084 (= c!67711 (= lt!271750 lt!271646))))

(declare-fun b!598085 () Bool)

(declare-fun c!67712 () Bool)

(assert (=> b!598085 (= c!67712 (= lt!271750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341855 () SeekEntryResult!6215)

(assert (=> b!598085 (= e!341856 e!341855)))

(declare-fun b!598086 () Bool)

(assert (=> b!598086 (= e!341855 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271646 lt!271651 mask!3053))))

(declare-fun b!598087 () Bool)

(assert (=> b!598087 (= e!341856 (Found!6215 index!984))))

(declare-fun b!598088 () Bool)

(assert (=> b!598088 (= e!341855 (MissingVacant!6215 vacantSpotIndex!68))))

(assert (= (and d!86903 c!67713) b!598083))

(assert (= (and d!86903 (not c!67713)) b!598084))

(assert (= (and b!598084 c!67711) b!598087))

(assert (= (and b!598084 (not c!67711)) b!598085))

(assert (= (and b!598085 c!67712) b!598088))

(assert (= (and b!598085 (not c!67712)) b!598086))

(declare-fun m!575451 () Bool)

(assert (=> d!86903 m!575451))

(declare-fun m!575453 () Bool)

(assert (=> d!86903 m!575453))

(assert (=> d!86903 m!575425))

(assert (=> d!86903 m!575219))

(assert (=> b!598086 m!575249))

(assert (=> b!598086 m!575249))

(declare-fun m!575455 () Bool)

(assert (=> b!598086 m!575455))

(assert (=> b!597828 d!86903))

(declare-fun b!598089 () Bool)

(declare-fun e!341857 () SeekEntryResult!6215)

(assert (=> b!598089 (= e!341857 Undefined!6215)))

(declare-fun d!86907 () Bool)

(declare-fun lt!271751 () SeekEntryResult!6215)

(assert (=> d!86907 (and (or (is-Undefined!6215 lt!271751) (not (is-Found!6215 lt!271751)) (and (bvsge (index!27114 lt!271751) #b00000000000000000000000000000000) (bvslt (index!27114 lt!271751) (size!18132 lt!271651)))) (or (is-Undefined!6215 lt!271751) (is-Found!6215 lt!271751) (not (is-MissingVacant!6215 lt!271751)) (not (= (index!27116 lt!271751) vacantSpotIndex!68)) (and (bvsge (index!27116 lt!271751) #b00000000000000000000000000000000) (bvslt (index!27116 lt!271751) (size!18132 lt!271651)))) (or (is-Undefined!6215 lt!271751) (ite (is-Found!6215 lt!271751) (= (select (arr!17768 lt!271651) (index!27114 lt!271751)) lt!271646) (and (is-MissingVacant!6215 lt!271751) (= (index!27116 lt!271751) vacantSpotIndex!68) (= (select (arr!17768 lt!271651) (index!27116 lt!271751)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86907 (= lt!271751 e!341857)))

(declare-fun c!67716 () Bool)

(assert (=> d!86907 (= c!67716 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

