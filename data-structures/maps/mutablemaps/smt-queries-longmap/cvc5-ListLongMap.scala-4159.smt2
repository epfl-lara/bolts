; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56652 () Bool)

(assert start!56652)

(declare-fun b!627511 () Bool)

(declare-fun res!405398 () Bool)

(declare-fun e!359208 () Bool)

(assert (=> b!627511 (=> (not res!405398) (not e!359208))))

(declare-datatypes ((array!37905 0))(
  ( (array!37906 (arr!18189 (Array (_ BitVec 32) (_ BitVec 64))) (size!18553 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37905)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37905 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627511 (= res!405398 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627512 () Bool)

(declare-fun res!405400 () Bool)

(declare-fun e!359207 () Bool)

(assert (=> b!627512 (=> (not res!405400) (not e!359207))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627512 (= res!405400 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18189 a!2986) index!984) (select (arr!18189 a!2986) j!136))) (not (= (select (arr!18189 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627513 () Bool)

(declare-fun res!405395 () Bool)

(assert (=> b!627513 (=> (not res!405395) (not e!359207))))

(declare-datatypes ((List!12283 0))(
  ( (Nil!12280) (Cons!12279 (h!13324 (_ BitVec 64)) (t!18519 List!12283)) )
))
(declare-fun arrayNoDuplicates!0 (array!37905 (_ BitVec 32) List!12283) Bool)

(assert (=> b!627513 (= res!405395 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12280))))

(declare-fun b!627514 () Bool)

(declare-fun res!405392 () Bool)

(assert (=> b!627514 (=> (not res!405392) (not e!359208))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627514 (= res!405392 (and (= (size!18553 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18553 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18553 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627515 () Bool)

(declare-fun res!405396 () Bool)

(assert (=> b!627515 (=> (not res!405396) (not e!359208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627515 (= res!405396 (validKeyInArray!0 (select (arr!18189 a!2986) j!136)))))

(declare-fun b!627516 () Bool)

(declare-fun res!405391 () Bool)

(assert (=> b!627516 (=> (not res!405391) (not e!359207))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!627516 (= res!405391 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18189 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18189 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627517 () Bool)

(assert (=> b!627517 (= e!359208 e!359207)))

(declare-fun res!405394 () Bool)

(assert (=> b!627517 (=> (not res!405394) (not e!359207))))

(declare-datatypes ((SeekEntryResult!6636 0))(
  ( (MissingZero!6636 (index!28827 (_ BitVec 32))) (Found!6636 (index!28828 (_ BitVec 32))) (Intermediate!6636 (undefined!7448 Bool) (index!28829 (_ BitVec 32)) (x!57593 (_ BitVec 32))) (Undefined!6636) (MissingVacant!6636 (index!28830 (_ BitVec 32))) )
))
(declare-fun lt!290274 () SeekEntryResult!6636)

(assert (=> b!627517 (= res!405394 (or (= lt!290274 (MissingZero!6636 i!1108)) (= lt!290274 (MissingVacant!6636 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37905 (_ BitVec 32)) SeekEntryResult!6636)

(assert (=> b!627517 (= lt!290274 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627518 () Bool)

(declare-fun res!405397 () Bool)

(assert (=> b!627518 (=> (not res!405397) (not e!359207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37905 (_ BitVec 32)) Bool)

(assert (=> b!627518 (= res!405397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!405393 () Bool)

(assert (=> start!56652 (=> (not res!405393) (not e!359208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56652 (= res!405393 (validMask!0 mask!3053))))

(assert (=> start!56652 e!359208))

(assert (=> start!56652 true))

(declare-fun array_inv!13963 (array!37905) Bool)

(assert (=> start!56652 (array_inv!13963 a!2986)))

(declare-fun b!627519 () Bool)

(assert (=> b!627519 (= e!359207 false)))

(declare-fun lt!290273 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627519 (= lt!290273 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627520 () Bool)

(declare-fun res!405401 () Bool)

(assert (=> b!627520 (=> (not res!405401) (not e!359207))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37905 (_ BitVec 32)) SeekEntryResult!6636)

(assert (=> b!627520 (= res!405401 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18189 a!2986) j!136) a!2986 mask!3053) (Found!6636 j!136)))))

(declare-fun b!627521 () Bool)

(declare-fun res!405399 () Bool)

(assert (=> b!627521 (=> (not res!405399) (not e!359208))))

(assert (=> b!627521 (= res!405399 (validKeyInArray!0 k!1786))))

(assert (= (and start!56652 res!405393) b!627514))

(assert (= (and b!627514 res!405392) b!627515))

(assert (= (and b!627515 res!405396) b!627521))

(assert (= (and b!627521 res!405399) b!627511))

(assert (= (and b!627511 res!405398) b!627517))

(assert (= (and b!627517 res!405394) b!627518))

(assert (= (and b!627518 res!405397) b!627513))

(assert (= (and b!627513 res!405395) b!627516))

(assert (= (and b!627516 res!405391) b!627520))

(assert (= (and b!627520 res!405401) b!627512))

(assert (= (and b!627512 res!405400) b!627519))

(declare-fun m!602853 () Bool)

(assert (=> b!627520 m!602853))

(assert (=> b!627520 m!602853))

(declare-fun m!602855 () Bool)

(assert (=> b!627520 m!602855))

(declare-fun m!602857 () Bool)

(assert (=> b!627516 m!602857))

(declare-fun m!602859 () Bool)

(assert (=> b!627516 m!602859))

(declare-fun m!602861 () Bool)

(assert (=> b!627516 m!602861))

(declare-fun m!602863 () Bool)

(assert (=> b!627518 m!602863))

(declare-fun m!602865 () Bool)

(assert (=> b!627521 m!602865))

(declare-fun m!602867 () Bool)

(assert (=> b!627519 m!602867))

(declare-fun m!602869 () Bool)

(assert (=> b!627513 m!602869))

(assert (=> b!627515 m!602853))

(assert (=> b!627515 m!602853))

(declare-fun m!602871 () Bool)

(assert (=> b!627515 m!602871))

(declare-fun m!602873 () Bool)

(assert (=> b!627517 m!602873))

(declare-fun m!602875 () Bool)

(assert (=> start!56652 m!602875))

(declare-fun m!602877 () Bool)

(assert (=> start!56652 m!602877))

(declare-fun m!602879 () Bool)

(assert (=> b!627512 m!602879))

(assert (=> b!627512 m!602853))

(declare-fun m!602881 () Bool)

(assert (=> b!627511 m!602881))

(push 1)

