; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56638 () Bool)

(assert start!56638)

(declare-fun b!627280 () Bool)

(declare-fun res!405169 () Bool)

(declare-fun e!359146 () Bool)

(assert (=> b!627280 (=> (not res!405169) (not e!359146))))

(declare-datatypes ((array!37891 0))(
  ( (array!37892 (arr!18182 (Array (_ BitVec 32) (_ BitVec 64))) (size!18546 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37891)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627280 (= res!405169 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627281 () Bool)

(declare-fun e!359145 () Bool)

(assert (=> b!627281 (= e!359145 false)))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!290232 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627281 (= lt!290232 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627282 () Bool)

(declare-fun res!405165 () Bool)

(assert (=> b!627282 (=> (not res!405165) (not e!359146))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627282 (= res!405165 (and (= (size!18546 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18546 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18546 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627283 () Bool)

(declare-fun res!405164 () Bool)

(assert (=> b!627283 (=> (not res!405164) (not e!359145))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!627283 (= res!405164 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18182 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18182 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627284 () Bool)

(declare-fun res!405170 () Bool)

(assert (=> b!627284 (=> (not res!405170) (not e!359145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37891 (_ BitVec 32)) Bool)

(assert (=> b!627284 (= res!405170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!627285 () Bool)

(declare-fun res!405160 () Bool)

(assert (=> b!627285 (=> (not res!405160) (not e!359146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627285 (= res!405160 (validKeyInArray!0 (select (arr!18182 a!2986) j!136)))))

(declare-fun b!627286 () Bool)

(declare-fun res!405161 () Bool)

(assert (=> b!627286 (=> (not res!405161) (not e!359145))))

(declare-datatypes ((List!12276 0))(
  ( (Nil!12273) (Cons!12272 (h!13317 (_ BitVec 64)) (t!18512 List!12276)) )
))
(declare-fun arrayNoDuplicates!0 (array!37891 (_ BitVec 32) List!12276) Bool)

(assert (=> b!627286 (= res!405161 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12273))))

(declare-fun res!405168 () Bool)

(assert (=> start!56638 (=> (not res!405168) (not e!359146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56638 (= res!405168 (validMask!0 mask!3053))))

(assert (=> start!56638 e!359146))

(assert (=> start!56638 true))

(declare-fun array_inv!13956 (array!37891) Bool)

(assert (=> start!56638 (array_inv!13956 a!2986)))

(declare-fun b!627287 () Bool)

(declare-fun res!405166 () Bool)

(assert (=> b!627287 (=> (not res!405166) (not e!359145))))

(assert (=> b!627287 (= res!405166 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18182 a!2986) index!984) (select (arr!18182 a!2986) j!136))) (not (= (select (arr!18182 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627288 () Bool)

(declare-fun res!405162 () Bool)

(assert (=> b!627288 (=> (not res!405162) (not e!359145))))

(declare-datatypes ((SeekEntryResult!6629 0))(
  ( (MissingZero!6629 (index!28799 (_ BitVec 32))) (Found!6629 (index!28800 (_ BitVec 32))) (Intermediate!6629 (undefined!7441 Bool) (index!28801 (_ BitVec 32)) (x!57562 (_ BitVec 32))) (Undefined!6629) (MissingVacant!6629 (index!28802 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37891 (_ BitVec 32)) SeekEntryResult!6629)

(assert (=> b!627288 (= res!405162 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18182 a!2986) j!136) a!2986 mask!3053) (Found!6629 j!136)))))

(declare-fun b!627289 () Bool)

(assert (=> b!627289 (= e!359146 e!359145)))

(declare-fun res!405163 () Bool)

(assert (=> b!627289 (=> (not res!405163) (not e!359145))))

(declare-fun lt!290231 () SeekEntryResult!6629)

(assert (=> b!627289 (= res!405163 (or (= lt!290231 (MissingZero!6629 i!1108)) (= lt!290231 (MissingVacant!6629 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37891 (_ BitVec 32)) SeekEntryResult!6629)

(assert (=> b!627289 (= lt!290231 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627290 () Bool)

(declare-fun res!405167 () Bool)

(assert (=> b!627290 (=> (not res!405167) (not e!359146))))

(assert (=> b!627290 (= res!405167 (validKeyInArray!0 k!1786))))

(assert (= (and start!56638 res!405168) b!627282))

(assert (= (and b!627282 res!405165) b!627285))

(assert (= (and b!627285 res!405160) b!627290))

(assert (= (and b!627290 res!405167) b!627280))

(assert (= (and b!627280 res!405169) b!627289))

(assert (= (and b!627289 res!405163) b!627284))

(assert (= (and b!627284 res!405170) b!627286))

(assert (= (and b!627286 res!405161) b!627283))

(assert (= (and b!627283 res!405164) b!627288))

(assert (= (and b!627288 res!405162) b!627287))

(assert (= (and b!627287 res!405166) b!627281))

(declare-fun m!602643 () Bool)

(assert (=> b!627280 m!602643))

(declare-fun m!602645 () Bool)

(assert (=> b!627284 m!602645))

(declare-fun m!602647 () Bool)

(assert (=> b!627287 m!602647))

(declare-fun m!602649 () Bool)

(assert (=> b!627287 m!602649))

(assert (=> b!627288 m!602649))

(assert (=> b!627288 m!602649))

(declare-fun m!602651 () Bool)

(assert (=> b!627288 m!602651))

(declare-fun m!602653 () Bool)

(assert (=> b!627289 m!602653))

(declare-fun m!602655 () Bool)

(assert (=> start!56638 m!602655))

(declare-fun m!602657 () Bool)

(assert (=> start!56638 m!602657))

(declare-fun m!602659 () Bool)

(assert (=> b!627283 m!602659))

(declare-fun m!602661 () Bool)

(assert (=> b!627283 m!602661))

(declare-fun m!602663 () Bool)

(assert (=> b!627283 m!602663))

(declare-fun m!602665 () Bool)

(assert (=> b!627290 m!602665))

(declare-fun m!602667 () Bool)

(assert (=> b!627281 m!602667))

(assert (=> b!627285 m!602649))

(assert (=> b!627285 m!602649))

(declare-fun m!602669 () Bool)

(assert (=> b!627285 m!602669))

(declare-fun m!602671 () Bool)

(assert (=> b!627286 m!602671))

(push 1)

(assert (not b!627290))

(assert (not b!627281))

(assert (not b!627280))

(assert (not b!627285))

(assert (not b!627286))

(assert (not b!627288))

(assert (not b!627289))

(assert (not b!627284))

(assert (not start!56638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

