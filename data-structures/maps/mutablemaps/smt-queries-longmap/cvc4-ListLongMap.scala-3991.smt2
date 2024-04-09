; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54148 () Bool)

(assert start!54148)

(declare-fun b!590928 () Bool)

(declare-fun res!378088 () Bool)

(declare-fun e!337408 () Bool)

(assert (=> b!590928 (=> (not res!378088) (not e!337408))))

(declare-datatypes ((array!36841 0))(
  ( (array!36842 (arr!17687 (Array (_ BitVec 32) (_ BitVec 64))) (size!18051 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36841)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590928 (= res!378088 (validKeyInArray!0 (select (arr!17687 a!2986) j!136)))))

(declare-fun b!590929 () Bool)

(declare-datatypes ((Unit!18480 0))(
  ( (Unit!18481) )
))
(declare-fun e!337407 () Unit!18480)

(declare-fun Unit!18482 () Unit!18480)

(assert (=> b!590929 (= e!337407 Unit!18482)))

(declare-fun b!590931 () Bool)

(declare-fun res!378087 () Bool)

(declare-fun e!337399 () Bool)

(assert (=> b!590931 (=> (not res!378087) (not e!337399))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36841 (_ BitVec 32)) Bool)

(assert (=> b!590931 (= res!378087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590932 () Bool)

(declare-fun e!337402 () Bool)

(assert (=> b!590932 (= e!337399 e!337402)))

(declare-fun res!378093 () Bool)

(assert (=> b!590932 (=> (not res!378093) (not e!337402))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!590932 (= res!378093 (= (select (store (arr!17687 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268159 () array!36841)

(assert (=> b!590932 (= lt!268159 (array!36842 (store (arr!17687 a!2986) i!1108 k!1786) (size!18051 a!2986)))))

(declare-fun b!590933 () Bool)

(declare-fun e!337406 () Bool)

(declare-fun e!337400 () Bool)

(assert (=> b!590933 (= e!337406 e!337400)))

(declare-fun res!378090 () Bool)

(assert (=> b!590933 (=> res!378090 e!337400)))

(declare-fun lt!268157 () (_ BitVec 64))

(declare-fun lt!268152 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590933 (= res!378090 (or (not (= (select (arr!17687 a!2986) j!136) lt!268157)) (not (= (select (arr!17687 a!2986) j!136) lt!268152)) (bvsge j!136 index!984)))))

(declare-fun b!590934 () Bool)

(declare-fun e!337398 () Bool)

(assert (=> b!590934 (= e!337402 e!337398)))

(declare-fun res!378085 () Bool)

(assert (=> b!590934 (=> (not res!378085) (not e!337398))))

(declare-datatypes ((SeekEntryResult!6134 0))(
  ( (MissingZero!6134 (index!26771 (_ BitVec 32))) (Found!6134 (index!26772 (_ BitVec 32))) (Intermediate!6134 (undefined!6946 Bool) (index!26773 (_ BitVec 32)) (x!55591 (_ BitVec 32))) (Undefined!6134) (MissingVacant!6134 (index!26774 (_ BitVec 32))) )
))
(declare-fun lt!268161 () SeekEntryResult!6134)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!590934 (= res!378085 (and (= lt!268161 (Found!6134 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17687 a!2986) index!984) (select (arr!17687 a!2986) j!136))) (not (= (select (arr!17687 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36841 (_ BitVec 32)) SeekEntryResult!6134)

(assert (=> b!590934 (= lt!268161 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17687 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590935 () Bool)

(assert (=> b!590935 (= e!337408 e!337399)))

(declare-fun res!378084 () Bool)

(assert (=> b!590935 (=> (not res!378084) (not e!337399))))

(declare-fun lt!268155 () SeekEntryResult!6134)

(assert (=> b!590935 (= res!378084 (or (= lt!268155 (MissingZero!6134 i!1108)) (= lt!268155 (MissingVacant!6134 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36841 (_ BitVec 32)) SeekEntryResult!6134)

(assert (=> b!590935 (= lt!268155 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590936 () Bool)

(declare-fun e!337401 () Bool)

(declare-fun lt!268153 () SeekEntryResult!6134)

(assert (=> b!590936 (= e!337401 (= lt!268161 lt!268153))))

(declare-fun b!590937 () Bool)

(declare-fun e!337404 () Bool)

(assert (=> b!590937 (= e!337398 (not e!337404))))

(declare-fun res!378086 () Bool)

(assert (=> b!590937 (=> res!378086 e!337404)))

(declare-fun lt!268158 () SeekEntryResult!6134)

(assert (=> b!590937 (= res!378086 (not (= lt!268158 (Found!6134 index!984))))))

(declare-fun lt!268156 () Unit!18480)

(assert (=> b!590937 (= lt!268156 e!337407)))

(declare-fun c!66791 () Bool)

(assert (=> b!590937 (= c!66791 (= lt!268158 Undefined!6134))))

(assert (=> b!590937 (= lt!268158 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268157 lt!268159 mask!3053))))

(assert (=> b!590937 e!337401))

(declare-fun res!378091 () Bool)

(assert (=> b!590937 (=> (not res!378091) (not e!337401))))

(declare-fun lt!268160 () (_ BitVec 32))

(assert (=> b!590937 (= res!378091 (= lt!268153 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268160 vacantSpotIndex!68 lt!268157 lt!268159 mask!3053)))))

(assert (=> b!590937 (= lt!268153 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268160 vacantSpotIndex!68 (select (arr!17687 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590937 (= lt!268157 (select (store (arr!17687 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268154 () Unit!18480)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36841 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18480)

(assert (=> b!590937 (= lt!268154 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268160 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590937 (= lt!268160 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590938 () Bool)

(declare-fun e!337405 () Bool)

(declare-fun arrayContainsKey!0 (array!36841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590938 (= e!337405 (arrayContainsKey!0 lt!268159 (select (arr!17687 a!2986) j!136) index!984))))

(declare-fun b!590939 () Bool)

(declare-fun res!378089 () Bool)

(assert (=> b!590939 (=> (not res!378089) (not e!337399))))

(assert (=> b!590939 (= res!378089 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17687 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590940 () Bool)

(declare-fun res!378094 () Bool)

(assert (=> b!590940 (=> (not res!378094) (not e!337408))))

(assert (=> b!590940 (= res!378094 (validKeyInArray!0 k!1786))))

(declare-fun b!590941 () Bool)

(declare-fun res!378080 () Bool)

(assert (=> b!590941 (=> (not res!378080) (not e!337408))))

(assert (=> b!590941 (= res!378080 (and (= (size!18051 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18051 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18051 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!378081 () Bool)

(assert (=> start!54148 (=> (not res!378081) (not e!337408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54148 (= res!378081 (validMask!0 mask!3053))))

(assert (=> start!54148 e!337408))

(assert (=> start!54148 true))

(declare-fun array_inv!13461 (array!36841) Bool)

(assert (=> start!54148 (array_inv!13461 a!2986)))

(declare-fun b!590930 () Bool)

(assert (=> b!590930 (= e!337404 true)))

(assert (=> b!590930 e!337406))

(declare-fun res!378082 () Bool)

(assert (=> b!590930 (=> (not res!378082) (not e!337406))))

(assert (=> b!590930 (= res!378082 (= lt!268152 (select (arr!17687 a!2986) j!136)))))

(assert (=> b!590930 (= lt!268152 (select (store (arr!17687 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!590942 () Bool)

(declare-fun res!378083 () Bool)

(assert (=> b!590942 (=> (not res!378083) (not e!337408))))

(assert (=> b!590942 (= res!378083 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590943 () Bool)

(declare-fun res!378095 () Bool)

(assert (=> b!590943 (=> (not res!378095) (not e!337399))))

(declare-datatypes ((List!11781 0))(
  ( (Nil!11778) (Cons!11777 (h!12822 (_ BitVec 64)) (t!18017 List!11781)) )
))
(declare-fun arrayNoDuplicates!0 (array!36841 (_ BitVec 32) List!11781) Bool)

(assert (=> b!590943 (= res!378095 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11778))))

(declare-fun b!590944 () Bool)

(assert (=> b!590944 (= e!337400 e!337405)))

(declare-fun res!378092 () Bool)

(assert (=> b!590944 (=> (not res!378092) (not e!337405))))

(assert (=> b!590944 (= res!378092 (arrayContainsKey!0 lt!268159 (select (arr!17687 a!2986) j!136) j!136))))

(declare-fun b!590945 () Bool)

(declare-fun Unit!18483 () Unit!18480)

(assert (=> b!590945 (= e!337407 Unit!18483)))

(assert (=> b!590945 false))

(assert (= (and start!54148 res!378081) b!590941))

(assert (= (and b!590941 res!378080) b!590928))

(assert (= (and b!590928 res!378088) b!590940))

(assert (= (and b!590940 res!378094) b!590942))

(assert (= (and b!590942 res!378083) b!590935))

(assert (= (and b!590935 res!378084) b!590931))

(assert (= (and b!590931 res!378087) b!590943))

(assert (= (and b!590943 res!378095) b!590939))

(assert (= (and b!590939 res!378089) b!590932))

(assert (= (and b!590932 res!378093) b!590934))

(assert (= (and b!590934 res!378085) b!590937))

(assert (= (and b!590937 res!378091) b!590936))

(assert (= (and b!590937 c!66791) b!590945))

(assert (= (and b!590937 (not c!66791)) b!590929))

(assert (= (and b!590937 (not res!378086)) b!590930))

(assert (= (and b!590930 res!378082) b!590933))

(assert (= (and b!590933 (not res!378090)) b!590944))

(assert (= (and b!590944 res!378092) b!590938))

(declare-fun m!569255 () Bool)

(assert (=> b!590934 m!569255))

(declare-fun m!569257 () Bool)

(assert (=> b!590934 m!569257))

(assert (=> b!590934 m!569257))

(declare-fun m!569259 () Bool)

(assert (=> b!590934 m!569259))

(declare-fun m!569261 () Bool)

(assert (=> b!590937 m!569261))

(declare-fun m!569263 () Bool)

(assert (=> b!590937 m!569263))

(assert (=> b!590937 m!569257))

(declare-fun m!569265 () Bool)

(assert (=> b!590937 m!569265))

(declare-fun m!569267 () Bool)

(assert (=> b!590937 m!569267))

(declare-fun m!569269 () Bool)

(assert (=> b!590937 m!569269))

(declare-fun m!569271 () Bool)

(assert (=> b!590937 m!569271))

(assert (=> b!590937 m!569257))

(declare-fun m!569273 () Bool)

(assert (=> b!590937 m!569273))

(declare-fun m!569275 () Bool)

(assert (=> start!54148 m!569275))

(declare-fun m!569277 () Bool)

(assert (=> start!54148 m!569277))

(declare-fun m!569279 () Bool)

(assert (=> b!590943 m!569279))

(declare-fun m!569281 () Bool)

(assert (=> b!590939 m!569281))

(declare-fun m!569283 () Bool)

(assert (=> b!590931 m!569283))

(declare-fun m!569285 () Bool)

(assert (=> b!590942 m!569285))

(assert (=> b!590933 m!569257))

(assert (=> b!590944 m!569257))

(assert (=> b!590944 m!569257))

(declare-fun m!569287 () Bool)

(assert (=> b!590944 m!569287))

(declare-fun m!569289 () Bool)

(assert (=> b!590940 m!569289))

(assert (=> b!590930 m!569257))

(assert (=> b!590930 m!569269))

(declare-fun m!569291 () Bool)

(assert (=> b!590930 m!569291))

(declare-fun m!569293 () Bool)

(assert (=> b!590935 m!569293))

(assert (=> b!590938 m!569257))

(assert (=> b!590938 m!569257))

(declare-fun m!569295 () Bool)

(assert (=> b!590938 m!569295))

(assert (=> b!590928 m!569257))

(assert (=> b!590928 m!569257))

(declare-fun m!569297 () Bool)

(assert (=> b!590928 m!569297))

(assert (=> b!590932 m!569269))

(declare-fun m!569299 () Bool)

(assert (=> b!590932 m!569299))

(push 1)

