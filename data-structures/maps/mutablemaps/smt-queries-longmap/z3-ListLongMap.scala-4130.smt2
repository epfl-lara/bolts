; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56336 () Bool)

(assert start!56336)

(declare-fun b!624357 () Bool)

(declare-fun res!402687 () Bool)

(declare-fun e!358012 () Bool)

(assert (=> b!624357 (=> (not res!402687) (not e!358012))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37724 0))(
  ( (array!37725 (arr!18103 (Array (_ BitVec 32) (_ BitVec 64))) (size!18467 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37724)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624357 (= res!402687 (and (= (size!18467 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18467 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18467 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624358 () Bool)

(declare-fun res!402694 () Bool)

(assert (=> b!624358 (=> (not res!402694) (not e!358012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624358 (= res!402694 (validKeyInArray!0 (select (arr!18103 a!2986) j!136)))))

(declare-fun b!624359 () Bool)

(declare-fun res!402695 () Bool)

(assert (=> b!624359 (=> (not res!402695) (not e!358012))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624359 (= res!402695 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624360 () Bool)

(declare-fun res!402689 () Bool)

(declare-fun e!358011 () Bool)

(assert (=> b!624360 (=> (not res!402689) (not e!358011))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37724 (_ BitVec 32)) Bool)

(assert (=> b!624360 (= res!402689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624361 () Bool)

(declare-fun res!402691 () Bool)

(assert (=> b!624361 (=> (not res!402691) (not e!358012))))

(assert (=> b!624361 (= res!402691 (validKeyInArray!0 k0!1786))))

(declare-fun res!402688 () Bool)

(assert (=> start!56336 (=> (not res!402688) (not e!358012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56336 (= res!402688 (validMask!0 mask!3053))))

(assert (=> start!56336 e!358012))

(assert (=> start!56336 true))

(declare-fun array_inv!13877 (array!37724) Bool)

(assert (=> start!56336 (array_inv!13877 a!2986)))

(declare-fun b!624362 () Bool)

(assert (=> b!624362 (= e!358012 e!358011)))

(declare-fun res!402692 () Bool)

(assert (=> b!624362 (=> (not res!402692) (not e!358011))))

(declare-datatypes ((SeekEntryResult!6550 0))(
  ( (MissingZero!6550 (index!28483 (_ BitVec 32))) (Found!6550 (index!28484 (_ BitVec 32))) (Intermediate!6550 (undefined!7362 Bool) (index!28485 (_ BitVec 32)) (x!57266 (_ BitVec 32))) (Undefined!6550) (MissingVacant!6550 (index!28486 (_ BitVec 32))) )
))
(declare-fun lt!289572 () SeekEntryResult!6550)

(assert (=> b!624362 (= res!402692 (or (= lt!289572 (MissingZero!6550 i!1108)) (= lt!289572 (MissingVacant!6550 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37724 (_ BitVec 32)) SeekEntryResult!6550)

(assert (=> b!624362 (= lt!289572 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624363 () Bool)

(declare-fun res!402693 () Bool)

(assert (=> b!624363 (=> (not res!402693) (not e!358011))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624363 (= res!402693 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18103 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18103 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624364 () Bool)

(assert (=> b!624364 (= e!358011 false)))

(declare-fun lt!289571 () SeekEntryResult!6550)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37724 (_ BitVec 32)) SeekEntryResult!6550)

(assert (=> b!624364 (= lt!289571 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18103 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624365 () Bool)

(declare-fun res!402690 () Bool)

(assert (=> b!624365 (=> (not res!402690) (not e!358011))))

(declare-datatypes ((List!12197 0))(
  ( (Nil!12194) (Cons!12193 (h!13238 (_ BitVec 64)) (t!18433 List!12197)) )
))
(declare-fun arrayNoDuplicates!0 (array!37724 (_ BitVec 32) List!12197) Bool)

(assert (=> b!624365 (= res!402690 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12194))))

(assert (= (and start!56336 res!402688) b!624357))

(assert (= (and b!624357 res!402687) b!624358))

(assert (= (and b!624358 res!402694) b!624361))

(assert (= (and b!624361 res!402691) b!624359))

(assert (= (and b!624359 res!402695) b!624362))

(assert (= (and b!624362 res!402692) b!624360))

(assert (= (and b!624360 res!402689) b!624365))

(assert (= (and b!624365 res!402690) b!624363))

(assert (= (and b!624363 res!402693) b!624364))

(declare-fun m!600101 () Bool)

(assert (=> b!624363 m!600101))

(declare-fun m!600103 () Bool)

(assert (=> b!624363 m!600103))

(declare-fun m!600105 () Bool)

(assert (=> b!624363 m!600105))

(declare-fun m!600107 () Bool)

(assert (=> b!624361 m!600107))

(declare-fun m!600109 () Bool)

(assert (=> b!624358 m!600109))

(assert (=> b!624358 m!600109))

(declare-fun m!600111 () Bool)

(assert (=> b!624358 m!600111))

(declare-fun m!600113 () Bool)

(assert (=> b!624360 m!600113))

(declare-fun m!600115 () Bool)

(assert (=> b!624359 m!600115))

(declare-fun m!600117 () Bool)

(assert (=> b!624365 m!600117))

(declare-fun m!600119 () Bool)

(assert (=> b!624362 m!600119))

(declare-fun m!600121 () Bool)

(assert (=> start!56336 m!600121))

(declare-fun m!600123 () Bool)

(assert (=> start!56336 m!600123))

(assert (=> b!624364 m!600109))

(assert (=> b!624364 m!600109))

(declare-fun m!600125 () Bool)

(assert (=> b!624364 m!600125))

(check-sat (not b!624365) (not start!56336) (not b!624358) (not b!624362) (not b!624364) (not b!624359) (not b!624360) (not b!624361))
