; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56514 () Bool)

(assert start!56514)

(declare-fun b!625926 () Bool)

(declare-fun res!403954 () Bool)

(declare-fun e!358669 () Bool)

(assert (=> b!625926 (=> (not res!403954) (not e!358669))))

(declare-datatypes ((array!37812 0))(
  ( (array!37813 (arr!18144 (Array (_ BitVec 32) (_ BitVec 64))) (size!18508 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37812)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625926 (= res!403954 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625927 () Bool)

(declare-fun e!358668 () Bool)

(assert (=> b!625927 (= e!358669 e!358668)))

(declare-fun res!403953 () Bool)

(assert (=> b!625927 (=> (not res!403953) (not e!358668))))

(declare-datatypes ((SeekEntryResult!6591 0))(
  ( (MissingZero!6591 (index!28647 (_ BitVec 32))) (Found!6591 (index!28648 (_ BitVec 32))) (Intermediate!6591 (undefined!7403 Bool) (index!28649 (_ BitVec 32)) (x!57425 (_ BitVec 32))) (Undefined!6591) (MissingVacant!6591 (index!28650 (_ BitVec 32))) )
))
(declare-fun lt!289947 () SeekEntryResult!6591)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625927 (= res!403953 (or (= lt!289947 (MissingZero!6591 i!1108)) (= lt!289947 (MissingVacant!6591 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37812 (_ BitVec 32)) SeekEntryResult!6591)

(assert (=> b!625927 (= lt!289947 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625928 () Bool)

(declare-fun res!403952 () Bool)

(assert (=> b!625928 (=> (not res!403952) (not e!358668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37812 (_ BitVec 32)) Bool)

(assert (=> b!625928 (= res!403952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625929 () Bool)

(declare-fun res!403949 () Bool)

(assert (=> b!625929 (=> (not res!403949) (not e!358669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625929 (= res!403949 (validKeyInArray!0 k!1786))))

(declare-fun b!625930 () Bool)

(declare-fun res!403955 () Bool)

(assert (=> b!625930 (=> (not res!403955) (not e!358668))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37812 (_ BitVec 32)) SeekEntryResult!6591)

(assert (=> b!625930 (= res!403955 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18144 a!2986) j!136) a!2986 mask!3053) (Found!6591 j!136)))))

(declare-fun b!625931 () Bool)

(declare-fun res!403951 () Bool)

(assert (=> b!625931 (=> (not res!403951) (not e!358669))))

(assert (=> b!625931 (= res!403951 (validKeyInArray!0 (select (arr!18144 a!2986) j!136)))))

(declare-fun b!625932 () Bool)

(assert (=> b!625932 (= e!358668 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18144 a!2986) index!984) (select (arr!18144 a!2986) j!136))) (bvsge index!984 (size!18508 a!2986))))))

(declare-fun b!625925 () Bool)

(declare-fun res!403950 () Bool)

(assert (=> b!625925 (=> (not res!403950) (not e!358668))))

(assert (=> b!625925 (= res!403950 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18144 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18144 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403957 () Bool)

(assert (=> start!56514 (=> (not res!403957) (not e!358669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56514 (= res!403957 (validMask!0 mask!3053))))

(assert (=> start!56514 e!358669))

(assert (=> start!56514 true))

(declare-fun array_inv!13918 (array!37812) Bool)

(assert (=> start!56514 (array_inv!13918 a!2986)))

(declare-fun b!625933 () Bool)

(declare-fun res!403958 () Bool)

(assert (=> b!625933 (=> (not res!403958) (not e!358669))))

(assert (=> b!625933 (= res!403958 (and (= (size!18508 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18508 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18508 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625934 () Bool)

(declare-fun res!403956 () Bool)

(assert (=> b!625934 (=> (not res!403956) (not e!358668))))

(declare-datatypes ((List!12238 0))(
  ( (Nil!12235) (Cons!12234 (h!13279 (_ BitVec 64)) (t!18474 List!12238)) )
))
(declare-fun arrayNoDuplicates!0 (array!37812 (_ BitVec 32) List!12238) Bool)

(assert (=> b!625934 (= res!403956 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12235))))

(assert (= (and start!56514 res!403957) b!625933))

(assert (= (and b!625933 res!403958) b!625931))

(assert (= (and b!625931 res!403951) b!625929))

(assert (= (and b!625929 res!403949) b!625926))

(assert (= (and b!625926 res!403954) b!625927))

(assert (= (and b!625927 res!403953) b!625928))

(assert (= (and b!625928 res!403952) b!625934))

(assert (= (and b!625934 res!403956) b!625925))

(assert (= (and b!625925 res!403950) b!625930))

(assert (= (and b!625930 res!403955) b!625932))

(declare-fun m!601455 () Bool)

(assert (=> b!625932 m!601455))

(declare-fun m!601457 () Bool)

(assert (=> b!625932 m!601457))

(declare-fun m!601459 () Bool)

(assert (=> b!625925 m!601459))

(declare-fun m!601461 () Bool)

(assert (=> b!625925 m!601461))

(declare-fun m!601463 () Bool)

(assert (=> b!625925 m!601463))

(declare-fun m!601465 () Bool)

(assert (=> start!56514 m!601465))

(declare-fun m!601467 () Bool)

(assert (=> start!56514 m!601467))

(declare-fun m!601469 () Bool)

(assert (=> b!625929 m!601469))

(declare-fun m!601471 () Bool)

(assert (=> b!625926 m!601471))

(assert (=> b!625931 m!601457))

(assert (=> b!625931 m!601457))

(declare-fun m!601473 () Bool)

(assert (=> b!625931 m!601473))

(declare-fun m!601475 () Bool)

(assert (=> b!625928 m!601475))

(declare-fun m!601477 () Bool)

(assert (=> b!625934 m!601477))

(assert (=> b!625930 m!601457))

(assert (=> b!625930 m!601457))

(declare-fun m!601479 () Bool)

(assert (=> b!625930 m!601479))

(declare-fun m!601481 () Bool)

(assert (=> b!625927 m!601481))

(push 1)

(assert (not b!625926))

(assert (not b!625934))

(assert (not b!625930))

(assert (not b!625931))

(assert (not b!625928))

(assert (not b!625927))

(assert (not start!56514))

(assert (not b!625929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

