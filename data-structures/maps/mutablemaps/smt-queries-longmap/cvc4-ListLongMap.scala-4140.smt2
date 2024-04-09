; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56446 () Bool)

(assert start!56446)

(declare-fun b!625419 () Bool)

(declare-fun e!358425 () Bool)

(assert (=> b!625419 (= e!358425 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6581 0))(
  ( (MissingZero!6581 (index!28607 (_ BitVec 32))) (Found!6581 (index!28608 (_ BitVec 32))) (Intermediate!6581 (undefined!7393 Bool) (index!28609 (_ BitVec 32)) (x!57380 (_ BitVec 32))) (Undefined!6581) (MissingVacant!6581 (index!28610 (_ BitVec 32))) )
))
(declare-fun lt!289811 () SeekEntryResult!6581)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37789 0))(
  ( (array!37790 (arr!18134 (Array (_ BitVec 32) (_ BitVec 64))) (size!18498 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37789)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37789 (_ BitVec 32)) SeekEntryResult!6581)

(assert (=> b!625419 (= lt!289811 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18134 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625420 () Bool)

(declare-fun e!358424 () Bool)

(assert (=> b!625420 (= e!358424 e!358425)))

(declare-fun res!403613 () Bool)

(assert (=> b!625420 (=> (not res!403613) (not e!358425))))

(declare-fun lt!289812 () SeekEntryResult!6581)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625420 (= res!403613 (or (= lt!289812 (MissingZero!6581 i!1108)) (= lt!289812 (MissingVacant!6581 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37789 (_ BitVec 32)) SeekEntryResult!6581)

(assert (=> b!625420 (= lt!289812 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625421 () Bool)

(declare-fun res!403608 () Bool)

(assert (=> b!625421 (=> (not res!403608) (not e!358425))))

(declare-datatypes ((List!12228 0))(
  ( (Nil!12225) (Cons!12224 (h!13269 (_ BitVec 64)) (t!18464 List!12228)) )
))
(declare-fun arrayNoDuplicates!0 (array!37789 (_ BitVec 32) List!12228) Bool)

(assert (=> b!625421 (= res!403608 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12225))))

(declare-fun b!625422 () Bool)

(declare-fun res!403612 () Bool)

(assert (=> b!625422 (=> (not res!403612) (not e!358424))))

(declare-fun arrayContainsKey!0 (array!37789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625422 (= res!403612 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!403607 () Bool)

(assert (=> start!56446 (=> (not res!403607) (not e!358424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56446 (= res!403607 (validMask!0 mask!3053))))

(assert (=> start!56446 e!358424))

(assert (=> start!56446 true))

(declare-fun array_inv!13908 (array!37789) Bool)

(assert (=> start!56446 (array_inv!13908 a!2986)))

(declare-fun b!625423 () Bool)

(declare-fun res!403611 () Bool)

(assert (=> b!625423 (=> (not res!403611) (not e!358424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625423 (= res!403611 (validKeyInArray!0 (select (arr!18134 a!2986) j!136)))))

(declare-fun b!625424 () Bool)

(declare-fun res!403605 () Bool)

(assert (=> b!625424 (=> (not res!403605) (not e!358425))))

(assert (=> b!625424 (= res!403605 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18134 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18134 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625425 () Bool)

(declare-fun res!403609 () Bool)

(assert (=> b!625425 (=> (not res!403609) (not e!358425))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37789 (_ BitVec 32)) Bool)

(assert (=> b!625425 (= res!403609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625426 () Bool)

(declare-fun res!403610 () Bool)

(assert (=> b!625426 (=> (not res!403610) (not e!358424))))

(assert (=> b!625426 (= res!403610 (validKeyInArray!0 k!1786))))

(declare-fun b!625427 () Bool)

(declare-fun res!403606 () Bool)

(assert (=> b!625427 (=> (not res!403606) (not e!358424))))

(assert (=> b!625427 (= res!403606 (and (= (size!18498 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18498 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18498 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56446 res!403607) b!625427))

(assert (= (and b!625427 res!403606) b!625423))

(assert (= (and b!625423 res!403611) b!625426))

(assert (= (and b!625426 res!403610) b!625422))

(assert (= (and b!625422 res!403612) b!625420))

(assert (= (and b!625420 res!403613) b!625425))

(assert (= (and b!625425 res!403609) b!625421))

(assert (= (and b!625421 res!403608) b!625424))

(assert (= (and b!625424 res!403605) b!625419))

(declare-fun m!601033 () Bool)

(assert (=> b!625420 m!601033))

(declare-fun m!601035 () Bool)

(assert (=> b!625421 m!601035))

(declare-fun m!601037 () Bool)

(assert (=> b!625424 m!601037))

(declare-fun m!601039 () Bool)

(assert (=> b!625424 m!601039))

(declare-fun m!601041 () Bool)

(assert (=> b!625424 m!601041))

(declare-fun m!601043 () Bool)

(assert (=> b!625426 m!601043))

(declare-fun m!601045 () Bool)

(assert (=> b!625422 m!601045))

(declare-fun m!601047 () Bool)

(assert (=> start!56446 m!601047))

(declare-fun m!601049 () Bool)

(assert (=> start!56446 m!601049))

(declare-fun m!601051 () Bool)

(assert (=> b!625423 m!601051))

(assert (=> b!625423 m!601051))

(declare-fun m!601053 () Bool)

(assert (=> b!625423 m!601053))

(assert (=> b!625419 m!601051))

(assert (=> b!625419 m!601051))

(declare-fun m!601055 () Bool)

(assert (=> b!625419 m!601055))

(declare-fun m!601057 () Bool)

(assert (=> b!625425 m!601057))

(push 1)

(assert (not b!625426))

(assert (not start!56446))

(assert (not b!625421))

(assert (not b!625422))

(assert (not b!625420))

(assert (not b!625425))

(assert (not b!625423))

(assert (not b!625419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

