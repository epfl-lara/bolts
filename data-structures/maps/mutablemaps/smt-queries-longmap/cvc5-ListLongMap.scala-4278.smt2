; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59592 () Bool)

(assert start!59592)

(declare-fun b!657785 () Bool)

(assert (=> b!657785 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((Unit!22774 0))(
  ( (Unit!22775) )
))
(declare-fun lt!307461 () Unit!22774)

(declare-datatypes ((array!38706 0))(
  ( (array!38707 (arr!18546 (Array (_ BitVec 32) (_ BitVec 64))) (size!18910 (_ BitVec 32))) )
))
(declare-fun lt!307451 () array!38706)

(declare-fun a!2986 () array!38706)

(declare-datatypes ((List!12640 0))(
  ( (Nil!12637) (Cons!12636 (h!13681 (_ BitVec 64)) (t!18876 List!12640)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38706 (_ BitVec 64) (_ BitVec 32) List!12640) Unit!22774)

(assert (=> b!657785 (= lt!307461 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307451 (select (arr!18546 a!2986) j!136) j!136 Nil!12637))))

(declare-fun arrayNoDuplicates!0 (array!38706 (_ BitVec 32) List!12640) Bool)

(assert (=> b!657785 (arrayNoDuplicates!0 lt!307451 j!136 Nil!12637)))

(declare-fun lt!307463 () Unit!22774)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38706 (_ BitVec 32) (_ BitVec 32)) Unit!22774)

(assert (=> b!657785 (= lt!307463 (lemmaNoDuplicateFromThenFromBigger!0 lt!307451 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657785 (arrayNoDuplicates!0 lt!307451 #b00000000000000000000000000000000 Nil!12637)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!307448 () Unit!22774)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38706 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12640) Unit!22774)

(assert (=> b!657785 (= lt!307448 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12637))))

(declare-fun arrayContainsKey!0 (array!38706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657785 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307462 () Unit!22774)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38706 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22774)

(assert (=> b!657785 (= lt!307462 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307451 (select (arr!18546 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377889 () Unit!22774)

(declare-fun Unit!22776 () Unit!22774)

(assert (=> b!657785 (= e!377889 Unit!22776)))

(declare-fun b!657786 () Bool)

(declare-fun res!426671 () Bool)

(declare-fun e!377891 () Bool)

(assert (=> b!657786 (=> (not res!426671) (not e!377891))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!657786 (= res!426671 (and (= (size!18910 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18910 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18910 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657787 () Bool)

(declare-fun res!426655 () Bool)

(assert (=> b!657787 (=> (not res!426655) (not e!377891))))

(assert (=> b!657787 (= res!426655 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657788 () Bool)

(declare-fun e!377893 () Unit!22774)

(declare-fun Unit!22777 () Unit!22774)

(assert (=> b!657788 (= e!377893 Unit!22777)))

(declare-fun b!657789 () Bool)

(declare-fun e!377883 () Bool)

(declare-fun e!377879 () Bool)

(assert (=> b!657789 (= e!377883 (not e!377879))))

(declare-fun res!426661 () Bool)

(assert (=> b!657789 (=> res!426661 e!377879)))

(declare-datatypes ((SeekEntryResult!6993 0))(
  ( (MissingZero!6993 (index!30336 (_ BitVec 32))) (Found!6993 (index!30337 (_ BitVec 32))) (Intermediate!6993 (undefined!7805 Bool) (index!30338 (_ BitVec 32)) (x!59157 (_ BitVec 32))) (Undefined!6993) (MissingVacant!6993 (index!30339 (_ BitVec 32))) )
))
(declare-fun lt!307452 () SeekEntryResult!6993)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657789 (= res!426661 (not (= lt!307452 (MissingVacant!6993 vacantSpotIndex!68))))))

(declare-fun lt!307450 () Unit!22774)

(declare-fun e!377882 () Unit!22774)

(assert (=> b!657789 (= lt!307450 e!377882)))

(declare-fun c!75932 () Bool)

(assert (=> b!657789 (= c!75932 (= lt!307452 (Found!6993 index!984)))))

(declare-fun lt!307467 () Unit!22774)

(declare-fun e!377886 () Unit!22774)

(assert (=> b!657789 (= lt!307467 e!377886)))

(declare-fun c!75935 () Bool)

(assert (=> b!657789 (= c!75935 (= lt!307452 Undefined!6993))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!307456 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38706 (_ BitVec 32)) SeekEntryResult!6993)

(assert (=> b!657789 (= lt!307452 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307456 lt!307451 mask!3053))))

(declare-fun e!377881 () Bool)

(assert (=> b!657789 e!377881))

(declare-fun res!426658 () Bool)

(assert (=> b!657789 (=> (not res!426658) (not e!377881))))

(declare-fun lt!307453 () SeekEntryResult!6993)

(declare-fun lt!307458 () (_ BitVec 32))

(assert (=> b!657789 (= res!426658 (= lt!307453 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307458 vacantSpotIndex!68 lt!307456 lt!307451 mask!3053)))))

(assert (=> b!657789 (= lt!307453 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307458 vacantSpotIndex!68 (select (arr!18546 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657789 (= lt!307456 (select (store (arr!18546 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307460 () Unit!22774)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38706 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22774)

(assert (=> b!657789 (= lt!307460 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307458 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657789 (= lt!307458 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657790 () Bool)

(declare-fun res!426666 () Bool)

(declare-fun e!377884 () Bool)

(assert (=> b!657790 (=> (not res!426666) (not e!377884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38706 (_ BitVec 32)) Bool)

(assert (=> b!657790 (= res!426666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657791 () Bool)

(declare-fun Unit!22778 () Unit!22774)

(assert (=> b!657791 (= e!377886 Unit!22778)))

(declare-fun res!426670 () Bool)

(assert (=> start!59592 (=> (not res!426670) (not e!377891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59592 (= res!426670 (validMask!0 mask!3053))))

(assert (=> start!59592 e!377891))

(assert (=> start!59592 true))

(declare-fun array_inv!14320 (array!38706) Bool)

(assert (=> start!59592 (array_inv!14320 a!2986)))

(declare-fun b!657792 () Bool)

(declare-fun Unit!22779 () Unit!22774)

(assert (=> b!657792 (= e!377889 Unit!22779)))

(declare-fun b!657793 () Bool)

(declare-fun res!426668 () Bool)

(assert (=> b!657793 (=> (not res!426668) (not e!377891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657793 (= res!426668 (validKeyInArray!0 k!1786))))

(declare-fun b!657794 () Bool)

(declare-fun e!377887 () Bool)

(assert (=> b!657794 (= e!377887 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) index!984))))

(declare-fun b!657795 () Bool)

(declare-fun Unit!22780 () Unit!22774)

(assert (=> b!657795 (= e!377882 Unit!22780)))

(declare-fun res!426659 () Bool)

(assert (=> b!657795 (= res!426659 (= (select (store (arr!18546 a!2986) i!1108 k!1786) index!984) (select (arr!18546 a!2986) j!136)))))

(declare-fun e!377885 () Bool)

(assert (=> b!657795 (=> (not res!426659) (not e!377885))))

(assert (=> b!657795 e!377885))

(declare-fun c!75933 () Bool)

(assert (=> b!657795 (= c!75933 (bvslt j!136 index!984))))

(declare-fun lt!307454 () Unit!22774)

(assert (=> b!657795 (= lt!307454 e!377889)))

(declare-fun c!75934 () Bool)

(assert (=> b!657795 (= c!75934 (bvslt index!984 j!136))))

(declare-fun lt!307465 () Unit!22774)

(assert (=> b!657795 (= lt!307465 e!377893)))

(assert (=> b!657795 false))

(declare-fun b!657796 () Bool)

(assert (=> b!657796 false))

(declare-fun lt!307455 () Unit!22774)

(assert (=> b!657796 (= lt!307455 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307451 (select (arr!18546 a!2986) j!136) index!984 Nil!12637))))

(assert (=> b!657796 (arrayNoDuplicates!0 lt!307451 index!984 Nil!12637)))

(declare-fun lt!307464 () Unit!22774)

(assert (=> b!657796 (= lt!307464 (lemmaNoDuplicateFromThenFromBigger!0 lt!307451 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657796 (arrayNoDuplicates!0 lt!307451 #b00000000000000000000000000000000 Nil!12637)))

(declare-fun lt!307449 () Unit!22774)

(assert (=> b!657796 (= lt!307449 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12637))))

(assert (=> b!657796 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307459 () Unit!22774)

(assert (=> b!657796 (= lt!307459 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307451 (select (arr!18546 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!657796 e!377887))

(declare-fun res!426660 () Bool)

(assert (=> b!657796 (=> (not res!426660) (not e!377887))))

(assert (=> b!657796 (= res!426660 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) j!136))))

(declare-fun Unit!22781 () Unit!22774)

(assert (=> b!657796 (= e!377893 Unit!22781)))

(declare-fun b!657797 () Bool)

(declare-fun res!426656 () Bool)

(assert (=> b!657797 (= res!426656 (bvsge j!136 index!984))))

(declare-fun e!377888 () Bool)

(assert (=> b!657797 (=> res!426656 e!377888)))

(assert (=> b!657797 (= e!377885 e!377888)))

(declare-fun b!657798 () Bool)

(declare-fun res!426667 () Bool)

(assert (=> b!657798 (=> (not res!426667) (not e!377884))))

(assert (=> b!657798 (= res!426667 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18546 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!426664 () Bool)

(declare-fun b!657799 () Bool)

(assert (=> b!657799 (= res!426664 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) j!136))))

(declare-fun e!377890 () Bool)

(assert (=> b!657799 (=> (not res!426664) (not e!377890))))

(assert (=> b!657799 (= e!377888 e!377890)))

(declare-fun b!657800 () Bool)

(declare-fun res!426663 () Bool)

(assert (=> b!657800 (=> (not res!426663) (not e!377884))))

(assert (=> b!657800 (= res!426663 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12637))))

(declare-fun b!657801 () Bool)

(declare-fun e!377880 () Bool)

(assert (=> b!657801 (= e!377884 e!377880)))

(declare-fun res!426657 () Bool)

(assert (=> b!657801 (=> (not res!426657) (not e!377880))))

(assert (=> b!657801 (= res!426657 (= (select (store (arr!18546 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657801 (= lt!307451 (array!38707 (store (arr!18546 a!2986) i!1108 k!1786) (size!18910 a!2986)))))

(declare-fun b!657802 () Bool)

(declare-fun Unit!22782 () Unit!22774)

(assert (=> b!657802 (= e!377886 Unit!22782)))

(assert (=> b!657802 false))

(declare-fun b!657803 () Bool)

(assert (=> b!657803 (= e!377890 (arrayContainsKey!0 lt!307451 (select (arr!18546 a!2986) j!136) index!984))))

(declare-fun b!657804 () Bool)

(declare-fun res!426669 () Bool)

(assert (=> b!657804 (=> (not res!426669) (not e!377891))))

(assert (=> b!657804 (= res!426669 (validKeyInArray!0 (select (arr!18546 a!2986) j!136)))))

(declare-fun b!657805 () Bool)

(assert (=> b!657805 (= e!377891 e!377884)))

(declare-fun res!426662 () Bool)

(assert (=> b!657805 (=> (not res!426662) (not e!377884))))

(declare-fun lt!307457 () SeekEntryResult!6993)

(assert (=> b!657805 (= res!426662 (or (= lt!307457 (MissingZero!6993 i!1108)) (= lt!307457 (MissingVacant!6993 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38706 (_ BitVec 32)) SeekEntryResult!6993)

(assert (=> b!657805 (= lt!307457 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657806 () Bool)

(assert (=> b!657806 (= e!377880 e!377883)))

(declare-fun res!426665 () Bool)

(assert (=> b!657806 (=> (not res!426665) (not e!377883))))

(declare-fun lt!307466 () SeekEntryResult!6993)

(assert (=> b!657806 (= res!426665 (and (= lt!307466 (Found!6993 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18546 a!2986) index!984) (select (arr!18546 a!2986) j!136))) (not (= (select (arr!18546 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657806 (= lt!307466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18546 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657807 () Bool)

(declare-fun Unit!22783 () Unit!22774)

(assert (=> b!657807 (= e!377882 Unit!22783)))

(declare-fun b!657808 () Bool)

(assert (=> b!657808 (= e!377881 (= lt!307466 lt!307453))))

(declare-fun b!657809 () Bool)

(assert (=> b!657809 (= e!377879 true)))

(assert (=> b!657809 (= (select (store (arr!18546 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!59592 res!426670) b!657786))

(assert (= (and b!657786 res!426671) b!657804))

(assert (= (and b!657804 res!426669) b!657793))

(assert (= (and b!657793 res!426668) b!657787))

(assert (= (and b!657787 res!426655) b!657805))

(assert (= (and b!657805 res!426662) b!657790))

(assert (= (and b!657790 res!426666) b!657800))

(assert (= (and b!657800 res!426663) b!657798))

(assert (= (and b!657798 res!426667) b!657801))

(assert (= (and b!657801 res!426657) b!657806))

(assert (= (and b!657806 res!426665) b!657789))

(assert (= (and b!657789 res!426658) b!657808))

(assert (= (and b!657789 c!75935) b!657802))

(assert (= (and b!657789 (not c!75935)) b!657791))

(assert (= (and b!657789 c!75932) b!657795))

(assert (= (and b!657789 (not c!75932)) b!657807))

(assert (= (and b!657795 res!426659) b!657797))

(assert (= (and b!657797 (not res!426656)) b!657799))

(assert (= (and b!657799 res!426664) b!657803))

(assert (= (and b!657795 c!75933) b!657785))

(assert (= (and b!657795 (not c!75933)) b!657792))

(assert (= (and b!657795 c!75934) b!657796))

(assert (= (and b!657795 (not c!75934)) b!657788))

(assert (= (and b!657796 res!426660) b!657794))

(assert (= (and b!657789 (not res!426661)) b!657809))

(declare-fun m!630861 () Bool)

(assert (=> b!657806 m!630861))

(declare-fun m!630863 () Bool)

(assert (=> b!657806 m!630863))

(assert (=> b!657806 m!630863))

(declare-fun m!630865 () Bool)

(assert (=> b!657806 m!630865))

(declare-fun m!630867 () Bool)

(assert (=> b!657798 m!630867))

(declare-fun m!630869 () Bool)

(assert (=> b!657787 m!630869))

(declare-fun m!630871 () Bool)

(assert (=> b!657800 m!630871))

(assert (=> b!657799 m!630863))

(assert (=> b!657799 m!630863))

(declare-fun m!630873 () Bool)

(assert (=> b!657799 m!630873))

(declare-fun m!630875 () Bool)

(assert (=> b!657809 m!630875))

(declare-fun m!630877 () Bool)

(assert (=> b!657809 m!630877))

(assert (=> b!657804 m!630863))

(assert (=> b!657804 m!630863))

(declare-fun m!630879 () Bool)

(assert (=> b!657804 m!630879))

(declare-fun m!630881 () Bool)

(assert (=> start!59592 m!630881))

(declare-fun m!630883 () Bool)

(assert (=> start!59592 m!630883))

(assert (=> b!657796 m!630863))

(declare-fun m!630885 () Bool)

(assert (=> b!657796 m!630885))

(assert (=> b!657796 m!630863))

(declare-fun m!630887 () Bool)

(assert (=> b!657796 m!630887))

(declare-fun m!630889 () Bool)

(assert (=> b!657796 m!630889))

(assert (=> b!657796 m!630863))

(assert (=> b!657796 m!630873))

(declare-fun m!630891 () Bool)

(assert (=> b!657796 m!630891))

(assert (=> b!657796 m!630863))

(declare-fun m!630893 () Bool)

(assert (=> b!657796 m!630893))

(assert (=> b!657796 m!630863))

(declare-fun m!630895 () Bool)

(assert (=> b!657796 m!630895))

(declare-fun m!630897 () Bool)

(assert (=> b!657796 m!630897))

(assert (=> b!657785 m!630863))

(declare-fun m!630899 () Bool)

(assert (=> b!657785 m!630899))

(assert (=> b!657785 m!630863))

(declare-fun m!630901 () Bool)

(assert (=> b!657785 m!630901))

(declare-fun m!630903 () Bool)

(assert (=> b!657785 m!630903))

(assert (=> b!657785 m!630897))

(assert (=> b!657785 m!630863))

(declare-fun m!630905 () Bool)

(assert (=> b!657785 m!630905))

(assert (=> b!657785 m!630863))

(declare-fun m!630907 () Bool)

(assert (=> b!657785 m!630907))

(assert (=> b!657785 m!630891))

(declare-fun m!630909 () Bool)

(assert (=> b!657805 m!630909))

(assert (=> b!657795 m!630875))

(assert (=> b!657795 m!630877))

(assert (=> b!657795 m!630863))

(assert (=> b!657803 m!630863))

(assert (=> b!657803 m!630863))

(declare-fun m!630911 () Bool)

(assert (=> b!657803 m!630911))

(declare-fun m!630913 () Bool)

(assert (=> b!657790 m!630913))

(declare-fun m!630915 () Bool)

(assert (=> b!657789 m!630915))

(declare-fun m!630917 () Bool)

(assert (=> b!657789 m!630917))

(assert (=> b!657789 m!630863))

(declare-fun m!630919 () Bool)

(assert (=> b!657789 m!630919))

(assert (=> b!657789 m!630863))

(assert (=> b!657789 m!630875))

(declare-fun m!630921 () Bool)

(assert (=> b!657789 m!630921))

(declare-fun m!630923 () Bool)

(assert (=> b!657789 m!630923))

(declare-fun m!630925 () Bool)

(assert (=> b!657789 m!630925))

(assert (=> b!657794 m!630863))

(assert (=> b!657794 m!630863))

(assert (=> b!657794 m!630911))

(assert (=> b!657801 m!630875))

(declare-fun m!630927 () Bool)

(assert (=> b!657801 m!630927))

(declare-fun m!630929 () Bool)

(assert (=> b!657793 m!630929))

(push 1)

