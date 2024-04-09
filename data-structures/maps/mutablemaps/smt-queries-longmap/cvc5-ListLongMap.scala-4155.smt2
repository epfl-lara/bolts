; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56628 () Bool)

(assert start!56628)

(declare-fun b!627115 () Bool)

(declare-fun res!405001 () Bool)

(declare-fun e!359101 () Bool)

(assert (=> b!627115 (=> (not res!405001) (not e!359101))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37881 0))(
  ( (array!37882 (arr!18177 (Array (_ BitVec 32) (_ BitVec 64))) (size!18541 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37881)

(assert (=> b!627115 (= res!405001 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18177 a!2986) index!984) (select (arr!18177 a!2986) j!136))) (not (= (select (arr!18177 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627116 () Bool)

(declare-fun e!359099 () Bool)

(assert (=> b!627116 (= e!359099 e!359101)))

(declare-fun res!405005 () Bool)

(assert (=> b!627116 (=> (not res!405005) (not e!359101))))

(declare-datatypes ((SeekEntryResult!6624 0))(
  ( (MissingZero!6624 (index!28779 (_ BitVec 32))) (Found!6624 (index!28780 (_ BitVec 32))) (Intermediate!6624 (undefined!7436 Bool) (index!28781 (_ BitVec 32)) (x!57549 (_ BitVec 32))) (Undefined!6624) (MissingVacant!6624 (index!28782 (_ BitVec 32))) )
))
(declare-fun lt!290202 () SeekEntryResult!6624)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627116 (= res!405005 (or (= lt!290202 (MissingZero!6624 i!1108)) (= lt!290202 (MissingVacant!6624 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37881 (_ BitVec 32)) SeekEntryResult!6624)

(assert (=> b!627116 (= lt!290202 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627117 () Bool)

(declare-fun res!404998 () Bool)

(assert (=> b!627117 (=> (not res!404998) (not e!359101))))

(declare-datatypes ((List!12271 0))(
  ( (Nil!12268) (Cons!12267 (h!13312 (_ BitVec 64)) (t!18507 List!12271)) )
))
(declare-fun arrayNoDuplicates!0 (array!37881 (_ BitVec 32) List!12271) Bool)

(assert (=> b!627117 (= res!404998 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12268))))

(declare-fun b!627118 () Bool)

(declare-fun res!404997 () Bool)

(assert (=> b!627118 (=> (not res!404997) (not e!359099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627118 (= res!404997 (validKeyInArray!0 k!1786))))

(declare-fun b!627119 () Bool)

(assert (=> b!627119 (= e!359101 false)))

(declare-fun lt!290201 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627119 (= lt!290201 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!405004 () Bool)

(assert (=> start!56628 (=> (not res!405004) (not e!359099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56628 (= res!405004 (validMask!0 mask!3053))))

(assert (=> start!56628 e!359099))

(assert (=> start!56628 true))

(declare-fun array_inv!13951 (array!37881) Bool)

(assert (=> start!56628 (array_inv!13951 a!2986)))

(declare-fun b!627120 () Bool)

(declare-fun res!404995 () Bool)

(assert (=> b!627120 (=> (not res!404995) (not e!359099))))

(declare-fun arrayContainsKey!0 (array!37881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627120 (= res!404995 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627121 () Bool)

(declare-fun res!405000 () Bool)

(assert (=> b!627121 (=> (not res!405000) (not e!359101))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!627121 (= res!405000 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18177 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18177 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627122 () Bool)

(declare-fun res!405003 () Bool)

(assert (=> b!627122 (=> (not res!405003) (not e!359101))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37881 (_ BitVec 32)) SeekEntryResult!6624)

(assert (=> b!627122 (= res!405003 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18177 a!2986) j!136) a!2986 mask!3053) (Found!6624 j!136)))))

(declare-fun b!627123 () Bool)

(declare-fun res!404999 () Bool)

(assert (=> b!627123 (=> (not res!404999) (not e!359099))))

(assert (=> b!627123 (= res!404999 (validKeyInArray!0 (select (arr!18177 a!2986) j!136)))))

(declare-fun b!627124 () Bool)

(declare-fun res!405002 () Bool)

(assert (=> b!627124 (=> (not res!405002) (not e!359099))))

(assert (=> b!627124 (= res!405002 (and (= (size!18541 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18541 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18541 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627125 () Bool)

(declare-fun res!404996 () Bool)

(assert (=> b!627125 (=> (not res!404996) (not e!359101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37881 (_ BitVec 32)) Bool)

(assert (=> b!627125 (= res!404996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56628 res!405004) b!627124))

(assert (= (and b!627124 res!405002) b!627123))

(assert (= (and b!627123 res!404999) b!627118))

(assert (= (and b!627118 res!404997) b!627120))

(assert (= (and b!627120 res!404995) b!627116))

(assert (= (and b!627116 res!405005) b!627125))

(assert (= (and b!627125 res!404996) b!627117))

(assert (= (and b!627117 res!404998) b!627121))

(assert (= (and b!627121 res!405000) b!627122))

(assert (= (and b!627122 res!405003) b!627115))

(assert (= (and b!627115 res!405001) b!627119))

(declare-fun m!602493 () Bool)

(assert (=> start!56628 m!602493))

(declare-fun m!602495 () Bool)

(assert (=> start!56628 m!602495))

(declare-fun m!602497 () Bool)

(assert (=> b!627117 m!602497))

(declare-fun m!602499 () Bool)

(assert (=> b!627116 m!602499))

(declare-fun m!602501 () Bool)

(assert (=> b!627123 m!602501))

(assert (=> b!627123 m!602501))

(declare-fun m!602503 () Bool)

(assert (=> b!627123 m!602503))

(declare-fun m!602505 () Bool)

(assert (=> b!627121 m!602505))

(declare-fun m!602507 () Bool)

(assert (=> b!627121 m!602507))

(declare-fun m!602509 () Bool)

(assert (=> b!627121 m!602509))

(declare-fun m!602511 () Bool)

(assert (=> b!627125 m!602511))

(declare-fun m!602513 () Bool)

(assert (=> b!627120 m!602513))

(declare-fun m!602515 () Bool)

(assert (=> b!627119 m!602515))

(declare-fun m!602517 () Bool)

(assert (=> b!627118 m!602517))

(assert (=> b!627122 m!602501))

(assert (=> b!627122 m!602501))

(declare-fun m!602519 () Bool)

(assert (=> b!627122 m!602519))

(declare-fun m!602521 () Bool)

(assert (=> b!627115 m!602521))

(assert (=> b!627115 m!602501))

(push 1)

