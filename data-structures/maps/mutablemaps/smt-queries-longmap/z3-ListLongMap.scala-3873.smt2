; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53268 () Bool)

(assert start!53268)

(declare-fun b!578694 () Bool)

(declare-fun res!366662 () Bool)

(declare-fun e!332708 () Bool)

(assert (=> b!578694 (=> (not res!366662) (not e!332708))))

(declare-datatypes ((array!36123 0))(
  ( (array!36124 (arr!17332 (Array (_ BitVec 32) (_ BitVec 64))) (size!17696 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36123)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36123 (_ BitVec 32)) Bool)

(assert (=> b!578694 (= res!366662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578695 () Bool)

(assert (=> b!578695 (= e!332708 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5779 0))(
  ( (MissingZero!5779 (index!25343 (_ BitVec 32))) (Found!5779 (index!25344 (_ BitVec 32))) (Intermediate!5779 (undefined!6591 Bool) (index!25345 (_ BitVec 32)) (x!54267 (_ BitVec 32))) (Undefined!5779) (MissingVacant!5779 (index!25346 (_ BitVec 32))) )
))
(declare-fun lt!264323 () SeekEntryResult!5779)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36123 (_ BitVec 32)) SeekEntryResult!5779)

(assert (=> b!578695 (= lt!264323 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17332 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578696 () Bool)

(declare-fun res!366668 () Bool)

(declare-fun e!332709 () Bool)

(assert (=> b!578696 (=> (not res!366668) (not e!332709))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578696 (= res!366668 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366666 () Bool)

(assert (=> start!53268 (=> (not res!366666) (not e!332709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53268 (= res!366666 (validMask!0 mask!3053))))

(assert (=> start!53268 e!332709))

(assert (=> start!53268 true))

(declare-fun array_inv!13106 (array!36123) Bool)

(assert (=> start!53268 (array_inv!13106 a!2986)))

(declare-fun b!578697 () Bool)

(declare-fun res!366664 () Bool)

(assert (=> b!578697 (=> (not res!366664) (not e!332708))))

(declare-datatypes ((List!11426 0))(
  ( (Nil!11423) (Cons!11422 (h!12467 (_ BitVec 64)) (t!17662 List!11426)) )
))
(declare-fun arrayNoDuplicates!0 (array!36123 (_ BitVec 32) List!11426) Bool)

(assert (=> b!578697 (= res!366664 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11423))))

(declare-fun b!578698 () Bool)

(declare-fun res!366665 () Bool)

(assert (=> b!578698 (=> (not res!366665) (not e!332709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578698 (= res!366665 (validKeyInArray!0 (select (arr!17332 a!2986) j!136)))))

(declare-fun b!578699 () Bool)

(declare-fun res!366667 () Bool)

(assert (=> b!578699 (=> (not res!366667) (not e!332709))))

(assert (=> b!578699 (= res!366667 (validKeyInArray!0 k0!1786))))

(declare-fun b!578700 () Bool)

(declare-fun res!366663 () Bool)

(assert (=> b!578700 (=> (not res!366663) (not e!332708))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578700 (= res!366663 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17332 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17332 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578701 () Bool)

(declare-fun res!366661 () Bool)

(assert (=> b!578701 (=> (not res!366661) (not e!332709))))

(assert (=> b!578701 (= res!366661 (and (= (size!17696 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17696 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17696 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578702 () Bool)

(assert (=> b!578702 (= e!332709 e!332708)))

(declare-fun res!366660 () Bool)

(assert (=> b!578702 (=> (not res!366660) (not e!332708))))

(declare-fun lt!264322 () SeekEntryResult!5779)

(assert (=> b!578702 (= res!366660 (or (= lt!264322 (MissingZero!5779 i!1108)) (= lt!264322 (MissingVacant!5779 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36123 (_ BitVec 32)) SeekEntryResult!5779)

(assert (=> b!578702 (= lt!264322 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53268 res!366666) b!578701))

(assert (= (and b!578701 res!366661) b!578698))

(assert (= (and b!578698 res!366665) b!578699))

(assert (= (and b!578699 res!366667) b!578696))

(assert (= (and b!578696 res!366668) b!578702))

(assert (= (and b!578702 res!366660) b!578694))

(assert (= (and b!578694 res!366662) b!578697))

(assert (= (and b!578697 res!366664) b!578700))

(assert (= (and b!578700 res!366663) b!578695))

(declare-fun m!557385 () Bool)

(assert (=> b!578702 m!557385))

(declare-fun m!557387 () Bool)

(assert (=> b!578698 m!557387))

(assert (=> b!578698 m!557387))

(declare-fun m!557389 () Bool)

(assert (=> b!578698 m!557389))

(declare-fun m!557391 () Bool)

(assert (=> b!578699 m!557391))

(declare-fun m!557393 () Bool)

(assert (=> b!578696 m!557393))

(declare-fun m!557395 () Bool)

(assert (=> b!578700 m!557395))

(declare-fun m!557397 () Bool)

(assert (=> b!578700 m!557397))

(declare-fun m!557399 () Bool)

(assert (=> b!578700 m!557399))

(assert (=> b!578695 m!557387))

(assert (=> b!578695 m!557387))

(declare-fun m!557401 () Bool)

(assert (=> b!578695 m!557401))

(declare-fun m!557403 () Bool)

(assert (=> start!53268 m!557403))

(declare-fun m!557405 () Bool)

(assert (=> start!53268 m!557405))

(declare-fun m!557407 () Bool)

(assert (=> b!578694 m!557407))

(declare-fun m!557409 () Bool)

(assert (=> b!578697 m!557409))

(check-sat (not b!578696) (not b!578698) (not b!578694) (not b!578695) (not b!578699) (not b!578702) (not b!578697) (not start!53268))
(check-sat)
