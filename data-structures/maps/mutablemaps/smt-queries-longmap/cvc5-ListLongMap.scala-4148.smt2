; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56586 () Bool)

(assert start!56586)

(declare-fun res!404354 () Bool)

(declare-fun e!358911 () Bool)

(assert (=> start!56586 (=> (not res!404354) (not e!358911))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56586 (= res!404354 (validMask!0 mask!3053))))

(assert (=> start!56586 e!358911))

(assert (=> start!56586 true))

(declare-datatypes ((array!37839 0))(
  ( (array!37840 (arr!18156 (Array (_ BitVec 32) (_ BitVec 64))) (size!18520 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37839)

(declare-fun array_inv!13930 (array!37839) Bool)

(assert (=> start!56586 (array_inv!13930 a!2986)))

(declare-fun b!626472 () Bool)

(declare-fun e!358910 () Bool)

(assert (=> b!626472 (= e!358910 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6603 0))(
  ( (MissingZero!6603 (index!28695 (_ BitVec 32))) (Found!6603 (index!28696 (_ BitVec 32))) (Intermediate!6603 (undefined!7415 Bool) (index!28697 (_ BitVec 32)) (x!57472 (_ BitVec 32))) (Undefined!6603) (MissingVacant!6603 (index!28698 (_ BitVec 32))) )
))
(declare-fun lt!290075 () SeekEntryResult!6603)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37839 (_ BitVec 32)) SeekEntryResult!6603)

(assert (=> b!626472 (= lt!290075 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18156 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626473 () Bool)

(declare-fun res!404352 () Bool)

(assert (=> b!626473 (=> (not res!404352) (not e!358910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37839 (_ BitVec 32)) Bool)

(assert (=> b!626473 (= res!404352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626474 () Bool)

(declare-fun res!404353 () Bool)

(assert (=> b!626474 (=> (not res!404353) (not e!358911))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626474 (= res!404353 (validKeyInArray!0 k!1786))))

(declare-fun b!626475 () Bool)

(declare-fun res!404359 () Bool)

(assert (=> b!626475 (=> (not res!404359) (not e!358911))))

(assert (=> b!626475 (= res!404359 (validKeyInArray!0 (select (arr!18156 a!2986) j!136)))))

(declare-fun b!626476 () Bool)

(declare-fun res!404360 () Bool)

(assert (=> b!626476 (=> (not res!404360) (not e!358910))))

(declare-datatypes ((List!12250 0))(
  ( (Nil!12247) (Cons!12246 (h!13291 (_ BitVec 64)) (t!18486 List!12250)) )
))
(declare-fun arrayNoDuplicates!0 (array!37839 (_ BitVec 32) List!12250) Bool)

(assert (=> b!626476 (= res!404360 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12247))))

(declare-fun b!626477 () Bool)

(declare-fun res!404355 () Bool)

(assert (=> b!626477 (=> (not res!404355) (not e!358911))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626477 (= res!404355 (and (= (size!18520 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18520 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18520 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626478 () Bool)

(declare-fun res!404357 () Bool)

(assert (=> b!626478 (=> (not res!404357) (not e!358911))))

(declare-fun arrayContainsKey!0 (array!37839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626478 (= res!404357 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626479 () Bool)

(assert (=> b!626479 (= e!358911 e!358910)))

(declare-fun res!404356 () Bool)

(assert (=> b!626479 (=> (not res!404356) (not e!358910))))

(declare-fun lt!290076 () SeekEntryResult!6603)

(assert (=> b!626479 (= res!404356 (or (= lt!290076 (MissingZero!6603 i!1108)) (= lt!290076 (MissingVacant!6603 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37839 (_ BitVec 32)) SeekEntryResult!6603)

(assert (=> b!626479 (= lt!290076 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!626480 () Bool)

(declare-fun res!404358 () Bool)

(assert (=> b!626480 (=> (not res!404358) (not e!358910))))

(assert (=> b!626480 (= res!404358 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18156 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18156 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56586 res!404354) b!626477))

(assert (= (and b!626477 res!404355) b!626475))

(assert (= (and b!626475 res!404359) b!626474))

(assert (= (and b!626474 res!404353) b!626478))

(assert (= (and b!626478 res!404357) b!626479))

(assert (= (and b!626479 res!404356) b!626473))

(assert (= (and b!626473 res!404352) b!626476))

(assert (= (and b!626476 res!404360) b!626480))

(assert (= (and b!626480 res!404358) b!626472))

(declare-fun m!601899 () Bool)

(assert (=> b!626478 m!601899))

(declare-fun m!601901 () Bool)

(assert (=> b!626475 m!601901))

(assert (=> b!626475 m!601901))

(declare-fun m!601903 () Bool)

(assert (=> b!626475 m!601903))

(declare-fun m!601905 () Bool)

(assert (=> b!626480 m!601905))

(declare-fun m!601907 () Bool)

(assert (=> b!626480 m!601907))

(declare-fun m!601909 () Bool)

(assert (=> b!626480 m!601909))

(declare-fun m!601911 () Bool)

(assert (=> b!626474 m!601911))

(declare-fun m!601913 () Bool)

(assert (=> start!56586 m!601913))

(declare-fun m!601915 () Bool)

(assert (=> start!56586 m!601915))

(assert (=> b!626472 m!601901))

(assert (=> b!626472 m!601901))

(declare-fun m!601917 () Bool)

(assert (=> b!626472 m!601917))

(declare-fun m!601919 () Bool)

(assert (=> b!626476 m!601919))

(declare-fun m!601921 () Bool)

(assert (=> b!626479 m!601921))

(declare-fun m!601923 () Bool)

(assert (=> b!626473 m!601923))

(push 1)

