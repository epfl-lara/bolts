; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57534 () Bool)

(assert start!57534)

(declare-fun b!636104 () Bool)

(declare-fun res!411623 () Bool)

(declare-fun e!363901 () Bool)

(assert (=> b!636104 (=> (not res!411623) (not e!363901))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38211 0))(
  ( (array!38212 (arr!18327 (Array (_ BitVec 32) (_ BitVec 64))) (size!18691 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38211)

(assert (=> b!636104 (= res!411623 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18327 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!636105 () Bool)

(declare-fun lt!294183 () array!38211)

(declare-fun e!363899 () Bool)

(declare-fun arrayContainsKey!0 (array!38211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!636105 (= e!363899 (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) index!984))))

(declare-fun b!636106 () Bool)

(declare-fun res!411639 () Bool)

(declare-fun e!363902 () Bool)

(assert (=> b!636106 (=> (not res!411639) (not e!363902))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!636106 (= res!411639 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!636107 () Bool)

(declare-fun e!363905 () Bool)

(assert (=> b!636107 (= e!363905 e!363899)))

(declare-fun res!411637 () Bool)

(assert (=> b!636107 (=> (not res!411637) (not e!363899))))

(assert (=> b!636107 (= res!411637 (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) j!136))))

(declare-fun b!636108 () Bool)

(declare-fun res!411630 () Bool)

(assert (=> b!636108 (=> (not res!411630) (not e!363902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!636108 (= res!411630 (validKeyInArray!0 k!1786))))

(declare-fun b!636109 () Bool)

(declare-fun e!363897 () Bool)

(declare-fun e!363907 () Bool)

(assert (=> b!636109 (= e!363897 e!363907)))

(declare-fun res!411635 () Bool)

(assert (=> b!636109 (=> res!411635 e!363907)))

(declare-fun lt!294184 () (_ BitVec 64))

(declare-fun lt!294185 () (_ BitVec 64))

(assert (=> b!636109 (= res!411635 (or (not (= (select (arr!18327 a!2986) j!136) lt!294185)) (not (= (select (arr!18327 a!2986) j!136) lt!294184)) (bvsge j!136 index!984)))))

(declare-fun e!363906 () Bool)

(assert (=> b!636109 e!363906))

(declare-fun res!411624 () Bool)

(assert (=> b!636109 (=> (not res!411624) (not e!363906))))

(assert (=> b!636109 (= res!411624 (= lt!294184 (select (arr!18327 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!636109 (= lt!294184 (select (store (arr!18327 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!636110 () Bool)

(declare-fun res!411633 () Bool)

(assert (=> b!636110 (=> (not res!411633) (not e!363901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38211 (_ BitVec 32)) Bool)

(assert (=> b!636110 (= res!411633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!636111 () Bool)

(assert (=> b!636111 (= e!363906 e!363905)))

(declare-fun res!411627 () Bool)

(assert (=> b!636111 (=> res!411627 e!363905)))

(assert (=> b!636111 (= res!411627 (or (not (= (select (arr!18327 a!2986) j!136) lt!294185)) (not (= (select (arr!18327 a!2986) j!136) lt!294184)) (bvsge j!136 index!984)))))

(declare-fun b!636112 () Bool)

(declare-fun e!363898 () Bool)

(declare-fun e!363900 () Bool)

(assert (=> b!636112 (= e!363898 e!363900)))

(declare-fun res!411640 () Bool)

(assert (=> b!636112 (=> (not res!411640) (not e!363900))))

(declare-datatypes ((List!12421 0))(
  ( (Nil!12418) (Cons!12417 (h!13462 (_ BitVec 64)) (t!18657 List!12421)) )
))
(declare-fun contains!3104 (List!12421 (_ BitVec 64)) Bool)

(assert (=> b!636112 (= res!411640 (not (contains!3104 Nil!12418 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!636113 () Bool)

(declare-fun e!363894 () Bool)

(declare-datatypes ((SeekEntryResult!6774 0))(
  ( (MissingZero!6774 (index!29403 (_ BitVec 32))) (Found!6774 (index!29404 (_ BitVec 32))) (Intermediate!6774 (undefined!7586 Bool) (index!29405 (_ BitVec 32)) (x!58183 (_ BitVec 32))) (Undefined!6774) (MissingVacant!6774 (index!29406 (_ BitVec 32))) )
))
(declare-fun lt!294180 () SeekEntryResult!6774)

(declare-fun lt!294181 () SeekEntryResult!6774)

(assert (=> b!636113 (= e!363894 (= lt!294180 lt!294181))))

(declare-fun b!636114 () Bool)

(declare-fun res!411632 () Bool)

(assert (=> b!636114 (=> (not res!411632) (not e!363901))))

(declare-fun arrayNoDuplicates!0 (array!38211 (_ BitVec 32) List!12421) Bool)

(assert (=> b!636114 (= res!411632 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12418))))

(declare-fun res!411636 () Bool)

(assert (=> start!57534 (=> (not res!411636) (not e!363902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57534 (= res!411636 (validMask!0 mask!3053))))

(assert (=> start!57534 e!363902))

(assert (=> start!57534 true))

(declare-fun array_inv!14101 (array!38211) Bool)

(assert (=> start!57534 (array_inv!14101 a!2986)))

(declare-fun b!636115 () Bool)

(declare-fun e!363895 () Bool)

(assert (=> b!636115 (= e!363895 (not e!363897))))

(declare-fun res!411622 () Bool)

(assert (=> b!636115 (=> res!411622 e!363897)))

(declare-fun lt!294186 () SeekEntryResult!6774)

(assert (=> b!636115 (= res!411622 (not (= lt!294186 (Found!6774 index!984))))))

(declare-datatypes ((Unit!21454 0))(
  ( (Unit!21455) )
))
(declare-fun lt!294179 () Unit!21454)

(declare-fun e!363904 () Unit!21454)

(assert (=> b!636115 (= lt!294179 e!363904)))

(declare-fun c!72608 () Bool)

(assert (=> b!636115 (= c!72608 (= lt!294186 Undefined!6774))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38211 (_ BitVec 32)) SeekEntryResult!6774)

(assert (=> b!636115 (= lt!294186 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294185 lt!294183 mask!3053))))

(assert (=> b!636115 e!363894))

(declare-fun res!411629 () Bool)

(assert (=> b!636115 (=> (not res!411629) (not e!363894))))

(declare-fun lt!294189 () (_ BitVec 32))

(assert (=> b!636115 (= res!411629 (= lt!294181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 lt!294185 lt!294183 mask!3053)))))

(assert (=> b!636115 (= lt!294181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 (select (arr!18327 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!636115 (= lt!294185 (select (store (arr!18327 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294187 () Unit!21454)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21454)

(assert (=> b!636115 (= lt!294187 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!636115 (= lt!294189 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!636116 () Bool)

(declare-fun res!411626 () Bool)

(assert (=> b!636116 (=> res!411626 e!363898)))

(declare-fun noDuplicate!379 (List!12421) Bool)

(assert (=> b!636116 (= res!411626 (not (noDuplicate!379 Nil!12418)))))

(declare-fun b!636117 () Bool)

(assert (=> b!636117 (= e!363902 e!363901)))

(declare-fun res!411631 () Bool)

(assert (=> b!636117 (=> (not res!411631) (not e!363901))))

(declare-fun lt!294182 () SeekEntryResult!6774)

(assert (=> b!636117 (= res!411631 (or (= lt!294182 (MissingZero!6774 i!1108)) (= lt!294182 (MissingVacant!6774 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38211 (_ BitVec 32)) SeekEntryResult!6774)

(assert (=> b!636117 (= lt!294182 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!636118 () Bool)

(declare-fun e!363896 () Bool)

(assert (=> b!636118 (= e!363901 e!363896)))

(declare-fun res!411628 () Bool)

(assert (=> b!636118 (=> (not res!411628) (not e!363896))))

(assert (=> b!636118 (= res!411628 (= (select (store (arr!18327 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!636118 (= lt!294183 (array!38212 (store (arr!18327 a!2986) i!1108 k!1786) (size!18691 a!2986)))))

(declare-fun b!636119 () Bool)

(declare-fun Unit!21456 () Unit!21454)

(assert (=> b!636119 (= e!363904 Unit!21456)))

(assert (=> b!636119 false))

(declare-fun b!636120 () Bool)

(declare-fun res!411625 () Bool)

(assert (=> b!636120 (=> (not res!411625) (not e!363902))))

(assert (=> b!636120 (= res!411625 (validKeyInArray!0 (select (arr!18327 a!2986) j!136)))))

(declare-fun b!636121 () Bool)

(assert (=> b!636121 (= e!363896 e!363895)))

(declare-fun res!411641 () Bool)

(assert (=> b!636121 (=> (not res!411641) (not e!363895))))

(assert (=> b!636121 (= res!411641 (and (= lt!294180 (Found!6774 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18327 a!2986) index!984) (select (arr!18327 a!2986) j!136))) (not (= (select (arr!18327 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!636121 (= lt!294180 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18327 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636122 () Bool)

(declare-fun Unit!21457 () Unit!21454)

(assert (=> b!636122 (= e!363904 Unit!21457)))

(declare-fun b!636123 () Bool)

(declare-fun res!411634 () Bool)

(assert (=> b!636123 (=> (not res!411634) (not e!363902))))

(assert (=> b!636123 (= res!411634 (and (= (size!18691 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18691 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18691 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!636124 () Bool)

(assert (=> b!636124 (= e!363907 e!363898)))

(declare-fun res!411638 () Bool)

(assert (=> b!636124 (=> res!411638 e!363898)))

(assert (=> b!636124 (= res!411638 (or (bvsge (size!18691 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18691 a!2986))))))

(assert (=> b!636124 (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294188 () Unit!21454)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38211 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21454)

(assert (=> b!636124 (= lt!294188 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294183 (select (arr!18327 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!636125 () Bool)

(assert (=> b!636125 (= e!363900 (not (contains!3104 Nil!12418 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!57534 res!411636) b!636123))

(assert (= (and b!636123 res!411634) b!636120))

(assert (= (and b!636120 res!411625) b!636108))

(assert (= (and b!636108 res!411630) b!636106))

(assert (= (and b!636106 res!411639) b!636117))

(assert (= (and b!636117 res!411631) b!636110))

(assert (= (and b!636110 res!411633) b!636114))

(assert (= (and b!636114 res!411632) b!636104))

(assert (= (and b!636104 res!411623) b!636118))

(assert (= (and b!636118 res!411628) b!636121))

(assert (= (and b!636121 res!411641) b!636115))

(assert (= (and b!636115 res!411629) b!636113))

(assert (= (and b!636115 c!72608) b!636119))

(assert (= (and b!636115 (not c!72608)) b!636122))

(assert (= (and b!636115 (not res!411622)) b!636109))

(assert (= (and b!636109 res!411624) b!636111))

(assert (= (and b!636111 (not res!411627)) b!636107))

(assert (= (and b!636107 res!411637) b!636105))

(assert (= (and b!636109 (not res!411635)) b!636124))

(assert (= (and b!636124 (not res!411638)) b!636116))

(assert (= (and b!636116 (not res!411626)) b!636112))

(assert (= (and b!636112 res!411640) b!636125))

(declare-fun m!610407 () Bool)

(assert (=> b!636124 m!610407))

(assert (=> b!636124 m!610407))

(declare-fun m!610409 () Bool)

(assert (=> b!636124 m!610409))

(assert (=> b!636124 m!610407))

(declare-fun m!610411 () Bool)

(assert (=> b!636124 m!610411))

(declare-fun m!610413 () Bool)

(assert (=> b!636106 m!610413))

(assert (=> b!636107 m!610407))

(assert (=> b!636107 m!610407))

(declare-fun m!610415 () Bool)

(assert (=> b!636107 m!610415))

(declare-fun m!610417 () Bool)

(assert (=> b!636112 m!610417))

(declare-fun m!610419 () Bool)

(assert (=> b!636114 m!610419))

(assert (=> b!636105 m!610407))

(assert (=> b!636105 m!610407))

(declare-fun m!610421 () Bool)

(assert (=> b!636105 m!610421))

(assert (=> b!636109 m!610407))

(declare-fun m!610423 () Bool)

(assert (=> b!636109 m!610423))

(declare-fun m!610425 () Bool)

(assert (=> b!636109 m!610425))

(declare-fun m!610427 () Bool)

(assert (=> b!636121 m!610427))

(assert (=> b!636121 m!610407))

(assert (=> b!636121 m!610407))

(declare-fun m!610429 () Bool)

(assert (=> b!636121 m!610429))

(declare-fun m!610431 () Bool)

(assert (=> b!636104 m!610431))

(declare-fun m!610433 () Bool)

(assert (=> b!636125 m!610433))

(assert (=> b!636118 m!610423))

(declare-fun m!610435 () Bool)

(assert (=> b!636118 m!610435))

(assert (=> b!636111 m!610407))

(declare-fun m!610437 () Bool)

(assert (=> b!636116 m!610437))

(declare-fun m!610439 () Bool)

(assert (=> b!636115 m!610439))

(assert (=> b!636115 m!610407))

(assert (=> b!636115 m!610423))

(declare-fun m!610441 () Bool)

(assert (=> b!636115 m!610441))

(declare-fun m!610443 () Bool)

(assert (=> b!636115 m!610443))

(declare-fun m!610445 () Bool)

(assert (=> b!636115 m!610445))

(declare-fun m!610447 () Bool)

(assert (=> b!636115 m!610447))

(assert (=> b!636115 m!610407))

(declare-fun m!610449 () Bool)

(assert (=> b!636115 m!610449))

(declare-fun m!610451 () Bool)

(assert (=> b!636117 m!610451))

(declare-fun m!610453 () Bool)

(assert (=> b!636108 m!610453))

(declare-fun m!610455 () Bool)

(assert (=> b!636110 m!610455))

(assert (=> b!636120 m!610407))

(assert (=> b!636120 m!610407))

(declare-fun m!610457 () Bool)

(assert (=> b!636120 m!610457))

(declare-fun m!610459 () Bool)

(assert (=> start!57534 m!610459))

(declare-fun m!610461 () Bool)

(assert (=> start!57534 m!610461))

(push 1)

(assert (not b!636105))

(assert (not b!636106))

(assert (not b!636117))

(assert (not b!636107))

(assert (not b!636108))

(assert (not start!57534))

(assert (not b!636116))

(assert (not b!636110))

(assert (not b!636114))

(assert (not b!636112))

(assert (not b!636124))

(assert (not b!636120))

(assert (not b!636121))

(assert (not b!636125))

(assert (not b!636115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89831 () Bool)

(declare-fun lt!294273 () (_ BitVec 32))

(assert (=> d!89831 (and (bvsge lt!294273 #b00000000000000000000000000000000) (bvslt lt!294273 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89831 (= lt!294273 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89831 (validMask!0 mask!3053)))

(assert (=> d!89831 (= (nextIndex!0 index!984 x!910 mask!3053) lt!294273)))

(declare-fun bs!19109 () Bool)

(assert (= bs!19109 d!89831))

(declare-fun m!610599 () Bool)

(assert (=> bs!19109 m!610599))

(assert (=> bs!19109 m!610459))

(assert (=> b!636115 d!89831))

(declare-fun d!89833 () Bool)

(declare-fun lt!294300 () SeekEntryResult!6774)

(assert (=> d!89833 (and (or (is-Undefined!6774 lt!294300) (not (is-Found!6774 lt!294300)) (and (bvsge (index!29404 lt!294300) #b00000000000000000000000000000000) (bvslt (index!29404 lt!294300) (size!18691 a!2986)))) (or (is-Undefined!6774 lt!294300) (is-Found!6774 lt!294300) (not (is-MissingVacant!6774 lt!294300)) (not (= (index!29406 lt!294300) vacantSpotIndex!68)) (and (bvsge (index!29406 lt!294300) #b00000000000000000000000000000000) (bvslt (index!29406 lt!294300) (size!18691 a!2986)))) (or (is-Undefined!6774 lt!294300) (ite (is-Found!6774 lt!294300) (= (select (arr!18327 a!2986) (index!29404 lt!294300)) (select (arr!18327 a!2986) j!136)) (and (is-MissingVacant!6774 lt!294300) (= (index!29406 lt!294300) vacantSpotIndex!68) (= (select (arr!18327 a!2986) (index!29406 lt!294300)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364055 () SeekEntryResult!6774)

(assert (=> d!89833 (= lt!294300 e!364055)))

(declare-fun c!72648 () Bool)

(assert (=> d!89833 (= c!72648 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294301 () (_ BitVec 64))

(assert (=> d!89833 (= lt!294301 (select (arr!18327 a!2986) lt!294189))))

(assert (=> d!89833 (validMask!0 mask!3053)))

(assert (=> d!89833 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 (select (arr!18327 a!2986) j!136) a!2986 mask!3053) lt!294300)))

(declare-fun b!636353 () Bool)

(declare-fun e!364054 () SeekEntryResult!6774)

(assert (=> b!636353 (= e!364054 (MissingVacant!6774 vacantSpotIndex!68))))

(declare-fun b!636354 () Bool)

(declare-fun c!72649 () Bool)

(assert (=> b!636354 (= c!72649 (= lt!294301 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364056 () SeekEntryResult!6774)

(assert (=> b!636354 (= e!364056 e!364054)))

(declare-fun b!636355 () Bool)

(assert (=> b!636355 (= e!364054 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294189 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18327 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!636356 () Bool)

(assert (=> b!636356 (= e!364056 (Found!6774 lt!294189))))

(declare-fun b!636357 () Bool)

(assert (=> b!636357 (= e!364055 Undefined!6774)))

(declare-fun b!636358 () Bool)

(assert (=> b!636358 (= e!364055 e!364056)))

(declare-fun c!72650 () Bool)

(assert (=> b!636358 (= c!72650 (= lt!294301 (select (arr!18327 a!2986) j!136)))))

(assert (= (and d!89833 c!72648) b!636357))

(assert (= (and d!89833 (not c!72648)) b!636358))

(assert (= (and b!636358 c!72650) b!636356))

(assert (= (and b!636358 (not c!72650)) b!636354))

(assert (= (and b!636354 c!72649) b!636353))

(assert (= (and b!636354 (not c!72649)) b!636355))

(declare-fun m!610645 () Bool)

(assert (=> d!89833 m!610645))

(declare-fun m!610647 () Bool)

(assert (=> d!89833 m!610647))

(declare-fun m!610649 () Bool)

(assert (=> d!89833 m!610649))

(assert (=> d!89833 m!610459))

(declare-fun m!610653 () Bool)

(assert (=> b!636355 m!610653))

(assert (=> b!636355 m!610653))

(assert (=> b!636355 m!610407))

(declare-fun m!610659 () Bool)

(assert (=> b!636355 m!610659))

(assert (=> b!636115 d!89833))

(declare-fun d!89856 () Bool)

(declare-fun e!364092 () Bool)

(assert (=> d!89856 e!364092))

(declare-fun res!411814 () Bool)

(assert (=> d!89856 (=> (not res!411814) (not e!364092))))

(assert (=> d!89856 (= res!411814 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18691 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18691 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18691 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18691 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18691 a!2986))))))

(declare-fun lt!294322 () Unit!21454)

(declare-fun choose!9 (array!38211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21454)

(assert (=> d!89856 (= lt!294322 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89856 (validMask!0 mask!3053)))

(assert (=> d!89856 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 mask!3053) lt!294322)))

(declare-fun b!636406 () Bool)

(assert (=> b!636406 (= e!364092 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 (select (arr!18327 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 (select (store (arr!18327 a!2986) i!1108 k!1786) j!136) (array!38212 (store (arr!18327 a!2986) i!1108 k!1786) (size!18691 a!2986)) mask!3053)))))

(assert (= (and d!89856 res!411814) b!636406))

(declare-fun m!610713 () Bool)

(assert (=> d!89856 m!610713))

(assert (=> d!89856 m!610459))

(assert (=> b!636406 m!610439))

(declare-fun m!610715 () Bool)

(assert (=> b!636406 m!610715))

(assert (=> b!636406 m!610407))

(assert (=> b!636406 m!610407))

(assert (=> b!636406 m!610449))

(assert (=> b!636406 m!610423))

(assert (=> b!636406 m!610439))

(assert (=> b!636115 d!89856))

(declare-fun d!89883 () Bool)

(declare-fun lt!294325 () SeekEntryResult!6774)

(assert (=> d!89883 (and (or (is-Undefined!6774 lt!294325) (not (is-Found!6774 lt!294325)) (and (bvsge (index!29404 lt!294325) #b00000000000000000000000000000000) (bvslt (index!29404 lt!294325) (size!18691 lt!294183)))) (or (is-Undefined!6774 lt!294325) (is-Found!6774 lt!294325) (not (is-MissingVacant!6774 lt!294325)) (not (= (index!29406 lt!294325) vacantSpotIndex!68)) (and (bvsge (index!29406 lt!294325) #b00000000000000000000000000000000) (bvslt (index!29406 lt!294325) (size!18691 lt!294183)))) (or (is-Undefined!6774 lt!294325) (ite (is-Found!6774 lt!294325) (= (select (arr!18327 lt!294183) (index!29404 lt!294325)) lt!294185) (and (is-MissingVacant!6774 lt!294325) (= (index!29406 lt!294325) vacantSpotIndex!68) (= (select (arr!18327 lt!294183) (index!29406 lt!294325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364098 () SeekEntryResult!6774)

(assert (=> d!89883 (= lt!294325 e!364098)))

(declare-fun c!72663 () Bool)

(assert (=> d!89883 (= c!72663 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!294326 () (_ BitVec 64))

(assert (=> d!89883 (= lt!294326 (select (arr!18327 lt!294183) lt!294189))))

(assert (=> d!89883 (validMask!0 mask!3053)))

(assert (=> d!89883 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294189 vacantSpotIndex!68 lt!294185 lt!294183 mask!3053) lt!294325)))

(declare-fun b!636411 () Bool)

(declare-fun e!364097 () SeekEntryResult!6774)

(assert (=> b!636411 (= e!364097 (MissingVacant!6774 vacantSpotIndex!68))))

(declare-fun b!636412 () Bool)

(declare-fun c!72664 () Bool)

(assert (=> b!636412 (= c!72664 (= lt!294326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364099 () SeekEntryResult!6774)

(assert (=> b!636412 (= e!364099 e!364097)))

(declare-fun b!636413 () Bool)

(assert (=> b!636413 (= e!364097 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!294189 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!294185 lt!294183 mask!3053))))

(declare-fun b!636414 () Bool)

(assert (=> b!636414 (= e!364099 (Found!6774 lt!294189))))

(declare-fun b!636415 () Bool)

(assert (=> b!636415 (= e!364098 Undefined!6774)))

(declare-fun b!636416 () Bool)

(assert (=> b!636416 (= e!364098 e!364099)))

(declare-fun c!72665 () Bool)

(assert (=> b!636416 (= c!72665 (= lt!294326 lt!294185))))

(assert (= (and d!89883 c!72663) b!636415))

(assert (= (and d!89883 (not c!72663)) b!636416))

(assert (= (and b!636416 c!72665) b!636414))

(assert (= (and b!636416 (not c!72665)) b!636412))

(assert (= (and b!636412 c!72664) b!636411))

(assert (= (and b!636412 (not c!72664)) b!636413))

(declare-fun m!610717 () Bool)

(assert (=> d!89883 m!610717))

(declare-fun m!610719 () Bool)

(assert (=> d!89883 m!610719))

(declare-fun m!610721 () Bool)

(assert (=> d!89883 m!610721))

(assert (=> d!89883 m!610459))

(assert (=> b!636413 m!610653))

(assert (=> b!636413 m!610653))

(declare-fun m!610727 () Bool)

(assert (=> b!636413 m!610727))

(assert (=> b!636115 d!89883))

(declare-fun d!89887 () Bool)

(declare-fun lt!294328 () SeekEntryResult!6774)

(assert (=> d!89887 (and (or (is-Undefined!6774 lt!294328) (not (is-Found!6774 lt!294328)) (and (bvsge (index!29404 lt!294328) #b00000000000000000000000000000000) (bvslt (index!29404 lt!294328) (size!18691 lt!294183)))) (or (is-Undefined!6774 lt!294328) (is-Found!6774 lt!294328) (not (is-MissingVacant!6774 lt!294328)) (not (= (index!29406 lt!294328) vacantSpotIndex!68)) (and (bvsge (index!29406 lt!294328) #b00000000000000000000000000000000) (bvslt (index!29406 lt!294328) (size!18691 lt!294183)))) (or (is-Undefined!6774 lt!294328) (ite (is-Found!6774 lt!294328) (= (select (arr!18327 lt!294183) (index!29404 lt!294328)) lt!294185) (and (is-MissingVacant!6774 lt!294328) (= (index!29406 lt!294328) vacantSpotIndex!68) (= (select (arr!18327 lt!294183) (index!29406 lt!294328)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!364103 () SeekEntryResult!6774)

(assert (=> d!89887 (= lt!294328 e!364103)))

(declare-fun c!72666 () Bool)

(assert (=> d!89887 (= c!72666 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!294329 () (_ BitVec 64))

(assert (=> d!89887 (= lt!294329 (select (arr!18327 lt!294183) index!984))))

(assert (=> d!89887 (validMask!0 mask!3053)))

(assert (=> d!89887 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294185 lt!294183 mask!3053) lt!294328)))

(declare-fun b!636419 () Bool)

(declare-fun e!364102 () SeekEntryResult!6774)

(assert (=> b!636419 (= e!364102 (MissingVacant!6774 vacantSpotIndex!68))))

(declare-fun b!636420 () Bool)

(declare-fun c!72667 () Bool)

(assert (=> b!636420 (= c!72667 (= lt!294329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!364104 () SeekEntryResult!6774)

(assert (=> b!636420 (= e!364104 e!364102)))

(declare-fun b!636421 () Bool)

(assert (=> b!636421 (= e!364102 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!294185 lt!294183 mask!3053))))

(declare-fun b!636422 () Bool)

(assert (=> b!636422 (= e!364104 (Found!6774 index!984))))

(declare-fun b!636423 () Bool)

(assert (=> b!636423 (= e!364103 Undefined!6774)))

(declare-fun b!636424 () Bool)

(assert (=> b!636424 (= e!364103 e!364104)))

(declare-fun c!72668 () Bool)

(assert (=> b!636424 (= c!72668 (= lt!294329 lt!294185))))

(assert (= (and d!89887 c!72666) b!636423))

(assert (= (and d!89887 (not c!72666)) b!636424))

(assert (= (and b!636424 c!72668) b!636422))

(assert (= (and b!636424 (not c!72668)) b!636420))

(assert (= (and b!636420 c!72667) b!636419))

(assert (= (and b!636420 (not c!72667)) b!636421))

(declare-fun m!610735 () Bool)

(assert (=> d!89887 m!610735))

(declare-fun m!610737 () Bool)

(assert (=> d!89887 m!610737))

(declare-fun m!610739 () Bool)

(assert (=> d!89887 m!610739))

(assert (=> d!89887 m!610459))

(assert (=> b!636421 m!610447))

(assert (=> b!636421 m!610447))

(declare-fun m!610741 () Bool)

(assert (=> b!636421 m!610741))

(assert (=> b!636115 d!89887))

(declare-fun d!89893 () Bool)

(declare-fun res!411833 () Bool)

(declare-fun e!364119 () Bool)

(assert (=> d!89893 (=> res!411833 e!364119)))

(assert (=> d!89893 (= res!411833 (= (select (arr!18327 lt!294183) index!984) (select (arr!18327 a!2986) j!136)))))

(assert (=> d!89893 (= (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) index!984) e!364119)))

(declare-fun b!636441 () Bool)

(declare-fun e!364120 () Bool)

(assert (=> b!636441 (= e!364119 e!364120)))

(declare-fun res!411834 () Bool)

(assert (=> b!636441 (=> (not res!411834) (not e!364120))))

(assert (=> b!636441 (= res!411834 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18691 lt!294183)))))

(declare-fun b!636442 () Bool)

(assert (=> b!636442 (= e!364120 (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!89893 (not res!411833)) b!636441))

(assert (= (and b!636441 res!411834) b!636442))

(assert (=> d!89893 m!610739))

(assert (=> b!636442 m!610407))

(declare-fun m!610743 () Bool)

(assert (=> b!636442 m!610743))

(assert (=> b!636105 d!89893))

(declare-fun d!89895 () Bool)

(declare-fun res!411835 () Bool)

(declare-fun e!364121 () Bool)

(assert (=> d!89895 (=> res!411835 e!364121)))

(assert (=> d!89895 (= res!411835 (= (select (arr!18327 lt!294183) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18327 a!2986) j!136)))))

(assert (=> d!89895 (= (arrayContainsKey!0 lt!294183 (select (arr!18327 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!364121)))

(declare-fun b!636443 () Bool)

(declare-fun e!364122 () Bool)

(assert (=> b!636443 (= e!364121 e!364122)))

(declare-fun res!411836 () Bool)

(assert (=> b!636443 (=> (not res!411836) (not e!364122))))

