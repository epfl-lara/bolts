; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53354 () Bool)

(assert start!53354)

(declare-fun b!579855 () Bool)

(declare-fun res!367829 () Bool)

(declare-fun e!333097 () Bool)

(assert (=> b!579855 (=> (not res!367829) (not e!333097))))

(declare-datatypes ((array!36209 0))(
  ( (array!36210 (arr!17375 (Array (_ BitVec 32) (_ BitVec 64))) (size!17739 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36209)

(declare-datatypes ((List!11469 0))(
  ( (Nil!11466) (Cons!11465 (h!12510 (_ BitVec 64)) (t!17705 List!11469)) )
))
(declare-fun arrayNoDuplicates!0 (array!36209 (_ BitVec 32) List!11469) Bool)

(assert (=> b!579855 (= res!367829 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11466))))

(declare-fun b!579856 () Bool)

(declare-fun res!367823 () Bool)

(declare-fun e!333096 () Bool)

(assert (=> b!579856 (=> (not res!367823) (not e!333096))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579856 (= res!367823 (validKeyInArray!0 k!1786))))

(declare-fun b!579857 () Bool)

(declare-fun res!367826 () Bool)

(assert (=> b!579857 (=> (not res!367826) (not e!333096))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579857 (= res!367826 (and (= (size!17739 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17739 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17739 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579858 () Bool)

(declare-fun res!367828 () Bool)

(assert (=> b!579858 (=> (not res!367828) (not e!333097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36209 (_ BitVec 32)) Bool)

(assert (=> b!579858 (= res!367828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!367827 () Bool)

(assert (=> start!53354 (=> (not res!367827) (not e!333096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53354 (= res!367827 (validMask!0 mask!3053))))

(assert (=> start!53354 e!333096))

(assert (=> start!53354 true))

(declare-fun array_inv!13149 (array!36209) Bool)

(assert (=> start!53354 (array_inv!13149 a!2986)))

(declare-fun b!579859 () Bool)

(declare-fun res!367821 () Bool)

(assert (=> b!579859 (=> (not res!367821) (not e!333096))))

(assert (=> b!579859 (= res!367821 (validKeyInArray!0 (select (arr!17375 a!2986) j!136)))))

(declare-fun b!579860 () Bool)

(assert (=> b!579860 (= e!333097 false)))

(declare-datatypes ((SeekEntryResult!5822 0))(
  ( (MissingZero!5822 (index!25515 (_ BitVec 32))) (Found!5822 (index!25516 (_ BitVec 32))) (Intermediate!5822 (undefined!6634 Bool) (index!25517 (_ BitVec 32)) (x!54422 (_ BitVec 32))) (Undefined!5822) (MissingVacant!5822 (index!25518 (_ BitVec 32))) )
))
(declare-fun lt!264581 () SeekEntryResult!5822)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36209 (_ BitVec 32)) SeekEntryResult!5822)

(assert (=> b!579860 (= lt!264581 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17375 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579861 () Bool)

(declare-fun res!367824 () Bool)

(assert (=> b!579861 (=> (not res!367824) (not e!333097))))

(assert (=> b!579861 (= res!367824 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17375 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17375 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579862 () Bool)

(assert (=> b!579862 (= e!333096 e!333097)))

(declare-fun res!367822 () Bool)

(assert (=> b!579862 (=> (not res!367822) (not e!333097))))

(declare-fun lt!264580 () SeekEntryResult!5822)

(assert (=> b!579862 (= res!367822 (or (= lt!264580 (MissingZero!5822 i!1108)) (= lt!264580 (MissingVacant!5822 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36209 (_ BitVec 32)) SeekEntryResult!5822)

(assert (=> b!579862 (= lt!264580 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579863 () Bool)

(declare-fun res!367825 () Bool)

(assert (=> b!579863 (=> (not res!367825) (not e!333096))))

(declare-fun arrayContainsKey!0 (array!36209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579863 (= res!367825 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53354 res!367827) b!579857))

(assert (= (and b!579857 res!367826) b!579859))

(assert (= (and b!579859 res!367821) b!579856))

(assert (= (and b!579856 res!367823) b!579863))

(assert (= (and b!579863 res!367825) b!579862))

(assert (= (and b!579862 res!367822) b!579858))

(assert (= (and b!579858 res!367828) b!579855))

(assert (= (and b!579855 res!367829) b!579861))

(assert (= (and b!579861 res!367824) b!579860))

(declare-fun m!558503 () Bool)

(assert (=> b!579862 m!558503))

(declare-fun m!558505 () Bool)

(assert (=> b!579859 m!558505))

(assert (=> b!579859 m!558505))

(declare-fun m!558507 () Bool)

(assert (=> b!579859 m!558507))

(declare-fun m!558509 () Bool)

(assert (=> b!579858 m!558509))

(declare-fun m!558511 () Bool)

(assert (=> b!579863 m!558511))

(declare-fun m!558513 () Bool)

(assert (=> b!579861 m!558513))

(declare-fun m!558515 () Bool)

(assert (=> b!579861 m!558515))

(declare-fun m!558517 () Bool)

(assert (=> b!579861 m!558517))

(declare-fun m!558519 () Bool)

(assert (=> b!579856 m!558519))

(declare-fun m!558521 () Bool)

(assert (=> b!579855 m!558521))

(assert (=> b!579860 m!558505))

(assert (=> b!579860 m!558505))

(declare-fun m!558523 () Bool)

(assert (=> b!579860 m!558523))

(declare-fun m!558525 () Bool)

(assert (=> start!53354 m!558525))

(declare-fun m!558527 () Bool)

(assert (=> start!53354 m!558527))

(push 1)

(assert (not b!579856))

(assert (not b!579860))

(assert (not b!579855))

(assert (not b!579862))

(assert (not b!579858))

(assert (not start!53354))

(assert (not b!579859))

(assert (not b!579863))

(check-sat)

