; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53708 () Bool)

(assert start!53708)

(declare-fun res!373111 () Bool)

(declare-fun e!334841 () Bool)

(assert (=> start!53708 (=> (not res!373111) (not e!334841))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53708 (= res!373111 (validMask!0 mask!3053))))

(assert (=> start!53708 e!334841))

(assert (=> start!53708 true))

(declare-datatypes ((array!36563 0))(
  ( (array!36564 (arr!17552 (Array (_ BitVec 32) (_ BitVec 64))) (size!17916 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36563)

(declare-fun array_inv!13326 (array!36563) Bool)

(assert (=> start!53708 (array_inv!13326 a!2986)))

(declare-fun b!585135 () Bool)

(declare-fun res!373108 () Bool)

(assert (=> b!585135 (=> (not res!373108) (not e!334841))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585135 (= res!373108 (and (= (size!17916 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17916 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17916 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585136 () Bool)

(declare-fun res!373104 () Bool)

(assert (=> b!585136 (=> (not res!373104) (not e!334841))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585136 (= res!373104 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585137 () Bool)

(declare-fun res!373105 () Bool)

(declare-fun e!334843 () Bool)

(assert (=> b!585137 (=> (not res!373105) (not e!334843))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585137 (= res!373105 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17552 a!2986) index!984) (select (arr!17552 a!2986) j!136))) (not (= (select (arr!17552 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585138 () Bool)

(declare-fun res!373106 () Bool)

(assert (=> b!585138 (=> (not res!373106) (not e!334843))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5999 0))(
  ( (MissingZero!5999 (index!26223 (_ BitVec 32))) (Found!5999 (index!26224 (_ BitVec 32))) (Intermediate!5999 (undefined!6811 Bool) (index!26225 (_ BitVec 32)) (x!55071 (_ BitVec 32))) (Undefined!5999) (MissingVacant!5999 (index!26226 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36563 (_ BitVec 32)) SeekEntryResult!5999)

(assert (=> b!585138 (= res!373106 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17552 a!2986) j!136) a!2986 mask!3053) (Found!5999 j!136)))))

(declare-fun b!585139 () Bool)

(declare-fun res!373112 () Bool)

(assert (=> b!585139 (=> (not res!373112) (not e!334843))))

(declare-datatypes ((List!11646 0))(
  ( (Nil!11643) (Cons!11642 (h!12687 (_ BitVec 64)) (t!17882 List!11646)) )
))
(declare-fun arrayNoDuplicates!0 (array!36563 (_ BitVec 32) List!11646) Bool)

(assert (=> b!585139 (= res!373112 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11643))))

(declare-fun b!585140 () Bool)

(declare-fun res!373107 () Bool)

(assert (=> b!585140 (=> (not res!373107) (not e!334843))))

(assert (=> b!585140 (= res!373107 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17552 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17552 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585141 () Bool)

(declare-fun res!373109 () Bool)

(assert (=> b!585141 (=> (not res!373109) (not e!334843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36563 (_ BitVec 32)) Bool)

(assert (=> b!585141 (= res!373109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585142 () Bool)

(declare-fun e!334840 () Bool)

(assert (=> b!585142 (= e!334843 e!334840)))

(declare-fun res!373101 () Bool)

(assert (=> b!585142 (=> (not res!373101) (not e!334840))))

(declare-fun lt!265759 () (_ BitVec 32))

(assert (=> b!585142 (= res!373101 (and (bvsge lt!265759 #b00000000000000000000000000000000) (bvslt lt!265759 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585142 (= lt!265759 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585143 () Bool)

(assert (=> b!585143 (= e!334840 false)))

(declare-fun lt!265758 () SeekEntryResult!5999)

(assert (=> b!585143 (= lt!265758 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265759 vacantSpotIndex!68 (select (arr!17552 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585144 () Bool)

(assert (=> b!585144 (= e!334841 e!334843)))

(declare-fun res!373110 () Bool)

(assert (=> b!585144 (=> (not res!373110) (not e!334843))))

(declare-fun lt!265760 () SeekEntryResult!5999)

(assert (=> b!585144 (= res!373110 (or (= lt!265760 (MissingZero!5999 i!1108)) (= lt!265760 (MissingVacant!5999 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36563 (_ BitVec 32)) SeekEntryResult!5999)

(assert (=> b!585144 (= lt!265760 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!585145 () Bool)

(declare-fun res!373103 () Bool)

(assert (=> b!585145 (=> (not res!373103) (not e!334841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585145 (= res!373103 (validKeyInArray!0 (select (arr!17552 a!2986) j!136)))))

(declare-fun b!585146 () Bool)

(declare-fun res!373102 () Bool)

(assert (=> b!585146 (=> (not res!373102) (not e!334841))))

(assert (=> b!585146 (= res!373102 (validKeyInArray!0 k!1786))))

(assert (= (and start!53708 res!373111) b!585135))

(assert (= (and b!585135 res!373108) b!585145))

(assert (= (and b!585145 res!373103) b!585146))

(assert (= (and b!585146 res!373102) b!585136))

(assert (= (and b!585136 res!373104) b!585144))

(assert (= (and b!585144 res!373110) b!585141))

(assert (= (and b!585141 res!373109) b!585139))

(assert (= (and b!585139 res!373112) b!585140))

(assert (= (and b!585140 res!373107) b!585138))

(assert (= (and b!585138 res!373106) b!585137))

(assert (= (and b!585137 res!373105) b!585142))

(assert (= (and b!585142 res!373101) b!585143))

(declare-fun m!563441 () Bool)

(assert (=> b!585138 m!563441))

(assert (=> b!585138 m!563441))

(declare-fun m!563443 () Bool)

(assert (=> b!585138 m!563443))

(declare-fun m!563445 () Bool)

(assert (=> b!585140 m!563445))

(declare-fun m!563447 () Bool)

(assert (=> b!585140 m!563447))

(declare-fun m!563449 () Bool)

(assert (=> b!585140 m!563449))

(declare-fun m!563451 () Bool)

(assert (=> b!585144 m!563451))

(declare-fun m!563453 () Bool)

(assert (=> b!585137 m!563453))

(assert (=> b!585137 m!563441))

(assert (=> b!585145 m!563441))

(assert (=> b!585145 m!563441))

(declare-fun m!563455 () Bool)

(assert (=> b!585145 m!563455))

(declare-fun m!563457 () Bool)

(assert (=> start!53708 m!563457))

(declare-fun m!563459 () Bool)

(assert (=> start!53708 m!563459))

(declare-fun m!563461 () Bool)

(assert (=> b!585146 m!563461))

(declare-fun m!563463 () Bool)

(assert (=> b!585141 m!563463))

(declare-fun m!563465 () Bool)

(assert (=> b!585136 m!563465))

(declare-fun m!563467 () Bool)

(assert (=> b!585142 m!563467))

(assert (=> b!585143 m!563441))

(assert (=> b!585143 m!563441))

(declare-fun m!563469 () Bool)

(assert (=> b!585143 m!563469))

(declare-fun m!563471 () Bool)

(assert (=> b!585139 m!563471))

(push 1)

(assert (not b!585145))

(assert (not b!585139))

(assert (not b!585142))

