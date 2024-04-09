; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53400 () Bool)

(assert start!53400)

(declare-fun b!580481 () Bool)

(declare-fun res!368452 () Bool)

(declare-fun e!333302 () Bool)

(assert (=> b!580481 (=> (not res!368452) (not e!333302))))

(declare-datatypes ((array!36255 0))(
  ( (array!36256 (arr!17398 (Array (_ BitVec 32) (_ BitVec 64))) (size!17762 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36255)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580481 (= res!368452 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580482 () Bool)

(declare-fun res!368449 () Bool)

(assert (=> b!580482 (=> (not res!368449) (not e!333302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580482 (= res!368449 (validKeyInArray!0 k0!1786))))

(declare-fun b!580483 () Bool)

(declare-fun e!333303 () Bool)

(assert (=> b!580483 (= e!333302 e!333303)))

(declare-fun res!368455 () Bool)

(assert (=> b!580483 (=> (not res!368455) (not e!333303))))

(declare-datatypes ((SeekEntryResult!5845 0))(
  ( (MissingZero!5845 (index!25607 (_ BitVec 32))) (Found!5845 (index!25608 (_ BitVec 32))) (Intermediate!5845 (undefined!6657 Bool) (index!25609 (_ BitVec 32)) (x!54509 (_ BitVec 32))) (Undefined!5845) (MissingVacant!5845 (index!25610 (_ BitVec 32))) )
))
(declare-fun lt!264713 () SeekEntryResult!5845)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580483 (= res!368455 (or (= lt!264713 (MissingZero!5845 i!1108)) (= lt!264713 (MissingVacant!5845 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36255 (_ BitVec 32)) SeekEntryResult!5845)

(assert (=> b!580483 (= lt!264713 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580485 () Bool)

(declare-fun res!368453 () Bool)

(assert (=> b!580485 (=> (not res!368453) (not e!333302))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580485 (= res!368453 (validKeyInArray!0 (select (arr!17398 a!2986) j!136)))))

(declare-fun b!580486 () Bool)

(declare-fun res!368454 () Bool)

(assert (=> b!580486 (=> (not res!368454) (not e!333303))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36255 (_ BitVec 32)) SeekEntryResult!5845)

(assert (=> b!580486 (= res!368454 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17398 a!2986) j!136) a!2986 mask!3053) (Found!5845 j!136)))))

(declare-fun b!580487 () Bool)

(assert (=> b!580487 (= e!333303 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17398 a!2986) index!984) (select (arr!17398 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!580488 () Bool)

(declare-fun res!368451 () Bool)

(assert (=> b!580488 (=> (not res!368451) (not e!333302))))

(assert (=> b!580488 (= res!368451 (and (= (size!17762 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17762 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17762 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580489 () Bool)

(declare-fun res!368447 () Bool)

(assert (=> b!580489 (=> (not res!368447) (not e!333303))))

(assert (=> b!580489 (= res!368447 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17398 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17398 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580490 () Bool)

(declare-fun res!368448 () Bool)

(assert (=> b!580490 (=> (not res!368448) (not e!333303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36255 (_ BitVec 32)) Bool)

(assert (=> b!580490 (= res!368448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580484 () Bool)

(declare-fun res!368450 () Bool)

(assert (=> b!580484 (=> (not res!368450) (not e!333303))))

(declare-datatypes ((List!11492 0))(
  ( (Nil!11489) (Cons!11488 (h!12533 (_ BitVec 64)) (t!17728 List!11492)) )
))
(declare-fun arrayNoDuplicates!0 (array!36255 (_ BitVec 32) List!11492) Bool)

(assert (=> b!580484 (= res!368450 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11489))))

(declare-fun res!368456 () Bool)

(assert (=> start!53400 (=> (not res!368456) (not e!333302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53400 (= res!368456 (validMask!0 mask!3053))))

(assert (=> start!53400 e!333302))

(assert (=> start!53400 true))

(declare-fun array_inv!13172 (array!36255) Bool)

(assert (=> start!53400 (array_inv!13172 a!2986)))

(assert (= (and start!53400 res!368456) b!580488))

(assert (= (and b!580488 res!368451) b!580485))

(assert (= (and b!580485 res!368453) b!580482))

(assert (= (and b!580482 res!368449) b!580481))

(assert (= (and b!580481 res!368452) b!580483))

(assert (= (and b!580483 res!368455) b!580490))

(assert (= (and b!580490 res!368448) b!580484))

(assert (= (and b!580484 res!368450) b!580489))

(assert (= (and b!580489 res!368447) b!580486))

(assert (= (and b!580486 res!368454) b!580487))

(declare-fun m!559103 () Bool)

(assert (=> b!580483 m!559103))

(declare-fun m!559105 () Bool)

(assert (=> b!580486 m!559105))

(assert (=> b!580486 m!559105))

(declare-fun m!559107 () Bool)

(assert (=> b!580486 m!559107))

(assert (=> b!580485 m!559105))

(assert (=> b!580485 m!559105))

(declare-fun m!559109 () Bool)

(assert (=> b!580485 m!559109))

(declare-fun m!559111 () Bool)

(assert (=> b!580487 m!559111))

(assert (=> b!580487 m!559105))

(declare-fun m!559113 () Bool)

(assert (=> b!580484 m!559113))

(declare-fun m!559115 () Bool)

(assert (=> b!580489 m!559115))

(declare-fun m!559117 () Bool)

(assert (=> b!580489 m!559117))

(declare-fun m!559119 () Bool)

(assert (=> b!580489 m!559119))

(declare-fun m!559121 () Bool)

(assert (=> b!580490 m!559121))

(declare-fun m!559123 () Bool)

(assert (=> b!580482 m!559123))

(declare-fun m!559125 () Bool)

(assert (=> b!580481 m!559125))

(declare-fun m!559127 () Bool)

(assert (=> start!53400 m!559127))

(declare-fun m!559129 () Bool)

(assert (=> start!53400 m!559129))

(check-sat (not b!580486) (not start!53400) (not b!580485) (not b!580483) (not b!580481) (not b!580482) (not b!580490) (not b!580484))
(check-sat)
