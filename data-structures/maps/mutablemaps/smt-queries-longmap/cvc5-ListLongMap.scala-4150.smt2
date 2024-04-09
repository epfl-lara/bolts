; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56598 () Bool)

(assert start!56598)

(declare-fun b!626634 () Bool)

(declare-fun res!404522 () Bool)

(declare-fun e!358966 () Bool)

(assert (=> b!626634 (=> (not res!404522) (not e!358966))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37851 0))(
  ( (array!37852 (arr!18162 (Array (_ BitVec 32) (_ BitVec 64))) (size!18526 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37851)

(assert (=> b!626634 (= res!404522 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18162 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18162 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626635 () Bool)

(declare-fun res!404520 () Bool)

(assert (=> b!626635 (=> (not res!404520) (not e!358966))))

(declare-datatypes ((List!12256 0))(
  ( (Nil!12253) (Cons!12252 (h!13297 (_ BitVec 64)) (t!18492 List!12256)) )
))
(declare-fun arrayNoDuplicates!0 (array!37851 (_ BitVec 32) List!12256) Bool)

(assert (=> b!626635 (= res!404520 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12253))))

(declare-fun b!626636 () Bool)

(declare-fun e!358964 () Bool)

(assert (=> b!626636 (= e!358964 e!358966)))

(declare-fun res!404519 () Bool)

(assert (=> b!626636 (=> (not res!404519) (not e!358966))))

(declare-datatypes ((SeekEntryResult!6609 0))(
  ( (MissingZero!6609 (index!28719 (_ BitVec 32))) (Found!6609 (index!28720 (_ BitVec 32))) (Intermediate!6609 (undefined!7421 Bool) (index!28721 (_ BitVec 32)) (x!57494 (_ BitVec 32))) (Undefined!6609) (MissingVacant!6609 (index!28722 (_ BitVec 32))) )
))
(declare-fun lt!290112 () SeekEntryResult!6609)

(assert (=> b!626636 (= res!404519 (or (= lt!290112 (MissingZero!6609 i!1108)) (= lt!290112 (MissingVacant!6609 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37851 (_ BitVec 32)) SeekEntryResult!6609)

(assert (=> b!626636 (= lt!290112 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626637 () Bool)

(declare-fun res!404516 () Bool)

(assert (=> b!626637 (=> (not res!404516) (not e!358964))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626637 (= res!404516 (validKeyInArray!0 (select (arr!18162 a!2986) j!136)))))

(declare-fun b!626638 () Bool)

(assert (=> b!626638 (= e!358966 false)))

(declare-fun lt!290111 () SeekEntryResult!6609)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37851 (_ BitVec 32)) SeekEntryResult!6609)

(assert (=> b!626638 (= lt!290111 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18162 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626639 () Bool)

(declare-fun res!404514 () Bool)

(assert (=> b!626639 (=> (not res!404514) (not e!358966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37851 (_ BitVec 32)) Bool)

(assert (=> b!626639 (= res!404514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626640 () Bool)

(declare-fun res!404521 () Bool)

(assert (=> b!626640 (=> (not res!404521) (not e!358964))))

(assert (=> b!626640 (= res!404521 (and (= (size!18526 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18526 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18526 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!404518 () Bool)

(assert (=> start!56598 (=> (not res!404518) (not e!358964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56598 (= res!404518 (validMask!0 mask!3053))))

(assert (=> start!56598 e!358964))

(assert (=> start!56598 true))

(declare-fun array_inv!13936 (array!37851) Bool)

(assert (=> start!56598 (array_inv!13936 a!2986)))

(declare-fun b!626641 () Bool)

(declare-fun res!404515 () Bool)

(assert (=> b!626641 (=> (not res!404515) (not e!358964))))

(assert (=> b!626641 (= res!404515 (validKeyInArray!0 k!1786))))

(declare-fun b!626642 () Bool)

(declare-fun res!404517 () Bool)

(assert (=> b!626642 (=> (not res!404517) (not e!358964))))

(declare-fun arrayContainsKey!0 (array!37851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626642 (= res!404517 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56598 res!404518) b!626640))

(assert (= (and b!626640 res!404521) b!626637))

(assert (= (and b!626637 res!404516) b!626641))

(assert (= (and b!626641 res!404515) b!626642))

(assert (= (and b!626642 res!404517) b!626636))

(assert (= (and b!626636 res!404519) b!626639))

(assert (= (and b!626639 res!404514) b!626635))

(assert (= (and b!626635 res!404520) b!626634))

(assert (= (and b!626634 res!404522) b!626638))

(declare-fun m!602055 () Bool)

(assert (=> b!626641 m!602055))

(declare-fun m!602057 () Bool)

(assert (=> b!626634 m!602057))

(declare-fun m!602059 () Bool)

(assert (=> b!626634 m!602059))

(declare-fun m!602061 () Bool)

(assert (=> b!626634 m!602061))

(declare-fun m!602063 () Bool)

(assert (=> b!626638 m!602063))

(assert (=> b!626638 m!602063))

(declare-fun m!602065 () Bool)

(assert (=> b!626638 m!602065))

(declare-fun m!602067 () Bool)

(assert (=> b!626642 m!602067))

(declare-fun m!602069 () Bool)

(assert (=> b!626639 m!602069))

(assert (=> b!626637 m!602063))

(assert (=> b!626637 m!602063))

(declare-fun m!602071 () Bool)

(assert (=> b!626637 m!602071))

(declare-fun m!602073 () Bool)

(assert (=> b!626635 m!602073))

(declare-fun m!602075 () Bool)

(assert (=> b!626636 m!602075))

(declare-fun m!602077 () Bool)

(assert (=> start!56598 m!602077))

(declare-fun m!602079 () Bool)

(assert (=> start!56598 m!602079))

(push 1)

