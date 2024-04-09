; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54570 () Bool)

(assert start!54570)

(declare-fun b!596516 () Bool)

(declare-fun res!382471 () Bool)

(declare-fun e!340821 () Bool)

(assert (=> b!596516 (=> (not res!382471) (not e!340821))))

(declare-datatypes ((array!36993 0))(
  ( (array!36994 (arr!17757 (Array (_ BitVec 32) (_ BitVec 64))) (size!18121 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36993)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596516 (= res!382471 (validKeyInArray!0 (select (arr!17757 a!2986) j!136)))))

(declare-fun lt!271000 () array!36993)

(declare-fun b!596517 () Bool)

(declare-fun e!340819 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!36993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596517 (= e!340819 (arrayContainsKey!0 lt!271000 (select (arr!17757 a!2986) j!136) index!984))))

(declare-fun b!596518 () Bool)

(declare-fun e!340814 () Bool)

(declare-fun e!340824 () Bool)

(assert (=> b!596518 (= e!340814 e!340824)))

(declare-fun res!382462 () Bool)

(assert (=> b!596518 (=> (not res!382462) (not e!340824))))

(declare-datatypes ((SeekEntryResult!6204 0))(
  ( (MissingZero!6204 (index!27063 (_ BitVec 32))) (Found!6204 (index!27064 (_ BitVec 32))) (Intermediate!6204 (undefined!7016 Bool) (index!27065 (_ BitVec 32)) (x!55889 (_ BitVec 32))) (Undefined!6204) (MissingVacant!6204 (index!27066 (_ BitVec 32))) )
))
(declare-fun lt!271005 () SeekEntryResult!6204)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!596518 (= res!382462 (and (= lt!271005 (Found!6204 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17757 a!2986) index!984) (select (arr!17757 a!2986) j!136))) (not (= (select (arr!17757 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36993 (_ BitVec 32)) SeekEntryResult!6204)

(assert (=> b!596518 (= lt!271005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17757 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596519 () Bool)

(declare-fun e!340825 () Bool)

(assert (=> b!596519 (= e!340825 (bvsle #b00000000000000000000000000000000 (size!18121 a!2986)))))

(declare-datatypes ((List!11851 0))(
  ( (Nil!11848) (Cons!11847 (h!12892 (_ BitVec 64)) (t!18087 List!11851)) )
))
(declare-fun arrayNoDuplicates!0 (array!36993 (_ BitVec 32) List!11851) Bool)

(assert (=> b!596519 (arrayNoDuplicates!0 lt!271000 #b00000000000000000000000000000000 Nil!11848)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!18760 0))(
  ( (Unit!18761) )
))
(declare-fun lt!270999 () Unit!18760)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!36993 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11851) Unit!18760)

(assert (=> b!596519 (= lt!270999 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11848))))

(assert (=> b!596519 (arrayContainsKey!0 lt!271000 (select (arr!17757 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271001 () Unit!18760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36993 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18760)

(assert (=> b!596519 (= lt!271001 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271000 (select (arr!17757 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596520 () Bool)

(declare-fun e!340815 () Bool)

(assert (=> b!596520 (= e!340815 e!340825)))

(declare-fun res!382466 () Bool)

(assert (=> b!596520 (=> res!382466 e!340825)))

(declare-fun lt!271008 () (_ BitVec 64))

(declare-fun lt!271003 () (_ BitVec 64))

(assert (=> b!596520 (= res!382466 (or (not (= (select (arr!17757 a!2986) j!136) lt!271003)) (not (= (select (arr!17757 a!2986) j!136) lt!271008)) (bvsge j!136 index!984)))))

(declare-fun e!340818 () Bool)

(assert (=> b!596520 e!340818))

(declare-fun res!382457 () Bool)

(assert (=> b!596520 (=> (not res!382457) (not e!340818))))

(assert (=> b!596520 (= res!382457 (= lt!271008 (select (arr!17757 a!2986) j!136)))))

(assert (=> b!596520 (= lt!271008 (select (store (arr!17757 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596521 () Bool)

(declare-fun e!340822 () Bool)

(assert (=> b!596521 (= e!340818 e!340822)))

(declare-fun res!382472 () Bool)

(assert (=> b!596521 (=> res!382472 e!340822)))

(assert (=> b!596521 (= res!382472 (or (not (= (select (arr!17757 a!2986) j!136) lt!271003)) (not (= (select (arr!17757 a!2986) j!136) lt!271008)) (bvsge j!136 index!984)))))

(declare-fun res!382468 () Bool)

(assert (=> start!54570 (=> (not res!382468) (not e!340821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54570 (= res!382468 (validMask!0 mask!3053))))

(assert (=> start!54570 e!340821))

(assert (=> start!54570 true))

(declare-fun array_inv!13531 (array!36993) Bool)

(assert (=> start!54570 (array_inv!13531 a!2986)))

(declare-fun b!596522 () Bool)

(declare-fun res!382458 () Bool)

(declare-fun e!340820 () Bool)

(assert (=> b!596522 (=> (not res!382458) (not e!340820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36993 (_ BitVec 32)) Bool)

(assert (=> b!596522 (= res!382458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596523 () Bool)

(declare-fun res!382467 () Bool)

(assert (=> b!596523 (=> (not res!382467) (not e!340820))))

(assert (=> b!596523 (= res!382467 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11848))))

(declare-fun b!596524 () Bool)

(declare-fun res!382463 () Bool)

(assert (=> b!596524 (=> (not res!382463) (not e!340821))))

(assert (=> b!596524 (= res!382463 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596525 () Bool)

(declare-fun e!340817 () Unit!18760)

(declare-fun Unit!18762 () Unit!18760)

(assert (=> b!596525 (= e!340817 Unit!18762)))

(declare-fun b!596526 () Bool)

(assert (=> b!596526 (= e!340824 (not e!340815))))

(declare-fun res!382464 () Bool)

(assert (=> b!596526 (=> res!382464 e!340815)))

(declare-fun lt!271002 () SeekEntryResult!6204)

(assert (=> b!596526 (= res!382464 (not (= lt!271002 (Found!6204 index!984))))))

(declare-fun lt!271007 () Unit!18760)

(assert (=> b!596526 (= lt!271007 e!340817)))

(declare-fun c!67397 () Bool)

(assert (=> b!596526 (= c!67397 (= lt!271002 Undefined!6204))))

(assert (=> b!596526 (= lt!271002 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271003 lt!271000 mask!3053))))

(declare-fun e!340823 () Bool)

(assert (=> b!596526 e!340823))

(declare-fun res!382470 () Bool)

(assert (=> b!596526 (=> (not res!382470) (not e!340823))))

(declare-fun lt!270998 () (_ BitVec 32))

(declare-fun lt!270997 () SeekEntryResult!6204)

(assert (=> b!596526 (= res!382470 (= lt!270997 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270998 vacantSpotIndex!68 lt!271003 lt!271000 mask!3053)))))

(assert (=> b!596526 (= lt!270997 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270998 vacantSpotIndex!68 (select (arr!17757 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596526 (= lt!271003 (select (store (arr!17757 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271004 () Unit!18760)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36993 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18760)

(assert (=> b!596526 (= lt!271004 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270998 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596526 (= lt!270998 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596527 () Bool)

(assert (=> b!596527 (= e!340823 (= lt!271005 lt!270997))))

(declare-fun b!596528 () Bool)

(assert (=> b!596528 (= e!340822 e!340819)))

(declare-fun res!382469 () Bool)

(assert (=> b!596528 (=> (not res!382469) (not e!340819))))

(assert (=> b!596528 (= res!382469 (arrayContainsKey!0 lt!271000 (select (arr!17757 a!2986) j!136) j!136))))

(declare-fun b!596529 () Bool)

(assert (=> b!596529 (= e!340820 e!340814)))

(declare-fun res!382465 () Bool)

(assert (=> b!596529 (=> (not res!382465) (not e!340814))))

(assert (=> b!596529 (= res!382465 (= (select (store (arr!17757 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!596529 (= lt!271000 (array!36994 (store (arr!17757 a!2986) i!1108 k!1786) (size!18121 a!2986)))))

(declare-fun b!596530 () Bool)

(declare-fun Unit!18763 () Unit!18760)

(assert (=> b!596530 (= e!340817 Unit!18763)))

(assert (=> b!596530 false))

(declare-fun b!596531 () Bool)

(declare-fun res!382461 () Bool)

(assert (=> b!596531 (=> (not res!382461) (not e!340821))))

(assert (=> b!596531 (= res!382461 (and (= (size!18121 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18121 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18121 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596532 () Bool)

(assert (=> b!596532 (= e!340821 e!340820)))

(declare-fun res!382460 () Bool)

(assert (=> b!596532 (=> (not res!382460) (not e!340820))))

(declare-fun lt!271006 () SeekEntryResult!6204)

(assert (=> b!596532 (= res!382460 (or (= lt!271006 (MissingZero!6204 i!1108)) (= lt!271006 (MissingVacant!6204 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36993 (_ BitVec 32)) SeekEntryResult!6204)

(assert (=> b!596532 (= lt!271006 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596533 () Bool)

(declare-fun res!382459 () Bool)

(assert (=> b!596533 (=> (not res!382459) (not e!340820))))

(assert (=> b!596533 (= res!382459 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17757 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596534 () Bool)

(declare-fun res!382456 () Bool)

(assert (=> b!596534 (=> (not res!382456) (not e!340821))))

(assert (=> b!596534 (= res!382456 (validKeyInArray!0 k!1786))))

(assert (= (and start!54570 res!382468) b!596531))

(assert (= (and b!596531 res!382461) b!596516))

(assert (= (and b!596516 res!382471) b!596534))

(assert (= (and b!596534 res!382456) b!596524))

(assert (= (and b!596524 res!382463) b!596532))

(assert (= (and b!596532 res!382460) b!596522))

(assert (= (and b!596522 res!382458) b!596523))

(assert (= (and b!596523 res!382467) b!596533))

(assert (= (and b!596533 res!382459) b!596529))

(assert (= (and b!596529 res!382465) b!596518))

(assert (= (and b!596518 res!382462) b!596526))

(assert (= (and b!596526 res!382470) b!596527))

(assert (= (and b!596526 c!67397) b!596530))

(assert (= (and b!596526 (not c!67397)) b!596525))

(assert (= (and b!596526 (not res!382464)) b!596520))

(assert (= (and b!596520 res!382457) b!596521))

(assert (= (and b!596521 (not res!382472)) b!596528))

(assert (= (and b!596528 res!382469) b!596517))

(assert (= (and b!596520 (not res!382466)) b!596519))

(declare-fun m!574017 () Bool)

(assert (=> b!596519 m!574017))

(assert (=> b!596519 m!574017))

(declare-fun m!574019 () Bool)

(assert (=> b!596519 m!574019))

(declare-fun m!574021 () Bool)

(assert (=> b!596519 m!574021))

(assert (=> b!596519 m!574017))

(declare-fun m!574023 () Bool)

(assert (=> b!596519 m!574023))

(declare-fun m!574025 () Bool)

(assert (=> b!596519 m!574025))

(assert (=> b!596520 m!574017))

(declare-fun m!574027 () Bool)

(assert (=> b!596520 m!574027))

(declare-fun m!574029 () Bool)

(assert (=> b!596520 m!574029))

(declare-fun m!574031 () Bool)

(assert (=> b!596532 m!574031))

(declare-fun m!574033 () Bool)

(assert (=> b!596524 m!574033))

(assert (=> b!596528 m!574017))

(assert (=> b!596528 m!574017))

(declare-fun m!574035 () Bool)

(assert (=> b!596528 m!574035))

(assert (=> b!596529 m!574027))

(declare-fun m!574037 () Bool)

(assert (=> b!596529 m!574037))

(declare-fun m!574039 () Bool)

(assert (=> b!596534 m!574039))

(declare-fun m!574041 () Bool)

(assert (=> b!596522 m!574041))

(declare-fun m!574043 () Bool)

(assert (=> b!596518 m!574043))

(assert (=> b!596518 m!574017))

(assert (=> b!596518 m!574017))

(declare-fun m!574045 () Bool)

(assert (=> b!596518 m!574045))

(declare-fun m!574047 () Bool)

(assert (=> start!54570 m!574047))

(declare-fun m!574049 () Bool)

(assert (=> start!54570 m!574049))

(assert (=> b!596521 m!574017))

(declare-fun m!574051 () Bool)

(assert (=> b!596523 m!574051))

(declare-fun m!574053 () Bool)

(assert (=> b!596526 m!574053))

(declare-fun m!574055 () Bool)

(assert (=> b!596526 m!574055))

(assert (=> b!596526 m!574017))

(assert (=> b!596526 m!574027))

(declare-fun m!574057 () Bool)

(assert (=> b!596526 m!574057))

(declare-fun m!574059 () Bool)

(assert (=> b!596526 m!574059))

(declare-fun m!574061 () Bool)

(assert (=> b!596526 m!574061))

(assert (=> b!596526 m!574017))

(declare-fun m!574063 () Bool)

(assert (=> b!596526 m!574063))

(assert (=> b!596517 m!574017))

(assert (=> b!596517 m!574017))

(declare-fun m!574065 () Bool)

(assert (=> b!596517 m!574065))

(assert (=> b!596516 m!574017))

(assert (=> b!596516 m!574017))

(declare-fun m!574067 () Bool)

(assert (=> b!596516 m!574067))

(declare-fun m!574069 () Bool)

(assert (=> b!596533 m!574069))

(push 1)

