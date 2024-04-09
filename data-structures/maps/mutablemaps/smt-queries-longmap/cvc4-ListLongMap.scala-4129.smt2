; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56332 () Bool)

(assert start!56332)

(declare-fun b!624303 () Bool)

(declare-fun res!402634 () Bool)

(declare-fun e!357993 () Bool)

(assert (=> b!624303 (=> (not res!402634) (not e!357993))))

(declare-datatypes ((array!37720 0))(
  ( (array!37721 (arr!18101 (Array (_ BitVec 32) (_ BitVec 64))) (size!18465 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37720)

(declare-datatypes ((List!12195 0))(
  ( (Nil!12192) (Cons!12191 (h!13236 (_ BitVec 64)) (t!18431 List!12195)) )
))
(declare-fun arrayNoDuplicates!0 (array!37720 (_ BitVec 32) List!12195) Bool)

(assert (=> b!624303 (= res!402634 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12192))))

(declare-fun b!624304 () Bool)

(declare-fun res!402639 () Bool)

(declare-fun e!357994 () Bool)

(assert (=> b!624304 (=> (not res!402639) (not e!357994))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624304 (= res!402639 (and (= (size!18465 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18465 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18465 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624305 () Bool)

(assert (=> b!624305 (= e!357993 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6548 0))(
  ( (MissingZero!6548 (index!28475 (_ BitVec 32))) (Found!6548 (index!28476 (_ BitVec 32))) (Intermediate!6548 (undefined!7360 Bool) (index!28477 (_ BitVec 32)) (x!57256 (_ BitVec 32))) (Undefined!6548) (MissingVacant!6548 (index!28478 (_ BitVec 32))) )
))
(declare-fun lt!289560 () SeekEntryResult!6548)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37720 (_ BitVec 32)) SeekEntryResult!6548)

(assert (=> b!624305 (= lt!289560 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18101 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624306 () Bool)

(declare-fun res!402640 () Bool)

(assert (=> b!624306 (=> (not res!402640) (not e!357994))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624306 (= res!402640 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624307 () Bool)

(assert (=> b!624307 (= e!357994 e!357993)))

(declare-fun res!402633 () Bool)

(assert (=> b!624307 (=> (not res!402633) (not e!357993))))

(declare-fun lt!289559 () SeekEntryResult!6548)

(assert (=> b!624307 (= res!402633 (or (= lt!289559 (MissingZero!6548 i!1108)) (= lt!289559 (MissingVacant!6548 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37720 (_ BitVec 32)) SeekEntryResult!6548)

(assert (=> b!624307 (= lt!289559 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624308 () Bool)

(declare-fun res!402637 () Bool)

(assert (=> b!624308 (=> (not res!402637) (not e!357994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624308 (= res!402637 (validKeyInArray!0 k!1786))))

(declare-fun b!624309 () Bool)

(declare-fun res!402638 () Bool)

(assert (=> b!624309 (=> (not res!402638) (not e!357994))))

(assert (=> b!624309 (= res!402638 (validKeyInArray!0 (select (arr!18101 a!2986) j!136)))))

(declare-fun b!624310 () Bool)

(declare-fun res!402635 () Bool)

(assert (=> b!624310 (=> (not res!402635) (not e!357993))))

(assert (=> b!624310 (= res!402635 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18101 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18101 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624311 () Bool)

(declare-fun res!402636 () Bool)

(assert (=> b!624311 (=> (not res!402636) (not e!357993))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37720 (_ BitVec 32)) Bool)

(assert (=> b!624311 (= res!402636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!402641 () Bool)

(assert (=> start!56332 (=> (not res!402641) (not e!357994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56332 (= res!402641 (validMask!0 mask!3053))))

(assert (=> start!56332 e!357994))

(assert (=> start!56332 true))

(declare-fun array_inv!13875 (array!37720) Bool)

(assert (=> start!56332 (array_inv!13875 a!2986)))

(assert (= (and start!56332 res!402641) b!624304))

(assert (= (and b!624304 res!402639) b!624309))

(assert (= (and b!624309 res!402638) b!624308))

(assert (= (and b!624308 res!402637) b!624306))

(assert (= (and b!624306 res!402640) b!624307))

(assert (= (and b!624307 res!402633) b!624311))

(assert (= (and b!624311 res!402636) b!624303))

(assert (= (and b!624303 res!402634) b!624310))

(assert (= (and b!624310 res!402635) b!624305))

(declare-fun m!600049 () Bool)

(assert (=> b!624309 m!600049))

(assert (=> b!624309 m!600049))

(declare-fun m!600051 () Bool)

(assert (=> b!624309 m!600051))

(declare-fun m!600053 () Bool)

(assert (=> b!624303 m!600053))

(declare-fun m!600055 () Bool)

(assert (=> b!624308 m!600055))

(declare-fun m!600057 () Bool)

(assert (=> b!624306 m!600057))

(declare-fun m!600059 () Bool)

(assert (=> start!56332 m!600059))

(declare-fun m!600061 () Bool)

(assert (=> start!56332 m!600061))

(declare-fun m!600063 () Bool)

(assert (=> b!624307 m!600063))

(assert (=> b!624305 m!600049))

(assert (=> b!624305 m!600049))

(declare-fun m!600065 () Bool)

(assert (=> b!624305 m!600065))

(declare-fun m!600067 () Bool)

(assert (=> b!624310 m!600067))

(declare-fun m!600069 () Bool)

(assert (=> b!624310 m!600069))

(declare-fun m!600071 () Bool)

(assert (=> b!624310 m!600071))

(declare-fun m!600073 () Bool)

(assert (=> b!624311 m!600073))

(push 1)

(assert (not b!624303))

(assert (not b!624306))

(assert (not b!624305))

(assert (not b!624307))

(assert (not b!624309))

(assert (not start!56332))

(assert (not b!624311))

(assert (not b!624308))

(check-sat)

