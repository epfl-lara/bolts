; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56748 () Bool)

(assert start!56748)

(declare-fun b!628411 () Bool)

(declare-fun e!359533 () Bool)

(assert (=> b!628411 (= e!359533 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!290481 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628411 (= lt!290481 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628412 () Bool)

(declare-fun res!406157 () Bool)

(assert (=> b!628412 (=> (not res!406157) (not e!359533))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37950 0))(
  ( (array!37951 (arr!18210 (Array (_ BitVec 32) (_ BitVec 64))) (size!18574 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37950)

(assert (=> b!628412 (= res!406157 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18210 a!2986) index!984) (select (arr!18210 a!2986) j!136))) (not (= (select (arr!18210 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!406147 () Bool)

(declare-fun e!359532 () Bool)

(assert (=> start!56748 (=> (not res!406147) (not e!359532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56748 (= res!406147 (validMask!0 mask!3053))))

(assert (=> start!56748 e!359532))

(assert (=> start!56748 true))

(declare-fun array_inv!13984 (array!37950) Bool)

(assert (=> start!56748 (array_inv!13984 a!2986)))

(declare-fun b!628413 () Bool)

(declare-fun res!406154 () Bool)

(assert (=> b!628413 (=> (not res!406154) (not e!359533))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!628413 (= res!406154 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18210 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18210 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628414 () Bool)

(declare-fun res!406148 () Bool)

(assert (=> b!628414 (=> (not res!406148) (not e!359532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628414 (= res!406148 (validKeyInArray!0 (select (arr!18210 a!2986) j!136)))))

(declare-fun b!628415 () Bool)

(declare-fun res!406152 () Bool)

(assert (=> b!628415 (=> (not res!406152) (not e!359532))))

(assert (=> b!628415 (= res!406152 (validKeyInArray!0 k!1786))))

(declare-fun b!628416 () Bool)

(declare-fun res!406153 () Bool)

(assert (=> b!628416 (=> (not res!406153) (not e!359533))))

(declare-datatypes ((SeekEntryResult!6657 0))(
  ( (MissingZero!6657 (index!28911 (_ BitVec 32))) (Found!6657 (index!28912 (_ BitVec 32))) (Intermediate!6657 (undefined!7469 Bool) (index!28913 (_ BitVec 32)) (x!57676 (_ BitVec 32))) (Undefined!6657) (MissingVacant!6657 (index!28914 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37950 (_ BitVec 32)) SeekEntryResult!6657)

(assert (=> b!628416 (= res!406153 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18210 a!2986) j!136) a!2986 mask!3053) (Found!6657 j!136)))))

(declare-fun b!628417 () Bool)

(declare-fun res!406156 () Bool)

(assert (=> b!628417 (=> (not res!406156) (not e!359532))))

(assert (=> b!628417 (= res!406156 (and (= (size!18574 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18574 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18574 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628418 () Bool)

(declare-fun res!406149 () Bool)

(assert (=> b!628418 (=> (not res!406149) (not e!359533))))

(declare-datatypes ((List!12304 0))(
  ( (Nil!12301) (Cons!12300 (h!13345 (_ BitVec 64)) (t!18540 List!12304)) )
))
(declare-fun arrayNoDuplicates!0 (array!37950 (_ BitVec 32) List!12304) Bool)

(assert (=> b!628418 (= res!406149 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12301))))

(declare-fun b!628419 () Bool)

(declare-fun res!406151 () Bool)

(assert (=> b!628419 (=> (not res!406151) (not e!359533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37950 (_ BitVec 32)) Bool)

(assert (=> b!628419 (= res!406151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!628420 () Bool)

(declare-fun res!406150 () Bool)

(assert (=> b!628420 (=> (not res!406150) (not e!359532))))

(declare-fun arrayContainsKey!0 (array!37950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628420 (= res!406150 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628421 () Bool)

(assert (=> b!628421 (= e!359532 e!359533)))

(declare-fun res!406155 () Bool)

(assert (=> b!628421 (=> (not res!406155) (not e!359533))))

(declare-fun lt!290480 () SeekEntryResult!6657)

(assert (=> b!628421 (= res!406155 (or (= lt!290480 (MissingZero!6657 i!1108)) (= lt!290480 (MissingVacant!6657 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37950 (_ BitVec 32)) SeekEntryResult!6657)

(assert (=> b!628421 (= lt!290480 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56748 res!406147) b!628417))

(assert (= (and b!628417 res!406156) b!628414))

(assert (= (and b!628414 res!406148) b!628415))

(assert (= (and b!628415 res!406152) b!628420))

(assert (= (and b!628420 res!406150) b!628421))

(assert (= (and b!628421 res!406155) b!628419))

(assert (= (and b!628419 res!406151) b!628418))

(assert (= (and b!628418 res!406149) b!628413))

(assert (= (and b!628413 res!406154) b!628416))

(assert (= (and b!628416 res!406153) b!628412))

(assert (= (and b!628412 res!406157) b!628411))

(declare-fun m!603603 () Bool)

(assert (=> b!628411 m!603603))

(declare-fun m!603605 () Bool)

(assert (=> b!628412 m!603605))

(declare-fun m!603607 () Bool)

(assert (=> b!628412 m!603607))

(declare-fun m!603609 () Bool)

(assert (=> b!628413 m!603609))

(declare-fun m!603611 () Bool)

(assert (=> b!628413 m!603611))

(declare-fun m!603613 () Bool)

(assert (=> b!628413 m!603613))

(assert (=> b!628414 m!603607))

(assert (=> b!628414 m!603607))

(declare-fun m!603615 () Bool)

(assert (=> b!628414 m!603615))

(declare-fun m!603617 () Bool)

(assert (=> b!628420 m!603617))

(declare-fun m!603619 () Bool)

(assert (=> start!56748 m!603619))

(declare-fun m!603621 () Bool)

(assert (=> start!56748 m!603621))

(declare-fun m!603623 () Bool)

(assert (=> b!628418 m!603623))

(assert (=> b!628416 m!603607))

(assert (=> b!628416 m!603607))

(declare-fun m!603625 () Bool)

(assert (=> b!628416 m!603625))

(declare-fun m!603627 () Bool)

(assert (=> b!628421 m!603627))

(declare-fun m!603629 () Bool)

(assert (=> b!628419 m!603629))

(declare-fun m!603631 () Bool)

(assert (=> b!628415 m!603631))

(push 1)

