; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55572 () Bool)

(assert start!55572)

(declare-fun b!607791 () Bool)

(declare-fun e!348071 () Bool)

(declare-fun e!348078 () Bool)

(assert (=> b!607791 (= e!348071 (not e!348078))))

(declare-fun res!390711 () Bool)

(assert (=> b!607791 (=> res!390711 e!348078)))

(declare-datatypes ((SeekEntryResult!6327 0))(
  ( (MissingZero!6327 (index!27582 (_ BitVec 32))) (Found!6327 (index!27583 (_ BitVec 32))) (Intermediate!6327 (undefined!7139 Bool) (index!27584 (_ BitVec 32)) (x!56421 (_ BitVec 32))) (Undefined!6327) (MissingVacant!6327 (index!27585 (_ BitVec 32))) )
))
(declare-fun lt!277642 () SeekEntryResult!6327)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!607791 (= res!390711 (not (= lt!277642 (Found!6327 index!984))))))

(declare-datatypes ((Unit!19390 0))(
  ( (Unit!19391) )
))
(declare-fun lt!277635 () Unit!19390)

(declare-fun e!348081 () Unit!19390)

(assert (=> b!607791 (= lt!277635 e!348081)))

(declare-fun c!68911 () Bool)

(assert (=> b!607791 (= c!68911 (= lt!277642 Undefined!6327))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!277645 () (_ BitVec 64))

(declare-datatypes ((array!37266 0))(
  ( (array!37267 (arr!17880 (Array (_ BitVec 32) (_ BitVec 64))) (size!18244 (_ BitVec 32))) )
))
(declare-fun lt!277633 () array!37266)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37266 (_ BitVec 32)) SeekEntryResult!6327)

(assert (=> b!607791 (= lt!277642 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!277645 lt!277633 mask!3053))))

(declare-fun e!348072 () Bool)

(assert (=> b!607791 e!348072))

(declare-fun res!390721 () Bool)

(assert (=> b!607791 (=> (not res!390721) (not e!348072))))

(declare-fun lt!277638 () SeekEntryResult!6327)

(declare-fun lt!277644 () (_ BitVec 32))

(assert (=> b!607791 (= res!390721 (= lt!277638 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277644 vacantSpotIndex!68 lt!277645 lt!277633 mask!3053)))))

(declare-fun a!2986 () array!37266)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!607791 (= lt!277638 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!277644 vacantSpotIndex!68 (select (arr!17880 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!607791 (= lt!277645 (select (store (arr!17880 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!277647 () Unit!19390)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37266 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19390)

(assert (=> b!607791 (= lt!277647 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!277644 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!607791 (= lt!277644 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!607792 () Bool)

(declare-fun e!348073 () Bool)

(declare-fun e!348074 () Bool)

(assert (=> b!607792 (= e!348073 e!348074)))

(declare-fun res!390717 () Bool)

(assert (=> b!607792 (=> res!390717 e!348074)))

(assert (=> b!607792 (= res!390717 (bvsge index!984 j!136))))

(declare-fun lt!277641 () Unit!19390)

(declare-fun e!348075 () Unit!19390)

(assert (=> b!607792 (= lt!277641 e!348075)))

(declare-fun c!68912 () Bool)

(assert (=> b!607792 (= c!68912 (bvslt j!136 index!984))))

(declare-fun b!607793 () Bool)

(assert (=> b!607793 (= e!348078 e!348073)))

(declare-fun res!390712 () Bool)

(assert (=> b!607793 (=> res!390712 e!348073)))

(declare-fun lt!277637 () (_ BitVec 64))

(assert (=> b!607793 (= res!390712 (or (not (= (select (arr!17880 a!2986) j!136) lt!277645)) (not (= (select (arr!17880 a!2986) j!136) lt!277637))))))

(declare-fun e!348077 () Bool)

(assert (=> b!607793 e!348077))

(declare-fun res!390705 () Bool)

(assert (=> b!607793 (=> (not res!390705) (not e!348077))))

(assert (=> b!607793 (= res!390705 (= lt!277637 (select (arr!17880 a!2986) j!136)))))

(assert (=> b!607793 (= lt!277637 (select (store (arr!17880 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!607794 () Bool)

(declare-fun res!390706 () Bool)

(declare-fun e!348076 () Bool)

(assert (=> b!607794 (=> (not res!390706) (not e!348076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37266 (_ BitVec 32)) Bool)

(assert (=> b!607794 (= res!390706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!607795 () Bool)

(declare-fun res!390708 () Bool)

(declare-fun e!348080 () Bool)

(assert (=> b!607795 (=> (not res!390708) (not e!348080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!607795 (= res!390708 (validKeyInArray!0 (select (arr!17880 a!2986) j!136)))))

(declare-fun b!607796 () Bool)

(declare-fun res!390725 () Bool)

(declare-fun e!348068 () Bool)

(assert (=> b!607796 (=> res!390725 e!348068)))

(declare-datatypes ((List!11974 0))(
  ( (Nil!11971) (Cons!11970 (h!13015 (_ BitVec 64)) (t!18210 List!11974)) )
))
(declare-fun contains!3020 (List!11974 (_ BitVec 64)) Bool)

(assert (=> b!607796 (= res!390725 (contains!3020 Nil!11971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607797 () Bool)

(declare-fun e!348070 () Bool)

(declare-fun arrayContainsKey!0 (array!37266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!607797 (= e!348070 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) index!984))))

(declare-fun b!607798 () Bool)

(declare-fun Unit!19392 () Unit!19390)

(assert (=> b!607798 (= e!348081 Unit!19392)))

(declare-fun b!607799 () Bool)

(declare-fun e!348069 () Bool)

(assert (=> b!607799 (= e!348077 e!348069)))

(declare-fun res!390719 () Bool)

(assert (=> b!607799 (=> res!390719 e!348069)))

(assert (=> b!607799 (= res!390719 (or (not (= (select (arr!17880 a!2986) j!136) lt!277645)) (not (= (select (arr!17880 a!2986) j!136) lt!277637)) (bvsge j!136 index!984)))))

(declare-fun b!607800 () Bool)

(declare-fun res!390713 () Bool)

(assert (=> b!607800 (=> (not res!390713) (not e!348080))))

(assert (=> b!607800 (= res!390713 (and (= (size!18244 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18244 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18244 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!607801 () Bool)

(declare-fun e!348082 () Bool)

(assert (=> b!607801 (= e!348082 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) index!984))))

(declare-fun b!607802 () Bool)

(declare-fun Unit!19393 () Unit!19390)

(assert (=> b!607802 (= e!348075 Unit!19393)))

(declare-fun b!607804 () Bool)

(declare-fun res!390714 () Bool)

(assert (=> b!607804 (=> res!390714 e!348068)))

(assert (=> b!607804 (= res!390714 (contains!3020 Nil!11971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!607805 () Bool)

(declare-fun Unit!19394 () Unit!19390)

(assert (=> b!607805 (= e!348075 Unit!19394)))

(declare-fun lt!277634 () Unit!19390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37266 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19390)

(assert (=> b!607805 (= lt!277634 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277633 (select (arr!17880 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!607805 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!277643 () Unit!19390)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37266 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11974) Unit!19390)

(assert (=> b!607805 (= lt!277643 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11971))))

(declare-fun arrayNoDuplicates!0 (array!37266 (_ BitVec 32) List!11974) Bool)

(assert (=> b!607805 (arrayNoDuplicates!0 lt!277633 #b00000000000000000000000000000000 Nil!11971)))

(declare-fun lt!277640 () Unit!19390)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37266 (_ BitVec 32) (_ BitVec 32)) Unit!19390)

(assert (=> b!607805 (= lt!277640 (lemmaNoDuplicateFromThenFromBigger!0 lt!277633 #b00000000000000000000000000000000 j!136))))

(assert (=> b!607805 (arrayNoDuplicates!0 lt!277633 j!136 Nil!11971)))

(declare-fun lt!277631 () Unit!19390)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37266 (_ BitVec 64) (_ BitVec 32) List!11974) Unit!19390)

(assert (=> b!607805 (= lt!277631 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!277633 (select (arr!17880 a!2986) j!136) j!136 Nil!11971))))

(assert (=> b!607805 false))

(declare-fun b!607806 () Bool)

(declare-fun res!390710 () Bool)

(assert (=> b!607806 (=> (not res!390710) (not e!348080))))

(assert (=> b!607806 (= res!390710 (validKeyInArray!0 k!1786))))

(declare-fun b!607807 () Bool)

(declare-fun e!348067 () Bool)

(assert (=> b!607807 (= e!348076 e!348067)))

(declare-fun res!390723 () Bool)

(assert (=> b!607807 (=> (not res!390723) (not e!348067))))

(assert (=> b!607807 (= res!390723 (= (select (store (arr!17880 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!607807 (= lt!277633 (array!37267 (store (arr!17880 a!2986) i!1108 k!1786) (size!18244 a!2986)))))

(declare-fun b!607808 () Bool)

(assert (=> b!607808 (= e!348068 true)))

(declare-fun lt!277632 () Bool)

(assert (=> b!607808 (= lt!277632 (contains!3020 Nil!11971 k!1786))))

(declare-fun b!607809 () Bool)

(assert (=> b!607809 (= e!348074 e!348068)))

(declare-fun res!390718 () Bool)

(assert (=> b!607809 (=> res!390718 e!348068)))

(assert (=> b!607809 (= res!390718 (or (bvsge (size!18244 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18244 a!2986))))))

(assert (=> b!607809 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!277639 () Unit!19390)

(assert (=> b!607809 (= lt!277639 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!277633 (select (arr!17880 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!607809 e!348082))

(declare-fun res!390720 () Bool)

(assert (=> b!607809 (=> (not res!390720) (not e!348082))))

(assert (=> b!607809 (= res!390720 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) j!136))))

(declare-fun b!607810 () Bool)

(assert (=> b!607810 (= e!348069 e!348070)))

(declare-fun res!390715 () Bool)

(assert (=> b!607810 (=> (not res!390715) (not e!348070))))

(assert (=> b!607810 (= res!390715 (arrayContainsKey!0 lt!277633 (select (arr!17880 a!2986) j!136) j!136))))

(declare-fun b!607811 () Bool)

(declare-fun res!390709 () Bool)

(assert (=> b!607811 (=> (not res!390709) (not e!348076))))

(assert (=> b!607811 (= res!390709 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17880 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!607812 () Bool)

(declare-fun Unit!19395 () Unit!19390)

(assert (=> b!607812 (= e!348081 Unit!19395)))

(assert (=> b!607812 false))

(declare-fun b!607813 () Bool)

(declare-fun res!390722 () Bool)

(assert (=> b!607813 (=> (not res!390722) (not e!348080))))

(assert (=> b!607813 (= res!390722 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!607814 () Bool)

(assert (=> b!607814 (= e!348067 e!348071)))

(declare-fun res!390703 () Bool)

(assert (=> b!607814 (=> (not res!390703) (not e!348071))))

(declare-fun lt!277646 () SeekEntryResult!6327)

(assert (=> b!607814 (= res!390703 (and (= lt!277646 (Found!6327 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17880 a!2986) index!984) (select (arr!17880 a!2986) j!136))) (not (= (select (arr!17880 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!607814 (= lt!277646 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17880 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!607815 () Bool)

(assert (=> b!607815 (= e!348072 (= lt!277646 lt!277638))))

(declare-fun res!390716 () Bool)

(assert (=> start!55572 (=> (not res!390716) (not e!348080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55572 (= res!390716 (validMask!0 mask!3053))))

(assert (=> start!55572 e!348080))

(assert (=> start!55572 true))

(declare-fun array_inv!13654 (array!37266) Bool)

(assert (=> start!55572 (array_inv!13654 a!2986)))

(declare-fun b!607803 () Bool)

(declare-fun res!390704 () Bool)

(assert (=> b!607803 (=> (not res!390704) (not e!348076))))

(assert (=> b!607803 (= res!390704 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11971))))

(declare-fun b!607816 () Bool)

(assert (=> b!607816 (= e!348080 e!348076)))

(declare-fun res!390724 () Bool)

(assert (=> b!607816 (=> (not res!390724) (not e!348076))))

(declare-fun lt!277636 () SeekEntryResult!6327)

(assert (=> b!607816 (= res!390724 (or (= lt!277636 (MissingZero!6327 i!1108)) (= lt!277636 (MissingVacant!6327 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37266 (_ BitVec 32)) SeekEntryResult!6327)

(assert (=> b!607816 (= lt!277636 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!607817 () Bool)

(declare-fun res!390707 () Bool)

(assert (=> b!607817 (=> res!390707 e!348068)))

(declare-fun noDuplicate!322 (List!11974) Bool)

(assert (=> b!607817 (= res!390707 (not (noDuplicate!322 Nil!11971)))))

(assert (= (and start!55572 res!390716) b!607800))

(assert (= (and b!607800 res!390713) b!607795))

(assert (= (and b!607795 res!390708) b!607806))

(assert (= (and b!607806 res!390710) b!607813))

(assert (= (and b!607813 res!390722) b!607816))

(assert (= (and b!607816 res!390724) b!607794))

(assert (= (and b!607794 res!390706) b!607803))

(assert (= (and b!607803 res!390704) b!607811))

(assert (= (and b!607811 res!390709) b!607807))

(assert (= (and b!607807 res!390723) b!607814))

(assert (= (and b!607814 res!390703) b!607791))

(assert (= (and b!607791 res!390721) b!607815))

(assert (= (and b!607791 c!68911) b!607812))

(assert (= (and b!607791 (not c!68911)) b!607798))

(assert (= (and b!607791 (not res!390711)) b!607793))

(assert (= (and b!607793 res!390705) b!607799))

(assert (= (and b!607799 (not res!390719)) b!607810))

(assert (= (and b!607810 res!390715) b!607797))

(assert (= (and b!607793 (not res!390712)) b!607792))

(assert (= (and b!607792 c!68912) b!607805))

(assert (= (and b!607792 (not c!68912)) b!607802))

(assert (= (and b!607792 (not res!390717)) b!607809))

(assert (= (and b!607809 res!390720) b!607801))

(assert (= (and b!607809 (not res!390718)) b!607817))

(assert (= (and b!607817 (not res!390707)) b!607796))

(assert (= (and b!607796 (not res!390725)) b!607804))

(assert (= (and b!607804 (not res!390714)) b!607808))

(declare-fun m!584517 () Bool)

(assert (=> b!607803 m!584517))

(declare-fun m!584519 () Bool)

(assert (=> b!607804 m!584519))

(declare-fun m!584521 () Bool)

(assert (=> b!607794 m!584521))

(declare-fun m!584523 () Bool)

(assert (=> b!607813 m!584523))

(declare-fun m!584525 () Bool)

(assert (=> b!607808 m!584525))

(declare-fun m!584527 () Bool)

(assert (=> b!607791 m!584527))

(declare-fun m!584529 () Bool)

(assert (=> b!607791 m!584529))

(declare-fun m!584531 () Bool)

(assert (=> b!607791 m!584531))

(declare-fun m!584533 () Bool)

(assert (=> b!607791 m!584533))

(declare-fun m!584535 () Bool)

(assert (=> b!607791 m!584535))

(declare-fun m!584537 () Bool)

(assert (=> b!607791 m!584537))

(declare-fun m!584539 () Bool)

(assert (=> b!607791 m!584539))

(declare-fun m!584541 () Bool)

(assert (=> b!607791 m!584541))

(assert (=> b!607791 m!584535))

(declare-fun m!584543 () Bool)

(assert (=> b!607811 m!584543))

(declare-fun m!584545 () Bool)

(assert (=> b!607817 m!584545))

(declare-fun m!584547 () Bool)

(assert (=> b!607814 m!584547))

(assert (=> b!607814 m!584535))

(assert (=> b!607814 m!584535))

(declare-fun m!584549 () Bool)

(assert (=> b!607814 m!584549))

(assert (=> b!607795 m!584535))

(assert (=> b!607795 m!584535))

(declare-fun m!584551 () Bool)

(assert (=> b!607795 m!584551))

(assert (=> b!607793 m!584535))

(assert (=> b!607793 m!584533))

(declare-fun m!584553 () Bool)

(assert (=> b!607793 m!584553))

(assert (=> b!607809 m!584535))

(assert (=> b!607809 m!584535))

(declare-fun m!584555 () Bool)

(assert (=> b!607809 m!584555))

(assert (=> b!607809 m!584535))

(declare-fun m!584557 () Bool)

(assert (=> b!607809 m!584557))

(assert (=> b!607809 m!584535))

(declare-fun m!584559 () Bool)

(assert (=> b!607809 m!584559))

(declare-fun m!584561 () Bool)

(assert (=> b!607806 m!584561))

(assert (=> b!607805 m!584535))

(declare-fun m!584563 () Bool)

(assert (=> b!607805 m!584563))

(assert (=> b!607805 m!584535))

(declare-fun m!584565 () Bool)

(assert (=> b!607805 m!584565))

(declare-fun m!584567 () Bool)

(assert (=> b!607805 m!584567))

(declare-fun m!584569 () Bool)

(assert (=> b!607805 m!584569))

(declare-fun m!584571 () Bool)

(assert (=> b!607805 m!584571))

(assert (=> b!607805 m!584535))

(declare-fun m!584573 () Bool)

(assert (=> b!607805 m!584573))

(assert (=> b!607805 m!584535))

(declare-fun m!584575 () Bool)

(assert (=> b!607805 m!584575))

(assert (=> b!607799 m!584535))

(assert (=> b!607807 m!584533))

(declare-fun m!584577 () Bool)

(assert (=> b!607807 m!584577))

(assert (=> b!607810 m!584535))

(assert (=> b!607810 m!584535))

(assert (=> b!607810 m!584559))

(declare-fun m!584579 () Bool)

(assert (=> b!607816 m!584579))

(assert (=> b!607801 m!584535))

(assert (=> b!607801 m!584535))

(declare-fun m!584581 () Bool)

(assert (=> b!607801 m!584581))

(declare-fun m!584583 () Bool)

(assert (=> b!607796 m!584583))

(assert (=> b!607797 m!584535))

(assert (=> b!607797 m!584535))

(assert (=> b!607797 m!584581))

(declare-fun m!584585 () Bool)

(assert (=> start!55572 m!584585))

(declare-fun m!584587 () Bool)

(assert (=> start!55572 m!584587))

(push 1)

