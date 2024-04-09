; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59122 () Bool)

(assert start!59122)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38578 0))(
  ( (array!38579 (arr!18488 (Array (_ BitVec 32) (_ BitVec 64))) (size!18852 (_ BitVec 32))) )
))
(declare-fun lt!303439 () array!38578)

(declare-fun e!374267 () Bool)

(declare-fun b!652075 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38578)

(declare-fun arrayContainsKey!0 (array!38578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652075 (= e!374267 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) index!984))))

(declare-fun b!652076 () Bool)

(declare-fun e!374266 () Bool)

(declare-fun e!374262 () Bool)

(assert (=> b!652076 (= e!374266 e!374262)))

(declare-fun res!422958 () Bool)

(assert (=> b!652076 (=> res!422958 e!374262)))

(declare-fun lt!303433 () (_ BitVec 64))

(declare-fun lt!303437 () (_ BitVec 64))

(assert (=> b!652076 (= res!422958 (or (not (= (select (arr!18488 a!2986) j!136) lt!303433)) (not (= (select (arr!18488 a!2986) j!136) lt!303437)) (bvsge j!136 index!984)))))

(declare-fun b!652077 () Bool)

(declare-datatypes ((Unit!22282 0))(
  ( (Unit!22283) )
))
(declare-fun e!374265 () Unit!22282)

(declare-fun Unit!22284 () Unit!22282)

(assert (=> b!652077 (= e!374265 Unit!22284)))

(declare-fun lt!303436 () Unit!22282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22282)

(assert (=> b!652077 (= lt!303436 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303439 (select (arr!18488 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652077 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303446 () Unit!22282)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!12582 0))(
  ( (Nil!12579) (Cons!12578 (h!13623 (_ BitVec 64)) (t!18818 List!12582)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38578 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12582) Unit!22282)

(assert (=> b!652077 (= lt!303446 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12579))))

(declare-fun arrayNoDuplicates!0 (array!38578 (_ BitVec 32) List!12582) Bool)

(assert (=> b!652077 (arrayNoDuplicates!0 lt!303439 #b00000000000000000000000000000000 Nil!12579)))

(declare-fun lt!303444 () Unit!22282)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38578 (_ BitVec 32) (_ BitVec 32)) Unit!22282)

(assert (=> b!652077 (= lt!303444 (lemmaNoDuplicateFromThenFromBigger!0 lt!303439 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652077 (arrayNoDuplicates!0 lt!303439 j!136 Nil!12579)))

(declare-fun lt!303448 () Unit!22282)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38578 (_ BitVec 64) (_ BitVec 32) List!12582) Unit!22282)

(assert (=> b!652077 (= lt!303448 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303439 (select (arr!18488 a!2986) j!136) j!136 Nil!12579))))

(assert (=> b!652077 false))

(declare-fun b!652078 () Bool)

(declare-fun e!374260 () Bool)

(declare-fun e!374261 () Bool)

(assert (=> b!652078 (= e!374260 e!374261)))

(declare-fun res!422961 () Bool)

(assert (=> b!652078 (=> (not res!422961) (not e!374261))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6935 0))(
  ( (MissingZero!6935 (index!30092 (_ BitVec 32))) (Found!6935 (index!30093 (_ BitVec 32))) (Intermediate!6935 (undefined!7747 Bool) (index!30094 (_ BitVec 32)) (x!58903 (_ BitVec 32))) (Undefined!6935) (MissingVacant!6935 (index!30095 (_ BitVec 32))) )
))
(declare-fun lt!303435 () SeekEntryResult!6935)

(assert (=> b!652078 (= res!422961 (and (= lt!303435 (Found!6935 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18488 a!2986) index!984) (select (arr!18488 a!2986) j!136))) (not (= (select (arr!18488 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38578 (_ BitVec 32)) SeekEntryResult!6935)

(assert (=> b!652078 (= lt!303435 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18488 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652079 () Bool)

(declare-fun res!422957 () Bool)

(declare-fun e!374269 () Bool)

(assert (=> b!652079 (=> (not res!422957) (not e!374269))))

(assert (=> b!652079 (= res!422957 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18488 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652080 () Bool)

(declare-fun res!422963 () Bool)

(assert (=> b!652080 (=> (not res!422963) (not e!374269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38578 (_ BitVec 32)) Bool)

(assert (=> b!652080 (= res!422963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652081 () Bool)

(declare-fun e!374263 () Bool)

(declare-fun e!374258 () Bool)

(assert (=> b!652081 (= e!374263 e!374258)))

(declare-fun res!422955 () Bool)

(assert (=> b!652081 (=> res!422955 e!374258)))

(assert (=> b!652081 (= res!422955 (bvsge index!984 j!136))))

(declare-fun lt!303450 () Unit!22282)

(assert (=> b!652081 (= lt!303450 e!374265)))

(declare-fun c!74932 () Bool)

(assert (=> b!652081 (= c!74932 (bvslt j!136 index!984))))

(declare-fun e!374268 () Bool)

(declare-fun b!652082 () Bool)

(assert (=> b!652082 (= e!374268 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) index!984))))

(declare-fun b!652083 () Bool)

(assert (=> b!652083 (= e!374269 e!374260)))

(declare-fun res!422951 () Bool)

(assert (=> b!652083 (=> (not res!422951) (not e!374260))))

(assert (=> b!652083 (= res!422951 (= (select (store (arr!18488 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652083 (= lt!303439 (array!38579 (store (arr!18488 a!2986) i!1108 k!1786) (size!18852 a!2986)))))

(declare-fun b!652084 () Bool)

(declare-fun res!422959 () Bool)

(declare-fun e!374259 () Bool)

(assert (=> b!652084 (=> (not res!422959) (not e!374259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652084 (= res!422959 (validKeyInArray!0 k!1786))))

(declare-fun b!652085 () Bool)

(declare-fun Unit!22285 () Unit!22282)

(assert (=> b!652085 (= e!374265 Unit!22285)))

(declare-fun b!652086 () Bool)

(declare-fun res!422956 () Bool)

(assert (=> b!652086 (=> (not res!422956) (not e!374269))))

(assert (=> b!652086 (= res!422956 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12579))))

(declare-fun b!652087 () Bool)

(declare-fun res!422948 () Bool)

(assert (=> b!652087 (=> (not res!422948) (not e!374259))))

(assert (=> b!652087 (= res!422948 (and (= (size!18852 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18852 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18852 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652088 () Bool)

(assert (=> b!652088 (= e!374259 e!374269)))

(declare-fun res!422953 () Bool)

(assert (=> b!652088 (=> (not res!422953) (not e!374269))))

(declare-fun lt!303438 () SeekEntryResult!6935)

(assert (=> b!652088 (= res!422953 (or (= lt!303438 (MissingZero!6935 i!1108)) (= lt!303438 (MissingVacant!6935 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38578 (_ BitVec 32)) SeekEntryResult!6935)

(assert (=> b!652088 (= lt!303438 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!652089 () Bool)

(declare-fun res!422947 () Bool)

(assert (=> b!652089 (=> (not res!422947) (not e!374259))))

(assert (=> b!652089 (= res!422947 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!652090 () Bool)

(declare-fun e!374271 () Unit!22282)

(declare-fun Unit!22286 () Unit!22282)

(assert (=> b!652090 (= e!374271 Unit!22286)))

(declare-fun b!652091 () Bool)

(declare-fun res!422949 () Bool)

(assert (=> b!652091 (=> (not res!422949) (not e!374259))))

(assert (=> b!652091 (= res!422949 (validKeyInArray!0 (select (arr!18488 a!2986) j!136)))))

(declare-fun res!422952 () Bool)

(assert (=> start!59122 (=> (not res!422952) (not e!374259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59122 (= res!422952 (validMask!0 mask!3053))))

(assert (=> start!59122 e!374259))

(assert (=> start!59122 true))

(declare-fun array_inv!14262 (array!38578) Bool)

(assert (=> start!59122 (array_inv!14262 a!2986)))

(declare-fun b!652092 () Bool)

(declare-fun e!374264 () Bool)

(declare-fun lt!303449 () SeekEntryResult!6935)

(assert (=> b!652092 (= e!374264 (= lt!303435 lt!303449))))

(declare-fun b!652093 () Bool)

(assert (=> b!652093 (= e!374262 e!374268)))

(declare-fun res!422954 () Bool)

(assert (=> b!652093 (=> (not res!422954) (not e!374268))))

(assert (=> b!652093 (= res!422954 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) j!136))))

(declare-fun b!652094 () Bool)

(declare-fun e!374272 () Bool)

(assert (=> b!652094 (= e!374272 e!374263)))

(declare-fun res!422945 () Bool)

(assert (=> b!652094 (=> res!422945 e!374263)))

(assert (=> b!652094 (= res!422945 (or (not (= (select (arr!18488 a!2986) j!136) lt!303433)) (not (= (select (arr!18488 a!2986) j!136) lt!303437))))))

(assert (=> b!652094 e!374266))

(declare-fun res!422962 () Bool)

(assert (=> b!652094 (=> (not res!422962) (not e!374266))))

(assert (=> b!652094 (= res!422962 (= lt!303437 (select (arr!18488 a!2986) j!136)))))

(assert (=> b!652094 (= lt!303437 (select (store (arr!18488 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652095 () Bool)

(declare-fun Unit!22287 () Unit!22282)

(assert (=> b!652095 (= e!374271 Unit!22287)))

(assert (=> b!652095 false))

(declare-fun b!652096 () Bool)

(assert (=> b!652096 (= e!374261 (not e!374272))))

(declare-fun res!422946 () Bool)

(assert (=> b!652096 (=> res!422946 e!374272)))

(declare-fun lt!303445 () SeekEntryResult!6935)

(assert (=> b!652096 (= res!422946 (not (= lt!303445 (Found!6935 index!984))))))

(declare-fun lt!303442 () Unit!22282)

(assert (=> b!652096 (= lt!303442 e!374271)))

(declare-fun c!74933 () Bool)

(assert (=> b!652096 (= c!74933 (= lt!303445 Undefined!6935))))

(assert (=> b!652096 (= lt!303445 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303433 lt!303439 mask!3053))))

(assert (=> b!652096 e!374264))

(declare-fun res!422950 () Bool)

(assert (=> b!652096 (=> (not res!422950) (not e!374264))))

(declare-fun lt!303447 () (_ BitVec 32))

(assert (=> b!652096 (= res!422950 (= lt!303449 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303447 vacantSpotIndex!68 lt!303433 lt!303439 mask!3053)))))

(assert (=> b!652096 (= lt!303449 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303447 vacantSpotIndex!68 (select (arr!18488 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652096 (= lt!303433 (select (store (arr!18488 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303434 () Unit!22282)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38578 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22282)

(assert (=> b!652096 (= lt!303434 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303447 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652096 (= lt!303447 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652097 () Bool)

(assert (=> b!652097 (= e!374258 (or (bvsge (size!18852 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18852 a!2986))))))

(assert (=> b!652097 (arrayNoDuplicates!0 lt!303439 index!984 Nil!12579)))

(declare-fun lt!303441 () Unit!22282)

(assert (=> b!652097 (= lt!303441 (lemmaNoDuplicateFromThenFromBigger!0 lt!303439 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652097 (arrayNoDuplicates!0 lt!303439 #b00000000000000000000000000000000 Nil!12579)))

(declare-fun lt!303443 () Unit!22282)

(assert (=> b!652097 (= lt!303443 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12579))))

(assert (=> b!652097 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303440 () Unit!22282)

(assert (=> b!652097 (= lt!303440 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303439 (select (arr!18488 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!652097 e!374267))

(declare-fun res!422960 () Bool)

(assert (=> b!652097 (=> (not res!422960) (not e!374267))))

(assert (=> b!652097 (= res!422960 (arrayContainsKey!0 lt!303439 (select (arr!18488 a!2986) j!136) j!136))))

(assert (= (and start!59122 res!422952) b!652087))

(assert (= (and b!652087 res!422948) b!652091))

(assert (= (and b!652091 res!422949) b!652084))

(assert (= (and b!652084 res!422959) b!652089))

(assert (= (and b!652089 res!422947) b!652088))

(assert (= (and b!652088 res!422953) b!652080))

(assert (= (and b!652080 res!422963) b!652086))

(assert (= (and b!652086 res!422956) b!652079))

(assert (= (and b!652079 res!422957) b!652083))

(assert (= (and b!652083 res!422951) b!652078))

(assert (= (and b!652078 res!422961) b!652096))

(assert (= (and b!652096 res!422950) b!652092))

(assert (= (and b!652096 c!74933) b!652095))

(assert (= (and b!652096 (not c!74933)) b!652090))

(assert (= (and b!652096 (not res!422946)) b!652094))

(assert (= (and b!652094 res!422962) b!652076))

(assert (= (and b!652076 (not res!422958)) b!652093))

(assert (= (and b!652093 res!422954) b!652082))

(assert (= (and b!652094 (not res!422945)) b!652081))

(assert (= (and b!652081 c!74932) b!652077))

(assert (= (and b!652081 (not c!74932)) b!652085))

(assert (= (and b!652081 (not res!422955)) b!652097))

(assert (= (and b!652097 res!422960) b!652075))

(declare-fun m!625291 () Bool)

(assert (=> b!652077 m!625291))

(declare-fun m!625293 () Bool)

(assert (=> b!652077 m!625293))

(declare-fun m!625295 () Bool)

(assert (=> b!652077 m!625295))

(declare-fun m!625297 () Bool)

(assert (=> b!652077 m!625297))

(assert (=> b!652077 m!625291))

(declare-fun m!625299 () Bool)

(assert (=> b!652077 m!625299))

(assert (=> b!652077 m!625291))

(declare-fun m!625301 () Bool)

(assert (=> b!652077 m!625301))

(assert (=> b!652077 m!625291))

(declare-fun m!625303 () Bool)

(assert (=> b!652077 m!625303))

(declare-fun m!625305 () Bool)

(assert (=> b!652077 m!625305))

(declare-fun m!625307 () Bool)

(assert (=> b!652089 m!625307))

(declare-fun m!625309 () Bool)

(assert (=> b!652086 m!625309))

(assert (=> b!652076 m!625291))

(assert (=> b!652082 m!625291))

(assert (=> b!652082 m!625291))

(declare-fun m!625311 () Bool)

(assert (=> b!652082 m!625311))

(assert (=> b!652075 m!625291))

(assert (=> b!652075 m!625291))

(assert (=> b!652075 m!625311))

(assert (=> b!652091 m!625291))

(assert (=> b!652091 m!625291))

(declare-fun m!625313 () Bool)

(assert (=> b!652091 m!625313))

(declare-fun m!625315 () Bool)

(assert (=> b!652083 m!625315))

(declare-fun m!625317 () Bool)

(assert (=> b!652083 m!625317))

(assert (=> b!652096 m!625291))

(declare-fun m!625319 () Bool)

(assert (=> b!652096 m!625319))

(assert (=> b!652096 m!625315))

(assert (=> b!652096 m!625291))

(declare-fun m!625321 () Bool)

(assert (=> b!652096 m!625321))

(declare-fun m!625323 () Bool)

(assert (=> b!652096 m!625323))

(declare-fun m!625325 () Bool)

(assert (=> b!652096 m!625325))

(declare-fun m!625327 () Bool)

(assert (=> b!652096 m!625327))

(declare-fun m!625329 () Bool)

(assert (=> b!652096 m!625329))

(assert (=> b!652093 m!625291))

(assert (=> b!652093 m!625291))

(declare-fun m!625331 () Bool)

(assert (=> b!652093 m!625331))

(assert (=> b!652094 m!625291))

(assert (=> b!652094 m!625315))

(declare-fun m!625333 () Bool)

(assert (=> b!652094 m!625333))

(declare-fun m!625335 () Bool)

(assert (=> b!652097 m!625335))

(assert (=> b!652097 m!625291))

(declare-fun m!625337 () Bool)

(assert (=> b!652097 m!625337))

(assert (=> b!652097 m!625291))

(assert (=> b!652097 m!625331))

(assert (=> b!652097 m!625305))

(assert (=> b!652097 m!625291))

(declare-fun m!625339 () Bool)

(assert (=> b!652097 m!625339))

(assert (=> b!652097 m!625291))

(assert (=> b!652097 m!625295))

(declare-fun m!625341 () Bool)

(assert (=> b!652097 m!625341))

(declare-fun m!625343 () Bool)

(assert (=> b!652088 m!625343))

(declare-fun m!625345 () Bool)

(assert (=> b!652084 m!625345))

(declare-fun m!625347 () Bool)

(assert (=> b!652078 m!625347))

(assert (=> b!652078 m!625291))

(assert (=> b!652078 m!625291))

(declare-fun m!625349 () Bool)

(assert (=> b!652078 m!625349))

(declare-fun m!625351 () Bool)

(assert (=> start!59122 m!625351))

(declare-fun m!625353 () Bool)

(assert (=> start!59122 m!625353))

(declare-fun m!625355 () Bool)

(assert (=> b!652079 m!625355))

(declare-fun m!625357 () Bool)

(assert (=> b!652080 m!625357))

(push 1)

(assert (not b!652089))

(assert (not b!652078))

(assert (not b!652084))

(assert (not start!59122))

(assert (not b!652080))

(assert (not b!652097))

(assert (not b!652093))

(assert (not b!652075))

(assert (not b!652096))

(assert (not b!652088))

(assert (not b!652091))

(assert (not b!652082))

(assert (not b!652077))

(assert (not b!652086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

