; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54874 () Bool)

(assert start!54874)

(declare-fun e!342822 () Bool)

(declare-datatypes ((array!37072 0))(
  ( (array!37073 (arr!17792 (Array (_ BitVec 32) (_ BitVec 64))) (size!18156 (_ BitVec 32))) )
))
(declare-fun lt!272710 () array!37072)

(declare-fun b!599621 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37072)

(declare-fun arrayContainsKey!0 (array!37072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599621 (= e!342822 (arrayContainsKey!0 lt!272710 (select (arr!17792 a!2986) j!136) index!984))))

(declare-fun b!599622 () Bool)

(declare-fun e!342827 () Bool)

(declare-fun e!342826 () Bool)

(assert (=> b!599622 (= e!342827 e!342826)))

(declare-fun res!384746 () Bool)

(assert (=> b!599622 (=> res!384746 e!342826)))

(assert (=> b!599622 (= res!384746 (or (bvsge (size!18156 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18156 a!2986))))))

(declare-datatypes ((List!11886 0))(
  ( (Nil!11883) (Cons!11882 (h!12927 (_ BitVec 64)) (t!18122 List!11886)) )
))
(declare-fun arrayNoDuplicates!0 (array!37072 (_ BitVec 32) List!11886) Bool)

(assert (=> b!599622 (arrayNoDuplicates!0 lt!272710 j!136 Nil!11883)))

(declare-datatypes ((Unit!18900 0))(
  ( (Unit!18901) )
))
(declare-fun lt!272711 () Unit!18900)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37072 (_ BitVec 32) (_ BitVec 32)) Unit!18900)

(assert (=> b!599622 (= lt!272711 (lemmaNoDuplicateFromThenFromBigger!0 lt!272710 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599622 (arrayNoDuplicates!0 lt!272710 #b00000000000000000000000000000000 Nil!11883)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!272702 () Unit!18900)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37072 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11886) Unit!18900)

(assert (=> b!599622 (= lt!272702 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11883))))

(assert (=> b!599622 (arrayContainsKey!0 lt!272710 (select (arr!17792 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272703 () Unit!18900)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37072 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18900)

(assert (=> b!599622 (= lt!272703 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272710 (select (arr!17792 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599623 () Bool)

(declare-fun res!384757 () Bool)

(declare-fun e!342820 () Bool)

(assert (=> b!599623 (=> (not res!384757) (not e!342820))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!599623 (= res!384757 (and (= (size!18156 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18156 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18156 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599624 () Bool)

(declare-fun res!384740 () Bool)

(declare-fun e!342828 () Bool)

(assert (=> b!599624 (=> (not res!384740) (not e!342828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37072 (_ BitVec 32)) Bool)

(assert (=> b!599624 (= res!384740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599625 () Bool)

(declare-fun res!384758 () Bool)

(assert (=> b!599625 (=> (not res!384758) (not e!342820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599625 (= res!384758 (validKeyInArray!0 k!1786))))

(declare-fun b!599626 () Bool)

(declare-fun res!384752 () Bool)

(assert (=> b!599626 (=> res!384752 e!342826)))

(declare-fun contains!2971 (List!11886 (_ BitVec 64)) Bool)

(assert (=> b!599626 (= res!384752 (contains!2971 Nil!11883 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599627 () Bool)

(declare-fun e!342819 () Bool)

(assert (=> b!599627 (= e!342819 e!342827)))

(declare-fun res!384743 () Bool)

(assert (=> b!599627 (=> res!384743 e!342827)))

(declare-fun lt!272708 () (_ BitVec 64))

(declare-fun lt!272705 () (_ BitVec 64))

(assert (=> b!599627 (= res!384743 (or (not (= (select (arr!17792 a!2986) j!136) lt!272705)) (not (= (select (arr!17792 a!2986) j!136) lt!272708)) (bvsge j!136 index!984)))))

(declare-fun e!342824 () Bool)

(assert (=> b!599627 e!342824))

(declare-fun res!384748 () Bool)

(assert (=> b!599627 (=> (not res!384748) (not e!342824))))

(assert (=> b!599627 (= res!384748 (= lt!272708 (select (arr!17792 a!2986) j!136)))))

(assert (=> b!599627 (= lt!272708 (select (store (arr!17792 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599628 () Bool)

(declare-fun e!342821 () Bool)

(assert (=> b!599628 (= e!342821 (not e!342819))))

(declare-fun res!384747 () Bool)

(assert (=> b!599628 (=> res!384747 e!342819)))

(declare-datatypes ((SeekEntryResult!6239 0))(
  ( (MissingZero!6239 (index!27212 (_ BitVec 32))) (Found!6239 (index!27213 (_ BitVec 32))) (Intermediate!6239 (undefined!7051 Bool) (index!27214 (_ BitVec 32)) (x!56039 (_ BitVec 32))) (Undefined!6239) (MissingVacant!6239 (index!27215 (_ BitVec 32))) )
))
(declare-fun lt!272709 () SeekEntryResult!6239)

(assert (=> b!599628 (= res!384747 (not (= lt!272709 (Found!6239 index!984))))))

(declare-fun lt!272699 () Unit!18900)

(declare-fun e!342817 () Unit!18900)

(assert (=> b!599628 (= lt!272699 e!342817)))

(declare-fun c!67808 () Bool)

(assert (=> b!599628 (= c!67808 (= lt!272709 Undefined!6239))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37072 (_ BitVec 32)) SeekEntryResult!6239)

(assert (=> b!599628 (= lt!272709 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272705 lt!272710 mask!3053))))

(declare-fun e!342829 () Bool)

(assert (=> b!599628 e!342829))

(declare-fun res!384751 () Bool)

(assert (=> b!599628 (=> (not res!384751) (not e!342829))))

(declare-fun lt!272706 () SeekEntryResult!6239)

(declare-fun lt!272712 () (_ BitVec 32))

(assert (=> b!599628 (= res!384751 (= lt!272706 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272712 vacantSpotIndex!68 lt!272705 lt!272710 mask!3053)))))

(assert (=> b!599628 (= lt!272706 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272712 vacantSpotIndex!68 (select (arr!17792 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599628 (= lt!272705 (select (store (arr!17792 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272701 () Unit!18900)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37072 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18900)

(assert (=> b!599628 (= lt!272701 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272712 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599628 (= lt!272712 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599630 () Bool)

(declare-fun lt!272700 () SeekEntryResult!6239)

(assert (=> b!599630 (= e!342829 (= lt!272700 lt!272706))))

(declare-fun b!599631 () Bool)

(declare-fun Unit!18902 () Unit!18900)

(assert (=> b!599631 (= e!342817 Unit!18902)))

(assert (=> b!599631 false))

(declare-fun b!599632 () Bool)

(declare-fun res!384749 () Bool)

(assert (=> b!599632 (=> (not res!384749) (not e!342820))))

(assert (=> b!599632 (= res!384749 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599633 () Bool)

(declare-fun res!384742 () Bool)

(assert (=> b!599633 (=> (not res!384742) (not e!342828))))

(assert (=> b!599633 (= res!384742 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11883))))

(declare-fun b!599634 () Bool)

(assert (=> b!599634 (= e!342826 true)))

(declare-fun lt!272707 () Bool)

(assert (=> b!599634 (= lt!272707 (contains!2971 Nil!11883 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599635 () Bool)

(declare-fun res!384744 () Bool)

(assert (=> b!599635 (=> (not res!384744) (not e!342828))))

(assert (=> b!599635 (= res!384744 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17792 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599636 () Bool)

(assert (=> b!599636 (= e!342820 e!342828)))

(declare-fun res!384755 () Bool)

(assert (=> b!599636 (=> (not res!384755) (not e!342828))))

(declare-fun lt!272704 () SeekEntryResult!6239)

(assert (=> b!599636 (= res!384755 (or (= lt!272704 (MissingZero!6239 i!1108)) (= lt!272704 (MissingVacant!6239 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37072 (_ BitVec 32)) SeekEntryResult!6239)

(assert (=> b!599636 (= lt!272704 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599637 () Bool)

(declare-fun res!384756 () Bool)

(assert (=> b!599637 (=> res!384756 e!342826)))

(declare-fun noDuplicate!285 (List!11886) Bool)

(assert (=> b!599637 (= res!384756 (not (noDuplicate!285 Nil!11883)))))

(declare-fun res!384745 () Bool)

(assert (=> start!54874 (=> (not res!384745) (not e!342820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54874 (= res!384745 (validMask!0 mask!3053))))

(assert (=> start!54874 e!342820))

(assert (=> start!54874 true))

(declare-fun array_inv!13566 (array!37072) Bool)

(assert (=> start!54874 (array_inv!13566 a!2986)))

(declare-fun b!599629 () Bool)

(declare-fun e!342825 () Bool)

(assert (=> b!599629 (= e!342825 e!342822)))

(declare-fun res!384739 () Bool)

(assert (=> b!599629 (=> (not res!384739) (not e!342822))))

(assert (=> b!599629 (= res!384739 (arrayContainsKey!0 lt!272710 (select (arr!17792 a!2986) j!136) j!136))))

(declare-fun b!599638 () Bool)

(declare-fun e!342818 () Bool)

(assert (=> b!599638 (= e!342818 e!342821)))

(declare-fun res!384753 () Bool)

(assert (=> b!599638 (=> (not res!384753) (not e!342821))))

(assert (=> b!599638 (= res!384753 (and (= lt!272700 (Found!6239 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17792 a!2986) index!984) (select (arr!17792 a!2986) j!136))) (not (= (select (arr!17792 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599638 (= lt!272700 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17792 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599639 () Bool)

(assert (=> b!599639 (= e!342828 e!342818)))

(declare-fun res!384741 () Bool)

(assert (=> b!599639 (=> (not res!384741) (not e!342818))))

(assert (=> b!599639 (= res!384741 (= (select (store (arr!17792 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599639 (= lt!272710 (array!37073 (store (arr!17792 a!2986) i!1108 k!1786) (size!18156 a!2986)))))

(declare-fun b!599640 () Bool)

(declare-fun res!384750 () Bool)

(assert (=> b!599640 (=> (not res!384750) (not e!342820))))

(assert (=> b!599640 (= res!384750 (validKeyInArray!0 (select (arr!17792 a!2986) j!136)))))

(declare-fun b!599641 () Bool)

(declare-fun Unit!18903 () Unit!18900)

(assert (=> b!599641 (= e!342817 Unit!18903)))

(declare-fun b!599642 () Bool)

(assert (=> b!599642 (= e!342824 e!342825)))

(declare-fun res!384754 () Bool)

(assert (=> b!599642 (=> res!384754 e!342825)))

(assert (=> b!599642 (= res!384754 (or (not (= (select (arr!17792 a!2986) j!136) lt!272705)) (not (= (select (arr!17792 a!2986) j!136) lt!272708)) (bvsge j!136 index!984)))))

(assert (= (and start!54874 res!384745) b!599623))

(assert (= (and b!599623 res!384757) b!599640))

(assert (= (and b!599640 res!384750) b!599625))

(assert (= (and b!599625 res!384758) b!599632))

(assert (= (and b!599632 res!384749) b!599636))

(assert (= (and b!599636 res!384755) b!599624))

(assert (= (and b!599624 res!384740) b!599633))

(assert (= (and b!599633 res!384742) b!599635))

(assert (= (and b!599635 res!384744) b!599639))

(assert (= (and b!599639 res!384741) b!599638))

(assert (= (and b!599638 res!384753) b!599628))

(assert (= (and b!599628 res!384751) b!599630))

(assert (= (and b!599628 c!67808) b!599631))

(assert (= (and b!599628 (not c!67808)) b!599641))

(assert (= (and b!599628 (not res!384747)) b!599627))

(assert (= (and b!599627 res!384748) b!599642))

(assert (= (and b!599642 (not res!384754)) b!599629))

(assert (= (and b!599629 res!384739) b!599621))

(assert (= (and b!599627 (not res!384743)) b!599622))

(assert (= (and b!599622 (not res!384746)) b!599637))

(assert (= (and b!599637 (not res!384756)) b!599626))

(assert (= (and b!599626 (not res!384752)) b!599634))

(declare-fun m!576911 () Bool)

(assert (=> b!599636 m!576911))

(declare-fun m!576913 () Bool)

(assert (=> b!599632 m!576913))

(declare-fun m!576915 () Bool)

(assert (=> b!599633 m!576915))

(declare-fun m!576917 () Bool)

(assert (=> b!599625 m!576917))

(declare-fun m!576919 () Bool)

(assert (=> b!599621 m!576919))

(assert (=> b!599621 m!576919))

(declare-fun m!576921 () Bool)

(assert (=> b!599621 m!576921))

(declare-fun m!576923 () Bool)

(assert (=> b!599626 m!576923))

(assert (=> b!599622 m!576919))

(declare-fun m!576925 () Bool)

(assert (=> b!599622 m!576925))

(assert (=> b!599622 m!576919))

(declare-fun m!576927 () Bool)

(assert (=> b!599622 m!576927))

(assert (=> b!599622 m!576919))

(declare-fun m!576929 () Bool)

(assert (=> b!599622 m!576929))

(declare-fun m!576931 () Bool)

(assert (=> b!599622 m!576931))

(declare-fun m!576933 () Bool)

(assert (=> b!599622 m!576933))

(declare-fun m!576935 () Bool)

(assert (=> b!599622 m!576935))

(declare-fun m!576937 () Bool)

(assert (=> b!599634 m!576937))

(declare-fun m!576939 () Bool)

(assert (=> b!599638 m!576939))

(assert (=> b!599638 m!576919))

(assert (=> b!599638 m!576919))

(declare-fun m!576941 () Bool)

(assert (=> b!599638 m!576941))

(declare-fun m!576943 () Bool)

(assert (=> b!599635 m!576943))

(assert (=> b!599642 m!576919))

(declare-fun m!576945 () Bool)

(assert (=> b!599639 m!576945))

(declare-fun m!576947 () Bool)

(assert (=> b!599639 m!576947))

(declare-fun m!576949 () Bool)

(assert (=> start!54874 m!576949))

(declare-fun m!576951 () Bool)

(assert (=> start!54874 m!576951))

(declare-fun m!576953 () Bool)

(assert (=> b!599637 m!576953))

(assert (=> b!599640 m!576919))

(assert (=> b!599640 m!576919))

(declare-fun m!576955 () Bool)

(assert (=> b!599640 m!576955))

(assert (=> b!599627 m!576919))

(assert (=> b!599627 m!576945))

(declare-fun m!576957 () Bool)

(assert (=> b!599627 m!576957))

(declare-fun m!576959 () Bool)

(assert (=> b!599624 m!576959))

(declare-fun m!576961 () Bool)

(assert (=> b!599628 m!576961))

(declare-fun m!576963 () Bool)

(assert (=> b!599628 m!576963))

(declare-fun m!576965 () Bool)

(assert (=> b!599628 m!576965))

(assert (=> b!599628 m!576919))

(assert (=> b!599628 m!576919))

(declare-fun m!576967 () Bool)

(assert (=> b!599628 m!576967))

(declare-fun m!576969 () Bool)

(assert (=> b!599628 m!576969))

(declare-fun m!576971 () Bool)

(assert (=> b!599628 m!576971))

(assert (=> b!599628 m!576945))

(assert (=> b!599629 m!576919))

(assert (=> b!599629 m!576919))

(declare-fun m!576973 () Bool)

(assert (=> b!599629 m!576973))

(push 1)

