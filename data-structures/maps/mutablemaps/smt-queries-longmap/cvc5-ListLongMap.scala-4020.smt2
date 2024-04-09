; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54834 () Bool)

(assert start!54834)

(declare-fun b!598403 () Bool)

(declare-fun e!342076 () Bool)

(declare-fun e!342074 () Bool)

(assert (=> b!598403 (= e!342076 (not e!342074))))

(declare-fun res!383657 () Bool)

(assert (=> b!598403 (=> res!383657 e!342074)))

(declare-datatypes ((SeekEntryResult!6219 0))(
  ( (MissingZero!6219 (index!27132 (_ BitVec 32))) (Found!6219 (index!27133 (_ BitVec 32))) (Intermediate!6219 (undefined!7031 Bool) (index!27134 (_ BitVec 32)) (x!55971 (_ BitVec 32))) (Undefined!6219) (MissingVacant!6219 (index!27135 (_ BitVec 32))) )
))
(declare-fun lt!271938 () SeekEntryResult!6219)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598403 (= res!383657 (not (= lt!271938 (Found!6219 index!984))))))

(declare-datatypes ((Unit!18820 0))(
  ( (Unit!18821) )
))
(declare-fun lt!271932 () Unit!18820)

(declare-fun e!342079 () Unit!18820)

(assert (=> b!598403 (= lt!271932 e!342079)))

(declare-fun c!67748 () Bool)

(assert (=> b!598403 (= c!67748 (= lt!271938 Undefined!6219))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!271930 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37032 0))(
  ( (array!37033 (arr!17772 (Array (_ BitVec 32) (_ BitVec 64))) (size!18136 (_ BitVec 32))) )
))
(declare-fun lt!271935 () array!37032)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37032 (_ BitVec 32)) SeekEntryResult!6219)

(assert (=> b!598403 (= lt!271938 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271930 lt!271935 mask!3053))))

(declare-fun e!342080 () Bool)

(assert (=> b!598403 e!342080))

(declare-fun res!383655 () Bool)

(assert (=> b!598403 (=> (not res!383655) (not e!342080))))

(declare-fun lt!271929 () SeekEntryResult!6219)

(declare-fun lt!271936 () (_ BitVec 32))

(assert (=> b!598403 (= res!383655 (= lt!271929 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271936 vacantSpotIndex!68 lt!271930 lt!271935 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37032)

(assert (=> b!598403 (= lt!271929 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271936 vacantSpotIndex!68 (select (arr!17772 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!598403 (= lt!271930 (select (store (arr!17772 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271933 () Unit!18820)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37032 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18820)

(assert (=> b!598403 (= lt!271933 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271936 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598403 (= lt!271936 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598404 () Bool)

(declare-fun res!383650 () Bool)

(declare-fun e!342075 () Bool)

(assert (=> b!598404 (=> (not res!383650) (not e!342075))))

(declare-fun arrayContainsKey!0 (array!37032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598404 (= res!383650 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598405 () Bool)

(declare-fun res!383642 () Bool)

(assert (=> b!598405 (=> (not res!383642) (not e!342075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598405 (= res!383642 (validKeyInArray!0 k!1786))))

(declare-fun e!342071 () Bool)

(declare-fun b!598406 () Bool)

(assert (=> b!598406 (= e!342071 (arrayContainsKey!0 lt!271935 (select (arr!17772 a!2986) j!136) index!984))))

(declare-fun b!598407 () Bool)

(declare-fun e!342072 () Bool)

(declare-fun e!342081 () Bool)

(assert (=> b!598407 (= e!342072 e!342081)))

(declare-fun res!383653 () Bool)

(assert (=> b!598407 (=> (not res!383653) (not e!342081))))

(assert (=> b!598407 (= res!383653 (= (select (store (arr!17772 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598407 (= lt!271935 (array!37033 (store (arr!17772 a!2986) i!1108 k!1786) (size!18136 a!2986)))))

(declare-fun b!598408 () Bool)

(declare-fun e!342078 () Bool)

(assert (=> b!598408 (= e!342074 e!342078)))

(declare-fun res!383641 () Bool)

(assert (=> b!598408 (=> res!383641 e!342078)))

(declare-fun lt!271928 () (_ BitVec 64))

(assert (=> b!598408 (= res!383641 (or (not (= (select (arr!17772 a!2986) j!136) lt!271930)) (not (= (select (arr!17772 a!2986) j!136) lt!271928)) (bvsge j!136 index!984)))))

(declare-fun e!342077 () Bool)

(assert (=> b!598408 e!342077))

(declare-fun res!383649 () Bool)

(assert (=> b!598408 (=> (not res!383649) (not e!342077))))

(assert (=> b!598408 (= res!383649 (= lt!271928 (select (arr!17772 a!2986) j!136)))))

(assert (=> b!598408 (= lt!271928 (select (store (arr!17772 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598410 () Bool)

(declare-fun res!383647 () Bool)

(assert (=> b!598410 (=> (not res!383647) (not e!342075))))

(assert (=> b!598410 (= res!383647 (and (= (size!18136 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18136 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18136 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598411 () Bool)

(assert (=> b!598411 (= e!342081 e!342076)))

(declare-fun res!383648 () Bool)

(assert (=> b!598411 (=> (not res!383648) (not e!342076))))

(declare-fun lt!271934 () SeekEntryResult!6219)

(assert (=> b!598411 (= res!383648 (and (= lt!271934 (Found!6219 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17772 a!2986) index!984) (select (arr!17772 a!2986) j!136))) (not (= (select (arr!17772 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598411 (= lt!271934 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17772 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598412 () Bool)

(declare-fun res!383652 () Bool)

(assert (=> b!598412 (=> (not res!383652) (not e!342072))))

(declare-datatypes ((List!11866 0))(
  ( (Nil!11863) (Cons!11862 (h!12907 (_ BitVec 64)) (t!18102 List!11866)) )
))
(declare-fun arrayNoDuplicates!0 (array!37032 (_ BitVec 32) List!11866) Bool)

(assert (=> b!598412 (= res!383652 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11863))))

(declare-fun b!598413 () Bool)

(assert (=> b!598413 (= e!342075 e!342072)))

(declare-fun res!383643 () Bool)

(assert (=> b!598413 (=> (not res!383643) (not e!342072))))

(declare-fun lt!271931 () SeekEntryResult!6219)

(assert (=> b!598413 (= res!383643 (or (= lt!271931 (MissingZero!6219 i!1108)) (= lt!271931 (MissingVacant!6219 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37032 (_ BitVec 32)) SeekEntryResult!6219)

(assert (=> b!598413 (= lt!271931 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598414 () Bool)

(assert (=> b!598414 (= e!342078 true)))

(assert (=> b!598414 (arrayNoDuplicates!0 lt!271935 #b00000000000000000000000000000000 Nil!11863)))

(declare-fun lt!271927 () Unit!18820)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37032 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11866) Unit!18820)

(assert (=> b!598414 (= lt!271927 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11863))))

(assert (=> b!598414 (arrayContainsKey!0 lt!271935 (select (arr!17772 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271937 () Unit!18820)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37032 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18820)

(assert (=> b!598414 (= lt!271937 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271935 (select (arr!17772 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598415 () Bool)

(declare-fun res!383654 () Bool)

(assert (=> b!598415 (=> (not res!383654) (not e!342072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37032 (_ BitVec 32)) Bool)

(assert (=> b!598415 (= res!383654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598416 () Bool)

(declare-fun res!383656 () Bool)

(assert (=> b!598416 (=> (not res!383656) (not e!342075))))

(assert (=> b!598416 (= res!383656 (validKeyInArray!0 (select (arr!17772 a!2986) j!136)))))

(declare-fun b!598417 () Bool)

(assert (=> b!598417 (= e!342080 (= lt!271934 lt!271929))))

(declare-fun b!598418 () Bool)

(declare-fun Unit!18822 () Unit!18820)

(assert (=> b!598418 (= e!342079 Unit!18822)))

(assert (=> b!598418 false))

(declare-fun b!598419 () Bool)

(declare-fun e!342082 () Bool)

(assert (=> b!598419 (= e!342082 e!342071)))

(declare-fun res!383651 () Bool)

(assert (=> b!598419 (=> (not res!383651) (not e!342071))))

(assert (=> b!598419 (= res!383651 (arrayContainsKey!0 lt!271935 (select (arr!17772 a!2986) j!136) j!136))))

(declare-fun b!598420 () Bool)

(assert (=> b!598420 (= e!342077 e!342082)))

(declare-fun res!383646 () Bool)

(assert (=> b!598420 (=> res!383646 e!342082)))

(assert (=> b!598420 (= res!383646 (or (not (= (select (arr!17772 a!2986) j!136) lt!271930)) (not (= (select (arr!17772 a!2986) j!136) lt!271928)) (bvsge j!136 index!984)))))

(declare-fun b!598421 () Bool)

(declare-fun Unit!18823 () Unit!18820)

(assert (=> b!598421 (= e!342079 Unit!18823)))

(declare-fun b!598409 () Bool)

(declare-fun res!383645 () Bool)

(assert (=> b!598409 (=> (not res!383645) (not e!342072))))

(assert (=> b!598409 (= res!383645 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17772 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!383644 () Bool)

(assert (=> start!54834 (=> (not res!383644) (not e!342075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54834 (= res!383644 (validMask!0 mask!3053))))

(assert (=> start!54834 e!342075))

(assert (=> start!54834 true))

(declare-fun array_inv!13546 (array!37032) Bool)

(assert (=> start!54834 (array_inv!13546 a!2986)))

(assert (= (and start!54834 res!383644) b!598410))

(assert (= (and b!598410 res!383647) b!598416))

(assert (= (and b!598416 res!383656) b!598405))

(assert (= (and b!598405 res!383642) b!598404))

(assert (= (and b!598404 res!383650) b!598413))

(assert (= (and b!598413 res!383643) b!598415))

(assert (= (and b!598415 res!383654) b!598412))

(assert (= (and b!598412 res!383652) b!598409))

(assert (= (and b!598409 res!383645) b!598407))

(assert (= (and b!598407 res!383653) b!598411))

(assert (= (and b!598411 res!383648) b!598403))

(assert (= (and b!598403 res!383655) b!598417))

(assert (= (and b!598403 c!67748) b!598418))

(assert (= (and b!598403 (not c!67748)) b!598421))

(assert (= (and b!598403 (not res!383657)) b!598408))

(assert (= (and b!598408 res!383649) b!598420))

(assert (= (and b!598420 (not res!383646)) b!598419))

(assert (= (and b!598419 res!383651) b!598406))

(assert (= (and b!598408 (not res!383641)) b!598414))

(declare-fun m!575751 () Bool)

(assert (=> b!598409 m!575751))

(declare-fun m!575753 () Bool)

(assert (=> b!598405 m!575753))

(declare-fun m!575755 () Bool)

(assert (=> b!598412 m!575755))

(declare-fun m!575757 () Bool)

(assert (=> b!598407 m!575757))

(declare-fun m!575759 () Bool)

(assert (=> b!598407 m!575759))

(declare-fun m!575761 () Bool)

(assert (=> b!598419 m!575761))

(assert (=> b!598419 m!575761))

(declare-fun m!575763 () Bool)

(assert (=> b!598419 m!575763))

(declare-fun m!575765 () Bool)

(assert (=> b!598413 m!575765))

(declare-fun m!575767 () Bool)

(assert (=> b!598404 m!575767))

(assert (=> b!598408 m!575761))

(assert (=> b!598408 m!575757))

(declare-fun m!575769 () Bool)

(assert (=> b!598408 m!575769))

(assert (=> b!598416 m!575761))

(assert (=> b!598416 m!575761))

(declare-fun m!575771 () Bool)

(assert (=> b!598416 m!575771))

(declare-fun m!575773 () Bool)

(assert (=> b!598403 m!575773))

(declare-fun m!575775 () Bool)

(assert (=> b!598403 m!575775))

(declare-fun m!575777 () Bool)

(assert (=> b!598403 m!575777))

(declare-fun m!575779 () Bool)

(assert (=> b!598403 m!575779))

(assert (=> b!598403 m!575761))

(assert (=> b!598403 m!575757))

(declare-fun m!575781 () Bool)

(assert (=> b!598403 m!575781))

(assert (=> b!598403 m!575761))

(declare-fun m!575783 () Bool)

(assert (=> b!598403 m!575783))

(declare-fun m!575785 () Bool)

(assert (=> start!54834 m!575785))

(declare-fun m!575787 () Bool)

(assert (=> start!54834 m!575787))

(declare-fun m!575789 () Bool)

(assert (=> b!598411 m!575789))

(assert (=> b!598411 m!575761))

(assert (=> b!598411 m!575761))

(declare-fun m!575791 () Bool)

(assert (=> b!598411 m!575791))

(assert (=> b!598406 m!575761))

(assert (=> b!598406 m!575761))

(declare-fun m!575793 () Bool)

(assert (=> b!598406 m!575793))

(declare-fun m!575795 () Bool)

(assert (=> b!598415 m!575795))

(declare-fun m!575797 () Bool)

(assert (=> b!598414 m!575797))

(assert (=> b!598414 m!575761))

(assert (=> b!598414 m!575761))

(declare-fun m!575799 () Bool)

(assert (=> b!598414 m!575799))

(assert (=> b!598414 m!575761))

(declare-fun m!575801 () Bool)

(assert (=> b!598414 m!575801))

(declare-fun m!575803 () Bool)

(assert (=> b!598414 m!575803))

(assert (=> b!598420 m!575761))

(push 1)

