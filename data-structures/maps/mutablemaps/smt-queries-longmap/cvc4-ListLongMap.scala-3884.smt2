; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53336 () Bool)

(assert start!53336)

(declare-fun b!579612 () Bool)

(declare-fun res!367580 () Bool)

(declare-fun e!333016 () Bool)

(assert (=> b!579612 (=> (not res!367580) (not e!333016))))

(declare-datatypes ((array!36191 0))(
  ( (array!36192 (arr!17366 (Array (_ BitVec 32) (_ BitVec 64))) (size!17730 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36191)

(declare-datatypes ((List!11460 0))(
  ( (Nil!11457) (Cons!11456 (h!12501 (_ BitVec 64)) (t!17696 List!11460)) )
))
(declare-fun arrayNoDuplicates!0 (array!36191 (_ BitVec 32) List!11460) Bool)

(assert (=> b!579612 (= res!367580 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11457))))

(declare-fun b!579613 () Bool)

(declare-fun res!367584 () Bool)

(declare-fun e!333015 () Bool)

(assert (=> b!579613 (=> (not res!367584) (not e!333015))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579613 (= res!367584 (validKeyInArray!0 (select (arr!17366 a!2986) j!136)))))

(declare-fun res!367586 () Bool)

(assert (=> start!53336 (=> (not res!367586) (not e!333015))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53336 (= res!367586 (validMask!0 mask!3053))))

(assert (=> start!53336 e!333015))

(assert (=> start!53336 true))

(declare-fun array_inv!13140 (array!36191) Bool)

(assert (=> start!53336 (array_inv!13140 a!2986)))

(declare-fun b!579614 () Bool)

(assert (=> b!579614 (= e!333016 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5813 0))(
  ( (MissingZero!5813 (index!25479 (_ BitVec 32))) (Found!5813 (index!25480 (_ BitVec 32))) (Intermediate!5813 (undefined!6625 Bool) (index!25481 (_ BitVec 32)) (x!54389 (_ BitVec 32))) (Undefined!5813) (MissingVacant!5813 (index!25482 (_ BitVec 32))) )
))
(declare-fun lt!264526 () SeekEntryResult!5813)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36191 (_ BitVec 32)) SeekEntryResult!5813)

(assert (=> b!579614 (= lt!264526 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17366 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579615 () Bool)

(assert (=> b!579615 (= e!333015 e!333016)))

(declare-fun res!367579 () Bool)

(assert (=> b!579615 (=> (not res!367579) (not e!333016))))

(declare-fun lt!264527 () SeekEntryResult!5813)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579615 (= res!367579 (or (= lt!264527 (MissingZero!5813 i!1108)) (= lt!264527 (MissingVacant!5813 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36191 (_ BitVec 32)) SeekEntryResult!5813)

(assert (=> b!579615 (= lt!264527 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579616 () Bool)

(declare-fun res!367585 () Bool)

(assert (=> b!579616 (=> (not res!367585) (not e!333015))))

(declare-fun arrayContainsKey!0 (array!36191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579616 (= res!367585 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579617 () Bool)

(declare-fun res!367581 () Bool)

(assert (=> b!579617 (=> (not res!367581) (not e!333016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36191 (_ BitVec 32)) Bool)

(assert (=> b!579617 (= res!367581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579618 () Bool)

(declare-fun res!367582 () Bool)

(assert (=> b!579618 (=> (not res!367582) (not e!333015))))

(assert (=> b!579618 (= res!367582 (validKeyInArray!0 k!1786))))

(declare-fun b!579619 () Bool)

(declare-fun res!367583 () Bool)

(assert (=> b!579619 (=> (not res!367583) (not e!333016))))

(assert (=> b!579619 (= res!367583 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17366 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17366 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579620 () Bool)

(declare-fun res!367578 () Bool)

(assert (=> b!579620 (=> (not res!367578) (not e!333015))))

(assert (=> b!579620 (= res!367578 (and (= (size!17730 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17730 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17730 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53336 res!367586) b!579620))

(assert (= (and b!579620 res!367578) b!579613))

(assert (= (and b!579613 res!367584) b!579618))

(assert (= (and b!579618 res!367582) b!579616))

(assert (= (and b!579616 res!367585) b!579615))

(assert (= (and b!579615 res!367579) b!579617))

(assert (= (and b!579617 res!367581) b!579612))

(assert (= (and b!579612 res!367580) b!579619))

(assert (= (and b!579619 res!367583) b!579614))

(declare-fun m!558269 () Bool)

(assert (=> b!579619 m!558269))

(declare-fun m!558271 () Bool)

(assert (=> b!579619 m!558271))

(declare-fun m!558273 () Bool)

(assert (=> b!579619 m!558273))

(declare-fun m!558275 () Bool)

(assert (=> b!579615 m!558275))

(declare-fun m!558277 () Bool)

(assert (=> b!579612 m!558277))

(declare-fun m!558279 () Bool)

(assert (=> b!579617 m!558279))

(declare-fun m!558281 () Bool)

(assert (=> b!579614 m!558281))

(assert (=> b!579614 m!558281))

(declare-fun m!558283 () Bool)

(assert (=> b!579614 m!558283))

(declare-fun m!558285 () Bool)

(assert (=> start!53336 m!558285))

(declare-fun m!558287 () Bool)

(assert (=> start!53336 m!558287))

(declare-fun m!558289 () Bool)

(assert (=> b!579618 m!558289))

(declare-fun m!558291 () Bool)

(assert (=> b!579616 m!558291))

(assert (=> b!579613 m!558281))

(assert (=> b!579613 m!558281))

(declare-fun m!558293 () Bool)

(assert (=> b!579613 m!558293))

(push 1)

(assert (not b!579618))

(assert (not b!579613))

(assert (not b!579614))

(assert (not b!579616))

(assert (not b!579617))

