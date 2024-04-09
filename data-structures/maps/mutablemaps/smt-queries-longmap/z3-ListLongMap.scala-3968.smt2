; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53898 () Bool)

(assert start!53898)

(declare-fun res!375344 () Bool)

(declare-fun e!335606 () Bool)

(assert (=> start!53898 (=> (not res!375344) (not e!335606))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53898 (= res!375344 (validMask!0 mask!3053))))

(assert (=> start!53898 e!335606))

(assert (=> start!53898 true))

(declare-datatypes ((array!36696 0))(
  ( (array!36697 (arr!17617 (Array (_ BitVec 32) (_ BitVec 64))) (size!17981 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36696)

(declare-fun array_inv!13391 (array!36696) Bool)

(assert (=> start!53898 (array_inv!13391 a!2986)))

(declare-fun b!587551 () Bool)

(declare-fun e!335608 () Bool)

(assert (=> b!587551 (= e!335606 e!335608)))

(declare-fun res!375338 () Bool)

(assert (=> b!587551 (=> (not res!375338) (not e!335608))))

(declare-datatypes ((SeekEntryResult!6064 0))(
  ( (MissingZero!6064 (index!26486 (_ BitVec 32))) (Found!6064 (index!26487 (_ BitVec 32))) (Intermediate!6064 (undefined!6876 Bool) (index!26488 (_ BitVec 32)) (x!55321 (_ BitVec 32))) (Undefined!6064) (MissingVacant!6064 (index!26489 (_ BitVec 32))) )
))
(declare-fun lt!266446 () SeekEntryResult!6064)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!587551 (= res!375338 (or (= lt!266446 (MissingZero!6064 i!1108)) (= lt!266446 (MissingVacant!6064 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36696 (_ BitVec 32)) SeekEntryResult!6064)

(assert (=> b!587551 (= lt!266446 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!587552 () Bool)

(declare-fun res!375346 () Bool)

(assert (=> b!587552 (=> (not res!375346) (not e!335606))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587552 (= res!375346 (validKeyInArray!0 (select (arr!17617 a!2986) j!136)))))

(declare-fun b!587553 () Bool)

(assert (=> b!587553 (= e!335608 (not true))))

(declare-fun lt!266447 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36696 (_ BitVec 32)) SeekEntryResult!6064)

(assert (=> b!587553 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266447 vacantSpotIndex!68 (select (arr!17617 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266447 vacantSpotIndex!68 (select (store (arr!17617 a!2986) i!1108 k0!1786) j!136) (array!36697 (store (arr!17617 a!2986) i!1108 k0!1786) (size!17981 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18252 0))(
  ( (Unit!18253) )
))
(declare-fun lt!266445 () Unit!18252)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36696 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18252)

(assert (=> b!587553 (= lt!266445 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266447 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587553 (= lt!266447 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587554 () Bool)

(declare-fun res!375337 () Bool)

(assert (=> b!587554 (=> (not res!375337) (not e!335608))))

(assert (=> b!587554 (= res!375337 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17617 a!2986) index!984) (select (arr!17617 a!2986) j!136))) (not (= (select (arr!17617 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587555 () Bool)

(declare-fun res!375342 () Bool)

(assert (=> b!587555 (=> (not res!375342) (not e!335608))))

(assert (=> b!587555 (= res!375342 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17617 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17617 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587556 () Bool)

(declare-fun res!375340 () Bool)

(assert (=> b!587556 (=> (not res!375340) (not e!335606))))

(assert (=> b!587556 (= res!375340 (and (= (size!17981 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17981 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17981 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587557 () Bool)

(declare-fun res!375343 () Bool)

(assert (=> b!587557 (=> (not res!375343) (not e!335608))))

(assert (=> b!587557 (= res!375343 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17617 a!2986) j!136) a!2986 mask!3053) (Found!6064 j!136)))))

(declare-fun b!587558 () Bool)

(declare-fun res!375347 () Bool)

(assert (=> b!587558 (=> (not res!375347) (not e!335608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36696 (_ BitVec 32)) Bool)

(assert (=> b!587558 (= res!375347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587559 () Bool)

(declare-fun res!375339 () Bool)

(assert (=> b!587559 (=> (not res!375339) (not e!335606))))

(assert (=> b!587559 (= res!375339 (validKeyInArray!0 k0!1786))))

(declare-fun b!587560 () Bool)

(declare-fun res!375341 () Bool)

(assert (=> b!587560 (=> (not res!375341) (not e!335606))))

(declare-fun arrayContainsKey!0 (array!36696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587560 (= res!375341 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587561 () Bool)

(declare-fun res!375345 () Bool)

(assert (=> b!587561 (=> (not res!375345) (not e!335608))))

(declare-datatypes ((List!11711 0))(
  ( (Nil!11708) (Cons!11707 (h!12752 (_ BitVec 64)) (t!17947 List!11711)) )
))
(declare-fun arrayNoDuplicates!0 (array!36696 (_ BitVec 32) List!11711) Bool)

(assert (=> b!587561 (= res!375345 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11708))))

(assert (= (and start!53898 res!375344) b!587556))

(assert (= (and b!587556 res!375340) b!587552))

(assert (= (and b!587552 res!375346) b!587559))

(assert (= (and b!587559 res!375339) b!587560))

(assert (= (and b!587560 res!375341) b!587551))

(assert (= (and b!587551 res!375338) b!587558))

(assert (= (and b!587558 res!375347) b!587561))

(assert (= (and b!587561 res!375345) b!587555))

(assert (= (and b!587555 res!375342) b!587557))

(assert (= (and b!587557 res!375343) b!587554))

(assert (= (and b!587554 res!375337) b!587553))

(declare-fun m!566049 () Bool)

(assert (=> b!587553 m!566049))

(declare-fun m!566051 () Bool)

(assert (=> b!587553 m!566051))

(assert (=> b!587553 m!566051))

(declare-fun m!566053 () Bool)

(assert (=> b!587553 m!566053))

(declare-fun m!566055 () Bool)

(assert (=> b!587553 m!566055))

(declare-fun m!566057 () Bool)

(assert (=> b!587553 m!566057))

(declare-fun m!566059 () Bool)

(assert (=> b!587553 m!566059))

(assert (=> b!587553 m!566055))

(declare-fun m!566061 () Bool)

(assert (=> b!587553 m!566061))

(declare-fun m!566063 () Bool)

(assert (=> b!587560 m!566063))

(declare-fun m!566065 () Bool)

(assert (=> b!587561 m!566065))

(declare-fun m!566067 () Bool)

(assert (=> b!587554 m!566067))

(assert (=> b!587554 m!566055))

(assert (=> b!587552 m!566055))

(assert (=> b!587552 m!566055))

(declare-fun m!566069 () Bool)

(assert (=> b!587552 m!566069))

(declare-fun m!566071 () Bool)

(assert (=> start!53898 m!566071))

(declare-fun m!566073 () Bool)

(assert (=> start!53898 m!566073))

(declare-fun m!566075 () Bool)

(assert (=> b!587559 m!566075))

(declare-fun m!566077 () Bool)

(assert (=> b!587551 m!566077))

(declare-fun m!566079 () Bool)

(assert (=> b!587558 m!566079))

(assert (=> b!587557 m!566055))

(assert (=> b!587557 m!566055))

(declare-fun m!566081 () Bool)

(assert (=> b!587557 m!566081))

(declare-fun m!566083 () Bool)

(assert (=> b!587555 m!566083))

(assert (=> b!587555 m!566059))

(declare-fun m!566085 () Bool)

(assert (=> b!587555 m!566085))

(check-sat (not b!587558) (not b!587560) (not b!587561) (not b!587552) (not b!587557) (not b!587559) (not start!53898) (not b!587553) (not b!587551))
(check-sat)
