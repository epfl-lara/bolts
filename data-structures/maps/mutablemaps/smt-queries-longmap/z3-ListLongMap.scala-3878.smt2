; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53298 () Bool)

(assert start!53298)

(declare-fun b!579099 () Bool)

(declare-fun e!332845 () Bool)

(declare-fun e!332843 () Bool)

(assert (=> b!579099 (= e!332845 e!332843)))

(declare-fun res!367067 () Bool)

(assert (=> b!579099 (=> (not res!367067) (not e!332843))))

(declare-datatypes ((SeekEntryResult!5794 0))(
  ( (MissingZero!5794 (index!25403 (_ BitVec 32))) (Found!5794 (index!25404 (_ BitVec 32))) (Intermediate!5794 (undefined!6606 Bool) (index!25405 (_ BitVec 32)) (x!54322 (_ BitVec 32))) (Undefined!5794) (MissingVacant!5794 (index!25406 (_ BitVec 32))) )
))
(declare-fun lt!264413 () SeekEntryResult!5794)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579099 (= res!367067 (or (= lt!264413 (MissingZero!5794 i!1108)) (= lt!264413 (MissingVacant!5794 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36153 0))(
  ( (array!36154 (arr!17347 (Array (_ BitVec 32) (_ BitVec 64))) (size!17711 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36153)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36153 (_ BitVec 32)) SeekEntryResult!5794)

(assert (=> b!579099 (= lt!264413 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!579100 () Bool)

(declare-fun res!367072 () Bool)

(assert (=> b!579100 (=> (not res!367072) (not e!332843))))

(declare-datatypes ((List!11441 0))(
  ( (Nil!11438) (Cons!11437 (h!12482 (_ BitVec 64)) (t!17677 List!11441)) )
))
(declare-fun arrayNoDuplicates!0 (array!36153 (_ BitVec 32) List!11441) Bool)

(assert (=> b!579100 (= res!367072 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11438))))

(declare-fun b!579101 () Bool)

(declare-fun res!367073 () Bool)

(assert (=> b!579101 (=> (not res!367073) (not e!332845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579101 (= res!367073 (validKeyInArray!0 k0!1786))))

(declare-fun b!579102 () Bool)

(declare-fun res!367068 () Bool)

(assert (=> b!579102 (=> (not res!367068) (not e!332843))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579102 (= res!367068 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17347 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17347 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579103 () Bool)

(declare-fun res!367065 () Bool)

(assert (=> b!579103 (=> (not res!367065) (not e!332845))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579103 (= res!367065 (and (= (size!17711 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17711 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17711 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579104 () Bool)

(declare-fun res!367070 () Bool)

(assert (=> b!579104 (=> (not res!367070) (not e!332845))))

(assert (=> b!579104 (= res!367070 (validKeyInArray!0 (select (arr!17347 a!2986) j!136)))))

(declare-fun b!579105 () Bool)

(declare-fun res!367066 () Bool)

(assert (=> b!579105 (=> (not res!367066) (not e!332845))))

(declare-fun arrayContainsKey!0 (array!36153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579105 (= res!367066 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579106 () Bool)

(assert (=> b!579106 (= e!332843 false)))

(declare-fun lt!264412 () SeekEntryResult!5794)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36153 (_ BitVec 32)) SeekEntryResult!5794)

(assert (=> b!579106 (= lt!264412 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17347 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!367071 () Bool)

(assert (=> start!53298 (=> (not res!367071) (not e!332845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53298 (= res!367071 (validMask!0 mask!3053))))

(assert (=> start!53298 e!332845))

(assert (=> start!53298 true))

(declare-fun array_inv!13121 (array!36153) Bool)

(assert (=> start!53298 (array_inv!13121 a!2986)))

(declare-fun b!579107 () Bool)

(declare-fun res!367069 () Bool)

(assert (=> b!579107 (=> (not res!367069) (not e!332843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36153 (_ BitVec 32)) Bool)

(assert (=> b!579107 (= res!367069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53298 res!367071) b!579103))

(assert (= (and b!579103 res!367065) b!579104))

(assert (= (and b!579104 res!367070) b!579101))

(assert (= (and b!579101 res!367073) b!579105))

(assert (= (and b!579105 res!367066) b!579099))

(assert (= (and b!579099 res!367067) b!579107))

(assert (= (and b!579107 res!367069) b!579100))

(assert (= (and b!579100 res!367072) b!579102))

(assert (= (and b!579102 res!367068) b!579106))

(declare-fun m!557775 () Bool)

(assert (=> b!579101 m!557775))

(declare-fun m!557777 () Bool)

(assert (=> b!579104 m!557777))

(assert (=> b!579104 m!557777))

(declare-fun m!557779 () Bool)

(assert (=> b!579104 m!557779))

(declare-fun m!557781 () Bool)

(assert (=> b!579099 m!557781))

(declare-fun m!557783 () Bool)

(assert (=> b!579100 m!557783))

(declare-fun m!557785 () Bool)

(assert (=> start!53298 m!557785))

(declare-fun m!557787 () Bool)

(assert (=> start!53298 m!557787))

(declare-fun m!557789 () Bool)

(assert (=> b!579105 m!557789))

(declare-fun m!557791 () Bool)

(assert (=> b!579107 m!557791))

(assert (=> b!579106 m!557777))

(assert (=> b!579106 m!557777))

(declare-fun m!557793 () Bool)

(assert (=> b!579106 m!557793))

(declare-fun m!557795 () Bool)

(assert (=> b!579102 m!557795))

(declare-fun m!557797 () Bool)

(assert (=> b!579102 m!557797))

(declare-fun m!557799 () Bool)

(assert (=> b!579102 m!557799))

(check-sat (not b!579104) (not b!579107) (not b!579099) (not b!579101) (not b!579106) (not start!53298) (not b!579100) (not b!579105))
(check-sat)
