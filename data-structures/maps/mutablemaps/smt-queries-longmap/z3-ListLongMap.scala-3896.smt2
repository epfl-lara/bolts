; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53406 () Bool)

(assert start!53406)

(declare-fun b!580566 () Bool)

(declare-fun res!368536 () Bool)

(declare-fun e!333329 () Bool)

(assert (=> b!580566 (=> (not res!368536) (not e!333329))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36261 0))(
  ( (array!36262 (arr!17401 (Array (_ BitVec 32) (_ BitVec 64))) (size!17765 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36261)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580566 (= res!368536 (and (= (size!17765 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17765 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17765 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580567 () Bool)

(declare-fun res!368533 () Bool)

(assert (=> b!580567 (=> (not res!368533) (not e!333329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580567 (= res!368533 (validKeyInArray!0 (select (arr!17401 a!2986) j!136)))))

(declare-fun b!580568 () Bool)

(declare-fun res!368534 () Bool)

(assert (=> b!580568 (=> (not res!368534) (not e!333329))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!580568 (= res!368534 (validKeyInArray!0 k0!1786))))

(declare-fun b!580569 () Bool)

(declare-fun res!368535 () Bool)

(assert (=> b!580569 (=> (not res!368535) (not e!333329))))

(declare-fun arrayContainsKey!0 (array!36261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580569 (= res!368535 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580570 () Bool)

(declare-fun res!368537 () Bool)

(declare-fun e!333330 () Bool)

(assert (=> b!580570 (=> (not res!368537) (not e!333330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36261 (_ BitVec 32)) Bool)

(assert (=> b!580570 (= res!368537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580571 () Bool)

(declare-fun res!368539 () Bool)

(assert (=> b!580571 (=> (not res!368539) (not e!333330))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!580571 (= res!368539 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17401 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17401 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580572 () Bool)

(assert (=> b!580572 (= e!333330 false)))

(declare-datatypes ((SeekEntryResult!5848 0))(
  ( (MissingZero!5848 (index!25619 (_ BitVec 32))) (Found!5848 (index!25620 (_ BitVec 32))) (Intermediate!5848 (undefined!6660 Bool) (index!25621 (_ BitVec 32)) (x!54520 (_ BitVec 32))) (Undefined!5848) (MissingVacant!5848 (index!25622 (_ BitVec 32))) )
))
(declare-fun lt!264727 () SeekEntryResult!5848)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36261 (_ BitVec 32)) SeekEntryResult!5848)

(assert (=> b!580572 (= lt!264727 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17401 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580573 () Bool)

(declare-fun res!368540 () Bool)

(assert (=> b!580573 (=> (not res!368540) (not e!333330))))

(declare-datatypes ((List!11495 0))(
  ( (Nil!11492) (Cons!11491 (h!12536 (_ BitVec 64)) (t!17731 List!11495)) )
))
(declare-fun arrayNoDuplicates!0 (array!36261 (_ BitVec 32) List!11495) Bool)

(assert (=> b!580573 (= res!368540 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11492))))

(declare-fun b!580574 () Bool)

(assert (=> b!580574 (= e!333329 e!333330)))

(declare-fun res!368532 () Bool)

(assert (=> b!580574 (=> (not res!368532) (not e!333330))))

(declare-fun lt!264728 () SeekEntryResult!5848)

(assert (=> b!580574 (= res!368532 (or (= lt!264728 (MissingZero!5848 i!1108)) (= lt!264728 (MissingVacant!5848 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36261 (_ BitVec 32)) SeekEntryResult!5848)

(assert (=> b!580574 (= lt!264728 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!368538 () Bool)

(assert (=> start!53406 (=> (not res!368538) (not e!333329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53406 (= res!368538 (validMask!0 mask!3053))))

(assert (=> start!53406 e!333329))

(assert (=> start!53406 true))

(declare-fun array_inv!13175 (array!36261) Bool)

(assert (=> start!53406 (array_inv!13175 a!2986)))

(assert (= (and start!53406 res!368538) b!580566))

(assert (= (and b!580566 res!368536) b!580567))

(assert (= (and b!580567 res!368533) b!580568))

(assert (= (and b!580568 res!368534) b!580569))

(assert (= (and b!580569 res!368535) b!580574))

(assert (= (and b!580574 res!368532) b!580570))

(assert (= (and b!580570 res!368537) b!580573))

(assert (= (and b!580573 res!368540) b!580571))

(assert (= (and b!580571 res!368539) b!580572))

(declare-fun m!559185 () Bool)

(assert (=> start!53406 m!559185))

(declare-fun m!559187 () Bool)

(assert (=> start!53406 m!559187))

(declare-fun m!559189 () Bool)

(assert (=> b!580574 m!559189))

(declare-fun m!559191 () Bool)

(assert (=> b!580573 m!559191))

(declare-fun m!559193 () Bool)

(assert (=> b!580567 m!559193))

(assert (=> b!580567 m!559193))

(declare-fun m!559195 () Bool)

(assert (=> b!580567 m!559195))

(declare-fun m!559197 () Bool)

(assert (=> b!580568 m!559197))

(declare-fun m!559199 () Bool)

(assert (=> b!580571 m!559199))

(declare-fun m!559201 () Bool)

(assert (=> b!580571 m!559201))

(declare-fun m!559203 () Bool)

(assert (=> b!580571 m!559203))

(declare-fun m!559205 () Bool)

(assert (=> b!580570 m!559205))

(declare-fun m!559207 () Bool)

(assert (=> b!580569 m!559207))

(assert (=> b!580572 m!559193))

(assert (=> b!580572 m!559193))

(declare-fun m!559209 () Bool)

(assert (=> b!580572 m!559209))

(check-sat (not b!580567) (not b!580573) (not b!580570) (not start!53406) (not b!580574) (not b!580568) (not b!580569) (not b!580572))
(check-sat)
