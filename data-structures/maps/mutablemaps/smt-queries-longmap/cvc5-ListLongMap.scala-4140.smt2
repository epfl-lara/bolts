; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56442 () Bool)

(assert start!56442)

(declare-fun b!625365 () Bool)

(declare-fun res!403553 () Bool)

(declare-fun e!358406 () Bool)

(assert (=> b!625365 (=> (not res!403553) (not e!358406))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37785 0))(
  ( (array!37786 (arr!18132 (Array (_ BitVec 32) (_ BitVec 64))) (size!18496 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37785)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625365 (= res!403553 (and (= (size!18496 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18496 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18496 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625366 () Bool)

(declare-fun res!403551 () Bool)

(declare-fun e!358407 () Bool)

(assert (=> b!625366 (=> (not res!403551) (not e!358407))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625366 (= res!403551 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18132 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18132 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625368 () Bool)

(declare-fun res!403558 () Bool)

(assert (=> b!625368 (=> (not res!403558) (not e!358407))))

(declare-datatypes ((List!12226 0))(
  ( (Nil!12223) (Cons!12222 (h!13267 (_ BitVec 64)) (t!18462 List!12226)) )
))
(declare-fun arrayNoDuplicates!0 (array!37785 (_ BitVec 32) List!12226) Bool)

(assert (=> b!625368 (= res!403558 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12223))))

(declare-fun b!625369 () Bool)

(declare-fun res!403557 () Bool)

(assert (=> b!625369 (=> (not res!403557) (not e!358406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625369 (= res!403557 (validKeyInArray!0 (select (arr!18132 a!2986) j!136)))))

(declare-fun res!403552 () Bool)

(assert (=> start!56442 (=> (not res!403552) (not e!358406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56442 (= res!403552 (validMask!0 mask!3053))))

(assert (=> start!56442 e!358406))

(assert (=> start!56442 true))

(declare-fun array_inv!13906 (array!37785) Bool)

(assert (=> start!56442 (array_inv!13906 a!2986)))

(declare-fun b!625367 () Bool)

(assert (=> b!625367 (= e!358407 false)))

(declare-datatypes ((SeekEntryResult!6579 0))(
  ( (MissingZero!6579 (index!28599 (_ BitVec 32))) (Found!6579 (index!28600 (_ BitVec 32))) (Intermediate!6579 (undefined!7391 Bool) (index!28601 (_ BitVec 32)) (x!57378 (_ BitVec 32))) (Undefined!6579) (MissingVacant!6579 (index!28602 (_ BitVec 32))) )
))
(declare-fun lt!289800 () SeekEntryResult!6579)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37785 (_ BitVec 32)) SeekEntryResult!6579)

(assert (=> b!625367 (= lt!289800 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18132 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625370 () Bool)

(declare-fun res!403556 () Bool)

(assert (=> b!625370 (=> (not res!403556) (not e!358407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37785 (_ BitVec 32)) Bool)

(assert (=> b!625370 (= res!403556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625371 () Bool)

(declare-fun res!403554 () Bool)

(assert (=> b!625371 (=> (not res!403554) (not e!358406))))

(assert (=> b!625371 (= res!403554 (validKeyInArray!0 k!1786))))

(declare-fun b!625372 () Bool)

(declare-fun res!403555 () Bool)

(assert (=> b!625372 (=> (not res!403555) (not e!358406))))

(declare-fun arrayContainsKey!0 (array!37785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625372 (= res!403555 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625373 () Bool)

(assert (=> b!625373 (= e!358406 e!358407)))

(declare-fun res!403559 () Bool)

(assert (=> b!625373 (=> (not res!403559) (not e!358407))))

(declare-fun lt!289799 () SeekEntryResult!6579)

(assert (=> b!625373 (= res!403559 (or (= lt!289799 (MissingZero!6579 i!1108)) (= lt!289799 (MissingVacant!6579 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37785 (_ BitVec 32)) SeekEntryResult!6579)

(assert (=> b!625373 (= lt!289799 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56442 res!403552) b!625365))

(assert (= (and b!625365 res!403553) b!625369))

(assert (= (and b!625369 res!403557) b!625371))

(assert (= (and b!625371 res!403554) b!625372))

(assert (= (and b!625372 res!403555) b!625373))

(assert (= (and b!625373 res!403559) b!625370))

(assert (= (and b!625370 res!403556) b!625368))

(assert (= (and b!625368 res!403558) b!625366))

(assert (= (and b!625366 res!403551) b!625367))

(declare-fun m!600981 () Bool)

(assert (=> b!625372 m!600981))

(declare-fun m!600983 () Bool)

(assert (=> b!625369 m!600983))

(assert (=> b!625369 m!600983))

(declare-fun m!600985 () Bool)

(assert (=> b!625369 m!600985))

(declare-fun m!600987 () Bool)

(assert (=> b!625371 m!600987))

(declare-fun m!600989 () Bool)

(assert (=> b!625368 m!600989))

(declare-fun m!600991 () Bool)

(assert (=> b!625370 m!600991))

(declare-fun m!600993 () Bool)

(assert (=> b!625366 m!600993))

(declare-fun m!600995 () Bool)

(assert (=> b!625366 m!600995))

(declare-fun m!600997 () Bool)

(assert (=> b!625366 m!600997))

(declare-fun m!600999 () Bool)

(assert (=> b!625373 m!600999))

(assert (=> b!625367 m!600983))

(assert (=> b!625367 m!600983))

(declare-fun m!601001 () Bool)

(assert (=> b!625367 m!601001))

(declare-fun m!601003 () Bool)

(assert (=> start!56442 m!601003))

(declare-fun m!601005 () Bool)

(assert (=> start!56442 m!601005))

(push 1)

