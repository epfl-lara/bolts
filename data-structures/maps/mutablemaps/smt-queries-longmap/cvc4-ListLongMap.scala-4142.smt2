; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56458 () Bool)

(assert start!56458)

(declare-fun res!403775 () Bool)

(declare-fun e!358478 () Bool)

(assert (=> start!56458 (=> (not res!403775) (not e!358478))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56458 (= res!403775 (validMask!0 mask!3053))))

(assert (=> start!56458 e!358478))

(assert (=> start!56458 true))

(declare-datatypes ((array!37801 0))(
  ( (array!37802 (arr!18140 (Array (_ BitVec 32) (_ BitVec 64))) (size!18504 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37801)

(declare-fun array_inv!13914 (array!37801) Bool)

(assert (=> start!56458 (array_inv!13914 a!2986)))

(declare-fun b!625581 () Bool)

(declare-fun res!403772 () Bool)

(declare-fun e!358479 () Bool)

(assert (=> b!625581 (=> (not res!403772) (not e!358479))))

(declare-datatypes ((List!12234 0))(
  ( (Nil!12231) (Cons!12230 (h!13275 (_ BitVec 64)) (t!18470 List!12234)) )
))
(declare-fun arrayNoDuplicates!0 (array!37801 (_ BitVec 32) List!12234) Bool)

(assert (=> b!625581 (= res!403772 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12231))))

(declare-fun b!625582 () Bool)

(assert (=> b!625582 (= e!358479 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6587 0))(
  ( (MissingZero!6587 (index!28631 (_ BitVec 32))) (Found!6587 (index!28632 (_ BitVec 32))) (Intermediate!6587 (undefined!7399 Bool) (index!28633 (_ BitVec 32)) (x!57402 (_ BitVec 32))) (Undefined!6587) (MissingVacant!6587 (index!28634 (_ BitVec 32))) )
))
(declare-fun lt!289848 () SeekEntryResult!6587)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37801 (_ BitVec 32)) SeekEntryResult!6587)

(assert (=> b!625582 (= lt!289848 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18140 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625583 () Bool)

(declare-fun res!403771 () Bool)

(assert (=> b!625583 (=> (not res!403771) (not e!358478))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625583 (= res!403771 (and (= (size!18504 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18504 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18504 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625584 () Bool)

(declare-fun res!403769 () Bool)

(assert (=> b!625584 (=> (not res!403769) (not e!358478))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625584 (= res!403769 (validKeyInArray!0 k!1786))))

(declare-fun b!625585 () Bool)

(assert (=> b!625585 (= e!358478 e!358479)))

(declare-fun res!403770 () Bool)

(assert (=> b!625585 (=> (not res!403770) (not e!358479))))

(declare-fun lt!289847 () SeekEntryResult!6587)

(assert (=> b!625585 (= res!403770 (or (= lt!289847 (MissingZero!6587 i!1108)) (= lt!289847 (MissingVacant!6587 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37801 (_ BitVec 32)) SeekEntryResult!6587)

(assert (=> b!625585 (= lt!289847 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!625586 () Bool)

(declare-fun res!403768 () Bool)

(assert (=> b!625586 (=> (not res!403768) (not e!358478))))

(declare-fun arrayContainsKey!0 (array!37801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625586 (= res!403768 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625587 () Bool)

(declare-fun res!403774 () Bool)

(assert (=> b!625587 (=> (not res!403774) (not e!358479))))

(assert (=> b!625587 (= res!403774 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18140 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18140 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625588 () Bool)

(declare-fun res!403773 () Bool)

(assert (=> b!625588 (=> (not res!403773) (not e!358479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37801 (_ BitVec 32)) Bool)

(assert (=> b!625588 (= res!403773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625589 () Bool)

(declare-fun res!403767 () Bool)

(assert (=> b!625589 (=> (not res!403767) (not e!358478))))

(assert (=> b!625589 (= res!403767 (validKeyInArray!0 (select (arr!18140 a!2986) j!136)))))

(assert (= (and start!56458 res!403775) b!625583))

(assert (= (and b!625583 res!403771) b!625589))

(assert (= (and b!625589 res!403767) b!625584))

(assert (= (and b!625584 res!403769) b!625586))

(assert (= (and b!625586 res!403768) b!625585))

(assert (= (and b!625585 res!403770) b!625588))

(assert (= (and b!625588 res!403773) b!625581))

(assert (= (and b!625581 res!403772) b!625587))

(assert (= (and b!625587 res!403774) b!625582))

(declare-fun m!601189 () Bool)

(assert (=> b!625589 m!601189))

(assert (=> b!625589 m!601189))

(declare-fun m!601191 () Bool)

(assert (=> b!625589 m!601191))

(declare-fun m!601193 () Bool)

(assert (=> b!625585 m!601193))

(declare-fun m!601195 () Bool)

(assert (=> b!625584 m!601195))

(declare-fun m!601197 () Bool)

(assert (=> b!625581 m!601197))

(assert (=> b!625582 m!601189))

(assert (=> b!625582 m!601189))

(declare-fun m!601199 () Bool)

(assert (=> b!625582 m!601199))

(declare-fun m!601201 () Bool)

(assert (=> b!625588 m!601201))

(declare-fun m!601203 () Bool)

(assert (=> b!625586 m!601203))

(declare-fun m!601205 () Bool)

(assert (=> b!625587 m!601205))

(declare-fun m!601207 () Bool)

(assert (=> b!625587 m!601207))

(declare-fun m!601209 () Bool)

(assert (=> b!625587 m!601209))

(declare-fun m!601211 () Bool)

(assert (=> start!56458 m!601211))

(declare-fun m!601213 () Bool)

(assert (=> start!56458 m!601213))

(push 1)

(assert (not b!625588))

(assert (not start!56458))

