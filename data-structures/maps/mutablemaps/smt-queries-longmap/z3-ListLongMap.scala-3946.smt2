; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53706 () Bool)

(assert start!53706)

(declare-fun b!585099 () Bool)

(declare-fun e!334829 () Bool)

(assert (=> b!585099 (= e!334829 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265750 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36561 0))(
  ( (array!36562 (arr!17551 (Array (_ BitVec 32) (_ BitVec 64))) (size!17915 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36561)

(declare-datatypes ((SeekEntryResult!5998 0))(
  ( (MissingZero!5998 (index!26219 (_ BitVec 32))) (Found!5998 (index!26220 (_ BitVec 32))) (Intermediate!5998 (undefined!6810 Bool) (index!26221 (_ BitVec 32)) (x!55070 (_ BitVec 32))) (Undefined!5998) (MissingVacant!5998 (index!26222 (_ BitVec 32))) )
))
(declare-fun lt!265751 () SeekEntryResult!5998)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36561 (_ BitVec 32)) SeekEntryResult!5998)

(assert (=> b!585099 (= lt!265751 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265750 vacantSpotIndex!68 (select (arr!17551 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585100 () Bool)

(declare-fun res!373066 () Bool)

(declare-fun e!334830 () Bool)

(assert (=> b!585100 (=> (not res!373066) (not e!334830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585100 (= res!373066 (validKeyInArray!0 (select (arr!17551 a!2986) j!136)))))

(declare-fun res!373071 () Bool)

(assert (=> start!53706 (=> (not res!373071) (not e!334830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53706 (= res!373071 (validMask!0 mask!3053))))

(assert (=> start!53706 e!334830))

(assert (=> start!53706 true))

(declare-fun array_inv!13325 (array!36561) Bool)

(assert (=> start!53706 (array_inv!13325 a!2986)))

(declare-fun b!585101 () Bool)

(declare-fun res!373075 () Bool)

(declare-fun e!334828 () Bool)

(assert (=> b!585101 (=> (not res!373075) (not e!334828))))

(declare-datatypes ((List!11645 0))(
  ( (Nil!11642) (Cons!11641 (h!12686 (_ BitVec 64)) (t!17881 List!11645)) )
))
(declare-fun arrayNoDuplicates!0 (array!36561 (_ BitVec 32) List!11645) Bool)

(assert (=> b!585101 (= res!373075 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11642))))

(declare-fun b!585102 () Bool)

(assert (=> b!585102 (= e!334828 e!334829)))

(declare-fun res!373067 () Bool)

(assert (=> b!585102 (=> (not res!373067) (not e!334829))))

(assert (=> b!585102 (= res!373067 (and (bvsge lt!265750 #b00000000000000000000000000000000) (bvslt lt!265750 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585102 (= lt!265750 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585103 () Bool)

(declare-fun res!373069 () Bool)

(assert (=> b!585103 (=> (not res!373069) (not e!334828))))

(assert (=> b!585103 (= res!373069 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17551 a!2986) index!984) (select (arr!17551 a!2986) j!136))) (not (= (select (arr!17551 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585104 () Bool)

(assert (=> b!585104 (= e!334830 e!334828)))

(declare-fun res!373072 () Bool)

(assert (=> b!585104 (=> (not res!373072) (not e!334828))))

(declare-fun lt!265749 () SeekEntryResult!5998)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585104 (= res!373072 (or (= lt!265749 (MissingZero!5998 i!1108)) (= lt!265749 (MissingVacant!5998 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36561 (_ BitVec 32)) SeekEntryResult!5998)

(assert (=> b!585104 (= lt!265749 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585105 () Bool)

(declare-fun res!373076 () Bool)

(assert (=> b!585105 (=> (not res!373076) (not e!334830))))

(assert (=> b!585105 (= res!373076 (validKeyInArray!0 k0!1786))))

(declare-fun b!585106 () Bool)

(declare-fun res!373068 () Bool)

(assert (=> b!585106 (=> (not res!373068) (not e!334828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36561 (_ BitVec 32)) Bool)

(assert (=> b!585106 (= res!373068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585107 () Bool)

(declare-fun res!373073 () Bool)

(assert (=> b!585107 (=> (not res!373073) (not e!334828))))

(assert (=> b!585107 (= res!373073 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17551 a!2986) j!136) a!2986 mask!3053) (Found!5998 j!136)))))

(declare-fun b!585108 () Bool)

(declare-fun res!373065 () Bool)

(assert (=> b!585108 (=> (not res!373065) (not e!334830))))

(declare-fun arrayContainsKey!0 (array!36561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585108 (= res!373065 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585109 () Bool)

(declare-fun res!373070 () Bool)

(assert (=> b!585109 (=> (not res!373070) (not e!334828))))

(assert (=> b!585109 (= res!373070 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17551 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17551 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585110 () Bool)

(declare-fun res!373074 () Bool)

(assert (=> b!585110 (=> (not res!373074) (not e!334830))))

(assert (=> b!585110 (= res!373074 (and (= (size!17915 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17915 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17915 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53706 res!373071) b!585110))

(assert (= (and b!585110 res!373074) b!585100))

(assert (= (and b!585100 res!373066) b!585105))

(assert (= (and b!585105 res!373076) b!585108))

(assert (= (and b!585108 res!373065) b!585104))

(assert (= (and b!585104 res!373072) b!585106))

(assert (= (and b!585106 res!373068) b!585101))

(assert (= (and b!585101 res!373075) b!585109))

(assert (= (and b!585109 res!373070) b!585107))

(assert (= (and b!585107 res!373073) b!585103))

(assert (= (and b!585103 res!373069) b!585102))

(assert (= (and b!585102 res!373067) b!585099))

(declare-fun m!563409 () Bool)

(assert (=> start!53706 m!563409))

(declare-fun m!563411 () Bool)

(assert (=> start!53706 m!563411))

(declare-fun m!563413 () Bool)

(assert (=> b!585108 m!563413))

(declare-fun m!563415 () Bool)

(assert (=> b!585104 m!563415))

(declare-fun m!563417 () Bool)

(assert (=> b!585107 m!563417))

(assert (=> b!585107 m!563417))

(declare-fun m!563419 () Bool)

(assert (=> b!585107 m!563419))

(declare-fun m!563421 () Bool)

(assert (=> b!585101 m!563421))

(declare-fun m!563423 () Bool)

(assert (=> b!585109 m!563423))

(declare-fun m!563425 () Bool)

(assert (=> b!585109 m!563425))

(declare-fun m!563427 () Bool)

(assert (=> b!585109 m!563427))

(declare-fun m!563429 () Bool)

(assert (=> b!585106 m!563429))

(assert (=> b!585099 m!563417))

(assert (=> b!585099 m!563417))

(declare-fun m!563431 () Bool)

(assert (=> b!585099 m!563431))

(declare-fun m!563433 () Bool)

(assert (=> b!585103 m!563433))

(assert (=> b!585103 m!563417))

(declare-fun m!563435 () Bool)

(assert (=> b!585105 m!563435))

(declare-fun m!563437 () Bool)

(assert (=> b!585102 m!563437))

(assert (=> b!585100 m!563417))

(assert (=> b!585100 m!563417))

(declare-fun m!563439 () Bool)

(assert (=> b!585100 m!563439))

(check-sat (not b!585100) (not b!585102) (not b!585099) (not start!53706) (not b!585107) (not b!585105) (not b!585108) (not b!585104) (not b!585101) (not b!585106))
(check-sat)
