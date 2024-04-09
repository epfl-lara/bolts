; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56416 () Bool)

(assert start!56416)

(declare-fun b!625005 () Bool)

(declare-fun res!403197 () Bool)

(declare-fun e!358289 () Bool)

(assert (=> b!625005 (=> (not res!403197) (not e!358289))))

(declare-datatypes ((array!37759 0))(
  ( (array!37760 (arr!18119 (Array (_ BitVec 32) (_ BitVec 64))) (size!18483 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37759)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37759 (_ BitVec 32)) Bool)

(assert (=> b!625005 (= res!403197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625006 () Bool)

(declare-fun res!403198 () Bool)

(declare-fun e!358290 () Bool)

(assert (=> b!625006 (=> (not res!403198) (not e!358290))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625006 (= res!403198 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625007 () Bool)

(assert (=> b!625007 (= e!358289 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6566 0))(
  ( (MissingZero!6566 (index!28547 (_ BitVec 32))) (Found!6566 (index!28548 (_ BitVec 32))) (Intermediate!6566 (undefined!7378 Bool) (index!28549 (_ BitVec 32)) (x!57325 (_ BitVec 32))) (Undefined!6566) (MissingVacant!6566 (index!28550 (_ BitVec 32))) )
))
(declare-fun lt!289730 () SeekEntryResult!6566)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37759 (_ BitVec 32)) SeekEntryResult!6566)

(assert (=> b!625007 (= lt!289730 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18119 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625008 () Bool)

(declare-fun res!403192 () Bool)

(assert (=> b!625008 (=> (not res!403192) (not e!358289))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625008 (= res!403192 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18119 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18119 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625009 () Bool)

(declare-fun res!403191 () Bool)

(assert (=> b!625009 (=> (not res!403191) (not e!358289))))

(declare-datatypes ((List!12213 0))(
  ( (Nil!12210) (Cons!12209 (h!13254 (_ BitVec 64)) (t!18449 List!12213)) )
))
(declare-fun arrayNoDuplicates!0 (array!37759 (_ BitVec 32) List!12213) Bool)

(assert (=> b!625009 (= res!403191 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12210))))

(declare-fun b!625010 () Bool)

(declare-fun res!403195 () Bool)

(assert (=> b!625010 (=> (not res!403195) (not e!358290))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625010 (= res!403195 (validKeyInArray!0 k!1786))))

(declare-fun b!625012 () Bool)

(assert (=> b!625012 (= e!358290 e!358289)))

(declare-fun res!403196 () Bool)

(assert (=> b!625012 (=> (not res!403196) (not e!358289))))

(declare-fun lt!289731 () SeekEntryResult!6566)

(assert (=> b!625012 (= res!403196 (or (= lt!289731 (MissingZero!6566 i!1108)) (= lt!289731 (MissingVacant!6566 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37759 (_ BitVec 32)) SeekEntryResult!6566)

(assert (=> b!625012 (= lt!289731 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625013 () Bool)

(declare-fun res!403194 () Bool)

(assert (=> b!625013 (=> (not res!403194) (not e!358290))))

(assert (=> b!625013 (= res!403194 (and (= (size!18483 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18483 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18483 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!403193 () Bool)

(assert (=> start!56416 (=> (not res!403193) (not e!358290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56416 (= res!403193 (validMask!0 mask!3053))))

(assert (=> start!56416 e!358290))

(assert (=> start!56416 true))

(declare-fun array_inv!13893 (array!37759) Bool)

(assert (=> start!56416 (array_inv!13893 a!2986)))

(declare-fun b!625011 () Bool)

(declare-fun res!403199 () Bool)

(assert (=> b!625011 (=> (not res!403199) (not e!358290))))

(assert (=> b!625011 (= res!403199 (validKeyInArray!0 (select (arr!18119 a!2986) j!136)))))

(assert (= (and start!56416 res!403193) b!625013))

(assert (= (and b!625013 res!403194) b!625011))

(assert (= (and b!625011 res!403199) b!625010))

(assert (= (and b!625010 res!403195) b!625006))

(assert (= (and b!625006 res!403198) b!625012))

(assert (= (and b!625012 res!403196) b!625005))

(assert (= (and b!625005 res!403197) b!625009))

(assert (= (and b!625009 res!403191) b!625008))

(assert (= (and b!625008 res!403192) b!625007))

(declare-fun m!600643 () Bool)

(assert (=> start!56416 m!600643))

(declare-fun m!600645 () Bool)

(assert (=> start!56416 m!600645))

(declare-fun m!600647 () Bool)

(assert (=> b!625010 m!600647))

(declare-fun m!600649 () Bool)

(assert (=> b!625005 m!600649))

(declare-fun m!600651 () Bool)

(assert (=> b!625008 m!600651))

(declare-fun m!600653 () Bool)

(assert (=> b!625008 m!600653))

(declare-fun m!600655 () Bool)

(assert (=> b!625008 m!600655))

(declare-fun m!600657 () Bool)

(assert (=> b!625009 m!600657))

(declare-fun m!600659 () Bool)

(assert (=> b!625011 m!600659))

(assert (=> b!625011 m!600659))

(declare-fun m!600661 () Bool)

(assert (=> b!625011 m!600661))

(declare-fun m!600663 () Bool)

(assert (=> b!625012 m!600663))

(assert (=> b!625007 m!600659))

(assert (=> b!625007 m!600659))

(declare-fun m!600665 () Bool)

(assert (=> b!625007 m!600665))

(declare-fun m!600667 () Bool)

(assert (=> b!625006 m!600667))

(push 1)

(assert (not b!625011))

(assert (not b!625006))

(assert (not b!625007))

