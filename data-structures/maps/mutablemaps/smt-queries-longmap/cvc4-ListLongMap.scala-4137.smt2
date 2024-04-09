; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56428 () Bool)

(assert start!56428)

(declare-fun b!625175 () Bool)

(declare-fun res!403361 () Bool)

(declare-fun e!358345 () Bool)

(assert (=> b!625175 (=> (not res!403361) (not e!358345))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37771 0))(
  ( (array!37772 (arr!18125 (Array (_ BitVec 32) (_ BitVec 64))) (size!18489 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37771)

(assert (=> b!625175 (= res!403361 (and (= (size!18489 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18489 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18489 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625176 () Bool)

(declare-fun e!358343 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!625176 (= e!358343 (and (bvslt x!910 #b01111111111111111111111111111110) (bvsge index!984 (size!18489 a!2986))))))

(declare-fun b!625177 () Bool)

(declare-fun res!403368 () Bool)

(assert (=> b!625177 (=> (not res!403368) (not e!358343))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!625177 (= res!403368 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18125 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18125 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625178 () Bool)

(declare-fun res!403362 () Bool)

(assert (=> b!625178 (=> (not res!403362) (not e!358343))))

(declare-datatypes ((List!12219 0))(
  ( (Nil!12216) (Cons!12215 (h!13260 (_ BitVec 64)) (t!18455 List!12219)) )
))
(declare-fun arrayNoDuplicates!0 (array!37771 (_ BitVec 32) List!12219) Bool)

(assert (=> b!625178 (= res!403362 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12216))))

(declare-fun b!625179 () Bool)

(declare-fun res!403367 () Bool)

(assert (=> b!625179 (=> (not res!403367) (not e!358343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37771 (_ BitVec 32)) Bool)

(assert (=> b!625179 (= res!403367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625180 () Bool)

(declare-fun res!403364 () Bool)

(assert (=> b!625180 (=> (not res!403364) (not e!358345))))

(declare-fun arrayContainsKey!0 (array!37771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625180 (= res!403364 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625181 () Bool)

(declare-fun res!403370 () Bool)

(assert (=> b!625181 (=> (not res!403370) (not e!358345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625181 (= res!403370 (validKeyInArray!0 k!1786))))

(declare-fun b!625182 () Bool)

(declare-fun res!403365 () Bool)

(assert (=> b!625182 (=> (not res!403365) (not e!358345))))

(assert (=> b!625182 (= res!403365 (validKeyInArray!0 (select (arr!18125 a!2986) j!136)))))

(declare-fun res!403363 () Bool)

(assert (=> start!56428 (=> (not res!403363) (not e!358345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56428 (= res!403363 (validMask!0 mask!3053))))

(assert (=> start!56428 e!358345))

(assert (=> start!56428 true))

(declare-fun array_inv!13899 (array!37771) Bool)

(assert (=> start!56428 (array_inv!13899 a!2986)))

(declare-fun b!625183 () Bool)

(declare-fun res!403366 () Bool)

(assert (=> b!625183 (=> (not res!403366) (not e!358343))))

(declare-datatypes ((SeekEntryResult!6572 0))(
  ( (MissingZero!6572 (index!28571 (_ BitVec 32))) (Found!6572 (index!28572 (_ BitVec 32))) (Intermediate!6572 (undefined!7384 Bool) (index!28573 (_ BitVec 32)) (x!57347 (_ BitVec 32))) (Undefined!6572) (MissingVacant!6572 (index!28574 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37771 (_ BitVec 32)) SeekEntryResult!6572)

(assert (=> b!625183 (= res!403366 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18125 a!2986) j!136) a!2986 mask!3053) (Found!6572 j!136)))))

(declare-fun b!625184 () Bool)

(assert (=> b!625184 (= e!358345 e!358343)))

(declare-fun res!403369 () Bool)

(assert (=> b!625184 (=> (not res!403369) (not e!358343))))

(declare-fun lt!289758 () SeekEntryResult!6572)

(assert (=> b!625184 (= res!403369 (or (= lt!289758 (MissingZero!6572 i!1108)) (= lt!289758 (MissingVacant!6572 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37771 (_ BitVec 32)) SeekEntryResult!6572)

(assert (=> b!625184 (= lt!289758 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56428 res!403363) b!625175))

(assert (= (and b!625175 res!403361) b!625182))

(assert (= (and b!625182 res!403365) b!625181))

(assert (= (and b!625181 res!403370) b!625180))

(assert (= (and b!625180 res!403364) b!625184))

(assert (= (and b!625184 res!403369) b!625179))

(assert (= (and b!625179 res!403367) b!625178))

(assert (= (and b!625178 res!403362) b!625177))

(assert (= (and b!625177 res!403368) b!625183))

(assert (= (and b!625183 res!403366) b!625176))

(declare-fun m!600799 () Bool)

(assert (=> b!625179 m!600799))

(declare-fun m!600801 () Bool)

(assert (=> b!625184 m!600801))

(declare-fun m!600803 () Bool)

(assert (=> b!625177 m!600803))

(declare-fun m!600805 () Bool)

(assert (=> b!625177 m!600805))

(declare-fun m!600807 () Bool)

(assert (=> b!625177 m!600807))

(declare-fun m!600809 () Bool)

(assert (=> b!625183 m!600809))

(assert (=> b!625183 m!600809))

(declare-fun m!600811 () Bool)

(assert (=> b!625183 m!600811))

(assert (=> b!625182 m!600809))

(assert (=> b!625182 m!600809))

(declare-fun m!600813 () Bool)

(assert (=> b!625182 m!600813))

(declare-fun m!600815 () Bool)

(assert (=> b!625181 m!600815))

(declare-fun m!600817 () Bool)

(assert (=> start!56428 m!600817))

(declare-fun m!600819 () Bool)

(assert (=> start!56428 m!600819))

(declare-fun m!600821 () Bool)

(assert (=> b!625180 m!600821))

(declare-fun m!600823 () Bool)

(assert (=> b!625178 m!600823))

(push 1)

(assert (not start!56428))

(assert (not b!625182))

(assert (not b!625181))

(assert (not b!625178))

(assert (not b!625179))

(assert (not b!625183))

(assert (not b!625180))

(assert (not b!625184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

