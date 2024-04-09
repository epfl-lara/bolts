; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56592 () Bool)

(assert start!56592)

(declare-fun b!626553 () Bool)

(declare-fun res!404439 () Bool)

(declare-fun e!358938 () Bool)

(assert (=> b!626553 (=> (not res!404439) (not e!358938))))

(declare-datatypes ((array!37845 0))(
  ( (array!37846 (arr!18159 (Array (_ BitVec 32) (_ BitVec 64))) (size!18523 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37845)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37845 (_ BitVec 32)) Bool)

(assert (=> b!626553 (= res!404439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626554 () Bool)

(declare-fun res!404433 () Bool)

(assert (=> b!626554 (=> (not res!404433) (not e!358938))))

(declare-datatypes ((List!12253 0))(
  ( (Nil!12250) (Cons!12249 (h!13294 (_ BitVec 64)) (t!18489 List!12253)) )
))
(declare-fun arrayNoDuplicates!0 (array!37845 (_ BitVec 32) List!12253) Bool)

(assert (=> b!626554 (= res!404433 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12250))))

(declare-fun b!626555 () Bool)

(assert (=> b!626555 (= e!358938 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6606 0))(
  ( (MissingZero!6606 (index!28707 (_ BitVec 32))) (Found!6606 (index!28708 (_ BitVec 32))) (Intermediate!6606 (undefined!7418 Bool) (index!28709 (_ BitVec 32)) (x!57483 (_ BitVec 32))) (Undefined!6606) (MissingVacant!6606 (index!28710 (_ BitVec 32))) )
))
(declare-fun lt!290093 () SeekEntryResult!6606)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37845 (_ BitVec 32)) SeekEntryResult!6606)

(assert (=> b!626555 (= lt!290093 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18159 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626556 () Bool)

(declare-fun res!404437 () Bool)

(declare-fun e!358939 () Bool)

(assert (=> b!626556 (=> (not res!404437) (not e!358939))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626556 (= res!404437 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626557 () Bool)

(declare-fun res!404435 () Bool)

(assert (=> b!626557 (=> (not res!404435) (not e!358938))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!626557 (= res!404435 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18159 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18159 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626558 () Bool)

(declare-fun res!404434 () Bool)

(assert (=> b!626558 (=> (not res!404434) (not e!358939))))

(assert (=> b!626558 (= res!404434 (and (= (size!18523 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18523 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18523 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626559 () Bool)

(declare-fun res!404436 () Bool)

(assert (=> b!626559 (=> (not res!404436) (not e!358939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626559 (= res!404436 (validKeyInArray!0 k!1786))))

(declare-fun b!626560 () Bool)

(declare-fun res!404440 () Bool)

(assert (=> b!626560 (=> (not res!404440) (not e!358939))))

(assert (=> b!626560 (= res!404440 (validKeyInArray!0 (select (arr!18159 a!2986) j!136)))))

(declare-fun res!404438 () Bool)

(assert (=> start!56592 (=> (not res!404438) (not e!358939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56592 (= res!404438 (validMask!0 mask!3053))))

(assert (=> start!56592 e!358939))

(assert (=> start!56592 true))

(declare-fun array_inv!13933 (array!37845) Bool)

(assert (=> start!56592 (array_inv!13933 a!2986)))

(declare-fun b!626561 () Bool)

(assert (=> b!626561 (= e!358939 e!358938)))

(declare-fun res!404441 () Bool)

(assert (=> b!626561 (=> (not res!404441) (not e!358938))))

(declare-fun lt!290094 () SeekEntryResult!6606)

(assert (=> b!626561 (= res!404441 (or (= lt!290094 (MissingZero!6606 i!1108)) (= lt!290094 (MissingVacant!6606 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37845 (_ BitVec 32)) SeekEntryResult!6606)

(assert (=> b!626561 (= lt!290094 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56592 res!404438) b!626558))

(assert (= (and b!626558 res!404434) b!626560))

(assert (= (and b!626560 res!404440) b!626559))

(assert (= (and b!626559 res!404436) b!626556))

(assert (= (and b!626556 res!404437) b!626561))

(assert (= (and b!626561 res!404441) b!626553))

(assert (= (and b!626553 res!404439) b!626554))

(assert (= (and b!626554 res!404433) b!626557))

(assert (= (and b!626557 res!404435) b!626555))

(declare-fun m!601977 () Bool)

(assert (=> b!626553 m!601977))

(declare-fun m!601979 () Bool)

(assert (=> b!626555 m!601979))

(assert (=> b!626555 m!601979))

(declare-fun m!601981 () Bool)

(assert (=> b!626555 m!601981))

(declare-fun m!601983 () Bool)

(assert (=> b!626561 m!601983))

(assert (=> b!626560 m!601979))

(assert (=> b!626560 m!601979))

(declare-fun m!601985 () Bool)

(assert (=> b!626560 m!601985))

(declare-fun m!601987 () Bool)

(assert (=> b!626556 m!601987))

(declare-fun m!601989 () Bool)

(assert (=> start!56592 m!601989))

(declare-fun m!601991 () Bool)

(assert (=> start!56592 m!601991))

(declare-fun m!601993 () Bool)

(assert (=> b!626559 m!601993))

(declare-fun m!601995 () Bool)

(assert (=> b!626554 m!601995))

(declare-fun m!601997 () Bool)

(assert (=> b!626557 m!601997))

(declare-fun m!601999 () Bool)

(assert (=> b!626557 m!601999))

(declare-fun m!602001 () Bool)

(assert (=> b!626557 m!602001))

(push 1)

