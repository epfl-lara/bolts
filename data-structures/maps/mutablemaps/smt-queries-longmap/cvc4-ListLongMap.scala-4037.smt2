; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55024 () Bool)

(assert start!55024)

(declare-fun b!602099 () Bool)

(declare-fun e!344344 () Bool)

(declare-fun e!344348 () Bool)

(assert (=> b!602099 (= e!344344 e!344348)))

(declare-fun res!386734 () Bool)

(assert (=> b!602099 (=> (not res!386734) (not e!344348))))

(declare-datatypes ((SeekEntryResult!6272 0))(
  ( (MissingZero!6272 (index!27347 (_ BitVec 32))) (Found!6272 (index!27348 (_ BitVec 32))) (Intermediate!6272 (undefined!7084 Bool) (index!27349 (_ BitVec 32)) (x!56169 (_ BitVec 32))) (Undefined!6272) (MissingVacant!6272 (index!27350 (_ BitVec 32))) )
))
(declare-fun lt!274278 () SeekEntryResult!6272)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!602099 (= res!386734 (or (= lt!274278 (MissingZero!6272 i!1108)) (= lt!274278 (MissingVacant!6272 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37141 0))(
  ( (array!37142 (arr!17825 (Array (_ BitVec 32) (_ BitVec 64))) (size!18189 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37141)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37141 (_ BitVec 32)) SeekEntryResult!6272)

(assert (=> b!602099 (= lt!274278 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!386731 () Bool)

(assert (=> start!55024 (=> (not res!386731) (not e!344344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55024 (= res!386731 (validMask!0 mask!3053))))

(assert (=> start!55024 e!344344))

(assert (=> start!55024 true))

(declare-fun array_inv!13599 (array!37141) Bool)

(assert (=> start!55024 (array_inv!13599 a!2986)))

(declare-fun b!602100 () Bool)

(declare-fun res!386721 () Bool)

(assert (=> b!602100 (=> (not res!386721) (not e!344344))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!602100 (= res!386721 (and (= (size!18189 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18189 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18189 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602101 () Bool)

(declare-fun res!386729 () Bool)

(assert (=> b!602101 (=> (not res!386729) (not e!344348))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602101 (= res!386729 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17825 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602102 () Bool)

(declare-fun e!344345 () Bool)

(assert (=> b!602102 (= e!344348 e!344345)))

(declare-fun res!386726 () Bool)

(assert (=> b!602102 (=> (not res!386726) (not e!344345))))

(assert (=> b!602102 (= res!386726 (= (select (store (arr!17825 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!274285 () array!37141)

(assert (=> b!602102 (= lt!274285 (array!37142 (store (arr!17825 a!2986) i!1108 k!1786) (size!18189 a!2986)))))

(declare-fun b!602103 () Bool)

(declare-datatypes ((Unit!19060 0))(
  ( (Unit!19061) )
))
(declare-fun e!344353 () Unit!19060)

(declare-fun Unit!19062 () Unit!19060)

(assert (=> b!602103 (= e!344353 Unit!19062)))

(declare-fun b!602104 () Bool)

(declare-fun res!386728 () Bool)

(assert (=> b!602104 (=> (not res!386728) (not e!344348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37141 (_ BitVec 32)) Bool)

(assert (=> b!602104 (= res!386728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602105 () Bool)

(declare-fun e!344350 () Bool)

(declare-fun lt!274276 () SeekEntryResult!6272)

(declare-fun lt!274282 () SeekEntryResult!6272)

(assert (=> b!602105 (= e!344350 (= lt!274276 lt!274282))))

(declare-fun e!344352 () Bool)

(declare-fun b!602106 () Bool)

(declare-fun arrayContainsKey!0 (array!37141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602106 (= e!344352 (arrayContainsKey!0 lt!274285 (select (arr!17825 a!2986) j!136) index!984))))

(declare-fun b!602107 () Bool)

(declare-fun e!344356 () Unit!19060)

(declare-fun Unit!19063 () Unit!19060)

(assert (=> b!602107 (= e!344356 Unit!19063)))

(declare-fun b!602108 () Bool)

(declare-fun e!344349 () Bool)

(declare-fun e!344343 () Bool)

(assert (=> b!602108 (= e!344349 e!344343)))

(declare-fun res!386724 () Bool)

(assert (=> b!602108 (=> res!386724 e!344343)))

(declare-fun lt!274283 () (_ BitVec 64))

(declare-fun lt!274286 () (_ BitVec 64))

(assert (=> b!602108 (= res!386724 (or (not (= (select (arr!17825 a!2986) j!136) lt!274286)) (not (= (select (arr!17825 a!2986) j!136) lt!274283)) (bvsge j!136 index!984)))))

(declare-fun b!602109 () Bool)

(declare-fun e!344347 () Bool)

(declare-fun e!344355 () Bool)

(assert (=> b!602109 (= e!344347 e!344355)))

(declare-fun res!386737 () Bool)

(assert (=> b!602109 (=> res!386737 e!344355)))

(assert (=> b!602109 (= res!386737 (or (not (= (select (arr!17825 a!2986) j!136) lt!274286)) (not (= (select (arr!17825 a!2986) j!136) lt!274283))))))

(assert (=> b!602109 e!344349))

(declare-fun res!386722 () Bool)

(assert (=> b!602109 (=> (not res!386722) (not e!344349))))

(assert (=> b!602109 (= res!386722 (= lt!274283 (select (arr!17825 a!2986) j!136)))))

(assert (=> b!602109 (= lt!274283 (select (store (arr!17825 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!602110 () Bool)

(declare-fun e!344354 () Bool)

(assert (=> b!602110 (= e!344355 e!344354)))

(declare-fun res!386736 () Bool)

(assert (=> b!602110 (=> res!386736 e!344354)))

(assert (=> b!602110 (= res!386736 (bvsge index!984 j!136))))

(declare-fun lt!274273 () Unit!19060)

(assert (=> b!602110 (= lt!274273 e!344353)))

(declare-fun c!68057 () Bool)

(assert (=> b!602110 (= c!68057 (bvslt j!136 index!984))))

(declare-fun b!602111 () Bool)

(declare-fun e!344346 () Bool)

(assert (=> b!602111 (= e!344346 (not e!344347))))

(declare-fun res!386735 () Bool)

(assert (=> b!602111 (=> res!386735 e!344347)))

(declare-fun lt!274281 () SeekEntryResult!6272)

(assert (=> b!602111 (= res!386735 (not (= lt!274281 (Found!6272 index!984))))))

(declare-fun lt!274279 () Unit!19060)

(assert (=> b!602111 (= lt!274279 e!344356)))

(declare-fun c!68056 () Bool)

(assert (=> b!602111 (= c!68056 (= lt!274281 Undefined!6272))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37141 (_ BitVec 32)) SeekEntryResult!6272)

(assert (=> b!602111 (= lt!274281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274286 lt!274285 mask!3053))))

(assert (=> b!602111 e!344350))

(declare-fun res!386732 () Bool)

(assert (=> b!602111 (=> (not res!386732) (not e!344350))))

(declare-fun lt!274280 () (_ BitVec 32))

(assert (=> b!602111 (= res!386732 (= lt!274282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274280 vacantSpotIndex!68 lt!274286 lt!274285 mask!3053)))))

(assert (=> b!602111 (= lt!274282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274280 vacantSpotIndex!68 (select (arr!17825 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602111 (= lt!274286 (select (store (arr!17825 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274287 () Unit!19060)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37141 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19060)

(assert (=> b!602111 (= lt!274287 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274280 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602111 (= lt!274280 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602112 () Bool)

(declare-fun Unit!19064 () Unit!19060)

(assert (=> b!602112 (= e!344353 Unit!19064)))

(declare-fun lt!274284 () Unit!19060)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37141 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19060)

(assert (=> b!602112 (= lt!274284 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274285 (select (arr!17825 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602112 (arrayContainsKey!0 lt!274285 (select (arr!17825 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274275 () Unit!19060)

(declare-datatypes ((List!11919 0))(
  ( (Nil!11916) (Cons!11915 (h!12960 (_ BitVec 64)) (t!18155 List!11919)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37141 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11919) Unit!19060)

(assert (=> b!602112 (= lt!274275 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11916))))

(declare-fun arrayNoDuplicates!0 (array!37141 (_ BitVec 32) List!11919) Bool)

(assert (=> b!602112 (arrayNoDuplicates!0 lt!274285 #b00000000000000000000000000000000 Nil!11916)))

(declare-fun lt!274274 () Unit!19060)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37141 (_ BitVec 32) (_ BitVec 32)) Unit!19060)

(assert (=> b!602112 (= lt!274274 (lemmaNoDuplicateFromThenFromBigger!0 lt!274285 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602112 (arrayNoDuplicates!0 lt!274285 j!136 Nil!11916)))

(declare-fun lt!274277 () Unit!19060)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37141 (_ BitVec 64) (_ BitVec 32) List!11919) Unit!19060)

(assert (=> b!602112 (= lt!274277 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274285 (select (arr!17825 a!2986) j!136) j!136 Nil!11916))))

(assert (=> b!602112 false))

(declare-fun b!602113 () Bool)

(assert (=> b!602113 (= e!344354 (bvslt index!984 (size!18189 a!2986)))))

(assert (=> b!602113 (arrayContainsKey!0 lt!274285 (select (arr!17825 a!2986) j!136) j!136)))

(declare-fun b!602114 () Bool)

(declare-fun res!386727 () Bool)

(assert (=> b!602114 (=> (not res!386727) (not e!344344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602114 (= res!386727 (validKeyInArray!0 k!1786))))

(declare-fun b!602115 () Bool)

(declare-fun res!386723 () Bool)

(assert (=> b!602115 (=> (not res!386723) (not e!344344))))

(assert (=> b!602115 (= res!386723 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602116 () Bool)

(declare-fun res!386733 () Bool)

(assert (=> b!602116 (=> (not res!386733) (not e!344348))))

(assert (=> b!602116 (= res!386733 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11916))))

(declare-fun b!602117 () Bool)

(declare-fun Unit!19065 () Unit!19060)

(assert (=> b!602117 (= e!344356 Unit!19065)))

(assert (=> b!602117 false))

(declare-fun b!602118 () Bool)

(assert (=> b!602118 (= e!344345 e!344346)))

(declare-fun res!386738 () Bool)

(assert (=> b!602118 (=> (not res!386738) (not e!344346))))

(assert (=> b!602118 (= res!386738 (and (= lt!274276 (Found!6272 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17825 a!2986) index!984) (select (arr!17825 a!2986) j!136))) (not (= (select (arr!17825 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!602118 (= lt!274276 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17825 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602119 () Bool)

(assert (=> b!602119 (= e!344343 e!344352)))

(declare-fun res!386725 () Bool)

(assert (=> b!602119 (=> (not res!386725) (not e!344352))))

(assert (=> b!602119 (= res!386725 (arrayContainsKey!0 lt!274285 (select (arr!17825 a!2986) j!136) j!136))))

(declare-fun b!602120 () Bool)

(declare-fun res!386730 () Bool)

(assert (=> b!602120 (=> (not res!386730) (not e!344344))))

(assert (=> b!602120 (= res!386730 (validKeyInArray!0 (select (arr!17825 a!2986) j!136)))))

(assert (= (and start!55024 res!386731) b!602100))

(assert (= (and b!602100 res!386721) b!602120))

(assert (= (and b!602120 res!386730) b!602114))

(assert (= (and b!602114 res!386727) b!602115))

(assert (= (and b!602115 res!386723) b!602099))

(assert (= (and b!602099 res!386734) b!602104))

(assert (= (and b!602104 res!386728) b!602116))

(assert (= (and b!602116 res!386733) b!602101))

(assert (= (and b!602101 res!386729) b!602102))

(assert (= (and b!602102 res!386726) b!602118))

(assert (= (and b!602118 res!386738) b!602111))

(assert (= (and b!602111 res!386732) b!602105))

(assert (= (and b!602111 c!68056) b!602117))

(assert (= (and b!602111 (not c!68056)) b!602107))

(assert (= (and b!602111 (not res!386735)) b!602109))

(assert (= (and b!602109 res!386722) b!602108))

(assert (= (and b!602108 (not res!386724)) b!602119))

(assert (= (and b!602119 res!386725) b!602106))

(assert (= (and b!602109 (not res!386737)) b!602110))

(assert (= (and b!602110 c!68057) b!602112))

(assert (= (and b!602110 (not c!68057)) b!602103))

(assert (= (and b!602110 (not res!386736)) b!602113))

(declare-fun m!579279 () Bool)

(assert (=> b!602101 m!579279))

(declare-fun m!579281 () Bool)

(assert (=> b!602120 m!579281))

(assert (=> b!602120 m!579281))

(declare-fun m!579283 () Bool)

(assert (=> b!602120 m!579283))

(assert (=> b!602109 m!579281))

(declare-fun m!579285 () Bool)

(assert (=> b!602109 m!579285))

(declare-fun m!579287 () Bool)

(assert (=> b!602109 m!579287))

(declare-fun m!579289 () Bool)

(assert (=> b!602114 m!579289))

(declare-fun m!579291 () Bool)

(assert (=> b!602111 m!579291))

(declare-fun m!579293 () Bool)

(assert (=> b!602111 m!579293))

(declare-fun m!579295 () Bool)

(assert (=> b!602111 m!579295))

(assert (=> b!602111 m!579281))

(assert (=> b!602111 m!579285))

(assert (=> b!602111 m!579281))

(declare-fun m!579297 () Bool)

(assert (=> b!602111 m!579297))

(declare-fun m!579299 () Bool)

(assert (=> b!602111 m!579299))

(declare-fun m!579301 () Bool)

(assert (=> b!602111 m!579301))

(declare-fun m!579303 () Bool)

(assert (=> start!55024 m!579303))

(declare-fun m!579305 () Bool)

(assert (=> start!55024 m!579305))

(assert (=> b!602108 m!579281))

(assert (=> b!602106 m!579281))

(assert (=> b!602106 m!579281))

(declare-fun m!579307 () Bool)

(assert (=> b!602106 m!579307))

(declare-fun m!579309 () Bool)

(assert (=> b!602115 m!579309))

(declare-fun m!579311 () Bool)

(assert (=> b!602104 m!579311))

(declare-fun m!579313 () Bool)

(assert (=> b!602118 m!579313))

(assert (=> b!602118 m!579281))

(assert (=> b!602118 m!579281))

(declare-fun m!579315 () Bool)

(assert (=> b!602118 m!579315))

(declare-fun m!579317 () Bool)

(assert (=> b!602099 m!579317))

(declare-fun m!579319 () Bool)

(assert (=> b!602112 m!579319))

(assert (=> b!602112 m!579281))

(assert (=> b!602112 m!579281))

(declare-fun m!579321 () Bool)

(assert (=> b!602112 m!579321))

(declare-fun m!579323 () Bool)

(assert (=> b!602112 m!579323))

(assert (=> b!602112 m!579281))

(declare-fun m!579325 () Bool)

(assert (=> b!602112 m!579325))

(declare-fun m!579327 () Bool)

(assert (=> b!602112 m!579327))

(assert (=> b!602112 m!579281))

(declare-fun m!579329 () Bool)

(assert (=> b!602112 m!579329))

(declare-fun m!579331 () Bool)

(assert (=> b!602112 m!579331))

(assert (=> b!602102 m!579285))

(declare-fun m!579333 () Bool)

(assert (=> b!602102 m!579333))

(declare-fun m!579335 () Bool)

(assert (=> b!602116 m!579335))

(assert (=> b!602119 m!579281))

(assert (=> b!602119 m!579281))

(declare-fun m!579337 () Bool)

(assert (=> b!602119 m!579337))

(assert (=> b!602113 m!579281))

(assert (=> b!602113 m!579281))

(assert (=> b!602113 m!579337))

(push 1)

(assert (not b!602104))

(assert (not b!602118))

(assert (not b!602112))

(assert (not b!602113))

(assert (not b!602120))

(assert (not b!602115))

(assert (not b!602099))

(assert (not b!602114))

(assert (not start!55024))

(assert (not b!602116))

(assert (not b!602106))

(assert (not b!602119))

(assert (not b!602111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

