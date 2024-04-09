; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56756 () Bool)

(assert start!56756)

(declare-fun b!628543 () Bool)

(declare-fun e!359569 () Bool)

(declare-fun e!359567 () Bool)

(assert (=> b!628543 (= e!359569 e!359567)))

(declare-fun res!406288 () Bool)

(assert (=> b!628543 (=> (not res!406288) (not e!359567))))

(declare-datatypes ((SeekEntryResult!6661 0))(
  ( (MissingZero!6661 (index!28927 (_ BitVec 32))) (Found!6661 (index!28928 (_ BitVec 32))) (Intermediate!6661 (undefined!7473 Bool) (index!28929 (_ BitVec 32)) (x!57688 (_ BitVec 32))) (Undefined!6661) (MissingVacant!6661 (index!28930 (_ BitVec 32))) )
))
(declare-fun lt!290504 () SeekEntryResult!6661)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!628543 (= res!406288 (or (= lt!290504 (MissingZero!6661 i!1108)) (= lt!290504 (MissingVacant!6661 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37958 0))(
  ( (array!37959 (arr!18214 (Array (_ BitVec 32) (_ BitVec 64))) (size!18578 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37958)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37958 (_ BitVec 32)) SeekEntryResult!6661)

(assert (=> b!628543 (= lt!290504 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628544 () Bool)

(declare-fun res!406280 () Bool)

(assert (=> b!628544 (=> (not res!406280) (not e!359567))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!628544 (= res!406280 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18214 a!2986) index!984) (select (arr!18214 a!2986) j!136))) (not (= (select (arr!18214 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!406281 () Bool)

(assert (=> start!56756 (=> (not res!406281) (not e!359569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56756 (= res!406281 (validMask!0 mask!3053))))

(assert (=> start!56756 e!359569))

(assert (=> start!56756 true))

(declare-fun array_inv!13988 (array!37958) Bool)

(assert (=> start!56756 (array_inv!13988 a!2986)))

(declare-fun b!628545 () Bool)

(declare-fun res!406282 () Bool)

(assert (=> b!628545 (=> (not res!406282) (not e!359567))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37958 (_ BitVec 32)) SeekEntryResult!6661)

(assert (=> b!628545 (= res!406282 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18214 a!2986) j!136) a!2986 mask!3053) (Found!6661 j!136)))))

(declare-fun b!628546 () Bool)

(declare-fun res!406283 () Bool)

(assert (=> b!628546 (=> (not res!406283) (not e!359569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628546 (= res!406283 (validKeyInArray!0 (select (arr!18214 a!2986) j!136)))))

(declare-fun b!628547 () Bool)

(declare-fun res!406286 () Bool)

(assert (=> b!628547 (=> (not res!406286) (not e!359567))))

(declare-datatypes ((List!12308 0))(
  ( (Nil!12305) (Cons!12304 (h!13349 (_ BitVec 64)) (t!18544 List!12308)) )
))
(declare-fun arrayNoDuplicates!0 (array!37958 (_ BitVec 32) List!12308) Bool)

(assert (=> b!628547 (= res!406286 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12305))))

(declare-fun b!628548 () Bool)

(declare-fun res!406289 () Bool)

(assert (=> b!628548 (=> (not res!406289) (not e!359567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37958 (_ BitVec 32)) Bool)

(assert (=> b!628548 (= res!406289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628549 () Bool)

(assert (=> b!628549 (= e!359567 false)))

(declare-fun lt!290505 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628549 (= lt!290505 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628550 () Bool)

(declare-fun res!406287 () Bool)

(assert (=> b!628550 (=> (not res!406287) (not e!359569))))

(assert (=> b!628550 (= res!406287 (validKeyInArray!0 k0!1786))))

(declare-fun b!628551 () Bool)

(declare-fun res!406285 () Bool)

(assert (=> b!628551 (=> (not res!406285) (not e!359569))))

(assert (=> b!628551 (= res!406285 (and (= (size!18578 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18578 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18578 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628552 () Bool)

(declare-fun res!406279 () Bool)

(assert (=> b!628552 (=> (not res!406279) (not e!359569))))

(declare-fun arrayContainsKey!0 (array!37958 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628552 (= res!406279 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628553 () Bool)

(declare-fun res!406284 () Bool)

(assert (=> b!628553 (=> (not res!406284) (not e!359567))))

(assert (=> b!628553 (= res!406284 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18214 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18214 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56756 res!406281) b!628551))

(assert (= (and b!628551 res!406285) b!628546))

(assert (= (and b!628546 res!406283) b!628550))

(assert (= (and b!628550 res!406287) b!628552))

(assert (= (and b!628552 res!406279) b!628543))

(assert (= (and b!628543 res!406288) b!628548))

(assert (= (and b!628548 res!406289) b!628547))

(assert (= (and b!628547 res!406286) b!628553))

(assert (= (and b!628553 res!406284) b!628545))

(assert (= (and b!628545 res!406282) b!628544))

(assert (= (and b!628544 res!406280) b!628549))

(declare-fun m!603723 () Bool)

(assert (=> b!628550 m!603723))

(declare-fun m!603725 () Bool)

(assert (=> b!628547 m!603725))

(declare-fun m!603727 () Bool)

(assert (=> b!628549 m!603727))

(declare-fun m!603729 () Bool)

(assert (=> b!628545 m!603729))

(assert (=> b!628545 m!603729))

(declare-fun m!603731 () Bool)

(assert (=> b!628545 m!603731))

(declare-fun m!603733 () Bool)

(assert (=> b!628543 m!603733))

(declare-fun m!603735 () Bool)

(assert (=> start!56756 m!603735))

(declare-fun m!603737 () Bool)

(assert (=> start!56756 m!603737))

(declare-fun m!603739 () Bool)

(assert (=> b!628548 m!603739))

(declare-fun m!603741 () Bool)

(assert (=> b!628553 m!603741))

(declare-fun m!603743 () Bool)

(assert (=> b!628553 m!603743))

(declare-fun m!603745 () Bool)

(assert (=> b!628553 m!603745))

(declare-fun m!603747 () Bool)

(assert (=> b!628552 m!603747))

(assert (=> b!628546 m!603729))

(assert (=> b!628546 m!603729))

(declare-fun m!603749 () Bool)

(assert (=> b!628546 m!603749))

(declare-fun m!603751 () Bool)

(assert (=> b!628544 m!603751))

(assert (=> b!628544 m!603729))

(check-sat (not b!628549) (not b!628543) (not b!628547) (not start!56756) (not b!628545) (not b!628546) (not b!628548) (not b!628550) (not b!628552))
(check-sat)
