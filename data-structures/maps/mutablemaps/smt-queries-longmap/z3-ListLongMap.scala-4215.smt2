; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57824 () Bool)

(assert start!57824)

(declare-fun b!639086 () Bool)

(declare-fun e!365758 () Bool)

(declare-fun e!365765 () Bool)

(assert (=> b!639086 (= e!365758 e!365765)))

(declare-fun res!413822 () Bool)

(assert (=> b!639086 (=> (not res!413822) (not e!365765))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38282 0))(
  ( (array!38283 (arr!18358 (Array (_ BitVec 32) (_ BitVec 64))) (size!18722 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38282)

(assert (=> b!639086 (= res!413822 (= (select (store (arr!18358 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!295675 () array!38282)

(assert (=> b!639086 (= lt!295675 (array!38283 (store (arr!18358 a!2986) i!1108 k0!1786) (size!18722 a!2986)))))

(declare-fun b!639087 () Bool)

(declare-fun res!413828 () Bool)

(assert (=> b!639087 (=> (not res!413828) (not e!365758))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38282 (_ BitVec 32)) Bool)

(assert (=> b!639087 (= res!413828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639088 () Bool)

(declare-fun res!413820 () Bool)

(assert (=> b!639088 (=> (not res!413820) (not e!365758))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639088 (= res!413820 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18358 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639089 () Bool)

(declare-fun e!365766 () Bool)

(assert (=> b!639089 (= e!365765 e!365766)))

(declare-fun res!413823 () Bool)

(assert (=> b!639089 (=> (not res!413823) (not e!365766))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6805 0))(
  ( (MissingZero!6805 (index!29536 (_ BitVec 32))) (Found!6805 (index!29537 (_ BitVec 32))) (Intermediate!6805 (undefined!7617 Bool) (index!29538 (_ BitVec 32)) (x!58321 (_ BitVec 32))) (Undefined!6805) (MissingVacant!6805 (index!29539 (_ BitVec 32))) )
))
(declare-fun lt!295673 () SeekEntryResult!6805)

(assert (=> b!639089 (= res!413823 (and (= lt!295673 (Found!6805 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18358 a!2986) index!984) (select (arr!18358 a!2986) j!136))) (not (= (select (arr!18358 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38282 (_ BitVec 32)) SeekEntryResult!6805)

(assert (=> b!639089 (= lt!295673 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18358 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639090 () Bool)

(declare-fun e!365764 () Bool)

(assert (=> b!639090 (= e!365764 e!365758)))

(declare-fun res!413821 () Bool)

(assert (=> b!639090 (=> (not res!413821) (not e!365758))))

(declare-fun lt!295676 () SeekEntryResult!6805)

(assert (=> b!639090 (= res!413821 (or (= lt!295676 (MissingZero!6805 i!1108)) (= lt!295676 (MissingVacant!6805 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38282 (_ BitVec 32)) SeekEntryResult!6805)

(assert (=> b!639090 (= lt!295676 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!639091 () Bool)

(declare-fun res!413834 () Bool)

(assert (=> b!639091 (=> (not res!413834) (not e!365764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639091 (= res!413834 (validKeyInArray!0 (select (arr!18358 a!2986) j!136)))))

(declare-fun b!639092 () Bool)

(declare-fun res!413825 () Bool)

(assert (=> b!639092 (=> (not res!413825) (not e!365764))))

(assert (=> b!639092 (= res!413825 (validKeyInArray!0 k0!1786))))

(declare-fun res!413831 () Bool)

(assert (=> start!57824 (=> (not res!413831) (not e!365764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57824 (= res!413831 (validMask!0 mask!3053))))

(assert (=> start!57824 e!365764))

(assert (=> start!57824 true))

(declare-fun array_inv!14132 (array!38282) Bool)

(assert (=> start!57824 (array_inv!14132 a!2986)))

(declare-fun b!639093 () Bool)

(declare-fun e!365756 () Bool)

(declare-fun lt!295670 () SeekEntryResult!6805)

(assert (=> b!639093 (= e!365756 (= lt!295673 lt!295670))))

(declare-fun b!639094 () Bool)

(declare-fun e!365767 () Bool)

(assert (=> b!639094 (= e!365767 (or (bvsge (size!18722 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18722 a!2986))))))

(declare-datatypes ((List!12452 0))(
  ( (Nil!12449) (Cons!12448 (h!13493 (_ BitVec 64)) (t!18688 List!12452)) )
))
(declare-fun arrayNoDuplicates!0 (array!38282 (_ BitVec 32) List!12452) Bool)

(assert (=> b!639094 (arrayNoDuplicates!0 lt!295675 #b00000000000000000000000000000000 Nil!12449)))

(declare-datatypes ((Unit!21578 0))(
  ( (Unit!21579) )
))
(declare-fun lt!295668 () Unit!21578)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12452) Unit!21578)

(assert (=> b!639094 (= lt!295668 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12449))))

(declare-fun arrayContainsKey!0 (array!38282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639094 (arrayContainsKey!0 lt!295675 (select (arr!18358 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295669 () Unit!21578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38282 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21578)

(assert (=> b!639094 (= lt!295669 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295675 (select (arr!18358 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639095 () Bool)

(declare-fun res!413830 () Bool)

(assert (=> b!639095 (=> (not res!413830) (not e!365764))))

(assert (=> b!639095 (= res!413830 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639096 () Bool)

(declare-fun res!413832 () Bool)

(assert (=> b!639096 (=> (not res!413832) (not e!365758))))

(assert (=> b!639096 (= res!413832 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12449))))

(declare-fun b!639097 () Bool)

(declare-fun res!413826 () Bool)

(assert (=> b!639097 (=> (not res!413826) (not e!365764))))

(assert (=> b!639097 (= res!413826 (and (= (size!18722 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18722 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18722 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639098 () Bool)

(declare-fun e!365763 () Bool)

(declare-fun e!365759 () Bool)

(assert (=> b!639098 (= e!365763 e!365759)))

(declare-fun res!413833 () Bool)

(assert (=> b!639098 (=> res!413833 e!365759)))

(declare-fun lt!295671 () (_ BitVec 64))

(declare-fun lt!295666 () (_ BitVec 64))

(assert (=> b!639098 (= res!413833 (or (not (= (select (arr!18358 a!2986) j!136) lt!295671)) (not (= (select (arr!18358 a!2986) j!136) lt!295666)) (bvsge j!136 index!984)))))

(declare-fun b!639099 () Bool)

(declare-fun e!365757 () Unit!21578)

(declare-fun Unit!21580 () Unit!21578)

(assert (=> b!639099 (= e!365757 Unit!21580)))

(declare-fun e!365761 () Bool)

(declare-fun b!639100 () Bool)

(assert (=> b!639100 (= e!365761 (arrayContainsKey!0 lt!295675 (select (arr!18358 a!2986) j!136) index!984))))

(declare-fun b!639101 () Bool)

(declare-fun Unit!21581 () Unit!21578)

(assert (=> b!639101 (= e!365757 Unit!21581)))

(assert (=> b!639101 false))

(declare-fun b!639102 () Bool)

(declare-fun e!365760 () Bool)

(assert (=> b!639102 (= e!365760 e!365767)))

(declare-fun res!413824 () Bool)

(assert (=> b!639102 (=> res!413824 e!365767)))

(assert (=> b!639102 (= res!413824 (or (not (= (select (arr!18358 a!2986) j!136) lt!295671)) (not (= (select (arr!18358 a!2986) j!136) lt!295666)) (bvsge j!136 index!984)))))

(assert (=> b!639102 e!365763))

(declare-fun res!413818 () Bool)

(assert (=> b!639102 (=> (not res!413818) (not e!365763))))

(assert (=> b!639102 (= res!413818 (= lt!295666 (select (arr!18358 a!2986) j!136)))))

(assert (=> b!639102 (= lt!295666 (select (store (arr!18358 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!639103 () Bool)

(assert (=> b!639103 (= e!365766 (not e!365760))))

(declare-fun res!413827 () Bool)

(assert (=> b!639103 (=> res!413827 e!365760)))

(declare-fun lt!295672 () SeekEntryResult!6805)

(assert (=> b!639103 (= res!413827 (not (= lt!295672 (Found!6805 index!984))))))

(declare-fun lt!295667 () Unit!21578)

(assert (=> b!639103 (= lt!295667 e!365757)))

(declare-fun c!73001 () Bool)

(assert (=> b!639103 (= c!73001 (= lt!295672 Undefined!6805))))

(assert (=> b!639103 (= lt!295672 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295671 lt!295675 mask!3053))))

(assert (=> b!639103 e!365756))

(declare-fun res!413819 () Bool)

(assert (=> b!639103 (=> (not res!413819) (not e!365756))))

(declare-fun lt!295677 () (_ BitVec 32))

(assert (=> b!639103 (= res!413819 (= lt!295670 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295677 vacantSpotIndex!68 lt!295671 lt!295675 mask!3053)))))

(assert (=> b!639103 (= lt!295670 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295677 vacantSpotIndex!68 (select (arr!18358 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639103 (= lt!295671 (select (store (arr!18358 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295674 () Unit!21578)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38282 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21578)

(assert (=> b!639103 (= lt!295674 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295677 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639103 (= lt!295677 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639104 () Bool)

(assert (=> b!639104 (= e!365759 e!365761)))

(declare-fun res!413829 () Bool)

(assert (=> b!639104 (=> (not res!413829) (not e!365761))))

(assert (=> b!639104 (= res!413829 (arrayContainsKey!0 lt!295675 (select (arr!18358 a!2986) j!136) j!136))))

(assert (= (and start!57824 res!413831) b!639097))

(assert (= (and b!639097 res!413826) b!639091))

(assert (= (and b!639091 res!413834) b!639092))

(assert (= (and b!639092 res!413825) b!639095))

(assert (= (and b!639095 res!413830) b!639090))

(assert (= (and b!639090 res!413821) b!639087))

(assert (= (and b!639087 res!413828) b!639096))

(assert (= (and b!639096 res!413832) b!639088))

(assert (= (and b!639088 res!413820) b!639086))

(assert (= (and b!639086 res!413822) b!639089))

(assert (= (and b!639089 res!413823) b!639103))

(assert (= (and b!639103 res!413819) b!639093))

(assert (= (and b!639103 c!73001) b!639101))

(assert (= (and b!639103 (not c!73001)) b!639099))

(assert (= (and b!639103 (not res!413827)) b!639102))

(assert (= (and b!639102 res!413818) b!639098))

(assert (= (and b!639098 (not res!413833)) b!639104))

(assert (= (and b!639104 res!413829) b!639100))

(assert (= (and b!639102 (not res!413824)) b!639094))

(declare-fun m!613029 () Bool)

(assert (=> b!639092 m!613029))

(declare-fun m!613031 () Bool)

(assert (=> b!639091 m!613031))

(assert (=> b!639091 m!613031))

(declare-fun m!613033 () Bool)

(assert (=> b!639091 m!613033))

(declare-fun m!613035 () Bool)

(assert (=> b!639088 m!613035))

(assert (=> b!639094 m!613031))

(assert (=> b!639094 m!613031))

(declare-fun m!613037 () Bool)

(assert (=> b!639094 m!613037))

(assert (=> b!639094 m!613031))

(declare-fun m!613039 () Bool)

(assert (=> b!639094 m!613039))

(declare-fun m!613041 () Bool)

(assert (=> b!639094 m!613041))

(declare-fun m!613043 () Bool)

(assert (=> b!639094 m!613043))

(declare-fun m!613045 () Bool)

(assert (=> b!639103 m!613045))

(declare-fun m!613047 () Bool)

(assert (=> b!639103 m!613047))

(assert (=> b!639103 m!613031))

(declare-fun m!613049 () Bool)

(assert (=> b!639103 m!613049))

(declare-fun m!613051 () Bool)

(assert (=> b!639103 m!613051))

(declare-fun m!613053 () Bool)

(assert (=> b!639103 m!613053))

(assert (=> b!639103 m!613031))

(declare-fun m!613055 () Bool)

(assert (=> b!639103 m!613055))

(declare-fun m!613057 () Bool)

(assert (=> b!639103 m!613057))

(assert (=> b!639098 m!613031))

(assert (=> b!639104 m!613031))

(assert (=> b!639104 m!613031))

(declare-fun m!613059 () Bool)

(assert (=> b!639104 m!613059))

(declare-fun m!613061 () Bool)

(assert (=> b!639089 m!613061))

(assert (=> b!639089 m!613031))

(assert (=> b!639089 m!613031))

(declare-fun m!613063 () Bool)

(assert (=> b!639089 m!613063))

(assert (=> b!639102 m!613031))

(assert (=> b!639102 m!613051))

(declare-fun m!613065 () Bool)

(assert (=> b!639102 m!613065))

(assert (=> b!639100 m!613031))

(assert (=> b!639100 m!613031))

(declare-fun m!613067 () Bool)

(assert (=> b!639100 m!613067))

(declare-fun m!613069 () Bool)

(assert (=> b!639096 m!613069))

(declare-fun m!613071 () Bool)

(assert (=> b!639090 m!613071))

(declare-fun m!613073 () Bool)

(assert (=> b!639087 m!613073))

(declare-fun m!613075 () Bool)

(assert (=> start!57824 m!613075))

(declare-fun m!613077 () Bool)

(assert (=> start!57824 m!613077))

(declare-fun m!613079 () Bool)

(assert (=> b!639095 m!613079))

(assert (=> b!639086 m!613051))

(declare-fun m!613081 () Bool)

(assert (=> b!639086 m!613081))

(check-sat (not b!639087) (not b!639091) (not b!639089) (not b!639095) (not b!639094) (not b!639104) (not start!57824) (not b!639103) (not b!639100) (not b!639092) (not b!639096) (not b!639090))
(check-sat)
