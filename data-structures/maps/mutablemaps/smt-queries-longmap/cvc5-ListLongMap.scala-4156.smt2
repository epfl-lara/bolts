; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56634 () Bool)

(assert start!56634)

(declare-fun b!627214 () Bool)

(declare-fun res!405103 () Bool)

(declare-fun e!359127 () Bool)

(assert (=> b!627214 (=> (not res!405103) (not e!359127))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627214 (= res!405103 (validKeyInArray!0 k!1786))))

(declare-fun b!627215 () Bool)

(declare-fun res!405097 () Bool)

(declare-fun e!359126 () Bool)

(assert (=> b!627215 (=> (not res!405097) (not e!359126))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37887 0))(
  ( (array!37888 (arr!18180 (Array (_ BitVec 32) (_ BitVec 64))) (size!18544 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37887)

(declare-datatypes ((SeekEntryResult!6627 0))(
  ( (MissingZero!6627 (index!28791 (_ BitVec 32))) (Found!6627 (index!28792 (_ BitVec 32))) (Intermediate!6627 (undefined!7439 Bool) (index!28793 (_ BitVec 32)) (x!57560 (_ BitVec 32))) (Undefined!6627) (MissingVacant!6627 (index!28794 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37887 (_ BitVec 32)) SeekEntryResult!6627)

(assert (=> b!627215 (= res!405097 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18180 a!2986) j!136) a!2986 mask!3053) (Found!6627 j!136)))))

(declare-fun b!627216 () Bool)

(declare-fun res!405096 () Bool)

(assert (=> b!627216 (=> (not res!405096) (not e!359127))))

(declare-fun arrayContainsKey!0 (array!37887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627216 (= res!405096 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!405098 () Bool)

(assert (=> start!56634 (=> (not res!405098) (not e!359127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56634 (= res!405098 (validMask!0 mask!3053))))

(assert (=> start!56634 e!359127))

(assert (=> start!56634 true))

(declare-fun array_inv!13954 (array!37887) Bool)

(assert (=> start!56634 (array_inv!13954 a!2986)))

(declare-fun b!627217 () Bool)

(assert (=> b!627217 (= e!359126 false)))

(declare-fun lt!290220 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627217 (= lt!290220 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627218 () Bool)

(declare-fun res!405101 () Bool)

(assert (=> b!627218 (=> (not res!405101) (not e!359126))))

(declare-datatypes ((List!12274 0))(
  ( (Nil!12271) (Cons!12270 (h!13315 (_ BitVec 64)) (t!18510 List!12274)) )
))
(declare-fun arrayNoDuplicates!0 (array!37887 (_ BitVec 32) List!12274) Bool)

(assert (=> b!627218 (= res!405101 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12271))))

(declare-fun b!627219 () Bool)

(declare-fun res!405104 () Bool)

(assert (=> b!627219 (=> (not res!405104) (not e!359126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37887 (_ BitVec 32)) Bool)

(assert (=> b!627219 (= res!405104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627220 () Bool)

(declare-fun res!405095 () Bool)

(assert (=> b!627220 (=> (not res!405095) (not e!359127))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627220 (= res!405095 (and (= (size!18544 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18544 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18544 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627221 () Bool)

(assert (=> b!627221 (= e!359127 e!359126)))

(declare-fun res!405100 () Bool)

(assert (=> b!627221 (=> (not res!405100) (not e!359126))))

(declare-fun lt!290219 () SeekEntryResult!6627)

(assert (=> b!627221 (= res!405100 (or (= lt!290219 (MissingZero!6627 i!1108)) (= lt!290219 (MissingVacant!6627 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37887 (_ BitVec 32)) SeekEntryResult!6627)

(assert (=> b!627221 (= lt!290219 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627222 () Bool)

(declare-fun res!405099 () Bool)

(assert (=> b!627222 (=> (not res!405099) (not e!359126))))

(assert (=> b!627222 (= res!405099 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18180 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18180 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627223 () Bool)

(declare-fun res!405102 () Bool)

(assert (=> b!627223 (=> (not res!405102) (not e!359126))))

(assert (=> b!627223 (= res!405102 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18180 a!2986) index!984) (select (arr!18180 a!2986) j!136))) (not (= (select (arr!18180 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627224 () Bool)

(declare-fun res!405094 () Bool)

(assert (=> b!627224 (=> (not res!405094) (not e!359127))))

(assert (=> b!627224 (= res!405094 (validKeyInArray!0 (select (arr!18180 a!2986) j!136)))))

(assert (= (and start!56634 res!405098) b!627220))

(assert (= (and b!627220 res!405095) b!627224))

(assert (= (and b!627224 res!405094) b!627214))

(assert (= (and b!627214 res!405103) b!627216))

(assert (= (and b!627216 res!405096) b!627221))

(assert (= (and b!627221 res!405100) b!627219))

(assert (= (and b!627219 res!405104) b!627218))

(assert (= (and b!627218 res!405101) b!627222))

(assert (= (and b!627222 res!405099) b!627215))

(assert (= (and b!627215 res!405097) b!627223))

(assert (= (and b!627223 res!405102) b!627217))

(declare-fun m!602583 () Bool)

(assert (=> b!627217 m!602583))

(declare-fun m!602585 () Bool)

(assert (=> b!627218 m!602585))

(declare-fun m!602587 () Bool)

(assert (=> b!627216 m!602587))

(declare-fun m!602589 () Bool)

(assert (=> b!627224 m!602589))

(assert (=> b!627224 m!602589))

(declare-fun m!602591 () Bool)

(assert (=> b!627224 m!602591))

(declare-fun m!602593 () Bool)

(assert (=> b!627222 m!602593))

(declare-fun m!602595 () Bool)

(assert (=> b!627222 m!602595))

(declare-fun m!602597 () Bool)

(assert (=> b!627222 m!602597))

(declare-fun m!602599 () Bool)

(assert (=> b!627223 m!602599))

(assert (=> b!627223 m!602589))

(declare-fun m!602601 () Bool)

(assert (=> b!627221 m!602601))

(declare-fun m!602603 () Bool)

(assert (=> b!627214 m!602603))

(declare-fun m!602605 () Bool)

(assert (=> b!627219 m!602605))

(assert (=> b!627215 m!602589))

(assert (=> b!627215 m!602589))

(declare-fun m!602607 () Bool)

(assert (=> b!627215 m!602607))

(declare-fun m!602609 () Bool)

(assert (=> start!56634 m!602609))

(declare-fun m!602611 () Bool)

(assert (=> start!56634 m!602611))

(push 1)

