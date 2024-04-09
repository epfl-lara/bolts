; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53418 () Bool)

(assert start!53418)

(declare-fun b!580728 () Bool)

(declare-fun e!333385 () Bool)

(declare-fun e!333384 () Bool)

(assert (=> b!580728 (= e!333385 e!333384)))

(declare-fun res!368701 () Bool)

(assert (=> b!580728 (=> (not res!368701) (not e!333384))))

(declare-datatypes ((SeekEntryResult!5854 0))(
  ( (MissingZero!5854 (index!25643 (_ BitVec 32))) (Found!5854 (index!25644 (_ BitVec 32))) (Intermediate!5854 (undefined!6666 Bool) (index!25645 (_ BitVec 32)) (x!54542 (_ BitVec 32))) (Undefined!5854) (MissingVacant!5854 (index!25646 (_ BitVec 32))) )
))
(declare-fun lt!264764 () SeekEntryResult!5854)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580728 (= res!368701 (or (= lt!264764 (MissingZero!5854 i!1108)) (= lt!264764 (MissingVacant!5854 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36273 0))(
  ( (array!36274 (arr!17407 (Array (_ BitVec 32) (_ BitVec 64))) (size!17771 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36273)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36273 (_ BitVec 32)) SeekEntryResult!5854)

(assert (=> b!580728 (= lt!264764 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!368697 () Bool)

(assert (=> start!53418 (=> (not res!368697) (not e!333385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53418 (= res!368697 (validMask!0 mask!3053))))

(assert (=> start!53418 e!333385))

(assert (=> start!53418 true))

(declare-fun array_inv!13181 (array!36273) Bool)

(assert (=> start!53418 (array_inv!13181 a!2986)))

(declare-fun b!580729 () Bool)

(assert (=> b!580729 (= e!333384 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264763 () SeekEntryResult!5854)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36273 (_ BitVec 32)) SeekEntryResult!5854)

(assert (=> b!580729 (= lt!264763 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17407 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580730 () Bool)

(declare-fun res!368700 () Bool)

(assert (=> b!580730 (=> (not res!368700) (not e!333385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580730 (= res!368700 (validKeyInArray!0 (select (arr!17407 a!2986) j!136)))))

(declare-fun b!580731 () Bool)

(declare-fun res!368698 () Bool)

(assert (=> b!580731 (=> (not res!368698) (not e!333385))))

(assert (=> b!580731 (= res!368698 (validKeyInArray!0 k0!1786))))

(declare-fun b!580732 () Bool)

(declare-fun res!368694 () Bool)

(assert (=> b!580732 (=> (not res!368694) (not e!333384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36273 (_ BitVec 32)) Bool)

(assert (=> b!580732 (= res!368694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580733 () Bool)

(declare-fun res!368695 () Bool)

(assert (=> b!580733 (=> (not res!368695) (not e!333384))))

(assert (=> b!580733 (= res!368695 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17407 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17407 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580734 () Bool)

(declare-fun res!368699 () Bool)

(assert (=> b!580734 (=> (not res!368699) (not e!333385))))

(declare-fun arrayContainsKey!0 (array!36273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580734 (= res!368699 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580735 () Bool)

(declare-fun res!368696 () Bool)

(assert (=> b!580735 (=> (not res!368696) (not e!333384))))

(declare-datatypes ((List!11501 0))(
  ( (Nil!11498) (Cons!11497 (h!12542 (_ BitVec 64)) (t!17737 List!11501)) )
))
(declare-fun arrayNoDuplicates!0 (array!36273 (_ BitVec 32) List!11501) Bool)

(assert (=> b!580735 (= res!368696 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11498))))

(declare-fun b!580736 () Bool)

(declare-fun res!368702 () Bool)

(assert (=> b!580736 (=> (not res!368702) (not e!333385))))

(assert (=> b!580736 (= res!368702 (and (= (size!17771 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17771 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17771 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53418 res!368697) b!580736))

(assert (= (and b!580736 res!368702) b!580730))

(assert (= (and b!580730 res!368700) b!580731))

(assert (= (and b!580731 res!368698) b!580734))

(assert (= (and b!580734 res!368699) b!580728))

(assert (= (and b!580728 res!368701) b!580732))

(assert (= (and b!580732 res!368694) b!580735))

(assert (= (and b!580735 res!368696) b!580733))

(assert (= (and b!580733 res!368695) b!580729))

(declare-fun m!559341 () Bool)

(assert (=> b!580735 m!559341))

(declare-fun m!559343 () Bool)

(assert (=> b!580729 m!559343))

(assert (=> b!580729 m!559343))

(declare-fun m!559345 () Bool)

(assert (=> b!580729 m!559345))

(declare-fun m!559347 () Bool)

(assert (=> b!580731 m!559347))

(declare-fun m!559349 () Bool)

(assert (=> b!580728 m!559349))

(declare-fun m!559351 () Bool)

(assert (=> b!580734 m!559351))

(declare-fun m!559353 () Bool)

(assert (=> b!580732 m!559353))

(assert (=> b!580730 m!559343))

(assert (=> b!580730 m!559343))

(declare-fun m!559355 () Bool)

(assert (=> b!580730 m!559355))

(declare-fun m!559357 () Bool)

(assert (=> b!580733 m!559357))

(declare-fun m!559359 () Bool)

(assert (=> b!580733 m!559359))

(declare-fun m!559361 () Bool)

(assert (=> b!580733 m!559361))

(declare-fun m!559363 () Bool)

(assert (=> start!53418 m!559363))

(declare-fun m!559365 () Bool)

(assert (=> start!53418 m!559365))

(check-sat (not b!580728) (not b!580734) (not start!53418) (not b!580729) (not b!580730) (not b!580735) (not b!580732) (not b!580731))
(check-sat)
