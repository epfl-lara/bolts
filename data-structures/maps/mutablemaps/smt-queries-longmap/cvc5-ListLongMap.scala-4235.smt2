; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58446 () Bool)

(assert start!58446)

(declare-fun b!644803 () Bool)

(declare-fun res!417805 () Bool)

(declare-fun e!369507 () Bool)

(assert (=> b!644803 (=> (not res!417805) (not e!369507))))

(declare-datatypes ((array!38418 0))(
  ( (array!38419 (arr!18417 (Array (_ BitVec 32) (_ BitVec 64))) (size!18781 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38418)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644803 (= res!417805 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644804 () Bool)

(declare-fun e!369504 () Bool)

(declare-fun e!369508 () Bool)

(assert (=> b!644804 (= e!369504 e!369508)))

(declare-fun res!417793 () Bool)

(assert (=> b!644804 (=> res!417793 e!369508)))

(declare-fun lt!298954 () (_ BitVec 64))

(declare-fun lt!298957 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!644804 (= res!417793 (or (not (= (select (arr!18417 a!2986) j!136) lt!298954)) (not (= (select (arr!18417 a!2986) j!136) lt!298957))))))

(declare-fun e!369502 () Bool)

(assert (=> b!644804 e!369502))

(declare-fun res!417808 () Bool)

(assert (=> b!644804 (=> (not res!417808) (not e!369502))))

(assert (=> b!644804 (= res!417808 (= lt!298957 (select (arr!18417 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!644804 (= lt!298957 (select (store (arr!18417 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!417794 () Bool)

(assert (=> start!58446 (=> (not res!417794) (not e!369507))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58446 (= res!417794 (validMask!0 mask!3053))))

(assert (=> start!58446 e!369507))

(assert (=> start!58446 true))

(declare-fun array_inv!14191 (array!38418) Bool)

(assert (=> start!58446 (array_inv!14191 a!2986)))

(declare-fun b!644805 () Bool)

(declare-fun res!417791 () Bool)

(assert (=> b!644805 (=> (not res!417791) (not e!369507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644805 (= res!417791 (validKeyInArray!0 k!1786))))

(declare-fun b!644806 () Bool)

(declare-fun res!417801 () Bool)

(declare-fun e!369498 () Bool)

(assert (=> b!644806 (=> (not res!417801) (not e!369498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38418 (_ BitVec 32)) Bool)

(assert (=> b!644806 (= res!417801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644807 () Bool)

(declare-fun res!417800 () Bool)

(assert (=> b!644807 (=> (not res!417800) (not e!369498))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!644807 (= res!417800 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18417 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644808 () Bool)

(declare-datatypes ((Unit!21856 0))(
  ( (Unit!21857) )
))
(declare-fun e!369501 () Unit!21856)

(declare-fun Unit!21858 () Unit!21856)

(assert (=> b!644808 (= e!369501 Unit!21858)))

(assert (=> b!644808 false))

(declare-fun b!644809 () Bool)

(declare-fun res!417806 () Bool)

(assert (=> b!644809 (=> (not res!417806) (not e!369498))))

(declare-datatypes ((List!12511 0))(
  ( (Nil!12508) (Cons!12507 (h!13552 (_ BitVec 64)) (t!18747 List!12511)) )
))
(declare-fun arrayNoDuplicates!0 (array!38418 (_ BitVec 32) List!12511) Bool)

(assert (=> b!644809 (= res!417806 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12508))))

(declare-fun b!644810 () Bool)

(declare-fun e!369497 () Unit!21856)

(declare-fun Unit!21859 () Unit!21856)

(assert (=> b!644810 (= e!369497 Unit!21859)))

(declare-fun lt!298958 () array!38418)

(declare-fun lt!298962 () Unit!21856)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38418 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21856)

(assert (=> b!644810 (= lt!298962 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298958 (select (arr!18417 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644810 (arrayContainsKey!0 lt!298958 (select (arr!18417 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298952 () Unit!21856)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38418 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12511) Unit!21856)

(assert (=> b!644810 (= lt!298952 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12508))))

(assert (=> b!644810 (arrayNoDuplicates!0 lt!298958 #b00000000000000000000000000000000 Nil!12508)))

(declare-fun lt!298951 () Unit!21856)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38418 (_ BitVec 32) (_ BitVec 32)) Unit!21856)

(assert (=> b!644810 (= lt!298951 (lemmaNoDuplicateFromThenFromBigger!0 lt!298958 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644810 (arrayNoDuplicates!0 lt!298958 j!136 Nil!12508)))

(declare-fun lt!298965 () Unit!21856)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38418 (_ BitVec 64) (_ BitVec 32) List!12511) Unit!21856)

(assert (=> b!644810 (= lt!298965 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298958 (select (arr!18417 a!2986) j!136) j!136 Nil!12508))))

(assert (=> b!644810 false))

(declare-fun b!644811 () Bool)

(declare-fun res!417798 () Bool)

(assert (=> b!644811 (=> (not res!417798) (not e!369507))))

(assert (=> b!644811 (= res!417798 (validKeyInArray!0 (select (arr!18417 a!2986) j!136)))))

(declare-fun b!644812 () Bool)

(declare-fun res!417795 () Bool)

(assert (=> b!644812 (=> (not res!417795) (not e!369507))))

(assert (=> b!644812 (= res!417795 (and (= (size!18781 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18781 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18781 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644813 () Bool)

(declare-fun e!369505 () Bool)

(assert (=> b!644813 (= e!369498 e!369505)))

(declare-fun res!417792 () Bool)

(assert (=> b!644813 (=> (not res!417792) (not e!369505))))

(assert (=> b!644813 (= res!417792 (= (select (store (arr!18417 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644813 (= lt!298958 (array!38419 (store (arr!18417 a!2986) i!1108 k!1786) (size!18781 a!2986)))))

(declare-fun b!644814 () Bool)

(assert (=> b!644814 (= e!369507 e!369498)))

(declare-fun res!417802 () Bool)

(assert (=> b!644814 (=> (not res!417802) (not e!369498))))

(declare-datatypes ((SeekEntryResult!6864 0))(
  ( (MissingZero!6864 (index!29790 (_ BitVec 32))) (Found!6864 (index!29791 (_ BitVec 32))) (Intermediate!6864 (undefined!7676 Bool) (index!29792 (_ BitVec 32)) (x!58594 (_ BitVec 32))) (Undefined!6864) (MissingVacant!6864 (index!29793 (_ BitVec 32))) )
))
(declare-fun lt!298964 () SeekEntryResult!6864)

(assert (=> b!644814 (= res!417802 (or (= lt!298964 (MissingZero!6864 i!1108)) (= lt!298964 (MissingVacant!6864 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38418 (_ BitVec 32)) SeekEntryResult!6864)

(assert (=> b!644814 (= lt!298964 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!644815 () Bool)

(declare-fun e!369496 () Bool)

(declare-fun e!369503 () Bool)

(assert (=> b!644815 (= e!369496 e!369503)))

(declare-fun res!417797 () Bool)

(assert (=> b!644815 (=> (not res!417797) (not e!369503))))

(assert (=> b!644815 (= res!417797 (arrayContainsKey!0 lt!298958 (select (arr!18417 a!2986) j!136) j!136))))

(declare-fun b!644816 () Bool)

(declare-fun e!369500 () Bool)

(assert (=> b!644816 (= e!369500 true)))

(declare-fun e!369499 () Bool)

(assert (=> b!644816 e!369499))

(declare-fun res!417803 () Bool)

(assert (=> b!644816 (=> (not res!417803) (not e!369499))))

(assert (=> b!644816 (= res!417803 (arrayContainsKey!0 lt!298958 (select (arr!18417 a!2986) j!136) j!136))))

(declare-fun b!644817 () Bool)

(assert (=> b!644817 (= e!369502 e!369496)))

(declare-fun res!417807 () Bool)

(assert (=> b!644817 (=> res!417807 e!369496)))

(assert (=> b!644817 (= res!417807 (or (not (= (select (arr!18417 a!2986) j!136) lt!298954)) (not (= (select (arr!18417 a!2986) j!136) lt!298957)) (bvsge j!136 index!984)))))

(declare-fun b!644818 () Bool)

(declare-fun Unit!21860 () Unit!21856)

(assert (=> b!644818 (= e!369497 Unit!21860)))

(declare-fun b!644819 () Bool)

(declare-fun e!369506 () Bool)

(declare-fun lt!298959 () SeekEntryResult!6864)

(declare-fun lt!298956 () SeekEntryResult!6864)

(assert (=> b!644819 (= e!369506 (= lt!298959 lt!298956))))

(declare-fun b!644820 () Bool)

(assert (=> b!644820 (= e!369508 e!369500)))

(declare-fun res!417804 () Bool)

(assert (=> b!644820 (=> res!417804 e!369500)))

(assert (=> b!644820 (= res!417804 (bvsge index!984 j!136))))

(declare-fun lt!298955 () Unit!21856)

(assert (=> b!644820 (= lt!298955 e!369497)))

(declare-fun c!73873 () Bool)

(assert (=> b!644820 (= c!73873 (bvslt j!136 index!984))))

(declare-fun b!644821 () Bool)

(assert (=> b!644821 (= e!369503 (arrayContainsKey!0 lt!298958 (select (arr!18417 a!2986) j!136) index!984))))

(declare-fun b!644822 () Bool)

(declare-fun e!369494 () Bool)

(assert (=> b!644822 (= e!369494 (not e!369504))))

(declare-fun res!417799 () Bool)

(assert (=> b!644822 (=> res!417799 e!369504)))

(declare-fun lt!298953 () SeekEntryResult!6864)

(assert (=> b!644822 (= res!417799 (not (= lt!298953 (Found!6864 index!984))))))

(declare-fun lt!298961 () Unit!21856)

(assert (=> b!644822 (= lt!298961 e!369501)))

(declare-fun c!73874 () Bool)

(assert (=> b!644822 (= c!73874 (= lt!298953 Undefined!6864))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38418 (_ BitVec 32)) SeekEntryResult!6864)

(assert (=> b!644822 (= lt!298953 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298954 lt!298958 mask!3053))))

(assert (=> b!644822 e!369506))

(declare-fun res!417796 () Bool)

(assert (=> b!644822 (=> (not res!417796) (not e!369506))))

(declare-fun lt!298960 () (_ BitVec 32))

(assert (=> b!644822 (= res!417796 (= lt!298956 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298960 vacantSpotIndex!68 lt!298954 lt!298958 mask!3053)))))

(assert (=> b!644822 (= lt!298956 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298960 vacantSpotIndex!68 (select (arr!18417 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644822 (= lt!298954 (select (store (arr!18417 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!298963 () Unit!21856)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38418 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21856)

(assert (=> b!644822 (= lt!298963 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298960 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644822 (= lt!298960 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644823 () Bool)

(declare-fun Unit!21861 () Unit!21856)

(assert (=> b!644823 (= e!369501 Unit!21861)))

(declare-fun b!644824 () Bool)

(assert (=> b!644824 (= e!369505 e!369494)))

(declare-fun res!417809 () Bool)

(assert (=> b!644824 (=> (not res!417809) (not e!369494))))

(assert (=> b!644824 (= res!417809 (and (= lt!298959 (Found!6864 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18417 a!2986) index!984) (select (arr!18417 a!2986) j!136))) (not (= (select (arr!18417 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!644824 (= lt!298959 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18417 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644825 () Bool)

(assert (=> b!644825 (= e!369499 (arrayContainsKey!0 lt!298958 (select (arr!18417 a!2986) j!136) index!984))))

(assert (= (and start!58446 res!417794) b!644812))

(assert (= (and b!644812 res!417795) b!644811))

(assert (= (and b!644811 res!417798) b!644805))

(assert (= (and b!644805 res!417791) b!644803))

(assert (= (and b!644803 res!417805) b!644814))

(assert (= (and b!644814 res!417802) b!644806))

(assert (= (and b!644806 res!417801) b!644809))

(assert (= (and b!644809 res!417806) b!644807))

(assert (= (and b!644807 res!417800) b!644813))

(assert (= (and b!644813 res!417792) b!644824))

(assert (= (and b!644824 res!417809) b!644822))

(assert (= (and b!644822 res!417796) b!644819))

(assert (= (and b!644822 c!73874) b!644808))

(assert (= (and b!644822 (not c!73874)) b!644823))

(assert (= (and b!644822 (not res!417799)) b!644804))

(assert (= (and b!644804 res!417808) b!644817))

(assert (= (and b!644817 (not res!417807)) b!644815))

(assert (= (and b!644815 res!417797) b!644821))

(assert (= (and b!644804 (not res!417793)) b!644820))

(assert (= (and b!644820 c!73873) b!644810))

(assert (= (and b!644820 (not c!73873)) b!644818))

(assert (= (and b!644820 (not res!417804)) b!644816))

(assert (= (and b!644816 res!417803) b!644825))

(declare-fun m!618435 () Bool)

(assert (=> b!644821 m!618435))

(assert (=> b!644821 m!618435))

(declare-fun m!618437 () Bool)

(assert (=> b!644821 m!618437))

(declare-fun m!618439 () Bool)

(assert (=> b!644809 m!618439))

(declare-fun m!618441 () Bool)

(assert (=> b!644805 m!618441))

(assert (=> b!644816 m!618435))

(assert (=> b!644816 m!618435))

(declare-fun m!618443 () Bool)

(assert (=> b!644816 m!618443))

(declare-fun m!618445 () Bool)

(assert (=> b!644803 m!618445))

(assert (=> b!644815 m!618435))

(assert (=> b!644815 m!618435))

(assert (=> b!644815 m!618443))

(declare-fun m!618447 () Bool)

(assert (=> b!644822 m!618447))

(declare-fun m!618449 () Bool)

(assert (=> b!644822 m!618449))

(assert (=> b!644822 m!618435))

(declare-fun m!618451 () Bool)

(assert (=> b!644822 m!618451))

(assert (=> b!644822 m!618435))

(declare-fun m!618453 () Bool)

(assert (=> b!644822 m!618453))

(declare-fun m!618455 () Bool)

(assert (=> b!644822 m!618455))

(declare-fun m!618457 () Bool)

(assert (=> b!644822 m!618457))

(declare-fun m!618459 () Bool)

(assert (=> b!644822 m!618459))

(assert (=> b!644811 m!618435))

(assert (=> b!644811 m!618435))

(declare-fun m!618461 () Bool)

(assert (=> b!644811 m!618461))

(assert (=> b!644825 m!618435))

(assert (=> b!644825 m!618435))

(assert (=> b!644825 m!618437))

(declare-fun m!618463 () Bool)

(assert (=> b!644824 m!618463))

(assert (=> b!644824 m!618435))

(assert (=> b!644824 m!618435))

(declare-fun m!618465 () Bool)

(assert (=> b!644824 m!618465))

(declare-fun m!618467 () Bool)

(assert (=> b!644814 m!618467))

(assert (=> b!644817 m!618435))

(declare-fun m!618469 () Bool)

(assert (=> b!644810 m!618469))

(assert (=> b!644810 m!618435))

(assert (=> b!644810 m!618435))

(declare-fun m!618471 () Bool)

(assert (=> b!644810 m!618471))

(declare-fun m!618473 () Bool)

(assert (=> b!644810 m!618473))

(assert (=> b!644810 m!618435))

(declare-fun m!618475 () Bool)

(assert (=> b!644810 m!618475))

(declare-fun m!618477 () Bool)

(assert (=> b!644810 m!618477))

(assert (=> b!644810 m!618435))

(declare-fun m!618479 () Bool)

(assert (=> b!644810 m!618479))

(declare-fun m!618481 () Bool)

(assert (=> b!644810 m!618481))

(assert (=> b!644804 m!618435))

(assert (=> b!644804 m!618451))

(declare-fun m!618483 () Bool)

(assert (=> b!644804 m!618483))

(declare-fun m!618485 () Bool)

(assert (=> b!644806 m!618485))

(declare-fun m!618487 () Bool)

(assert (=> b!644807 m!618487))

(declare-fun m!618489 () Bool)

(assert (=> start!58446 m!618489))

(declare-fun m!618491 () Bool)

(assert (=> start!58446 m!618491))

(assert (=> b!644813 m!618451))

(declare-fun m!618493 () Bool)

(assert (=> b!644813 m!618493))

(push 1)

