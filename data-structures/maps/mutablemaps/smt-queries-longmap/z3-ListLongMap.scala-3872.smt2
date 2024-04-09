; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53262 () Bool)

(assert start!53262)

(declare-fun b!578613 () Bool)

(declare-fun e!332683 () Bool)

(assert (=> b!578613 (= e!332683 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5776 0))(
  ( (MissingZero!5776 (index!25331 (_ BitVec 32))) (Found!5776 (index!25332 (_ BitVec 32))) (Intermediate!5776 (undefined!6588 Bool) (index!25333 (_ BitVec 32)) (x!54256 (_ BitVec 32))) (Undefined!5776) (MissingVacant!5776 (index!25334 (_ BitVec 32))) )
))
(declare-fun lt!264305 () SeekEntryResult!5776)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36117 0))(
  ( (array!36118 (arr!17329 (Array (_ BitVec 32) (_ BitVec 64))) (size!17693 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36117)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36117 (_ BitVec 32)) SeekEntryResult!5776)

(assert (=> b!578613 (= lt!264305 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17329 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578614 () Bool)

(declare-fun res!366584 () Bool)

(declare-fun e!332681 () Bool)

(assert (=> b!578614 (=> (not res!366584) (not e!332681))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578614 (= res!366584 (and (= (size!17693 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17693 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17693 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366585 () Bool)

(assert (=> start!53262 (=> (not res!366585) (not e!332681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53262 (= res!366585 (validMask!0 mask!3053))))

(assert (=> start!53262 e!332681))

(assert (=> start!53262 true))

(declare-fun array_inv!13103 (array!36117) Bool)

(assert (=> start!53262 (array_inv!13103 a!2986)))

(declare-fun b!578615 () Bool)

(declare-fun res!366581 () Bool)

(assert (=> b!578615 (=> (not res!366581) (not e!332683))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!578615 (= res!366581 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17329 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17329 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578616 () Bool)

(declare-fun res!366586 () Bool)

(assert (=> b!578616 (=> (not res!366586) (not e!332683))))

(declare-datatypes ((List!11423 0))(
  ( (Nil!11420) (Cons!11419 (h!12464 (_ BitVec 64)) (t!17659 List!11423)) )
))
(declare-fun arrayNoDuplicates!0 (array!36117 (_ BitVec 32) List!11423) Bool)

(assert (=> b!578616 (= res!366586 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11420))))

(declare-fun b!578617 () Bool)

(assert (=> b!578617 (= e!332681 e!332683)))

(declare-fun res!366580 () Bool)

(assert (=> b!578617 (=> (not res!366580) (not e!332683))))

(declare-fun lt!264304 () SeekEntryResult!5776)

(assert (=> b!578617 (= res!366580 (or (= lt!264304 (MissingZero!5776 i!1108)) (= lt!264304 (MissingVacant!5776 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36117 (_ BitVec 32)) SeekEntryResult!5776)

(assert (=> b!578617 (= lt!264304 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578618 () Bool)

(declare-fun res!366583 () Bool)

(assert (=> b!578618 (=> (not res!366583) (not e!332681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578618 (= res!366583 (validKeyInArray!0 k0!1786))))

(declare-fun b!578619 () Bool)

(declare-fun res!366579 () Bool)

(assert (=> b!578619 (=> (not res!366579) (not e!332683))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36117 (_ BitVec 32)) Bool)

(assert (=> b!578619 (= res!366579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578620 () Bool)

(declare-fun res!366582 () Bool)

(assert (=> b!578620 (=> (not res!366582) (not e!332681))))

(declare-fun arrayContainsKey!0 (array!36117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578620 (= res!366582 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578621 () Bool)

(declare-fun res!366587 () Bool)

(assert (=> b!578621 (=> (not res!366587) (not e!332681))))

(assert (=> b!578621 (= res!366587 (validKeyInArray!0 (select (arr!17329 a!2986) j!136)))))

(assert (= (and start!53262 res!366585) b!578614))

(assert (= (and b!578614 res!366584) b!578621))

(assert (= (and b!578621 res!366587) b!578618))

(assert (= (and b!578618 res!366583) b!578620))

(assert (= (and b!578620 res!366582) b!578617))

(assert (= (and b!578617 res!366580) b!578619))

(assert (= (and b!578619 res!366579) b!578616))

(assert (= (and b!578616 res!366586) b!578615))

(assert (= (and b!578615 res!366581) b!578613))

(declare-fun m!557307 () Bool)

(assert (=> b!578618 m!557307))

(declare-fun m!557309 () Bool)

(assert (=> b!578615 m!557309))

(declare-fun m!557311 () Bool)

(assert (=> b!578615 m!557311))

(declare-fun m!557313 () Bool)

(assert (=> b!578615 m!557313))

(declare-fun m!557315 () Bool)

(assert (=> b!578617 m!557315))

(declare-fun m!557317 () Bool)

(assert (=> start!53262 m!557317))

(declare-fun m!557319 () Bool)

(assert (=> start!53262 m!557319))

(declare-fun m!557321 () Bool)

(assert (=> b!578616 m!557321))

(declare-fun m!557323 () Bool)

(assert (=> b!578621 m!557323))

(assert (=> b!578621 m!557323))

(declare-fun m!557325 () Bool)

(assert (=> b!578621 m!557325))

(declare-fun m!557327 () Bool)

(assert (=> b!578619 m!557327))

(declare-fun m!557329 () Bool)

(assert (=> b!578620 m!557329))

(assert (=> b!578613 m!557323))

(assert (=> b!578613 m!557323))

(declare-fun m!557331 () Bool)

(assert (=> b!578613 m!557331))

(check-sat (not b!578618) (not b!578616) (not start!53262) (not b!578620) (not b!578613) (not b!578617) (not b!578619) (not b!578621))
(check-sat)
