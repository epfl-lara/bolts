; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56334 () Bool)

(assert start!56334)

(declare-fun b!624330 () Bool)

(declare-fun res!402666 () Bool)

(declare-fun e!358002 () Bool)

(assert (=> b!624330 (=> (not res!402666) (not e!358002))))

(declare-datatypes ((array!37722 0))(
  ( (array!37723 (arr!18102 (Array (_ BitVec 32) (_ BitVec 64))) (size!18466 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37722)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624330 (= res!402666 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624331 () Bool)

(declare-fun e!358001 () Bool)

(assert (=> b!624331 (= e!358001 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6549 0))(
  ( (MissingZero!6549 (index!28479 (_ BitVec 32))) (Found!6549 (index!28480 (_ BitVec 32))) (Intermediate!6549 (undefined!7361 Bool) (index!28481 (_ BitVec 32)) (x!57265 (_ BitVec 32))) (Undefined!6549) (MissingVacant!6549 (index!28482 (_ BitVec 32))) )
))
(declare-fun lt!289566 () SeekEntryResult!6549)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37722 (_ BitVec 32)) SeekEntryResult!6549)

(assert (=> b!624331 (= lt!289566 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18102 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624332 () Bool)

(declare-fun res!402667 () Bool)

(assert (=> b!624332 (=> (not res!402667) (not e!358002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624332 (= res!402667 (validKeyInArray!0 (select (arr!18102 a!2986) j!136)))))

(declare-fun b!624333 () Bool)

(declare-fun res!402662 () Bool)

(assert (=> b!624333 (=> (not res!402662) (not e!358001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37722 (_ BitVec 32)) Bool)

(assert (=> b!624333 (= res!402662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624334 () Bool)

(declare-fun res!402660 () Bool)

(assert (=> b!624334 (=> (not res!402660) (not e!358002))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624334 (= res!402660 (and (= (size!18466 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18466 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18466 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624336 () Bool)

(declare-fun res!402668 () Bool)

(assert (=> b!624336 (=> (not res!402668) (not e!358002))))

(assert (=> b!624336 (= res!402668 (validKeyInArray!0 k!1786))))

(declare-fun res!402663 () Bool)

(assert (=> start!56334 (=> (not res!402663) (not e!358002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56334 (= res!402663 (validMask!0 mask!3053))))

(assert (=> start!56334 e!358002))

(assert (=> start!56334 true))

(declare-fun array_inv!13876 (array!37722) Bool)

(assert (=> start!56334 (array_inv!13876 a!2986)))

(declare-fun b!624335 () Bool)

(declare-fun res!402661 () Bool)

(assert (=> b!624335 (=> (not res!402661) (not e!358001))))

(assert (=> b!624335 (= res!402661 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18102 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18102 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624337 () Bool)

(declare-fun res!402664 () Bool)

(assert (=> b!624337 (=> (not res!402664) (not e!358001))))

(declare-datatypes ((List!12196 0))(
  ( (Nil!12193) (Cons!12192 (h!13237 (_ BitVec 64)) (t!18432 List!12196)) )
))
(declare-fun arrayNoDuplicates!0 (array!37722 (_ BitVec 32) List!12196) Bool)

(assert (=> b!624337 (= res!402664 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12193))))

(declare-fun b!624338 () Bool)

(assert (=> b!624338 (= e!358002 e!358001)))

(declare-fun res!402665 () Bool)

(assert (=> b!624338 (=> (not res!402665) (not e!358001))))

(declare-fun lt!289565 () SeekEntryResult!6549)

(assert (=> b!624338 (= res!402665 (or (= lt!289565 (MissingZero!6549 i!1108)) (= lt!289565 (MissingVacant!6549 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37722 (_ BitVec 32)) SeekEntryResult!6549)

(assert (=> b!624338 (= lt!289565 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56334 res!402663) b!624334))

(assert (= (and b!624334 res!402660) b!624332))

(assert (= (and b!624332 res!402667) b!624336))

(assert (= (and b!624336 res!402668) b!624330))

(assert (= (and b!624330 res!402666) b!624338))

(assert (= (and b!624338 res!402665) b!624333))

(assert (= (and b!624333 res!402662) b!624337))

(assert (= (and b!624337 res!402664) b!624335))

(assert (= (and b!624335 res!402661) b!624331))

(declare-fun m!600075 () Bool)

(assert (=> b!624337 m!600075))

(declare-fun m!600077 () Bool)

(assert (=> b!624336 m!600077))

(declare-fun m!600079 () Bool)

(assert (=> b!624330 m!600079))

(declare-fun m!600081 () Bool)

(assert (=> b!624335 m!600081))

(declare-fun m!600083 () Bool)

(assert (=> b!624335 m!600083))

(declare-fun m!600085 () Bool)

(assert (=> b!624335 m!600085))

(declare-fun m!600087 () Bool)

(assert (=> b!624332 m!600087))

(assert (=> b!624332 m!600087))

(declare-fun m!600089 () Bool)

(assert (=> b!624332 m!600089))

(declare-fun m!600091 () Bool)

(assert (=> start!56334 m!600091))

(declare-fun m!600093 () Bool)

(assert (=> start!56334 m!600093))

(assert (=> b!624331 m!600087))

(assert (=> b!624331 m!600087))

(declare-fun m!600095 () Bool)

(assert (=> b!624331 m!600095))

(declare-fun m!600097 () Bool)

(assert (=> b!624338 m!600097))

(declare-fun m!600099 () Bool)

(assert (=> b!624333 m!600099))

(push 1)

