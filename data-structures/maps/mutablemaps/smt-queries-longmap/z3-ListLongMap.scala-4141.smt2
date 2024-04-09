; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56450 () Bool)

(assert start!56450)

(declare-fun b!625473 () Bool)

(declare-fun e!358444 () Bool)

(assert (=> b!625473 (= e!358444 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6583 0))(
  ( (MissingZero!6583 (index!28615 (_ BitVec 32))) (Found!6583 (index!28616 (_ BitVec 32))) (Intermediate!6583 (undefined!7395 Bool) (index!28617 (_ BitVec 32)) (x!57390 (_ BitVec 32))) (Undefined!6583) (MissingVacant!6583 (index!28618 (_ BitVec 32))) )
))
(declare-fun lt!289824 () SeekEntryResult!6583)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37793 0))(
  ( (array!37794 (arr!18136 (Array (_ BitVec 32) (_ BitVec 64))) (size!18500 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37793)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37793 (_ BitVec 32)) SeekEntryResult!6583)

(assert (=> b!625473 (= lt!289824 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18136 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625474 () Bool)

(declare-fun res!403663 () Bool)

(declare-fun e!358442 () Bool)

(assert (=> b!625474 (=> (not res!403663) (not e!358442))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625474 (= res!403663 (and (= (size!18500 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18500 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18500 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625476 () Bool)

(assert (=> b!625476 (= e!358442 e!358444)))

(declare-fun res!403660 () Bool)

(assert (=> b!625476 (=> (not res!403660) (not e!358444))))

(declare-fun lt!289823 () SeekEntryResult!6583)

(assert (=> b!625476 (= res!403660 (or (= lt!289823 (MissingZero!6583 i!1108)) (= lt!289823 (MissingVacant!6583 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37793 (_ BitVec 32)) SeekEntryResult!6583)

(assert (=> b!625476 (= lt!289823 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625477 () Bool)

(declare-fun res!403666 () Bool)

(assert (=> b!625477 (=> (not res!403666) (not e!358442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625477 (= res!403666 (validKeyInArray!0 k0!1786))))

(declare-fun b!625478 () Bool)

(declare-fun res!403665 () Bool)

(assert (=> b!625478 (=> (not res!403665) (not e!358442))))

(assert (=> b!625478 (= res!403665 (validKeyInArray!0 (select (arr!18136 a!2986) j!136)))))

(declare-fun b!625479 () Bool)

(declare-fun res!403664 () Bool)

(assert (=> b!625479 (=> (not res!403664) (not e!358444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37793 (_ BitVec 32)) Bool)

(assert (=> b!625479 (= res!403664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625475 () Bool)

(declare-fun res!403659 () Bool)

(assert (=> b!625475 (=> (not res!403659) (not e!358444))))

(assert (=> b!625475 (= res!403659 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18136 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18136 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403662 () Bool)

(assert (=> start!56450 (=> (not res!403662) (not e!358442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56450 (= res!403662 (validMask!0 mask!3053))))

(assert (=> start!56450 e!358442))

(assert (=> start!56450 true))

(declare-fun array_inv!13910 (array!37793) Bool)

(assert (=> start!56450 (array_inv!13910 a!2986)))

(declare-fun b!625480 () Bool)

(declare-fun res!403667 () Bool)

(assert (=> b!625480 (=> (not res!403667) (not e!358444))))

(declare-datatypes ((List!12230 0))(
  ( (Nil!12227) (Cons!12226 (h!13271 (_ BitVec 64)) (t!18466 List!12230)) )
))
(declare-fun arrayNoDuplicates!0 (array!37793 (_ BitVec 32) List!12230) Bool)

(assert (=> b!625480 (= res!403667 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12227))))

(declare-fun b!625481 () Bool)

(declare-fun res!403661 () Bool)

(assert (=> b!625481 (=> (not res!403661) (not e!358442))))

(declare-fun arrayContainsKey!0 (array!37793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625481 (= res!403661 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56450 res!403662) b!625474))

(assert (= (and b!625474 res!403663) b!625478))

(assert (= (and b!625478 res!403665) b!625477))

(assert (= (and b!625477 res!403666) b!625481))

(assert (= (and b!625481 res!403661) b!625476))

(assert (= (and b!625476 res!403660) b!625479))

(assert (= (and b!625479 res!403664) b!625480))

(assert (= (and b!625480 res!403667) b!625475))

(assert (= (and b!625475 res!403659) b!625473))

(declare-fun m!601085 () Bool)

(assert (=> b!625481 m!601085))

(declare-fun m!601087 () Bool)

(assert (=> start!56450 m!601087))

(declare-fun m!601089 () Bool)

(assert (=> start!56450 m!601089))

(declare-fun m!601091 () Bool)

(assert (=> b!625477 m!601091))

(declare-fun m!601093 () Bool)

(assert (=> b!625478 m!601093))

(assert (=> b!625478 m!601093))

(declare-fun m!601095 () Bool)

(assert (=> b!625478 m!601095))

(declare-fun m!601097 () Bool)

(assert (=> b!625479 m!601097))

(declare-fun m!601099 () Bool)

(assert (=> b!625476 m!601099))

(declare-fun m!601101 () Bool)

(assert (=> b!625475 m!601101))

(declare-fun m!601103 () Bool)

(assert (=> b!625475 m!601103))

(declare-fun m!601105 () Bool)

(assert (=> b!625475 m!601105))

(assert (=> b!625473 m!601093))

(assert (=> b!625473 m!601093))

(declare-fun m!601107 () Bool)

(assert (=> b!625473 m!601107))

(declare-fun m!601109 () Bool)

(assert (=> b!625480 m!601109))

(check-sat (not b!625478) (not b!625480) (not start!56450) (not b!625476) (not b!625481) (not b!625479) (not b!625473) (not b!625477))
(check-sat)
