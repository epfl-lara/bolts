; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53594 () Bool)

(assert start!53594)

(declare-fun b!583139 () Bool)

(declare-fun res!371114 () Bool)

(declare-fun e!334176 () Bool)

(assert (=> b!583139 (=> (not res!371114) (not e!334176))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36449 0))(
  ( (array!36450 (arr!17495 (Array (_ BitVec 32) (_ BitVec 64))) (size!17859 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36449)

(assert (=> b!583139 (= res!371114 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17495 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17495 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583140 () Bool)

(declare-fun e!334175 () Bool)

(assert (=> b!583140 (= e!334175 e!334176)))

(declare-fun res!371112 () Bool)

(assert (=> b!583140 (=> (not res!371112) (not e!334176))))

(declare-datatypes ((SeekEntryResult!5942 0))(
  ( (MissingZero!5942 (index!25995 (_ BitVec 32))) (Found!5942 (index!25996 (_ BitVec 32))) (Intermediate!5942 (undefined!6754 Bool) (index!25997 (_ BitVec 32)) (x!54862 (_ BitVec 32))) (Undefined!5942) (MissingVacant!5942 (index!25998 (_ BitVec 32))) )
))
(declare-fun lt!265265 () SeekEntryResult!5942)

(assert (=> b!583140 (= res!371112 (or (= lt!265265 (MissingZero!5942 i!1108)) (= lt!265265 (MissingVacant!5942 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36449 (_ BitVec 32)) SeekEntryResult!5942)

(assert (=> b!583140 (= lt!265265 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!371111 () Bool)

(assert (=> start!53594 (=> (not res!371111) (not e!334175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53594 (= res!371111 (validMask!0 mask!3053))))

(assert (=> start!53594 e!334175))

(assert (=> start!53594 true))

(declare-fun array_inv!13269 (array!36449) Bool)

(assert (=> start!53594 (array_inv!13269 a!2986)))

(declare-fun b!583141 () Bool)

(declare-fun res!371110 () Bool)

(assert (=> b!583141 (=> (not res!371110) (not e!334175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583141 (= res!371110 (validKeyInArray!0 k!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!583142 () Bool)

(assert (=> b!583142 (= e!334176 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17495 a!2986) index!984) (select (arr!17495 a!2986) j!136))) (not (= (select (arr!17495 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!583143 () Bool)

(declare-fun res!371113 () Bool)

(assert (=> b!583143 (=> (not res!371113) (not e!334176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36449 (_ BitVec 32)) Bool)

(assert (=> b!583143 (= res!371113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583144 () Bool)

(declare-fun res!371109 () Bool)

(assert (=> b!583144 (=> (not res!371109) (not e!334176))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36449 (_ BitVec 32)) SeekEntryResult!5942)

(assert (=> b!583144 (= res!371109 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17495 a!2986) j!136) a!2986 mask!3053) (Found!5942 j!136)))))

(declare-fun b!583145 () Bool)

(declare-fun res!371107 () Bool)

(assert (=> b!583145 (=> (not res!371107) (not e!334175))))

(assert (=> b!583145 (= res!371107 (validKeyInArray!0 (select (arr!17495 a!2986) j!136)))))

(declare-fun b!583146 () Bool)

(declare-fun res!371106 () Bool)

(assert (=> b!583146 (=> (not res!371106) (not e!334176))))

(declare-datatypes ((List!11589 0))(
  ( (Nil!11586) (Cons!11585 (h!12630 (_ BitVec 64)) (t!17825 List!11589)) )
))
(declare-fun arrayNoDuplicates!0 (array!36449 (_ BitVec 32) List!11589) Bool)

(assert (=> b!583146 (= res!371106 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11586))))

(declare-fun b!583147 () Bool)

(declare-fun res!371105 () Bool)

(assert (=> b!583147 (=> (not res!371105) (not e!334175))))

(assert (=> b!583147 (= res!371105 (and (= (size!17859 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17859 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17859 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583148 () Bool)

(declare-fun res!371108 () Bool)

(assert (=> b!583148 (=> (not res!371108) (not e!334175))))

(declare-fun arrayContainsKey!0 (array!36449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583148 (= res!371108 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53594 res!371111) b!583147))

(assert (= (and b!583147 res!371105) b!583145))

(assert (= (and b!583145 res!371107) b!583141))

(assert (= (and b!583141 res!371110) b!583148))

(assert (= (and b!583148 res!371108) b!583140))

(assert (= (and b!583140 res!371112) b!583143))

(assert (= (and b!583143 res!371113) b!583146))

(assert (= (and b!583146 res!371106) b!583139))

(assert (= (and b!583139 res!371114) b!583144))

(assert (= (and b!583144 res!371109) b!583142))

(declare-fun m!561657 () Bool)

(assert (=> b!583143 m!561657))

(declare-fun m!561659 () Bool)

(assert (=> b!583145 m!561659))

(assert (=> b!583145 m!561659))

(declare-fun m!561661 () Bool)

(assert (=> b!583145 m!561661))

(declare-fun m!561663 () Bool)

(assert (=> start!53594 m!561663))

(declare-fun m!561665 () Bool)

(assert (=> start!53594 m!561665))

(declare-fun m!561667 () Bool)

(assert (=> b!583148 m!561667))

(assert (=> b!583144 m!561659))

(assert (=> b!583144 m!561659))

(declare-fun m!561669 () Bool)

(assert (=> b!583144 m!561669))

(declare-fun m!561671 () Bool)

(assert (=> b!583140 m!561671))

(declare-fun m!561673 () Bool)

(assert (=> b!583141 m!561673))

(declare-fun m!561675 () Bool)

(assert (=> b!583142 m!561675))

(assert (=> b!583142 m!561659))

(declare-fun m!561677 () Bool)

(assert (=> b!583139 m!561677))

(declare-fun m!561679 () Bool)

(assert (=> b!583139 m!561679))

(declare-fun m!561681 () Bool)

(assert (=> b!583139 m!561681))

(declare-fun m!561683 () Bool)

(assert (=> b!583146 m!561683))

(push 1)

(assert (not b!583141))

(assert (not b!583146))

(assert (not b!583145))

