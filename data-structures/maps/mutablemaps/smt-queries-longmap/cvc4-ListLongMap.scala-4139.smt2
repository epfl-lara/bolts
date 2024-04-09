; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56440 () Bool)

(assert start!56440)

(declare-fun b!625338 () Bool)

(declare-fun res!403526 () Bool)

(declare-fun e!358398 () Bool)

(assert (=> b!625338 (=> (not res!403526) (not e!358398))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37783 0))(
  ( (array!37784 (arr!18131 (Array (_ BitVec 32) (_ BitVec 64))) (size!18495 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37783)

(assert (=> b!625338 (= res!403526 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18131 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18131 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625339 () Bool)

(declare-fun res!403531 () Bool)

(declare-fun e!358397 () Bool)

(assert (=> b!625339 (=> (not res!403531) (not e!358397))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625339 (= res!403531 (and (= (size!18495 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18495 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18495 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625340 () Bool)

(declare-fun res!403532 () Bool)

(assert (=> b!625340 (=> (not res!403532) (not e!358397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625340 (= res!403532 (validKeyInArray!0 k!1786))))

(declare-fun b!625341 () Bool)

(assert (=> b!625341 (= e!358397 e!358398)))

(declare-fun res!403524 () Bool)

(assert (=> b!625341 (=> (not res!403524) (not e!358398))))

(declare-datatypes ((SeekEntryResult!6578 0))(
  ( (MissingZero!6578 (index!28595 (_ BitVec 32))) (Found!6578 (index!28596 (_ BitVec 32))) (Intermediate!6578 (undefined!7390 Bool) (index!28597 (_ BitVec 32)) (x!57369 (_ BitVec 32))) (Undefined!6578) (MissingVacant!6578 (index!28598 (_ BitVec 32))) )
))
(declare-fun lt!289793 () SeekEntryResult!6578)

(assert (=> b!625341 (= res!403524 (or (= lt!289793 (MissingZero!6578 i!1108)) (= lt!289793 (MissingVacant!6578 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37783 (_ BitVec 32)) SeekEntryResult!6578)

(assert (=> b!625341 (= lt!289793 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625342 () Bool)

(assert (=> b!625342 (= e!358398 false)))

(declare-fun lt!289794 () SeekEntryResult!6578)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37783 (_ BitVec 32)) SeekEntryResult!6578)

(assert (=> b!625342 (= lt!289794 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18131 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!403528 () Bool)

(assert (=> start!56440 (=> (not res!403528) (not e!358397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56440 (= res!403528 (validMask!0 mask!3053))))

(assert (=> start!56440 e!358397))

(assert (=> start!56440 true))

(declare-fun array_inv!13905 (array!37783) Bool)

(assert (=> start!56440 (array_inv!13905 a!2986)))

(declare-fun b!625343 () Bool)

(declare-fun res!403527 () Bool)

(assert (=> b!625343 (=> (not res!403527) (not e!358397))))

(assert (=> b!625343 (= res!403527 (validKeyInArray!0 (select (arr!18131 a!2986) j!136)))))

(declare-fun b!625344 () Bool)

(declare-fun res!403530 () Bool)

(assert (=> b!625344 (=> (not res!403530) (not e!358397))))

(declare-fun arrayContainsKey!0 (array!37783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625344 (= res!403530 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625345 () Bool)

(declare-fun res!403529 () Bool)

(assert (=> b!625345 (=> (not res!403529) (not e!358398))))

(declare-datatypes ((List!12225 0))(
  ( (Nil!12222) (Cons!12221 (h!13266 (_ BitVec 64)) (t!18461 List!12225)) )
))
(declare-fun arrayNoDuplicates!0 (array!37783 (_ BitVec 32) List!12225) Bool)

(assert (=> b!625345 (= res!403529 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12222))))

(declare-fun b!625346 () Bool)

(declare-fun res!403525 () Bool)

(assert (=> b!625346 (=> (not res!403525) (not e!358398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37783 (_ BitVec 32)) Bool)

(assert (=> b!625346 (= res!403525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56440 res!403528) b!625339))

(assert (= (and b!625339 res!403531) b!625343))

(assert (= (and b!625343 res!403527) b!625340))

(assert (= (and b!625340 res!403532) b!625344))

(assert (= (and b!625344 res!403530) b!625341))

(assert (= (and b!625341 res!403524) b!625346))

(assert (= (and b!625346 res!403525) b!625345))

(assert (= (and b!625345 res!403529) b!625338))

(assert (= (and b!625338 res!403526) b!625342))

(declare-fun m!600955 () Bool)

(assert (=> b!625338 m!600955))

(declare-fun m!600957 () Bool)

(assert (=> b!625338 m!600957))

(declare-fun m!600959 () Bool)

(assert (=> b!625338 m!600959))

(declare-fun m!600961 () Bool)

(assert (=> b!625340 m!600961))

(declare-fun m!600963 () Bool)

(assert (=> b!625341 m!600963))

(declare-fun m!600965 () Bool)

(assert (=> b!625343 m!600965))

(assert (=> b!625343 m!600965))

(declare-fun m!600967 () Bool)

(assert (=> b!625343 m!600967))

(declare-fun m!600969 () Bool)

(assert (=> start!56440 m!600969))

(declare-fun m!600971 () Bool)

(assert (=> start!56440 m!600971))

(declare-fun m!600973 () Bool)

(assert (=> b!625344 m!600973))

(declare-fun m!600975 () Bool)

(assert (=> b!625345 m!600975))

(declare-fun m!600977 () Bool)

(assert (=> b!625346 m!600977))

(assert (=> b!625342 m!600965))

(assert (=> b!625342 m!600965))

(declare-fun m!600979 () Bool)

(assert (=> b!625342 m!600979))

(push 1)

(assert (not b!625343))

(assert (not b!625344))

(assert (not b!625345))

(assert (not b!625340))

(assert (not b!625346))

(assert (not 