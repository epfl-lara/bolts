; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53476 () Bool)

(assert start!53476)

(declare-fun b!581520 () Bool)

(declare-fun res!369488 () Bool)

(declare-fun e!333646 () Bool)

(assert (=> b!581520 (=> (not res!369488) (not e!333646))))

(declare-datatypes ((array!36331 0))(
  ( (array!36332 (arr!17436 (Array (_ BitVec 32) (_ BitVec 64))) (size!17800 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36331)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36331 (_ BitVec 32)) Bool)

(assert (=> b!581520 (= res!369488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581521 () Bool)

(declare-fun res!369494 () Bool)

(declare-fun e!333645 () Bool)

(assert (=> b!581521 (=> (not res!369494) (not e!333645))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581521 (= res!369494 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581522 () Bool)

(declare-fun res!369489 () Bool)

(assert (=> b!581522 (=> (not res!369489) (not e!333645))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581522 (= res!369489 (and (= (size!17800 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17800 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17800 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581523 () Bool)

(declare-fun res!369492 () Bool)

(assert (=> b!581523 (=> (not res!369492) (not e!333645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581523 (= res!369492 (validKeyInArray!0 (select (arr!17436 a!2986) j!136)))))

(declare-fun b!581524 () Bool)

(declare-fun res!369487 () Bool)

(assert (=> b!581524 (=> (not res!369487) (not e!333646))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581524 (= res!369487 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17436 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17436 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581525 () Bool)

(assert (=> b!581525 (= e!333645 e!333646)))

(declare-fun res!369486 () Bool)

(assert (=> b!581525 (=> (not res!369486) (not e!333646))))

(declare-datatypes ((SeekEntryResult!5883 0))(
  ( (MissingZero!5883 (index!25759 (_ BitVec 32))) (Found!5883 (index!25760 (_ BitVec 32))) (Intermediate!5883 (undefined!6695 Bool) (index!25761 (_ BitVec 32)) (x!54651 (_ BitVec 32))) (Undefined!5883) (MissingVacant!5883 (index!25762 (_ BitVec 32))) )
))
(declare-fun lt!264928 () SeekEntryResult!5883)

(assert (=> b!581525 (= res!369486 (or (= lt!264928 (MissingZero!5883 i!1108)) (= lt!264928 (MissingVacant!5883 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36331 (_ BitVec 32)) SeekEntryResult!5883)

(assert (=> b!581525 (= lt!264928 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581526 () Bool)

(declare-fun res!369490 () Bool)

(assert (=> b!581526 (=> (not res!369490) (not e!333646))))

(declare-datatypes ((List!11530 0))(
  ( (Nil!11527) (Cons!11526 (h!12571 (_ BitVec 64)) (t!17766 List!11530)) )
))
(declare-fun arrayNoDuplicates!0 (array!36331 (_ BitVec 32) List!11530) Bool)

(assert (=> b!581526 (= res!369490 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11527))))

(declare-fun b!581527 () Bool)

(assert (=> b!581527 (= e!333646 false)))

(declare-fun lt!264929 () SeekEntryResult!5883)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36331 (_ BitVec 32)) SeekEntryResult!5883)

(assert (=> b!581527 (= lt!264929 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17436 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!369491 () Bool)

(assert (=> start!53476 (=> (not res!369491) (not e!333645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53476 (= res!369491 (validMask!0 mask!3053))))

(assert (=> start!53476 e!333645))

(assert (=> start!53476 true))

(declare-fun array_inv!13210 (array!36331) Bool)

(assert (=> start!53476 (array_inv!13210 a!2986)))

(declare-fun b!581528 () Bool)

(declare-fun res!369493 () Bool)

(assert (=> b!581528 (=> (not res!369493) (not e!333645))))

(assert (=> b!581528 (= res!369493 (validKeyInArray!0 k!1786))))

(assert (= (and start!53476 res!369491) b!581522))

(assert (= (and b!581522 res!369489) b!581523))

(assert (= (and b!581523 res!369492) b!581528))

(assert (= (and b!581528 res!369493) b!581521))

(assert (= (and b!581521 res!369494) b!581525))

(assert (= (and b!581525 res!369486) b!581520))

(assert (= (and b!581520 res!369488) b!581526))

(assert (= (and b!581526 res!369490) b!581524))

(assert (= (and b!581524 res!369487) b!581527))

(declare-fun m!560101 () Bool)

(assert (=> b!581527 m!560101))

(assert (=> b!581527 m!560101))

(declare-fun m!560103 () Bool)

(assert (=> b!581527 m!560103))

(declare-fun m!560105 () Bool)

(assert (=> b!581520 m!560105))

(assert (=> b!581523 m!560101))

(assert (=> b!581523 m!560101))

(declare-fun m!560107 () Bool)

(assert (=> b!581523 m!560107))

(declare-fun m!560109 () Bool)

(assert (=> b!581526 m!560109))

(declare-fun m!560111 () Bool)

(assert (=> b!581521 m!560111))

(declare-fun m!560113 () Bool)

(assert (=> b!581524 m!560113))

(declare-fun m!560115 () Bool)

(assert (=> b!581524 m!560115))

(declare-fun m!560117 () Bool)

(assert (=> b!581524 m!560117))

(declare-fun m!560119 () Bool)

(assert (=> b!581525 m!560119))

(declare-fun m!560121 () Bool)

(assert (=> start!53476 m!560121))

(declare-fun m!560123 () Bool)

(assert (=> start!53476 m!560123))

(declare-fun m!560125 () Bool)

(assert (=> b!581528 m!560125))

(push 1)

