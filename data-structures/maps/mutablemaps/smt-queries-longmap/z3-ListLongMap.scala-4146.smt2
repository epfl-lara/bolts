; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56576 () Bool)

(assert start!56576)

(declare-fun b!626337 () Bool)

(declare-fun e!358865 () Bool)

(assert (=> b!626337 (= e!358865 false)))

(declare-datatypes ((SeekEntryResult!6598 0))(
  ( (MissingZero!6598 (index!28675 (_ BitVec 32))) (Found!6598 (index!28676 (_ BitVec 32))) (Intermediate!6598 (undefined!7410 Bool) (index!28677 (_ BitVec 32)) (x!57451 (_ BitVec 32))) (Undefined!6598) (MissingVacant!6598 (index!28678 (_ BitVec 32))) )
))
(declare-fun lt!290045 () SeekEntryResult!6598)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37829 0))(
  ( (array!37830 (arr!18151 (Array (_ BitVec 32) (_ BitVec 64))) (size!18515 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37829)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37829 (_ BitVec 32)) SeekEntryResult!6598)

(assert (=> b!626337 (= lt!290045 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18151 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626338 () Bool)

(declare-fun res!404218 () Bool)

(declare-fun e!358866 () Bool)

(assert (=> b!626338 (=> (not res!404218) (not e!358866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626338 (= res!404218 (validKeyInArray!0 (select (arr!18151 a!2986) j!136)))))

(declare-fun res!404222 () Bool)

(assert (=> start!56576 (=> (not res!404222) (not e!358866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56576 (= res!404222 (validMask!0 mask!3053))))

(assert (=> start!56576 e!358866))

(assert (=> start!56576 true))

(declare-fun array_inv!13925 (array!37829) Bool)

(assert (=> start!56576 (array_inv!13925 a!2986)))

(declare-fun b!626339 () Bool)

(declare-fun res!404221 () Bool)

(assert (=> b!626339 (=> (not res!404221) (not e!358865))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!626339 (= res!404221 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18151 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18151 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626340 () Bool)

(declare-fun res!404223 () Bool)

(assert (=> b!626340 (=> (not res!404223) (not e!358866))))

(assert (=> b!626340 (= res!404223 (validKeyInArray!0 k0!1786))))

(declare-fun b!626341 () Bool)

(declare-fun res!404220 () Bool)

(assert (=> b!626341 (=> (not res!404220) (not e!358865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37829 (_ BitVec 32)) Bool)

(assert (=> b!626341 (= res!404220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626342 () Bool)

(declare-fun res!404224 () Bool)

(assert (=> b!626342 (=> (not res!404224) (not e!358865))))

(declare-datatypes ((List!12245 0))(
  ( (Nil!12242) (Cons!12241 (h!13286 (_ BitVec 64)) (t!18481 List!12245)) )
))
(declare-fun arrayNoDuplicates!0 (array!37829 (_ BitVec 32) List!12245) Bool)

(assert (=> b!626342 (= res!404224 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12242))))

(declare-fun b!626343 () Bool)

(declare-fun res!404225 () Bool)

(assert (=> b!626343 (=> (not res!404225) (not e!358866))))

(assert (=> b!626343 (= res!404225 (and (= (size!18515 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18515 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18515 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626344 () Bool)

(assert (=> b!626344 (= e!358866 e!358865)))

(declare-fun res!404219 () Bool)

(assert (=> b!626344 (=> (not res!404219) (not e!358865))))

(declare-fun lt!290046 () SeekEntryResult!6598)

(assert (=> b!626344 (= res!404219 (or (= lt!290046 (MissingZero!6598 i!1108)) (= lt!290046 (MissingVacant!6598 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37829 (_ BitVec 32)) SeekEntryResult!6598)

(assert (=> b!626344 (= lt!290046 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626345 () Bool)

(declare-fun res!404217 () Bool)

(assert (=> b!626345 (=> (not res!404217) (not e!358866))))

(declare-fun arrayContainsKey!0 (array!37829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626345 (= res!404217 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56576 res!404222) b!626343))

(assert (= (and b!626343 res!404225) b!626338))

(assert (= (and b!626338 res!404218) b!626340))

(assert (= (and b!626340 res!404223) b!626345))

(assert (= (and b!626345 res!404217) b!626344))

(assert (= (and b!626344 res!404219) b!626341))

(assert (= (and b!626341 res!404220) b!626342))

(assert (= (and b!626342 res!404224) b!626339))

(assert (= (and b!626339 res!404221) b!626337))

(declare-fun m!601769 () Bool)

(assert (=> b!626342 m!601769))

(declare-fun m!601771 () Bool)

(assert (=> b!626339 m!601771))

(declare-fun m!601773 () Bool)

(assert (=> b!626339 m!601773))

(declare-fun m!601775 () Bool)

(assert (=> b!626339 m!601775))

(declare-fun m!601777 () Bool)

(assert (=> b!626341 m!601777))

(declare-fun m!601779 () Bool)

(assert (=> b!626345 m!601779))

(declare-fun m!601781 () Bool)

(assert (=> b!626337 m!601781))

(assert (=> b!626337 m!601781))

(declare-fun m!601783 () Bool)

(assert (=> b!626337 m!601783))

(declare-fun m!601785 () Bool)

(assert (=> b!626340 m!601785))

(declare-fun m!601787 () Bool)

(assert (=> b!626344 m!601787))

(declare-fun m!601789 () Bool)

(assert (=> start!56576 m!601789))

(declare-fun m!601791 () Bool)

(assert (=> start!56576 m!601791))

(assert (=> b!626338 m!601781))

(assert (=> b!626338 m!601781))

(declare-fun m!601793 () Bool)

(assert (=> b!626338 m!601793))

(check-sat (not b!626341) (not b!626344) (not start!56576) (not b!626340) (not b!626342) (not b!626338) (not b!626345) (not b!626337))
(check-sat)
