; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59604 () Bool)

(assert start!59604)

(declare-fun b!658224 () Bool)

(declare-fun e!378143 () Bool)

(declare-fun e!378144 () Bool)

(assert (=> b!658224 (= e!378143 e!378144)))

(declare-fun res!426954 () Bool)

(assert (=> b!658224 (=> (not res!426954) (not e!378144))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6999 0))(
  ( (MissingZero!6999 (index!30360 (_ BitVec 32))) (Found!6999 (index!30361 (_ BitVec 32))) (Intermediate!6999 (undefined!7811 Bool) (index!30362 (_ BitVec 32)) (x!59179 (_ BitVec 32))) (Undefined!6999) (MissingVacant!6999 (index!30363 (_ BitVec 32))) )
))
(declare-fun lt!307819 () SeekEntryResult!6999)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38718 0))(
  ( (array!38719 (arr!18552 (Array (_ BitVec 32) (_ BitVec 64))) (size!18916 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38718)

(assert (=> b!658224 (= res!426954 (and (= lt!307819 (Found!6999 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18552 a!2986) index!984) (select (arr!18552 a!2986) j!136))) (not (= (select (arr!18552 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38718 (_ BitVec 32)) SeekEntryResult!6999)

(assert (=> b!658224 (= lt!307819 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18552 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!658225 () Bool)

(declare-fun res!426952 () Bool)

(declare-fun e!378147 () Bool)

(assert (=> b!658225 (=> (not res!426952) (not e!378147))))

(declare-datatypes ((List!12646 0))(
  ( (Nil!12643) (Cons!12642 (h!13687 (_ BitVec 64)) (t!18882 List!12646)) )
))
(declare-fun arrayNoDuplicates!0 (array!38718 (_ BitVec 32) List!12646) Bool)

(assert (=> b!658225 (= res!426952 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12643))))

(declare-fun b!658226 () Bool)

(declare-fun res!426959 () Bool)

(assert (=> b!658226 (= res!426959 (bvsge j!136 index!984))))

(declare-fun e!378150 () Bool)

(assert (=> b!658226 (=> res!426959 e!378150)))

(declare-fun e!378146 () Bool)

(assert (=> b!658226 (= e!378146 e!378150)))

(declare-fun b!658227 () Bool)

(declare-fun res!426958 () Bool)

(declare-fun e!378148 () Bool)

(assert (=> b!658227 (=> (not res!426958) (not e!378148))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!658227 (= res!426958 (and (= (size!18916 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18916 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18916 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!658228 () Bool)

(declare-datatypes ((Unit!22834 0))(
  ( (Unit!22835) )
))
(declare-fun e!378140 () Unit!22834)

(declare-fun Unit!22836 () Unit!22834)

(assert (=> b!658228 (= e!378140 Unit!22836)))

(declare-fun b!658229 () Bool)

(declare-fun Unit!22837 () Unit!22834)

(assert (=> b!658229 (= e!378140 Unit!22837)))

(assert (=> b!658229 false))

(declare-fun b!658230 () Bool)

(assert (=> b!658230 false))

(declare-fun lt!307824 () Unit!22834)

(declare-fun lt!307827 () array!38718)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38718 (_ BitVec 64) (_ BitVec 32) List!12646) Unit!22834)

(assert (=> b!658230 (= lt!307824 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307827 (select (arr!18552 a!2986) j!136) index!984 Nil!12643))))

(assert (=> b!658230 (arrayNoDuplicates!0 lt!307827 index!984 Nil!12643)))

(declare-fun lt!307811 () Unit!22834)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38718 (_ BitVec 32) (_ BitVec 32)) Unit!22834)

(assert (=> b!658230 (= lt!307811 (lemmaNoDuplicateFromThenFromBigger!0 lt!307827 #b00000000000000000000000000000000 index!984))))

(assert (=> b!658230 (arrayNoDuplicates!0 lt!307827 #b00000000000000000000000000000000 Nil!12643)))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!307820 () Unit!22834)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12646) Unit!22834)

(assert (=> b!658230 (= lt!307820 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12643))))

(declare-fun arrayContainsKey!0 (array!38718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!658230 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307821 () Unit!22834)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38718 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22834)

(assert (=> b!658230 (= lt!307821 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307827 (select (arr!18552 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!378141 () Bool)

(assert (=> b!658230 e!378141))

(declare-fun res!426961 () Bool)

(assert (=> b!658230 (=> (not res!426961) (not e!378141))))

(assert (=> b!658230 (= res!426961 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) j!136))))

(declare-fun e!378142 () Unit!22834)

(declare-fun Unit!22838 () Unit!22834)

(assert (=> b!658230 (= e!378142 Unit!22838)))

(declare-fun b!658231 () Bool)

(assert (=> b!658231 (= e!378144 (not true))))

(declare-fun lt!307812 () Unit!22834)

(declare-fun e!378151 () Unit!22834)

(assert (=> b!658231 (= lt!307812 e!378151)))

(declare-fun c!76004 () Bool)

(declare-fun lt!307818 () SeekEntryResult!6999)

(assert (=> b!658231 (= c!76004 (= lt!307818 (Found!6999 index!984)))))

(declare-fun lt!307810 () Unit!22834)

(assert (=> b!658231 (= lt!307810 e!378140)))

(declare-fun c!76007 () Bool)

(assert (=> b!658231 (= c!76007 (= lt!307818 Undefined!6999))))

(declare-fun lt!307814 () (_ BitVec 64))

(assert (=> b!658231 (= lt!307818 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307814 lt!307827 mask!3053))))

(declare-fun e!378149 () Bool)

(assert (=> b!658231 e!378149))

(declare-fun res!426951 () Bool)

(assert (=> b!658231 (=> (not res!426951) (not e!378149))))

(declare-fun lt!307825 () (_ BitVec 32))

(declare-fun lt!307817 () SeekEntryResult!6999)

(assert (=> b!658231 (= res!426951 (= lt!307817 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307825 vacantSpotIndex!68 lt!307814 lt!307827 mask!3053)))))

(assert (=> b!658231 (= lt!307817 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307825 vacantSpotIndex!68 (select (arr!18552 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!658231 (= lt!307814 (select (store (arr!18552 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307826 () Unit!22834)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38718 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22834)

(assert (=> b!658231 (= lt!307826 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307825 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!658231 (= lt!307825 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!658233 () Bool)

(declare-fun res!426962 () Bool)

(assert (=> b!658233 (=> (not res!426962) (not e!378148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!658233 (= res!426962 (validKeyInArray!0 k!1786))))

(declare-fun b!658234 () Bool)

(declare-fun Unit!22839 () Unit!22834)

(assert (=> b!658234 (= e!378142 Unit!22839)))

(declare-fun b!658235 () Bool)

(declare-fun e!378138 () Bool)

(assert (=> b!658235 (= e!378138 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) index!984))))

(declare-fun b!658236 () Bool)

(declare-fun e!378145 () Unit!22834)

(declare-fun Unit!22840 () Unit!22834)

(assert (=> b!658236 (= e!378145 Unit!22840)))

(declare-fun b!658237 () Bool)

(declare-fun res!426957 () Bool)

(assert (=> b!658237 (=> (not res!426957) (not e!378147))))

(assert (=> b!658237 (= res!426957 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18552 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!658238 () Bool)

(assert (=> b!658238 (= e!378149 (= lt!307819 lt!307817))))

(declare-fun b!658239 () Bool)

(declare-fun res!426964 () Bool)

(assert (=> b!658239 (=> (not res!426964) (not e!378148))))

(assert (=> b!658239 (= res!426964 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!426965 () Bool)

(declare-fun b!658240 () Bool)

(assert (=> b!658240 (= res!426965 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) j!136))))

(assert (=> b!658240 (=> (not res!426965) (not e!378138))))

(assert (=> b!658240 (= e!378150 e!378138)))

(declare-fun b!658241 () Bool)

(assert (=> b!658241 (= e!378148 e!378147)))

(declare-fun res!426960 () Bool)

(assert (=> b!658241 (=> (not res!426960) (not e!378147))))

(declare-fun lt!307813 () SeekEntryResult!6999)

(assert (=> b!658241 (= res!426960 (or (= lt!307813 (MissingZero!6999 i!1108)) (= lt!307813 (MissingVacant!6999 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38718 (_ BitVec 32)) SeekEntryResult!6999)

(assert (=> b!658241 (= lt!307813 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!658242 () Bool)

(declare-fun res!426956 () Bool)

(assert (=> b!658242 (=> (not res!426956) (not e!378147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38718 (_ BitVec 32)) Bool)

(assert (=> b!658242 (= res!426956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!658243 () Bool)

(assert (=> b!658243 (= e!378141 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) index!984))))

(declare-fun b!658244 () Bool)

(assert (=> b!658244 (= e!378147 e!378143)))

(declare-fun res!426953 () Bool)

(assert (=> b!658244 (=> (not res!426953) (not e!378143))))

(assert (=> b!658244 (= res!426953 (= (select (store (arr!18552 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!658244 (= lt!307827 (array!38719 (store (arr!18552 a!2986) i!1108 k!1786) (size!18916 a!2986)))))

(declare-fun b!658245 () Bool)

(declare-fun res!426955 () Bool)

(assert (=> b!658245 (=> (not res!426955) (not e!378148))))

(assert (=> b!658245 (= res!426955 (validKeyInArray!0 (select (arr!18552 a!2986) j!136)))))

(declare-fun b!658246 () Bool)

(assert (=> b!658246 false))

(declare-fun lt!307808 () Unit!22834)

(assert (=> b!658246 (= lt!307808 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307827 (select (arr!18552 a!2986) j!136) j!136 Nil!12643))))

(assert (=> b!658246 (arrayNoDuplicates!0 lt!307827 j!136 Nil!12643)))

(declare-fun lt!307823 () Unit!22834)

(assert (=> b!658246 (= lt!307823 (lemmaNoDuplicateFromThenFromBigger!0 lt!307827 #b00000000000000000000000000000000 j!136))))

(assert (=> b!658246 (arrayNoDuplicates!0 lt!307827 #b00000000000000000000000000000000 Nil!12643)))

(declare-fun lt!307816 () Unit!22834)

(assert (=> b!658246 (= lt!307816 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12643))))

(assert (=> b!658246 (arrayContainsKey!0 lt!307827 (select (arr!18552 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307815 () Unit!22834)

(assert (=> b!658246 (= lt!307815 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307827 (select (arr!18552 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22841 () Unit!22834)

(assert (=> b!658246 (= e!378145 Unit!22841)))

(declare-fun b!658247 () Bool)

(declare-fun Unit!22842 () Unit!22834)

(assert (=> b!658247 (= e!378151 Unit!22842)))

(declare-fun res!426950 () Bool)

(assert (=> start!59604 (=> (not res!426950) (not e!378148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59604 (= res!426950 (validMask!0 mask!3053))))

(assert (=> start!59604 e!378148))

(assert (=> start!59604 true))

(declare-fun array_inv!14326 (array!38718) Bool)

(assert (=> start!59604 (array_inv!14326 a!2986)))

(declare-fun b!658232 () Bool)

(declare-fun Unit!22843 () Unit!22834)

(assert (=> b!658232 (= e!378151 Unit!22843)))

(declare-fun res!426963 () Bool)

(assert (=> b!658232 (= res!426963 (= (select (store (arr!18552 a!2986) i!1108 k!1786) index!984) (select (arr!18552 a!2986) j!136)))))

(assert (=> b!658232 (=> (not res!426963) (not e!378146))))

(assert (=> b!658232 e!378146))

(declare-fun c!76006 () Bool)

(assert (=> b!658232 (= c!76006 (bvslt j!136 index!984))))

(declare-fun lt!307809 () Unit!22834)

(assert (=> b!658232 (= lt!307809 e!378145)))

(declare-fun c!76005 () Bool)

(assert (=> b!658232 (= c!76005 (bvslt index!984 j!136))))

(declare-fun lt!307822 () Unit!22834)

(assert (=> b!658232 (= lt!307822 e!378142)))

(assert (=> b!658232 false))

(assert (= (and start!59604 res!426950) b!658227))

(assert (= (and b!658227 res!426958) b!658245))

(assert (= (and b!658245 res!426955) b!658233))

(assert (= (and b!658233 res!426962) b!658239))

(assert (= (and b!658239 res!426964) b!658241))

(assert (= (and b!658241 res!426960) b!658242))

(assert (= (and b!658242 res!426956) b!658225))

(assert (= (and b!658225 res!426952) b!658237))

(assert (= (and b!658237 res!426957) b!658244))

(assert (= (and b!658244 res!426953) b!658224))

(assert (= (and b!658224 res!426954) b!658231))

(assert (= (and b!658231 res!426951) b!658238))

(assert (= (and b!658231 c!76007) b!658229))

(assert (= (and b!658231 (not c!76007)) b!658228))

(assert (= (and b!658231 c!76004) b!658232))

(assert (= (and b!658231 (not c!76004)) b!658247))

(assert (= (and b!658232 res!426963) b!658226))

(assert (= (and b!658226 (not res!426959)) b!658240))

(assert (= (and b!658240 res!426965) b!658235))

(assert (= (and b!658232 c!76006) b!658246))

(assert (= (and b!658232 (not c!76006)) b!658236))

(assert (= (and b!658232 c!76005) b!658230))

(assert (= (and b!658232 (not c!76005)) b!658234))

(assert (= (and b!658230 res!426961) b!658243))

(declare-fun m!631281 () Bool)

(assert (=> b!658240 m!631281))

(assert (=> b!658240 m!631281))

(declare-fun m!631283 () Bool)

(assert (=> b!658240 m!631283))

(assert (=> b!658246 m!631281))

(declare-fun m!631285 () Bool)

(assert (=> b!658246 m!631285))

(assert (=> b!658246 m!631281))

(declare-fun m!631287 () Bool)

(assert (=> b!658246 m!631287))

(assert (=> b!658246 m!631281))

(declare-fun m!631289 () Bool)

(assert (=> b!658246 m!631289))

(declare-fun m!631291 () Bool)

(assert (=> b!658246 m!631291))

(declare-fun m!631293 () Bool)

(assert (=> b!658246 m!631293))

(assert (=> b!658246 m!631281))

(declare-fun m!631295 () Bool)

(assert (=> b!658246 m!631295))

(declare-fun m!631297 () Bool)

(assert (=> b!658246 m!631297))

(declare-fun m!631299 () Bool)

(assert (=> b!658244 m!631299))

(declare-fun m!631301 () Bool)

(assert (=> b!658244 m!631301))

(assert (=> b!658243 m!631281))

(assert (=> b!658243 m!631281))

(declare-fun m!631303 () Bool)

(assert (=> b!658243 m!631303))

(declare-fun m!631305 () Bool)

(assert (=> b!658242 m!631305))

(assert (=> b!658232 m!631299))

(declare-fun m!631307 () Bool)

(assert (=> b!658232 m!631307))

(assert (=> b!658232 m!631281))

(declare-fun m!631309 () Bool)

(assert (=> b!658241 m!631309))

(declare-fun m!631311 () Bool)

(assert (=> b!658224 m!631311))

(assert (=> b!658224 m!631281))

(assert (=> b!658224 m!631281))

(declare-fun m!631313 () Bool)

(assert (=> b!658224 m!631313))

(declare-fun m!631315 () Bool)

(assert (=> b!658231 m!631315))

(declare-fun m!631317 () Bool)

(assert (=> b!658231 m!631317))

(assert (=> b!658231 m!631281))

(declare-fun m!631319 () Bool)

(assert (=> b!658231 m!631319))

(assert (=> b!658231 m!631299))

(declare-fun m!631321 () Bool)

(assert (=> b!658231 m!631321))

(assert (=> b!658231 m!631281))

(declare-fun m!631323 () Bool)

(assert (=> b!658231 m!631323))

(declare-fun m!631325 () Bool)

(assert (=> b!658231 m!631325))

(declare-fun m!631327 () Bool)

(assert (=> b!658225 m!631327))

(declare-fun m!631329 () Bool)

(assert (=> b!658239 m!631329))

(declare-fun m!631331 () Bool)

(assert (=> b!658237 m!631331))

(declare-fun m!631333 () Bool)

(assert (=> b!658230 m!631333))

(assert (=> b!658230 m!631281))

(assert (=> b!658230 m!631281))

(declare-fun m!631335 () Bool)

(assert (=> b!658230 m!631335))

(assert (=> b!658230 m!631281))

(assert (=> b!658230 m!631283))

(assert (=> b!658230 m!631281))

(declare-fun m!631337 () Bool)

(assert (=> b!658230 m!631337))

(assert (=> b!658230 m!631291))

(assert (=> b!658230 m!631293))

(declare-fun m!631339 () Bool)

(assert (=> b!658230 m!631339))

(assert (=> b!658230 m!631281))

(declare-fun m!631341 () Bool)

(assert (=> b!658230 m!631341))

(declare-fun m!631343 () Bool)

(assert (=> b!658233 m!631343))

(assert (=> b!658245 m!631281))

(assert (=> b!658245 m!631281))

(declare-fun m!631345 () Bool)

(assert (=> b!658245 m!631345))

(declare-fun m!631347 () Bool)

(assert (=> start!59604 m!631347))

(declare-fun m!631349 () Bool)

(assert (=> start!59604 m!631349))

(assert (=> b!658235 m!631281))

(assert (=> b!658235 m!631281))

(assert (=> b!658235 m!631303))

(push 1)

