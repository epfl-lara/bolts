; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56456 () Bool)

(assert start!56456)

(declare-fun b!625554 () Bool)

(declare-fun res!403741 () Bool)

(declare-fun e!358471 () Bool)

(assert (=> b!625554 (=> (not res!403741) (not e!358471))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37799 0))(
  ( (array!37800 (arr!18139 (Array (_ BitVec 32) (_ BitVec 64))) (size!18503 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37799)

(assert (=> b!625554 (= res!403741 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18139 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18139 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!403743 () Bool)

(declare-fun e!358470 () Bool)

(assert (=> start!56456 (=> (not res!403743) (not e!358470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56456 (= res!403743 (validMask!0 mask!3053))))

(assert (=> start!56456 e!358470))

(assert (=> start!56456 true))

(declare-fun array_inv!13913 (array!37799) Bool)

(assert (=> start!56456 (array_inv!13913 a!2986)))

(declare-fun b!625555 () Bool)

(assert (=> b!625555 (= e!358470 e!358471)))

(declare-fun res!403744 () Bool)

(assert (=> b!625555 (=> (not res!403744) (not e!358471))))

(declare-datatypes ((SeekEntryResult!6586 0))(
  ( (MissingZero!6586 (index!28627 (_ BitVec 32))) (Found!6586 (index!28628 (_ BitVec 32))) (Intermediate!6586 (undefined!7398 Bool) (index!28629 (_ BitVec 32)) (x!57401 (_ BitVec 32))) (Undefined!6586) (MissingVacant!6586 (index!28630 (_ BitVec 32))) )
))
(declare-fun lt!289841 () SeekEntryResult!6586)

(assert (=> b!625555 (= res!403744 (or (= lt!289841 (MissingZero!6586 i!1108)) (= lt!289841 (MissingVacant!6586 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37799 (_ BitVec 32)) SeekEntryResult!6586)

(assert (=> b!625555 (= lt!289841 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625556 () Bool)

(declare-fun res!403747 () Bool)

(assert (=> b!625556 (=> (not res!403747) (not e!358471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37799 (_ BitVec 32)) Bool)

(assert (=> b!625556 (= res!403747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625557 () Bool)

(declare-fun res!403742 () Bool)

(assert (=> b!625557 (=> (not res!403742) (not e!358471))))

(declare-datatypes ((List!12233 0))(
  ( (Nil!12230) (Cons!12229 (h!13274 (_ BitVec 64)) (t!18469 List!12233)) )
))
(declare-fun arrayNoDuplicates!0 (array!37799 (_ BitVec 32) List!12233) Bool)

(assert (=> b!625557 (= res!403742 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12230))))

(declare-fun b!625558 () Bool)

(declare-fun res!403746 () Bool)

(assert (=> b!625558 (=> (not res!403746) (not e!358470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625558 (= res!403746 (validKeyInArray!0 k0!1786))))

(declare-fun b!625559 () Bool)

(declare-fun res!403748 () Bool)

(assert (=> b!625559 (=> (not res!403748) (not e!358470))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625559 (= res!403748 (validKeyInArray!0 (select (arr!18139 a!2986) j!136)))))

(declare-fun b!625560 () Bool)

(assert (=> b!625560 (= e!358471 false)))

(declare-fun lt!289842 () SeekEntryResult!6586)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37799 (_ BitVec 32)) SeekEntryResult!6586)

(assert (=> b!625560 (= lt!289842 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18139 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625561 () Bool)

(declare-fun res!403745 () Bool)

(assert (=> b!625561 (=> (not res!403745) (not e!358470))))

(assert (=> b!625561 (= res!403745 (and (= (size!18503 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18503 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18503 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625562 () Bool)

(declare-fun res!403740 () Bool)

(assert (=> b!625562 (=> (not res!403740) (not e!358470))))

(declare-fun arrayContainsKey!0 (array!37799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625562 (= res!403740 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56456 res!403743) b!625561))

(assert (= (and b!625561 res!403745) b!625559))

(assert (= (and b!625559 res!403748) b!625558))

(assert (= (and b!625558 res!403746) b!625562))

(assert (= (and b!625562 res!403740) b!625555))

(assert (= (and b!625555 res!403744) b!625556))

(assert (= (and b!625556 res!403747) b!625557))

(assert (= (and b!625557 res!403742) b!625554))

(assert (= (and b!625554 res!403741) b!625560))

(declare-fun m!601163 () Bool)

(assert (=> b!625554 m!601163))

(declare-fun m!601165 () Bool)

(assert (=> b!625554 m!601165))

(declare-fun m!601167 () Bool)

(assert (=> b!625554 m!601167))

(declare-fun m!601169 () Bool)

(assert (=> b!625555 m!601169))

(declare-fun m!601171 () Bool)

(assert (=> b!625562 m!601171))

(declare-fun m!601173 () Bool)

(assert (=> b!625560 m!601173))

(assert (=> b!625560 m!601173))

(declare-fun m!601175 () Bool)

(assert (=> b!625560 m!601175))

(declare-fun m!601177 () Bool)

(assert (=> b!625556 m!601177))

(declare-fun m!601179 () Bool)

(assert (=> start!56456 m!601179))

(declare-fun m!601181 () Bool)

(assert (=> start!56456 m!601181))

(declare-fun m!601183 () Bool)

(assert (=> b!625557 m!601183))

(declare-fun m!601185 () Bool)

(assert (=> b!625558 m!601185))

(assert (=> b!625559 m!601173))

(assert (=> b!625559 m!601173))

(declare-fun m!601187 () Bool)

(assert (=> b!625559 m!601187))

(check-sat (not b!625557) (not b!625556) (not b!625560) (not b!625558) (not b!625562) (not b!625555) (not start!56456) (not b!625559))
(check-sat)
