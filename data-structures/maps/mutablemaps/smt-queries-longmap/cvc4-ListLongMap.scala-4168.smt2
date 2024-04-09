; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56764 () Bool)

(assert start!56764)

(declare-fun b!628675 () Bool)

(declare-fun res!406414 () Bool)

(declare-fun e!359604 () Bool)

(assert (=> b!628675 (=> (not res!406414) (not e!359604))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37966 0))(
  ( (array!37967 (arr!18218 (Array (_ BitVec 32) (_ BitVec 64))) (size!18582 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37966)

(assert (=> b!628675 (= res!406414 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18218 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18218 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628676 () Bool)

(declare-fun res!406418 () Bool)

(declare-fun e!359603 () Bool)

(assert (=> b!628676 (=> (not res!406418) (not e!359603))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!628676 (= res!406418 (and (= (size!18582 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18582 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18582 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628678 () Bool)

(declare-fun res!406411 () Bool)

(assert (=> b!628678 (=> (not res!406411) (not e!359603))))

(declare-fun arrayContainsKey!0 (array!37966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628678 (= res!406411 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628679 () Bool)

(assert (=> b!628679 (= e!359603 e!359604)))

(declare-fun res!406415 () Bool)

(assert (=> b!628679 (=> (not res!406415) (not e!359604))))

(declare-datatypes ((SeekEntryResult!6665 0))(
  ( (MissingZero!6665 (index!28943 (_ BitVec 32))) (Found!6665 (index!28944 (_ BitVec 32))) (Intermediate!6665 (undefined!7477 Bool) (index!28945 (_ BitVec 32)) (x!57700 (_ BitVec 32))) (Undefined!6665) (MissingVacant!6665 (index!28946 (_ BitVec 32))) )
))
(declare-fun lt!290529 () SeekEntryResult!6665)

(assert (=> b!628679 (= res!406415 (or (= lt!290529 (MissingZero!6665 i!1108)) (= lt!290529 (MissingVacant!6665 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37966 (_ BitVec 32)) SeekEntryResult!6665)

(assert (=> b!628679 (= lt!290529 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!628680 () Bool)

(assert (=> b!628680 (= e!359604 false)))

(declare-fun lt!290528 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628680 (= lt!290528 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628681 () Bool)

(declare-fun res!406416 () Bool)

(assert (=> b!628681 (=> (not res!406416) (not e!359603))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628681 (= res!406416 (validKeyInArray!0 (select (arr!18218 a!2986) j!136)))))

(declare-fun b!628682 () Bool)

(declare-fun res!406417 () Bool)

(assert (=> b!628682 (=> (not res!406417) (not e!359604))))

(declare-datatypes ((List!12312 0))(
  ( (Nil!12309) (Cons!12308 (h!13353 (_ BitVec 64)) (t!18548 List!12312)) )
))
(declare-fun arrayNoDuplicates!0 (array!37966 (_ BitVec 32) List!12312) Bool)

(assert (=> b!628682 (= res!406417 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12309))))

(declare-fun b!628683 () Bool)

(declare-fun res!406413 () Bool)

(assert (=> b!628683 (=> (not res!406413) (not e!359604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37966 (_ BitVec 32)) Bool)

(assert (=> b!628683 (= res!406413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!406419 () Bool)

(assert (=> start!56764 (=> (not res!406419) (not e!359603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56764 (= res!406419 (validMask!0 mask!3053))))

(assert (=> start!56764 e!359603))

(assert (=> start!56764 true))

(declare-fun array_inv!13992 (array!37966) Bool)

(assert (=> start!56764 (array_inv!13992 a!2986)))

(declare-fun b!628677 () Bool)

(declare-fun res!406421 () Bool)

(assert (=> b!628677 (=> (not res!406421) (not e!359603))))

(assert (=> b!628677 (= res!406421 (validKeyInArray!0 k!1786))))

(declare-fun b!628684 () Bool)

(declare-fun res!406412 () Bool)

(assert (=> b!628684 (=> (not res!406412) (not e!359604))))

(assert (=> b!628684 (= res!406412 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18218 a!2986) index!984) (select (arr!18218 a!2986) j!136))) (not (= (select (arr!18218 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628685 () Bool)

(declare-fun res!406420 () Bool)

(assert (=> b!628685 (=> (not res!406420) (not e!359604))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37966 (_ BitVec 32)) SeekEntryResult!6665)

(assert (=> b!628685 (= res!406420 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18218 a!2986) j!136) a!2986 mask!3053) (Found!6665 j!136)))))

(assert (= (and start!56764 res!406419) b!628676))

(assert (= (and b!628676 res!406418) b!628681))

(assert (= (and b!628681 res!406416) b!628677))

(assert (= (and b!628677 res!406421) b!628678))

(assert (= (and b!628678 res!406411) b!628679))

(assert (= (and b!628679 res!406415) b!628683))

(assert (= (and b!628683 res!406413) b!628682))

(assert (= (and b!628682 res!406417) b!628675))

(assert (= (and b!628675 res!406414) b!628685))

(assert (= (and b!628685 res!406420) b!628684))

(assert (= (and b!628684 res!406412) b!628680))

(declare-fun m!603843 () Bool)

(assert (=> b!628678 m!603843))

(declare-fun m!603845 () Bool)

(assert (=> b!628684 m!603845))

(declare-fun m!603847 () Bool)

(assert (=> b!628684 m!603847))

(declare-fun m!603849 () Bool)

(assert (=> b!628679 m!603849))

(declare-fun m!603851 () Bool)

(assert (=> start!56764 m!603851))

(declare-fun m!603853 () Bool)

(assert (=> start!56764 m!603853))

(assert (=> b!628681 m!603847))

(assert (=> b!628681 m!603847))

(declare-fun m!603855 () Bool)

(assert (=> b!628681 m!603855))

(declare-fun m!603857 () Bool)

(assert (=> b!628683 m!603857))

(declare-fun m!603859 () Bool)

(assert (=> b!628682 m!603859))

(declare-fun m!603861 () Bool)

(assert (=> b!628677 m!603861))

(declare-fun m!603863 () Bool)

(assert (=> b!628680 m!603863))

(declare-fun m!603865 () Bool)

(assert (=> b!628675 m!603865))

(declare-fun m!603867 () Bool)

(assert (=> b!628675 m!603867))

(declare-fun m!603869 () Bool)

(assert (=> b!628675 m!603869))

(assert (=> b!628685 m!603847))

(assert (=> b!628685 m!603847))

(declare-fun m!603871 () Bool)

(assert (=> b!628685 m!603871))

(push 1)

(assert (not b!628685))

(assert (not start!56764))

(assert (not b!628677))

