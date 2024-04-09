; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53412 () Bool)

(assert start!53412)

(declare-fun res!368613 () Bool)

(declare-fun e!333357 () Bool)

(assert (=> start!53412 (=> (not res!368613) (not e!333357))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53412 (= res!368613 (validMask!0 mask!3053))))

(assert (=> start!53412 e!333357))

(assert (=> start!53412 true))

(declare-datatypes ((array!36267 0))(
  ( (array!36268 (arr!17404 (Array (_ BitVec 32) (_ BitVec 64))) (size!17768 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36267)

(declare-fun array_inv!13178 (array!36267) Bool)

(assert (=> start!53412 (array_inv!13178 a!2986)))

(declare-fun b!580647 () Bool)

(declare-fun res!368615 () Bool)

(declare-fun e!333358 () Bool)

(assert (=> b!580647 (=> (not res!368615) (not e!333358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36267 (_ BitVec 32)) Bool)

(assert (=> b!580647 (= res!368615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580648 () Bool)

(declare-fun res!368618 () Bool)

(assert (=> b!580648 (=> (not res!368618) (not e!333358))))

(declare-datatypes ((List!11498 0))(
  ( (Nil!11495) (Cons!11494 (h!12539 (_ BitVec 64)) (t!17734 List!11498)) )
))
(declare-fun arrayNoDuplicates!0 (array!36267 (_ BitVec 32) List!11498) Bool)

(assert (=> b!580648 (= res!368618 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11495))))

(declare-fun b!580649 () Bool)

(declare-fun res!368621 () Bool)

(assert (=> b!580649 (=> (not res!368621) (not e!333357))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580649 (= res!368621 (validKeyInArray!0 k0!1786))))

(declare-fun b!580650 () Bool)

(assert (=> b!580650 (= e!333357 e!333358)))

(declare-fun res!368616 () Bool)

(assert (=> b!580650 (=> (not res!368616) (not e!333358))))

(declare-datatypes ((SeekEntryResult!5851 0))(
  ( (MissingZero!5851 (index!25631 (_ BitVec 32))) (Found!5851 (index!25632 (_ BitVec 32))) (Intermediate!5851 (undefined!6663 Bool) (index!25633 (_ BitVec 32)) (x!54531 (_ BitVec 32))) (Undefined!5851) (MissingVacant!5851 (index!25634 (_ BitVec 32))) )
))
(declare-fun lt!264745 () SeekEntryResult!5851)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580650 (= res!368616 (or (= lt!264745 (MissingZero!5851 i!1108)) (= lt!264745 (MissingVacant!5851 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36267 (_ BitVec 32)) SeekEntryResult!5851)

(assert (=> b!580650 (= lt!264745 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580651 () Bool)

(declare-fun res!368614 () Bool)

(assert (=> b!580651 (=> (not res!368614) (not e!333357))))

(declare-fun arrayContainsKey!0 (array!36267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580651 (= res!368614 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580652 () Bool)

(assert (=> b!580652 (= e!333358 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264746 () SeekEntryResult!5851)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36267 (_ BitVec 32)) SeekEntryResult!5851)

(assert (=> b!580652 (= lt!264746 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17404 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580653 () Bool)

(declare-fun res!368617 () Bool)

(assert (=> b!580653 (=> (not res!368617) (not e!333357))))

(assert (=> b!580653 (= res!368617 (and (= (size!17768 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17768 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17768 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580654 () Bool)

(declare-fun res!368619 () Bool)

(assert (=> b!580654 (=> (not res!368619) (not e!333357))))

(assert (=> b!580654 (= res!368619 (validKeyInArray!0 (select (arr!17404 a!2986) j!136)))))

(declare-fun b!580655 () Bool)

(declare-fun res!368620 () Bool)

(assert (=> b!580655 (=> (not res!368620) (not e!333358))))

(assert (=> b!580655 (= res!368620 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17404 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17404 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53412 res!368613) b!580653))

(assert (= (and b!580653 res!368617) b!580654))

(assert (= (and b!580654 res!368619) b!580649))

(assert (= (and b!580649 res!368621) b!580651))

(assert (= (and b!580651 res!368614) b!580650))

(assert (= (and b!580650 res!368616) b!580647))

(assert (= (and b!580647 res!368615) b!580648))

(assert (= (and b!580648 res!368618) b!580655))

(assert (= (and b!580655 res!368620) b!580652))

(declare-fun m!559263 () Bool)

(assert (=> b!580651 m!559263))

(declare-fun m!559265 () Bool)

(assert (=> b!580648 m!559265))

(declare-fun m!559267 () Bool)

(assert (=> start!53412 m!559267))

(declare-fun m!559269 () Bool)

(assert (=> start!53412 m!559269))

(declare-fun m!559271 () Bool)

(assert (=> b!580647 m!559271))

(declare-fun m!559273 () Bool)

(assert (=> b!580650 m!559273))

(declare-fun m!559275 () Bool)

(assert (=> b!580655 m!559275))

(declare-fun m!559277 () Bool)

(assert (=> b!580655 m!559277))

(declare-fun m!559279 () Bool)

(assert (=> b!580655 m!559279))

(declare-fun m!559281 () Bool)

(assert (=> b!580649 m!559281))

(declare-fun m!559283 () Bool)

(assert (=> b!580652 m!559283))

(assert (=> b!580652 m!559283))

(declare-fun m!559285 () Bool)

(assert (=> b!580652 m!559285))

(assert (=> b!580654 m!559283))

(assert (=> b!580654 m!559283))

(declare-fun m!559287 () Bool)

(assert (=> b!580654 m!559287))

(check-sat (not b!580650) (not b!580649) (not b!580647) (not b!580654) (not b!580648) (not b!580651) (not start!53412) (not b!580652))
(check-sat)
