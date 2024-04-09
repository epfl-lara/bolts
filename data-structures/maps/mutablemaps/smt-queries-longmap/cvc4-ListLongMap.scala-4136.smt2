; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56422 () Bool)

(assert start!56422)

(declare-fun b!625086 () Bool)

(declare-fun res!403277 () Bool)

(declare-fun e!358316 () Bool)

(assert (=> b!625086 (=> (not res!403277) (not e!358316))))

(declare-datatypes ((array!37765 0))(
  ( (array!37766 (arr!18122 (Array (_ BitVec 32) (_ BitVec 64))) (size!18486 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37765)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37765 (_ BitVec 32)) Bool)

(assert (=> b!625086 (= res!403277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625087 () Bool)

(declare-fun res!403279 () Bool)

(declare-fun e!358317 () Bool)

(assert (=> b!625087 (=> (not res!403279) (not e!358317))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625087 (= res!403279 (validKeyInArray!0 (select (arr!18122 a!2986) j!136)))))

(declare-fun b!625088 () Bool)

(declare-fun res!403274 () Bool)

(assert (=> b!625088 (=> (not res!403274) (not e!358317))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625088 (= res!403274 (and (= (size!18486 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18486 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18486 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!403276 () Bool)

(assert (=> start!56422 (=> (not res!403276) (not e!358317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56422 (= res!403276 (validMask!0 mask!3053))))

(assert (=> start!56422 e!358317))

(assert (=> start!56422 true))

(declare-fun array_inv!13896 (array!37765) Bool)

(assert (=> start!56422 (array_inv!13896 a!2986)))

(declare-fun b!625089 () Bool)

(assert (=> b!625089 (= e!358317 e!358316)))

(declare-fun res!403280 () Bool)

(assert (=> b!625089 (=> (not res!403280) (not e!358316))))

(declare-datatypes ((SeekEntryResult!6569 0))(
  ( (MissingZero!6569 (index!28559 (_ BitVec 32))) (Found!6569 (index!28560 (_ BitVec 32))) (Intermediate!6569 (undefined!7381 Bool) (index!28561 (_ BitVec 32)) (x!57336 (_ BitVec 32))) (Undefined!6569) (MissingVacant!6569 (index!28562 (_ BitVec 32))) )
))
(declare-fun lt!289749 () SeekEntryResult!6569)

(assert (=> b!625089 (= res!403280 (or (= lt!289749 (MissingZero!6569 i!1108)) (= lt!289749 (MissingVacant!6569 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37765 (_ BitVec 32)) SeekEntryResult!6569)

(assert (=> b!625089 (= lt!289749 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625090 () Bool)

(assert (=> b!625090 (= e!358316 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!289748 () SeekEntryResult!6569)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37765 (_ BitVec 32)) SeekEntryResult!6569)

(assert (=> b!625090 (= lt!289748 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18122 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625091 () Bool)

(declare-fun res!403272 () Bool)

(assert (=> b!625091 (=> (not res!403272) (not e!358316))))

(declare-datatypes ((List!12216 0))(
  ( (Nil!12213) (Cons!12212 (h!13257 (_ BitVec 64)) (t!18452 List!12216)) )
))
(declare-fun arrayNoDuplicates!0 (array!37765 (_ BitVec 32) List!12216) Bool)

(assert (=> b!625091 (= res!403272 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12213))))

(declare-fun b!625092 () Bool)

(declare-fun res!403275 () Bool)

(assert (=> b!625092 (=> (not res!403275) (not e!358317))))

(assert (=> b!625092 (= res!403275 (validKeyInArray!0 k!1786))))

(declare-fun b!625093 () Bool)

(declare-fun res!403278 () Bool)

(assert (=> b!625093 (=> (not res!403278) (not e!358317))))

(declare-fun arrayContainsKey!0 (array!37765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625093 (= res!403278 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625094 () Bool)

(declare-fun res!403273 () Bool)

(assert (=> b!625094 (=> (not res!403273) (not e!358316))))

(assert (=> b!625094 (= res!403273 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18122 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18122 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56422 res!403276) b!625088))

(assert (= (and b!625088 res!403274) b!625087))

(assert (= (and b!625087 res!403279) b!625092))

(assert (= (and b!625092 res!403275) b!625093))

(assert (= (and b!625093 res!403278) b!625089))

(assert (= (and b!625089 res!403280) b!625086))

(assert (= (and b!625086 res!403277) b!625091))

(assert (= (and b!625091 res!403272) b!625094))

(assert (= (and b!625094 res!403273) b!625090))

(declare-fun m!600721 () Bool)

(assert (=> b!625094 m!600721))

(declare-fun m!600723 () Bool)

(assert (=> b!625094 m!600723))

(declare-fun m!600725 () Bool)

(assert (=> b!625094 m!600725))

(declare-fun m!600727 () Bool)

(assert (=> b!625091 m!600727))

(declare-fun m!600729 () Bool)

(assert (=> b!625090 m!600729))

(assert (=> b!625090 m!600729))

(declare-fun m!600731 () Bool)

(assert (=> b!625090 m!600731))

(declare-fun m!600733 () Bool)

(assert (=> b!625089 m!600733))

(assert (=> b!625087 m!600729))

(assert (=> b!625087 m!600729))

(declare-fun m!600735 () Bool)

(assert (=> b!625087 m!600735))

(declare-fun m!600737 () Bool)

(assert (=> b!625092 m!600737))

(declare-fun m!600739 () Bool)

(assert (=> b!625086 m!600739))

(declare-fun m!600741 () Bool)

(assert (=> b!625093 m!600741))

(declare-fun m!600743 () Bool)

(assert (=> start!56422 m!600743))

(declare-fun m!600745 () Bool)

(assert (=> start!56422 m!600745))

(push 1)

(assert (not b!625090))

(assert (not start!56422))

(assert (not b!625087))

