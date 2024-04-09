; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53256 () Bool)

(assert start!53256)

(declare-fun res!366496 () Bool)

(declare-fun e!332654 () Bool)

(assert (=> start!53256 (=> (not res!366496) (not e!332654))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53256 (= res!366496 (validMask!0 mask!3053))))

(assert (=> start!53256 e!332654))

(assert (=> start!53256 true))

(declare-datatypes ((array!36111 0))(
  ( (array!36112 (arr!17326 (Array (_ BitVec 32) (_ BitVec 64))) (size!17690 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36111)

(declare-fun array_inv!13100 (array!36111) Bool)

(assert (=> start!53256 (array_inv!13100 a!2986)))

(declare-fun b!578528 () Bool)

(declare-fun res!366497 () Bool)

(declare-fun e!332655 () Bool)

(assert (=> b!578528 (=> (not res!366497) (not e!332655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36111 (_ BitVec 32)) Bool)

(assert (=> b!578528 (= res!366497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578529 () Bool)

(declare-fun res!366495 () Bool)

(assert (=> b!578529 (=> (not res!366495) (not e!332655))))

(declare-datatypes ((List!11420 0))(
  ( (Nil!11417) (Cons!11416 (h!12461 (_ BitVec 64)) (t!17656 List!11420)) )
))
(declare-fun arrayNoDuplicates!0 (array!36111 (_ BitVec 32) List!11420) Bool)

(assert (=> b!578529 (= res!366495 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11417))))

(declare-fun b!578530 () Bool)

(declare-fun res!366501 () Bool)

(assert (=> b!578530 (=> (not res!366501) (not e!332654))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578530 (= res!366501 (validKeyInArray!0 k0!1786))))

(declare-fun b!578531 () Bool)

(assert (=> b!578531 (= e!332654 e!332655)))

(declare-fun res!366503 () Bool)

(assert (=> b!578531 (=> (not res!366503) (not e!332655))))

(declare-datatypes ((SeekEntryResult!5773 0))(
  ( (MissingZero!5773 (index!25319 (_ BitVec 32))) (Found!5773 (index!25320 (_ BitVec 32))) (Intermediate!5773 (undefined!6585 Bool) (index!25321 (_ BitVec 32)) (x!54245 (_ BitVec 32))) (Undefined!5773) (MissingVacant!5773 (index!25322 (_ BitVec 32))) )
))
(declare-fun lt!264290 () SeekEntryResult!5773)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578531 (= res!366503 (or (= lt!264290 (MissingZero!5773 i!1108)) (= lt!264290 (MissingVacant!5773 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36111 (_ BitVec 32)) SeekEntryResult!5773)

(assert (=> b!578531 (= lt!264290 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578532 () Bool)

(assert (=> b!578532 (= e!332655 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun b!578533 () Bool)

(declare-fun res!366502 () Bool)

(assert (=> b!578533 (=> (not res!366502) (not e!332654))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578533 (= res!366502 (and (= (size!17690 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17690 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17690 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578534 () Bool)

(declare-fun res!366500 () Bool)

(assert (=> b!578534 (=> (not res!366500) (not e!332655))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36111 (_ BitVec 32)) SeekEntryResult!5773)

(assert (=> b!578534 (= res!366500 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17326 a!2986) j!136) a!2986 mask!3053) (Found!5773 j!136)))))

(declare-fun b!578535 () Bool)

(declare-fun res!366499 () Bool)

(assert (=> b!578535 (=> (not res!366499) (not e!332654))))

(assert (=> b!578535 (= res!366499 (validKeyInArray!0 (select (arr!17326 a!2986) j!136)))))

(declare-fun b!578536 () Bool)

(declare-fun res!366494 () Bool)

(assert (=> b!578536 (=> (not res!366494) (not e!332655))))

(assert (=> b!578536 (= res!366494 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17326 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17326 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578537 () Bool)

(declare-fun res!366498 () Bool)

(assert (=> b!578537 (=> (not res!366498) (not e!332654))))

(declare-fun arrayContainsKey!0 (array!36111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578537 (= res!366498 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53256 res!366496) b!578533))

(assert (= (and b!578533 res!366502) b!578535))

(assert (= (and b!578535 res!366499) b!578530))

(assert (= (and b!578530 res!366501) b!578537))

(assert (= (and b!578537 res!366498) b!578531))

(assert (= (and b!578531 res!366503) b!578528))

(assert (= (and b!578528 res!366497) b!578529))

(assert (= (and b!578529 res!366495) b!578536))

(assert (= (and b!578536 res!366494) b!578534))

(assert (= (and b!578534 res!366500) b!578532))

(declare-fun m!557229 () Bool)

(assert (=> b!578536 m!557229))

(declare-fun m!557231 () Bool)

(assert (=> b!578536 m!557231))

(declare-fun m!557233 () Bool)

(assert (=> b!578536 m!557233))

(declare-fun m!557235 () Bool)

(assert (=> b!578537 m!557235))

(declare-fun m!557237 () Bool)

(assert (=> b!578529 m!557237))

(declare-fun m!557239 () Bool)

(assert (=> b!578531 m!557239))

(declare-fun m!557241 () Bool)

(assert (=> b!578535 m!557241))

(assert (=> b!578535 m!557241))

(declare-fun m!557243 () Bool)

(assert (=> b!578535 m!557243))

(declare-fun m!557245 () Bool)

(assert (=> b!578530 m!557245))

(declare-fun m!557247 () Bool)

(assert (=> b!578528 m!557247))

(declare-fun m!557249 () Bool)

(assert (=> start!53256 m!557249))

(declare-fun m!557251 () Bool)

(assert (=> start!53256 m!557251))

(assert (=> b!578534 m!557241))

(assert (=> b!578534 m!557241))

(declare-fun m!557253 () Bool)

(assert (=> b!578534 m!557253))

(check-sat (not b!578530) (not b!578537) (not b!578529) (not b!578534) (not b!578531) (not start!53256) (not b!578528) (not b!578535))
(check-sat)
