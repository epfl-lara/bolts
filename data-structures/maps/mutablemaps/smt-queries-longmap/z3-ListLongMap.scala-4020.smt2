; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54836 () Bool)

(assert start!54836)

(declare-fun b!598460 () Bool)

(declare-fun e!342113 () Bool)

(declare-fun e!342111 () Bool)

(assert (=> b!598460 (= e!342113 e!342111)))

(declare-fun res!383697 () Bool)

(assert (=> b!598460 (=> res!383697 e!342111)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!271973 () (_ BitVec 64))

(declare-fun lt!271967 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37034 0))(
  ( (array!37035 (arr!17773 (Array (_ BitVec 32) (_ BitVec 64))) (size!18137 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37034)

(assert (=> b!598460 (= res!383697 (or (not (= (select (arr!17773 a!2986) j!136) lt!271967)) (not (= (select (arr!17773 a!2986) j!136) lt!271973)) (bvsge j!136 index!984)))))

(declare-fun b!598461 () Bool)

(declare-fun res!383705 () Bool)

(declare-fun e!342107 () Bool)

(assert (=> b!598461 (=> (not res!383705) (not e!342107))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598461 (= res!383705 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598463 () Bool)

(declare-fun res!383704 () Bool)

(assert (=> b!598463 (=> (not res!383704) (not e!342107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598463 (= res!383704 (validKeyInArray!0 k0!1786))))

(declare-fun b!598464 () Bool)

(declare-fun e!342110 () Bool)

(assert (=> b!598464 (= e!342110 true)))

(declare-fun lt!271970 () array!37034)

(declare-datatypes ((List!11867 0))(
  ( (Nil!11864) (Cons!11863 (h!12908 (_ BitVec 64)) (t!18103 List!11867)) )
))
(declare-fun arrayNoDuplicates!0 (array!37034 (_ BitVec 32) List!11867) Bool)

(assert (=> b!598464 (arrayNoDuplicates!0 lt!271970 #b00000000000000000000000000000000 Nil!11864)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((Unit!18824 0))(
  ( (Unit!18825) )
))
(declare-fun lt!271965 () Unit!18824)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37034 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11867) Unit!18824)

(assert (=> b!598464 (= lt!271965 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11864))))

(assert (=> b!598464 (arrayContainsKey!0 lt!271970 (select (arr!17773 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271964 () Unit!18824)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37034 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18824)

(assert (=> b!598464 (= lt!271964 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271970 (select (arr!17773 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598465 () Bool)

(declare-fun e!342114 () Bool)

(assert (=> b!598465 (= e!342107 e!342114)))

(declare-fun res!383703 () Bool)

(assert (=> b!598465 (=> (not res!383703) (not e!342114))))

(declare-datatypes ((SeekEntryResult!6220 0))(
  ( (MissingZero!6220 (index!27136 (_ BitVec 32))) (Found!6220 (index!27137 (_ BitVec 32))) (Intermediate!6220 (undefined!7032 Bool) (index!27138 (_ BitVec 32)) (x!55972 (_ BitVec 32))) (Undefined!6220) (MissingVacant!6220 (index!27139 (_ BitVec 32))) )
))
(declare-fun lt!271966 () SeekEntryResult!6220)

(assert (=> b!598465 (= res!383703 (or (= lt!271966 (MissingZero!6220 i!1108)) (= lt!271966 (MissingVacant!6220 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37034 (_ BitVec 32)) SeekEntryResult!6220)

(assert (=> b!598465 (= lt!271966 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!598466 () Bool)

(declare-fun e!342118 () Bool)

(assert (=> b!598466 (= e!342118 e!342110)))

(declare-fun res!383706 () Bool)

(assert (=> b!598466 (=> res!383706 e!342110)))

(assert (=> b!598466 (= res!383706 (or (not (= (select (arr!17773 a!2986) j!136) lt!271967)) (not (= (select (arr!17773 a!2986) j!136) lt!271973)) (bvsge j!136 index!984)))))

(assert (=> b!598466 e!342113))

(declare-fun res!383695 () Bool)

(assert (=> b!598466 (=> (not res!383695) (not e!342113))))

(assert (=> b!598466 (= res!383695 (= lt!271973 (select (arr!17773 a!2986) j!136)))))

(assert (=> b!598466 (= lt!271973 (select (store (arr!17773 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!598467 () Bool)

(declare-fun e!342109 () Bool)

(assert (=> b!598467 (= e!342109 (not e!342118))))

(declare-fun res!383693 () Bool)

(assert (=> b!598467 (=> res!383693 e!342118)))

(declare-fun lt!271969 () SeekEntryResult!6220)

(assert (=> b!598467 (= res!383693 (not (= lt!271969 (Found!6220 index!984))))))

(declare-fun lt!271963 () Unit!18824)

(declare-fun e!342115 () Unit!18824)

(assert (=> b!598467 (= lt!271963 e!342115)))

(declare-fun c!67751 () Bool)

(assert (=> b!598467 (= c!67751 (= lt!271969 Undefined!6220))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37034 (_ BitVec 32)) SeekEntryResult!6220)

(assert (=> b!598467 (= lt!271969 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271967 lt!271970 mask!3053))))

(declare-fun e!342108 () Bool)

(assert (=> b!598467 e!342108))

(declare-fun res!383707 () Bool)

(assert (=> b!598467 (=> (not res!383707) (not e!342108))))

(declare-fun lt!271974 () (_ BitVec 32))

(declare-fun lt!271968 () SeekEntryResult!6220)

(assert (=> b!598467 (= res!383707 (= lt!271968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271974 vacantSpotIndex!68 lt!271967 lt!271970 mask!3053)))))

(assert (=> b!598467 (= lt!271968 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271974 vacantSpotIndex!68 (select (arr!17773 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598467 (= lt!271967 (select (store (arr!17773 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271971 () Unit!18824)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37034 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18824)

(assert (=> b!598467 (= lt!271971 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271974 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598467 (= lt!271974 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598468 () Bool)

(declare-fun Unit!18826 () Unit!18824)

(assert (=> b!598468 (= e!342115 Unit!18826)))

(assert (=> b!598468 false))

(declare-fun b!598469 () Bool)

(declare-fun e!342117 () Bool)

(assert (=> b!598469 (= e!342114 e!342117)))

(declare-fun res!383701 () Bool)

(assert (=> b!598469 (=> (not res!383701) (not e!342117))))

(assert (=> b!598469 (= res!383701 (= (select (store (arr!17773 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598469 (= lt!271970 (array!37035 (store (arr!17773 a!2986) i!1108 k0!1786) (size!18137 a!2986)))))

(declare-fun b!598470 () Bool)

(declare-fun e!342112 () Bool)

(assert (=> b!598470 (= e!342111 e!342112)))

(declare-fun res!383702 () Bool)

(assert (=> b!598470 (=> (not res!383702) (not e!342112))))

(assert (=> b!598470 (= res!383702 (arrayContainsKey!0 lt!271970 (select (arr!17773 a!2986) j!136) j!136))))

(declare-fun b!598471 () Bool)

(declare-fun Unit!18827 () Unit!18824)

(assert (=> b!598471 (= e!342115 Unit!18827)))

(declare-fun b!598472 () Bool)

(declare-fun res!383692 () Bool)

(assert (=> b!598472 (=> (not res!383692) (not e!342114))))

(assert (=> b!598472 (= res!383692 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11864))))

(declare-fun b!598473 () Bool)

(assert (=> b!598473 (= e!342117 e!342109)))

(declare-fun res!383699 () Bool)

(assert (=> b!598473 (=> (not res!383699) (not e!342109))))

(declare-fun lt!271972 () SeekEntryResult!6220)

(assert (=> b!598473 (= res!383699 (and (= lt!271972 (Found!6220 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17773 a!2986) index!984) (select (arr!17773 a!2986) j!136))) (not (= (select (arr!17773 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598473 (= lt!271972 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17773 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598474 () Bool)

(declare-fun res!383698 () Bool)

(assert (=> b!598474 (=> (not res!383698) (not e!342107))))

(assert (=> b!598474 (= res!383698 (validKeyInArray!0 (select (arr!17773 a!2986) j!136)))))

(declare-fun b!598462 () Bool)

(declare-fun res!383700 () Bool)

(assert (=> b!598462 (=> (not res!383700) (not e!342114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37034 (_ BitVec 32)) Bool)

(assert (=> b!598462 (= res!383700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!383708 () Bool)

(assert (=> start!54836 (=> (not res!383708) (not e!342107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54836 (= res!383708 (validMask!0 mask!3053))))

(assert (=> start!54836 e!342107))

(assert (=> start!54836 true))

(declare-fun array_inv!13547 (array!37034) Bool)

(assert (=> start!54836 (array_inv!13547 a!2986)))

(declare-fun b!598475 () Bool)

(declare-fun res!383694 () Bool)

(assert (=> b!598475 (=> (not res!383694) (not e!342114))))

(assert (=> b!598475 (= res!383694 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17773 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598476 () Bool)

(assert (=> b!598476 (= e!342108 (= lt!271972 lt!271968))))

(declare-fun b!598477 () Bool)

(assert (=> b!598477 (= e!342112 (arrayContainsKey!0 lt!271970 (select (arr!17773 a!2986) j!136) index!984))))

(declare-fun b!598478 () Bool)

(declare-fun res!383696 () Bool)

(assert (=> b!598478 (=> (not res!383696) (not e!342107))))

(assert (=> b!598478 (= res!383696 (and (= (size!18137 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18137 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18137 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!54836 res!383708) b!598478))

(assert (= (and b!598478 res!383696) b!598474))

(assert (= (and b!598474 res!383698) b!598463))

(assert (= (and b!598463 res!383704) b!598461))

(assert (= (and b!598461 res!383705) b!598465))

(assert (= (and b!598465 res!383703) b!598462))

(assert (= (and b!598462 res!383700) b!598472))

(assert (= (and b!598472 res!383692) b!598475))

(assert (= (and b!598475 res!383694) b!598469))

(assert (= (and b!598469 res!383701) b!598473))

(assert (= (and b!598473 res!383699) b!598467))

(assert (= (and b!598467 res!383707) b!598476))

(assert (= (and b!598467 c!67751) b!598468))

(assert (= (and b!598467 (not c!67751)) b!598471))

(assert (= (and b!598467 (not res!383693)) b!598466))

(assert (= (and b!598466 res!383695) b!598460))

(assert (= (and b!598460 (not res!383697)) b!598470))

(assert (= (and b!598470 res!383702) b!598477))

(assert (= (and b!598466 (not res!383706)) b!598464))

(declare-fun m!575805 () Bool)

(assert (=> b!598473 m!575805))

(declare-fun m!575807 () Bool)

(assert (=> b!598473 m!575807))

(assert (=> b!598473 m!575807))

(declare-fun m!575809 () Bool)

(assert (=> b!598473 m!575809))

(assert (=> b!598474 m!575807))

(assert (=> b!598474 m!575807))

(declare-fun m!575811 () Bool)

(assert (=> b!598474 m!575811))

(declare-fun m!575813 () Bool)

(assert (=> b!598462 m!575813))

(assert (=> b!598477 m!575807))

(assert (=> b!598477 m!575807))

(declare-fun m!575815 () Bool)

(assert (=> b!598477 m!575815))

(declare-fun m!575817 () Bool)

(assert (=> b!598461 m!575817))

(declare-fun m!575819 () Bool)

(assert (=> b!598472 m!575819))

(assert (=> b!598460 m!575807))

(assert (=> b!598464 m!575807))

(declare-fun m!575821 () Bool)

(assert (=> b!598464 m!575821))

(assert (=> b!598464 m!575807))

(declare-fun m!575823 () Bool)

(assert (=> b!598464 m!575823))

(assert (=> b!598464 m!575807))

(declare-fun m!575825 () Bool)

(assert (=> b!598464 m!575825))

(declare-fun m!575827 () Bool)

(assert (=> b!598464 m!575827))

(declare-fun m!575829 () Bool)

(assert (=> start!54836 m!575829))

(declare-fun m!575831 () Bool)

(assert (=> start!54836 m!575831))

(declare-fun m!575833 () Bool)

(assert (=> b!598463 m!575833))

(assert (=> b!598470 m!575807))

(assert (=> b!598470 m!575807))

(declare-fun m!575835 () Bool)

(assert (=> b!598470 m!575835))

(assert (=> b!598466 m!575807))

(declare-fun m!575837 () Bool)

(assert (=> b!598466 m!575837))

(declare-fun m!575839 () Bool)

(assert (=> b!598466 m!575839))

(declare-fun m!575841 () Bool)

(assert (=> b!598465 m!575841))

(declare-fun m!575843 () Bool)

(assert (=> b!598475 m!575843))

(declare-fun m!575845 () Bool)

(assert (=> b!598467 m!575845))

(declare-fun m!575847 () Bool)

(assert (=> b!598467 m!575847))

(assert (=> b!598467 m!575807))

(assert (=> b!598467 m!575837))

(assert (=> b!598467 m!575807))

(declare-fun m!575849 () Bool)

(assert (=> b!598467 m!575849))

(declare-fun m!575851 () Bool)

(assert (=> b!598467 m!575851))

(declare-fun m!575853 () Bool)

(assert (=> b!598467 m!575853))

(declare-fun m!575855 () Bool)

(assert (=> b!598467 m!575855))

(assert (=> b!598469 m!575837))

(declare-fun m!575857 () Bool)

(assert (=> b!598469 m!575857))

(check-sat (not b!598473) (not b!598461) (not b!598465) (not start!54836) (not b!598467) (not b!598462) (not b!598463) (not b!598477) (not b!598470) (not b!598464) (not b!598472) (not b!598474))
(check-sat)
