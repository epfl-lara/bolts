; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55158 () Bool)

(assert start!55158)

(declare-fun b!604141 () Bool)

(declare-fun e!345690 () Bool)

(declare-fun e!345687 () Bool)

(assert (=> b!604141 (= e!345690 (not e!345687))))

(declare-fun res!388268 () Bool)

(assert (=> b!604141 (=> res!388268 e!345687)))

(declare-datatypes ((SeekEntryResult!6297 0))(
  ( (MissingZero!6297 (index!27450 (_ BitVec 32))) (Found!6297 (index!27451 (_ BitVec 32))) (Intermediate!6297 (undefined!7109 Bool) (index!27452 (_ BitVec 32)) (x!56275 (_ BitVec 32))) (Undefined!6297) (MissingVacant!6297 (index!27453 (_ BitVec 32))) )
))
(declare-fun lt!275563 () SeekEntryResult!6297)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604141 (= res!388268 (not (= lt!275563 (Found!6297 index!984))))))

(declare-datatypes ((Unit!19210 0))(
  ( (Unit!19211) )
))
(declare-fun lt!275560 () Unit!19210)

(declare-fun e!345694 () Unit!19210)

(assert (=> b!604141 (= lt!275560 e!345694)))

(declare-fun c!68311 () Bool)

(assert (=> b!604141 (= c!68311 (= lt!275563 Undefined!6297))))

(declare-datatypes ((array!37194 0))(
  ( (array!37195 (arr!17850 (Array (_ BitVec 32) (_ BitVec 64))) (size!18214 (_ BitVec 32))) )
))
(declare-fun lt!275565 () array!37194)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!275558 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37194 (_ BitVec 32)) SeekEntryResult!6297)

(assert (=> b!604141 (= lt!275563 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275558 lt!275565 mask!3053))))

(declare-fun e!345688 () Bool)

(assert (=> b!604141 e!345688))

(declare-fun res!388271 () Bool)

(assert (=> b!604141 (=> (not res!388271) (not e!345688))))

(declare-fun lt!275553 () SeekEntryResult!6297)

(declare-fun lt!275556 () (_ BitVec 32))

(assert (=> b!604141 (= res!388271 (= lt!275553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275556 vacantSpotIndex!68 lt!275558 lt!275565 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37194)

(assert (=> b!604141 (= lt!275553 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275556 vacantSpotIndex!68 (select (arr!17850 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!604141 (= lt!275558 (select (store (arr!17850 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275557 () Unit!19210)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37194 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19210)

(assert (=> b!604141 (= lt!275557 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275556 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604141 (= lt!275556 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604142 () Bool)

(declare-fun res!388255 () Bool)

(declare-fun e!345680 () Bool)

(assert (=> b!604142 (=> (not res!388255) (not e!345680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604142 (= res!388255 (validKeyInArray!0 (select (arr!17850 a!2986) j!136)))))

(declare-fun e!345684 () Bool)

(declare-fun b!604143 () Bool)

(declare-fun arrayContainsKey!0 (array!37194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604143 (= e!345684 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) index!984))))

(declare-fun b!604144 () Bool)

(declare-fun Unit!19212 () Unit!19210)

(assert (=> b!604144 (= e!345694 Unit!19212)))

(assert (=> b!604144 false))

(declare-fun b!604145 () Bool)

(declare-fun lt!275554 () SeekEntryResult!6297)

(assert (=> b!604145 (= e!345688 (= lt!275554 lt!275553))))

(declare-fun b!604146 () Bool)

(declare-fun e!345691 () Bool)

(declare-fun e!345682 () Bool)

(assert (=> b!604146 (= e!345691 e!345682)))

(declare-fun res!388269 () Bool)

(assert (=> b!604146 (=> (not res!388269) (not e!345682))))

(assert (=> b!604146 (= res!388269 (= (select (store (arr!17850 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604146 (= lt!275565 (array!37195 (store (arr!17850 a!2986) i!1108 k!1786) (size!18214 a!2986)))))

(declare-fun b!604147 () Bool)

(declare-fun res!388253 () Bool)

(assert (=> b!604147 (=> (not res!388253) (not e!345691))))

(declare-datatypes ((List!11944 0))(
  ( (Nil!11941) (Cons!11940 (h!12985 (_ BitVec 64)) (t!18180 List!11944)) )
))
(declare-fun arrayNoDuplicates!0 (array!37194 (_ BitVec 32) List!11944) Bool)

(assert (=> b!604147 (= res!388253 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11941))))

(declare-fun b!604148 () Bool)

(declare-fun e!345692 () Bool)

(assert (=> b!604148 (= e!345692 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18214 a!2986))))))

(assert (=> b!604148 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275555 () Unit!19210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37194 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19210)

(assert (=> b!604148 (= lt!275555 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275565 (select (arr!17850 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604148 e!345684))

(declare-fun res!388259 () Bool)

(assert (=> b!604148 (=> (not res!388259) (not e!345684))))

(assert (=> b!604148 (= res!388259 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) j!136))))

(declare-fun b!604149 () Bool)

(assert (=> b!604149 (= e!345680 e!345691)))

(declare-fun res!388256 () Bool)

(assert (=> b!604149 (=> (not res!388256) (not e!345691))))

(declare-fun lt!275567 () SeekEntryResult!6297)

(assert (=> b!604149 (= res!388256 (or (= lt!275567 (MissingZero!6297 i!1108)) (= lt!275567 (MissingVacant!6297 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37194 (_ BitVec 32)) SeekEntryResult!6297)

(assert (=> b!604149 (= lt!275567 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!604150 () Bool)

(declare-fun res!388262 () Bool)

(assert (=> b!604150 (=> (not res!388262) (not e!345691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37194 (_ BitVec 32)) Bool)

(assert (=> b!604150 (= res!388262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604151 () Bool)

(declare-fun res!388267 () Bool)

(assert (=> b!604151 (=> (not res!388267) (not e!345680))))

(assert (=> b!604151 (= res!388267 (and (= (size!18214 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18214 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18214 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!388261 () Bool)

(assert (=> start!55158 (=> (not res!388261) (not e!345680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55158 (= res!388261 (validMask!0 mask!3053))))

(assert (=> start!55158 e!345680))

(assert (=> start!55158 true))

(declare-fun array_inv!13624 (array!37194) Bool)

(assert (=> start!55158 (array_inv!13624 a!2986)))

(declare-fun b!604152 () Bool)

(declare-fun e!345686 () Bool)

(declare-fun e!345693 () Bool)

(assert (=> b!604152 (= e!345686 e!345693)))

(declare-fun res!388265 () Bool)

(assert (=> b!604152 (=> (not res!388265) (not e!345693))))

(assert (=> b!604152 (= res!388265 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) j!136))))

(declare-fun b!604153 () Bool)

(assert (=> b!604153 (= e!345682 e!345690)))

(declare-fun res!388257 () Bool)

(assert (=> b!604153 (=> (not res!388257) (not e!345690))))

(assert (=> b!604153 (= res!388257 (and (= lt!275554 (Found!6297 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17850 a!2986) index!984) (select (arr!17850 a!2986) j!136))) (not (= (select (arr!17850 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604153 (= lt!275554 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17850 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604154 () Bool)

(declare-fun res!388264 () Bool)

(assert (=> b!604154 (=> (not res!388264) (not e!345680))))

(assert (=> b!604154 (= res!388264 (validKeyInArray!0 k!1786))))

(declare-fun b!604155 () Bool)

(declare-fun Unit!19213 () Unit!19210)

(assert (=> b!604155 (= e!345694 Unit!19213)))

(declare-fun b!604156 () Bool)

(declare-fun res!388266 () Bool)

(assert (=> b!604156 (=> (not res!388266) (not e!345680))))

(assert (=> b!604156 (= res!388266 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604157 () Bool)

(declare-fun e!345685 () Unit!19210)

(declare-fun Unit!19214 () Unit!19210)

(assert (=> b!604157 (= e!345685 Unit!19214)))

(declare-fun lt!275561 () Unit!19210)

(assert (=> b!604157 (= lt!275561 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275565 (select (arr!17850 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604157 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275566 () Unit!19210)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37194 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11944) Unit!19210)

(assert (=> b!604157 (= lt!275566 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11941))))

(assert (=> b!604157 (arrayNoDuplicates!0 lt!275565 #b00000000000000000000000000000000 Nil!11941)))

(declare-fun lt!275559 () Unit!19210)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37194 (_ BitVec 32) (_ BitVec 32)) Unit!19210)

(assert (=> b!604157 (= lt!275559 (lemmaNoDuplicateFromThenFromBigger!0 lt!275565 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604157 (arrayNoDuplicates!0 lt!275565 j!136 Nil!11941)))

(declare-fun lt!275564 () Unit!19210)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37194 (_ BitVec 64) (_ BitVec 32) List!11944) Unit!19210)

(assert (=> b!604157 (= lt!275564 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275565 (select (arr!17850 a!2986) j!136) j!136 Nil!11941))))

(assert (=> b!604157 false))

(declare-fun b!604158 () Bool)

(assert (=> b!604158 (= e!345693 (arrayContainsKey!0 lt!275565 (select (arr!17850 a!2986) j!136) index!984))))

(declare-fun b!604159 () Bool)

(declare-fun e!345689 () Bool)

(assert (=> b!604159 (= e!345687 e!345689)))

(declare-fun res!388270 () Bool)

(assert (=> b!604159 (=> res!388270 e!345689)))

(declare-fun lt!275568 () (_ BitVec 64))

(assert (=> b!604159 (= res!388270 (or (not (= (select (arr!17850 a!2986) j!136) lt!275558)) (not (= (select (arr!17850 a!2986) j!136) lt!275568))))))

(declare-fun e!345683 () Bool)

(assert (=> b!604159 e!345683))

(declare-fun res!388254 () Bool)

(assert (=> b!604159 (=> (not res!388254) (not e!345683))))

(assert (=> b!604159 (= res!388254 (= lt!275568 (select (arr!17850 a!2986) j!136)))))

(assert (=> b!604159 (= lt!275568 (select (store (arr!17850 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!604160 () Bool)

(assert (=> b!604160 (= e!345683 e!345686)))

(declare-fun res!388260 () Bool)

(assert (=> b!604160 (=> res!388260 e!345686)))

(assert (=> b!604160 (= res!388260 (or (not (= (select (arr!17850 a!2986) j!136) lt!275558)) (not (= (select (arr!17850 a!2986) j!136) lt!275568)) (bvsge j!136 index!984)))))

(declare-fun b!604161 () Bool)

(declare-fun Unit!19215 () Unit!19210)

(assert (=> b!604161 (= e!345685 Unit!19215)))

(declare-fun b!604162 () Bool)

(declare-fun res!388258 () Bool)

(assert (=> b!604162 (=> (not res!388258) (not e!345691))))

(assert (=> b!604162 (= res!388258 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17850 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604163 () Bool)

(assert (=> b!604163 (= e!345689 e!345692)))

(declare-fun res!388263 () Bool)

(assert (=> b!604163 (=> res!388263 e!345692)))

(assert (=> b!604163 (= res!388263 (bvsge index!984 j!136))))

(declare-fun lt!275562 () Unit!19210)

(assert (=> b!604163 (= lt!275562 e!345685)))

(declare-fun c!68312 () Bool)

(assert (=> b!604163 (= c!68312 (bvslt j!136 index!984))))

(assert (= (and start!55158 res!388261) b!604151))

(assert (= (and b!604151 res!388267) b!604142))

(assert (= (and b!604142 res!388255) b!604154))

(assert (= (and b!604154 res!388264) b!604156))

(assert (= (and b!604156 res!388266) b!604149))

(assert (= (and b!604149 res!388256) b!604150))

(assert (= (and b!604150 res!388262) b!604147))

(assert (= (and b!604147 res!388253) b!604162))

(assert (= (and b!604162 res!388258) b!604146))

(assert (= (and b!604146 res!388269) b!604153))

(assert (= (and b!604153 res!388257) b!604141))

(assert (= (and b!604141 res!388271) b!604145))

(assert (= (and b!604141 c!68311) b!604144))

(assert (= (and b!604141 (not c!68311)) b!604155))

(assert (= (and b!604141 (not res!388268)) b!604159))

(assert (= (and b!604159 res!388254) b!604160))

(assert (= (and b!604160 (not res!388260)) b!604152))

(assert (= (and b!604152 res!388265) b!604158))

(assert (= (and b!604159 (not res!388270)) b!604163))

(assert (= (and b!604163 c!68312) b!604157))

(assert (= (and b!604163 (not c!68312)) b!604161))

(assert (= (and b!604163 (not res!388263)) b!604148))

(assert (= (and b!604148 res!388259) b!604143))

(declare-fun m!581103 () Bool)

(assert (=> b!604156 m!581103))

(declare-fun m!581105 () Bool)

(assert (=> b!604162 m!581105))

(declare-fun m!581107 () Bool)

(assert (=> b!604147 m!581107))

(declare-fun m!581109 () Bool)

(assert (=> b!604160 m!581109))

(declare-fun m!581111 () Bool)

(assert (=> b!604150 m!581111))

(declare-fun m!581113 () Bool)

(assert (=> b!604154 m!581113))

(assert (=> b!604159 m!581109))

(declare-fun m!581115 () Bool)

(assert (=> b!604159 m!581115))

(declare-fun m!581117 () Bool)

(assert (=> b!604159 m!581117))

(assert (=> b!604148 m!581109))

(assert (=> b!604148 m!581109))

(declare-fun m!581119 () Bool)

(assert (=> b!604148 m!581119))

(assert (=> b!604148 m!581109))

(declare-fun m!581121 () Bool)

(assert (=> b!604148 m!581121))

(assert (=> b!604148 m!581109))

(declare-fun m!581123 () Bool)

(assert (=> b!604148 m!581123))

(assert (=> b!604146 m!581115))

(declare-fun m!581125 () Bool)

(assert (=> b!604146 m!581125))

(declare-fun m!581127 () Bool)

(assert (=> b!604153 m!581127))

(assert (=> b!604153 m!581109))

(assert (=> b!604153 m!581109))

(declare-fun m!581129 () Bool)

(assert (=> b!604153 m!581129))

(declare-fun m!581131 () Bool)

(assert (=> b!604149 m!581131))

(assert (=> b!604142 m!581109))

(assert (=> b!604142 m!581109))

(declare-fun m!581133 () Bool)

(assert (=> b!604142 m!581133))

(declare-fun m!581135 () Bool)

(assert (=> start!55158 m!581135))

(declare-fun m!581137 () Bool)

(assert (=> start!55158 m!581137))

(assert (=> b!604143 m!581109))

(assert (=> b!604143 m!581109))

(declare-fun m!581139 () Bool)

(assert (=> b!604143 m!581139))

(assert (=> b!604158 m!581109))

(assert (=> b!604158 m!581109))

(assert (=> b!604158 m!581139))

(assert (=> b!604141 m!581109))

(declare-fun m!581141 () Bool)

(assert (=> b!604141 m!581141))

(declare-fun m!581143 () Bool)

(assert (=> b!604141 m!581143))

(assert (=> b!604141 m!581109))

(assert (=> b!604141 m!581115))

(declare-fun m!581145 () Bool)

(assert (=> b!604141 m!581145))

(declare-fun m!581147 () Bool)

(assert (=> b!604141 m!581147))

(declare-fun m!581149 () Bool)

(assert (=> b!604141 m!581149))

(declare-fun m!581151 () Bool)

(assert (=> b!604141 m!581151))

(assert (=> b!604152 m!581109))

(assert (=> b!604152 m!581109))

(assert (=> b!604152 m!581123))

(assert (=> b!604157 m!581109))

(declare-fun m!581153 () Bool)

(assert (=> b!604157 m!581153))

(assert (=> b!604157 m!581109))

(declare-fun m!581155 () Bool)

(assert (=> b!604157 m!581155))

(declare-fun m!581157 () Bool)

(assert (=> b!604157 m!581157))

(assert (=> b!604157 m!581109))

(declare-fun m!581159 () Bool)

(assert (=> b!604157 m!581159))

(assert (=> b!604157 m!581109))

(declare-fun m!581161 () Bool)

(assert (=> b!604157 m!581161))

(declare-fun m!581163 () Bool)

(assert (=> b!604157 m!581163))

(declare-fun m!581165 () Bool)

(assert (=> b!604157 m!581165))

(push 1)

(assert (not b!604148))

(assert (not b!604156))

(assert (not b!604154))

(assert (not b!604157))

(assert (not b!604149))

(assert (not b!604141))

(assert (not b!604158))

(assert (not b!604153))

(assert (not b!604147))

(assert (not start!55158))

(assert (not b!604152))

(assert (not b!604142))

(assert (not b!604143))

(assert (not b!604150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

