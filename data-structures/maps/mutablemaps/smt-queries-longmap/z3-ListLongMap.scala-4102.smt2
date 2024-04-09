; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56120 () Bool)

(assert start!56120)

(declare-fun b!619289 () Bool)

(declare-fun e!355173 () Bool)

(declare-datatypes ((SeekEntryResult!6466 0))(
  ( (MissingZero!6466 (index!28147 (_ BitVec 32))) (Found!6466 (index!28148 (_ BitVec 32))) (Intermediate!6466 (undefined!7278 Bool) (index!28149 (_ BitVec 32)) (x!56955 (_ BitVec 32))) (Undefined!6466) (MissingVacant!6466 (index!28150 (_ BitVec 32))) )
))
(declare-fun lt!285926 () SeekEntryResult!6466)

(declare-fun lt!285924 () SeekEntryResult!6466)

(assert (=> b!619289 (= e!355173 (= lt!285926 lt!285924))))

(declare-fun b!619290 () Bool)

(declare-datatypes ((Unit!20480 0))(
  ( (Unit!20481) )
))
(declare-fun e!355177 () Unit!20480)

(declare-fun Unit!20482 () Unit!20480)

(assert (=> b!619290 (= e!355177 Unit!20482)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!619291 () Bool)

(declare-fun e!355175 () Bool)

(declare-datatypes ((array!37553 0))(
  ( (array!37554 (arr!18019 (Array (_ BitVec 32) (_ BitVec 64))) (size!18383 (_ BitVec 32))) )
))
(declare-fun lt!285927 () array!37553)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37553)

(declare-fun arrayContainsKey!0 (array!37553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619291 (= e!355175 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) index!984))))

(declare-fun res!399133 () Bool)

(declare-fun e!355182 () Bool)

(assert (=> start!56120 (=> (not res!399133) (not e!355182))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56120 (= res!399133 (validMask!0 mask!3053))))

(assert (=> start!56120 e!355182))

(assert (=> start!56120 true))

(declare-fun array_inv!13793 (array!37553) Bool)

(assert (=> start!56120 (array_inv!13793 a!2986)))

(declare-fun b!619292 () Bool)

(declare-fun res!399135 () Bool)

(declare-fun e!355186 () Bool)

(assert (=> b!619292 (=> (not res!399135) (not e!355186))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!619292 (= res!399135 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18019 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!399139 () Bool)

(declare-fun b!619293 () Bool)

(assert (=> b!619293 (= res!399139 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) j!136))))

(assert (=> b!619293 (=> (not res!399139) (not e!355175))))

(declare-fun e!355178 () Bool)

(assert (=> b!619293 (= e!355178 e!355175)))

(declare-fun b!619294 () Bool)

(declare-fun e!355183 () Unit!20480)

(declare-fun Unit!20483 () Unit!20480)

(assert (=> b!619294 (= e!355183 Unit!20483)))

(declare-fun res!399140 () Bool)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!619294 (= res!399140 (= (select (store (arr!18019 a!2986) i!1108 k0!1786) index!984) (select (arr!18019 a!2986) j!136)))))

(declare-fun e!355172 () Bool)

(assert (=> b!619294 (=> (not res!399140) (not e!355172))))

(assert (=> b!619294 e!355172))

(declare-fun c!70451 () Bool)

(assert (=> b!619294 (= c!70451 (bvslt j!136 index!984))))

(declare-fun lt!285922 () Unit!20480)

(assert (=> b!619294 (= lt!285922 e!355177)))

(declare-fun c!70450 () Bool)

(assert (=> b!619294 (= c!70450 (bvslt index!984 j!136))))

(declare-fun lt!285936 () Unit!20480)

(declare-fun e!355184 () Unit!20480)

(assert (=> b!619294 (= lt!285936 e!355184)))

(assert (=> b!619294 false))

(declare-fun b!619295 () Bool)

(declare-fun res!399129 () Bool)

(assert (=> b!619295 (=> (not res!399129) (not e!355182))))

(assert (=> b!619295 (= res!399129 (and (= (size!18383 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18383 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18383 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619296 () Bool)

(declare-fun e!355179 () Bool)

(declare-fun e!355174 () Bool)

(assert (=> b!619296 (= e!355179 e!355174)))

(declare-fun res!399130 () Bool)

(assert (=> b!619296 (=> (not res!399130) (not e!355174))))

(assert (=> b!619296 (= res!399130 (and (= lt!285926 (Found!6466 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18019 a!2986) index!984) (select (arr!18019 a!2986) j!136))) (not (= (select (arr!18019 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37553 (_ BitVec 32)) SeekEntryResult!6466)

(assert (=> b!619296 (= lt!285926 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18019 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!355181 () Bool)

(declare-fun b!619297 () Bool)

(assert (=> b!619297 (= e!355181 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) index!984))))

(declare-fun b!619298 () Bool)

(declare-fun Unit!20484 () Unit!20480)

(assert (=> b!619298 (= e!355183 Unit!20484)))

(declare-fun b!619299 () Bool)

(declare-fun Unit!20485 () Unit!20480)

(assert (=> b!619299 (= e!355184 Unit!20485)))

(declare-fun b!619300 () Bool)

(declare-fun e!355180 () Unit!20480)

(declare-fun Unit!20486 () Unit!20480)

(assert (=> b!619300 (= e!355180 Unit!20486)))

(declare-fun b!619301 () Bool)

(declare-fun res!399132 () Bool)

(assert (=> b!619301 (= res!399132 (bvsge j!136 index!984))))

(assert (=> b!619301 (=> res!399132 e!355178)))

(assert (=> b!619301 (= e!355172 e!355178)))

(declare-fun b!619302 () Bool)

(declare-fun Unit!20487 () Unit!20480)

(assert (=> b!619302 (= e!355180 Unit!20487)))

(assert (=> b!619302 false))

(declare-fun b!619303 () Bool)

(declare-fun res!399134 () Bool)

(assert (=> b!619303 (=> (not res!399134) (not e!355186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37553 (_ BitVec 32)) Bool)

(assert (=> b!619303 (= res!399134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619304 () Bool)

(declare-fun res!399143 () Bool)

(assert (=> b!619304 (=> (not res!399143) (not e!355182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619304 (= res!399143 (validKeyInArray!0 k0!1786))))

(declare-fun b!619305 () Bool)

(declare-fun res!399142 () Bool)

(assert (=> b!619305 (=> (not res!399142) (not e!355186))))

(declare-datatypes ((List!12113 0))(
  ( (Nil!12110) (Cons!12109 (h!13154 (_ BitVec 64)) (t!18349 List!12113)) )
))
(declare-fun arrayNoDuplicates!0 (array!37553 (_ BitVec 32) List!12113) Bool)

(assert (=> b!619305 (= res!399142 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12110))))

(declare-fun b!619306 () Bool)

(assert (=> b!619306 false))

(declare-fun lt!285925 () Unit!20480)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37553 (_ BitVec 64) (_ BitVec 32) List!12113) Unit!20480)

(assert (=> b!619306 (= lt!285925 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285927 (select (arr!18019 a!2986) j!136) j!136 Nil!12110))))

(assert (=> b!619306 (arrayNoDuplicates!0 lt!285927 j!136 Nil!12110)))

(declare-fun lt!285935 () Unit!20480)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37553 (_ BitVec 32) (_ BitVec 32)) Unit!20480)

(assert (=> b!619306 (= lt!285935 (lemmaNoDuplicateFromThenFromBigger!0 lt!285927 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619306 (arrayNoDuplicates!0 lt!285927 #b00000000000000000000000000000000 Nil!12110)))

(declare-fun lt!285923 () Unit!20480)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12113) Unit!20480)

(assert (=> b!619306 (= lt!285923 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12110))))

(assert (=> b!619306 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285917 () Unit!20480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37553 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20480)

(assert (=> b!619306 (= lt!285917 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285927 (select (arr!18019 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20488 () Unit!20480)

(assert (=> b!619306 (= e!355177 Unit!20488)))

(declare-fun b!619307 () Bool)

(assert (=> b!619307 false))

(declare-fun lt!285934 () Unit!20480)

(assert (=> b!619307 (= lt!285934 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285927 (select (arr!18019 a!2986) j!136) index!984 Nil!12110))))

(assert (=> b!619307 (arrayNoDuplicates!0 lt!285927 index!984 Nil!12110)))

(declare-fun lt!285919 () Unit!20480)

(assert (=> b!619307 (= lt!285919 (lemmaNoDuplicateFromThenFromBigger!0 lt!285927 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619307 (arrayNoDuplicates!0 lt!285927 #b00000000000000000000000000000000 Nil!12110)))

(declare-fun lt!285932 () Unit!20480)

(assert (=> b!619307 (= lt!285932 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12110))))

(assert (=> b!619307 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285929 () Unit!20480)

(assert (=> b!619307 (= lt!285929 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285927 (select (arr!18019 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619307 e!355181))

(declare-fun res!399128 () Bool)

(assert (=> b!619307 (=> (not res!399128) (not e!355181))))

(assert (=> b!619307 (= res!399128 (arrayContainsKey!0 lt!285927 (select (arr!18019 a!2986) j!136) j!136))))

(declare-fun Unit!20489 () Unit!20480)

(assert (=> b!619307 (= e!355184 Unit!20489)))

(declare-fun b!619308 () Bool)

(declare-fun res!399137 () Bool)

(assert (=> b!619308 (=> (not res!399137) (not e!355182))))

(assert (=> b!619308 (= res!399137 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619309 () Bool)

(declare-fun e!355176 () Bool)

(assert (=> b!619309 (= e!355176 true)))

(assert (=> b!619309 (= (select (store (arr!18019 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619310 () Bool)

(assert (=> b!619310 (= e!355182 e!355186)))

(declare-fun res!399136 () Bool)

(assert (=> b!619310 (=> (not res!399136) (not e!355186))))

(declare-fun lt!285918 () SeekEntryResult!6466)

(assert (=> b!619310 (= res!399136 (or (= lt!285918 (MissingZero!6466 i!1108)) (= lt!285918 (MissingVacant!6466 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37553 (_ BitVec 32)) SeekEntryResult!6466)

(assert (=> b!619310 (= lt!285918 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!619311 () Bool)

(assert (=> b!619311 (= e!355186 e!355179)))

(declare-fun res!399141 () Bool)

(assert (=> b!619311 (=> (not res!399141) (not e!355179))))

(assert (=> b!619311 (= res!399141 (= (select (store (arr!18019 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619311 (= lt!285927 (array!37554 (store (arr!18019 a!2986) i!1108 k0!1786) (size!18383 a!2986)))))

(declare-fun b!619312 () Bool)

(declare-fun res!399131 () Bool)

(assert (=> b!619312 (=> (not res!399131) (not e!355182))))

(assert (=> b!619312 (= res!399131 (validKeyInArray!0 (select (arr!18019 a!2986) j!136)))))

(declare-fun b!619313 () Bool)

(assert (=> b!619313 (= e!355174 (not e!355176))))

(declare-fun res!399138 () Bool)

(assert (=> b!619313 (=> res!399138 e!355176)))

(declare-fun lt!285921 () SeekEntryResult!6466)

(assert (=> b!619313 (= res!399138 (not (= lt!285921 (MissingVacant!6466 vacantSpotIndex!68))))))

(declare-fun lt!285928 () Unit!20480)

(assert (=> b!619313 (= lt!285928 e!355183)))

(declare-fun c!70449 () Bool)

(assert (=> b!619313 (= c!70449 (= lt!285921 (Found!6466 index!984)))))

(declare-fun lt!285930 () Unit!20480)

(assert (=> b!619313 (= lt!285930 e!355180)))

(declare-fun c!70448 () Bool)

(assert (=> b!619313 (= c!70448 (= lt!285921 Undefined!6466))))

(declare-fun lt!285931 () (_ BitVec 64))

(assert (=> b!619313 (= lt!285921 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285931 lt!285927 mask!3053))))

(assert (=> b!619313 e!355173))

(declare-fun res!399127 () Bool)

(assert (=> b!619313 (=> (not res!399127) (not e!355173))))

(declare-fun lt!285920 () (_ BitVec 32))

(assert (=> b!619313 (= res!399127 (= lt!285924 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285920 vacantSpotIndex!68 lt!285931 lt!285927 mask!3053)))))

(assert (=> b!619313 (= lt!285924 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285920 vacantSpotIndex!68 (select (arr!18019 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619313 (= lt!285931 (select (store (arr!18019 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!285933 () Unit!20480)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37553 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20480)

(assert (=> b!619313 (= lt!285933 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285920 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619313 (= lt!285920 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56120 res!399133) b!619295))

(assert (= (and b!619295 res!399129) b!619312))

(assert (= (and b!619312 res!399131) b!619304))

(assert (= (and b!619304 res!399143) b!619308))

(assert (= (and b!619308 res!399137) b!619310))

(assert (= (and b!619310 res!399136) b!619303))

(assert (= (and b!619303 res!399134) b!619305))

(assert (= (and b!619305 res!399142) b!619292))

(assert (= (and b!619292 res!399135) b!619311))

(assert (= (and b!619311 res!399141) b!619296))

(assert (= (and b!619296 res!399130) b!619313))

(assert (= (and b!619313 res!399127) b!619289))

(assert (= (and b!619313 c!70448) b!619302))

(assert (= (and b!619313 (not c!70448)) b!619300))

(assert (= (and b!619313 c!70449) b!619294))

(assert (= (and b!619313 (not c!70449)) b!619298))

(assert (= (and b!619294 res!399140) b!619301))

(assert (= (and b!619301 (not res!399132)) b!619293))

(assert (= (and b!619293 res!399139) b!619291))

(assert (= (and b!619294 c!70451) b!619306))

(assert (= (and b!619294 (not c!70451)) b!619290))

(assert (= (and b!619294 c!70450) b!619307))

(assert (= (and b!619294 (not c!70450)) b!619299))

(assert (= (and b!619307 res!399128) b!619297))

(assert (= (and b!619313 (not res!399138)) b!619309))

(declare-fun m!595309 () Bool)

(assert (=> b!619308 m!595309))

(declare-fun m!595311 () Bool)

(assert (=> b!619294 m!595311))

(declare-fun m!595313 () Bool)

(assert (=> b!619294 m!595313))

(declare-fun m!595315 () Bool)

(assert (=> b!619294 m!595315))

(assert (=> b!619312 m!595315))

(assert (=> b!619312 m!595315))

(declare-fun m!595317 () Bool)

(assert (=> b!619312 m!595317))

(declare-fun m!595319 () Bool)

(assert (=> b!619303 m!595319))

(assert (=> b!619309 m!595311))

(assert (=> b!619309 m!595313))

(declare-fun m!595321 () Bool)

(assert (=> b!619292 m!595321))

(declare-fun m!595323 () Bool)

(assert (=> start!56120 m!595323))

(declare-fun m!595325 () Bool)

(assert (=> start!56120 m!595325))

(assert (=> b!619311 m!595311))

(declare-fun m!595327 () Bool)

(assert (=> b!619311 m!595327))

(assert (=> b!619291 m!595315))

(assert (=> b!619291 m!595315))

(declare-fun m!595329 () Bool)

(assert (=> b!619291 m!595329))

(declare-fun m!595331 () Bool)

(assert (=> b!619310 m!595331))

(declare-fun m!595333 () Bool)

(assert (=> b!619307 m!595333))

(declare-fun m!595335 () Bool)

(assert (=> b!619307 m!595335))

(assert (=> b!619307 m!595315))

(declare-fun m!595337 () Bool)

(assert (=> b!619307 m!595337))

(declare-fun m!595339 () Bool)

(assert (=> b!619307 m!595339))

(assert (=> b!619307 m!595315))

(declare-fun m!595341 () Bool)

(assert (=> b!619307 m!595341))

(declare-fun m!595343 () Bool)

(assert (=> b!619307 m!595343))

(assert (=> b!619307 m!595315))

(assert (=> b!619307 m!595315))

(declare-fun m!595345 () Bool)

(assert (=> b!619307 m!595345))

(assert (=> b!619307 m!595315))

(declare-fun m!595347 () Bool)

(assert (=> b!619307 m!595347))

(assert (=> b!619293 m!595315))

(assert (=> b!619293 m!595315))

(assert (=> b!619293 m!595345))

(declare-fun m!595349 () Bool)

(assert (=> b!619313 m!595349))

(declare-fun m!595351 () Bool)

(assert (=> b!619313 m!595351))

(assert (=> b!619313 m!595315))

(declare-fun m!595353 () Bool)

(assert (=> b!619313 m!595353))

(assert (=> b!619313 m!595315))

(assert (=> b!619313 m!595311))

(declare-fun m!595355 () Bool)

(assert (=> b!619313 m!595355))

(declare-fun m!595357 () Bool)

(assert (=> b!619313 m!595357))

(declare-fun m!595359 () Bool)

(assert (=> b!619313 m!595359))

(declare-fun m!595361 () Bool)

(assert (=> b!619296 m!595361))

(assert (=> b!619296 m!595315))

(assert (=> b!619296 m!595315))

(declare-fun m!595363 () Bool)

(assert (=> b!619296 m!595363))

(declare-fun m!595365 () Bool)

(assert (=> b!619304 m!595365))

(declare-fun m!595367 () Bool)

(assert (=> b!619305 m!595367))

(assert (=> b!619306 m!595315))

(declare-fun m!595369 () Bool)

(assert (=> b!619306 m!595369))

(assert (=> b!619306 m!595315))

(assert (=> b!619306 m!595315))

(declare-fun m!595371 () Bool)

(assert (=> b!619306 m!595371))

(assert (=> b!619306 m!595333))

(declare-fun m!595373 () Bool)

(assert (=> b!619306 m!595373))

(assert (=> b!619306 m!595315))

(declare-fun m!595375 () Bool)

(assert (=> b!619306 m!595375))

(declare-fun m!595377 () Bool)

(assert (=> b!619306 m!595377))

(assert (=> b!619306 m!595343))

(assert (=> b!619297 m!595315))

(assert (=> b!619297 m!595315))

(assert (=> b!619297 m!595329))

(check-sat (not b!619312) (not b!619308) (not b!619291) (not b!619310) (not start!56120) (not b!619306) (not b!619296) (not b!619304) (not b!619297) (not b!619313) (not b!619293) (not b!619303) (not b!619305) (not b!619307))
(check-sat)
