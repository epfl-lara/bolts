; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53426 () Bool)

(assert start!53426)

(declare-fun b!580836 () Bool)

(declare-fun res!368809 () Bool)

(declare-fun e!333419 () Bool)

(assert (=> b!580836 (=> (not res!368809) (not e!333419))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580836 (= res!368809 (validKeyInArray!0 k!1786))))

(declare-fun b!580837 () Bool)

(declare-fun res!368803 () Bool)

(assert (=> b!580837 (=> (not res!368803) (not e!333419))))

(declare-datatypes ((array!36281 0))(
  ( (array!36282 (arr!17411 (Array (_ BitVec 32) (_ BitVec 64))) (size!17775 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36281)

(declare-fun arrayContainsKey!0 (array!36281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580837 (= res!368803 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580838 () Bool)

(declare-fun res!368810 () Bool)

(assert (=> b!580838 (=> (not res!368810) (not e!333419))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580838 (= res!368810 (validKeyInArray!0 (select (arr!17411 a!2986) j!136)))))

(declare-fun b!580839 () Bool)

(declare-fun res!368804 () Bool)

(declare-fun e!333420 () Bool)

(assert (=> b!580839 (=> (not res!368804) (not e!333420))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36281 (_ BitVec 32)) Bool)

(assert (=> b!580839 (= res!368804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580840 () Bool)

(assert (=> b!580840 (= e!333420 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5858 0))(
  ( (MissingZero!5858 (index!25659 (_ BitVec 32))) (Found!5858 (index!25660 (_ BitVec 32))) (Intermediate!5858 (undefined!6670 Bool) (index!25661 (_ BitVec 32)) (x!54554 (_ BitVec 32))) (Undefined!5858) (MissingVacant!5858 (index!25662 (_ BitVec 32))) )
))
(declare-fun lt!264787 () SeekEntryResult!5858)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36281 (_ BitVec 32)) SeekEntryResult!5858)

(assert (=> b!580840 (= lt!264787 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17411 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580841 () Bool)

(declare-fun res!368807 () Bool)

(assert (=> b!580841 (=> (not res!368807) (not e!333420))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580841 (= res!368807 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17411 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17411 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580842 () Bool)

(declare-fun res!368806 () Bool)

(assert (=> b!580842 (=> (not res!368806) (not e!333420))))

(declare-datatypes ((List!11505 0))(
  ( (Nil!11502) (Cons!11501 (h!12546 (_ BitVec 64)) (t!17741 List!11505)) )
))
(declare-fun arrayNoDuplicates!0 (array!36281 (_ BitVec 32) List!11505) Bool)

(assert (=> b!580842 (= res!368806 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11502))))

(declare-fun res!368808 () Bool)

(assert (=> start!53426 (=> (not res!368808) (not e!333419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53426 (= res!368808 (validMask!0 mask!3053))))

(assert (=> start!53426 e!333419))

(assert (=> start!53426 true))

(declare-fun array_inv!13185 (array!36281) Bool)

(assert (=> start!53426 (array_inv!13185 a!2986)))

(declare-fun b!580843 () Bool)

(assert (=> b!580843 (= e!333419 e!333420)))

(declare-fun res!368805 () Bool)

(assert (=> b!580843 (=> (not res!368805) (not e!333420))))

(declare-fun lt!264788 () SeekEntryResult!5858)

(assert (=> b!580843 (= res!368805 (or (= lt!264788 (MissingZero!5858 i!1108)) (= lt!264788 (MissingVacant!5858 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36281 (_ BitVec 32)) SeekEntryResult!5858)

(assert (=> b!580843 (= lt!264788 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580844 () Bool)

(declare-fun res!368802 () Bool)

(assert (=> b!580844 (=> (not res!368802) (not e!333419))))

(assert (=> b!580844 (= res!368802 (and (= (size!17775 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17775 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17775 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53426 res!368808) b!580844))

(assert (= (and b!580844 res!368802) b!580838))

(assert (= (and b!580838 res!368810) b!580836))

(assert (= (and b!580836 res!368809) b!580837))

(assert (= (and b!580837 res!368803) b!580843))

(assert (= (and b!580843 res!368805) b!580839))

(assert (= (and b!580839 res!368804) b!580842))

(assert (= (and b!580842 res!368806) b!580841))

(assert (= (and b!580841 res!368807) b!580840))

(declare-fun m!559445 () Bool)

(assert (=> b!580840 m!559445))

(assert (=> b!580840 m!559445))

(declare-fun m!559447 () Bool)

(assert (=> b!580840 m!559447))

(declare-fun m!559449 () Bool)

(assert (=> b!580839 m!559449))

(assert (=> b!580838 m!559445))

(assert (=> b!580838 m!559445))

(declare-fun m!559451 () Bool)

(assert (=> b!580838 m!559451))

(declare-fun m!559453 () Bool)

(assert (=> b!580842 m!559453))

(declare-fun m!559455 () Bool)

(assert (=> b!580841 m!559455))

(declare-fun m!559457 () Bool)

(assert (=> b!580841 m!559457))

(declare-fun m!559459 () Bool)

(assert (=> b!580841 m!559459))

(declare-fun m!559461 () Bool)

(assert (=> start!53426 m!559461))

(declare-fun m!559463 () Bool)

(assert (=> start!53426 m!559463))

(declare-fun m!559465 () Bool)

(assert (=> b!580843 m!559465))

(declare-fun m!559467 () Bool)

(assert (=> b!580837 m!559467))

(declare-fun m!559469 () Bool)

(assert (=> b!580836 m!559469))

(push 1)

