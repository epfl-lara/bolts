; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54872 () Bool)

(assert start!54872)

(declare-fun res!384694 () Bool)

(declare-fun e!342790 () Bool)

(assert (=> start!54872 (=> (not res!384694) (not e!342790))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54872 (= res!384694 (validMask!0 mask!3053))))

(assert (=> start!54872 e!342790))

(assert (=> start!54872 true))

(declare-datatypes ((array!37070 0))(
  ( (array!37071 (arr!17791 (Array (_ BitVec 32) (_ BitVec 64))) (size!18155 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37070)

(declare-fun array_inv!13565 (array!37070) Bool)

(assert (=> start!54872 (array_inv!13565 a!2986)))

(declare-fun b!599555 () Bool)

(declare-fun res!384685 () Bool)

(declare-fun e!342782 () Bool)

(assert (=> b!599555 (=> (not res!384685) (not e!342782))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599555 (= res!384685 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17791 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599556 () Bool)

(declare-fun e!342784 () Bool)

(declare-fun e!342783 () Bool)

(assert (=> b!599556 (= e!342784 (not e!342783))))

(declare-fun res!384693 () Bool)

(assert (=> b!599556 (=> res!384693 e!342783)))

(declare-datatypes ((SeekEntryResult!6238 0))(
  ( (MissingZero!6238 (index!27208 (_ BitVec 32))) (Found!6238 (index!27209 (_ BitVec 32))) (Intermediate!6238 (undefined!7050 Bool) (index!27210 (_ BitVec 32)) (x!56038 (_ BitVec 32))) (Undefined!6238) (MissingVacant!6238 (index!27211 (_ BitVec 32))) )
))
(declare-fun lt!272657 () SeekEntryResult!6238)

(assert (=> b!599556 (= res!384693 (not (= lt!272657 (Found!6238 index!984))))))

(declare-datatypes ((Unit!18896 0))(
  ( (Unit!18897) )
))
(declare-fun lt!272666 () Unit!18896)

(declare-fun e!342786 () Unit!18896)

(assert (=> b!599556 (= lt!272666 e!342786)))

(declare-fun c!67805 () Bool)

(assert (=> b!599556 (= c!67805 (= lt!272657 Undefined!6238))))

(declare-fun lt!272667 () array!37070)

(declare-fun lt!272663 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37070 (_ BitVec 32)) SeekEntryResult!6238)

(assert (=> b!599556 (= lt!272657 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272663 lt!272667 mask!3053))))

(declare-fun e!342787 () Bool)

(assert (=> b!599556 e!342787))

(declare-fun res!384696 () Bool)

(assert (=> b!599556 (=> (not res!384696) (not e!342787))))

(declare-fun lt!272658 () (_ BitVec 32))

(declare-fun lt!272659 () SeekEntryResult!6238)

(assert (=> b!599556 (= res!384696 (= lt!272659 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272658 vacantSpotIndex!68 lt!272663 lt!272667 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!599556 (= lt!272659 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272658 vacantSpotIndex!68 (select (arr!17791 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!599556 (= lt!272663 (select (store (arr!17791 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272664 () Unit!18896)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37070 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18896)

(assert (=> b!599556 (= lt!272664 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272658 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599556 (= lt!272658 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599557 () Bool)

(declare-fun res!384687 () Bool)

(declare-fun e!342780 () Bool)

(assert (=> b!599557 (=> res!384687 e!342780)))

(declare-datatypes ((List!11885 0))(
  ( (Nil!11882) (Cons!11881 (h!12926 (_ BitVec 64)) (t!18121 List!11885)) )
))
(declare-fun contains!2970 (List!11885 (_ BitVec 64)) Bool)

(assert (=> b!599557 (= res!384687 (contains!2970 Nil!11882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599558 () Bool)

(declare-fun Unit!18898 () Unit!18896)

(assert (=> b!599558 (= e!342786 Unit!18898)))

(declare-fun b!599559 () Bool)

(assert (=> b!599559 (= e!342790 e!342782)))

(declare-fun res!384680 () Bool)

(assert (=> b!599559 (=> (not res!384680) (not e!342782))))

(declare-fun lt!272660 () SeekEntryResult!6238)

(assert (=> b!599559 (= res!384680 (or (= lt!272660 (MissingZero!6238 i!1108)) (= lt!272660 (MissingVacant!6238 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37070 (_ BitVec 32)) SeekEntryResult!6238)

(assert (=> b!599559 (= lt!272660 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!599560 () Bool)

(declare-fun e!342789 () Bool)

(assert (=> b!599560 (= e!342782 e!342789)))

(declare-fun res!384683 () Bool)

(assert (=> b!599560 (=> (not res!384683) (not e!342789))))

(assert (=> b!599560 (= res!384683 (= (select (store (arr!17791 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599560 (= lt!272667 (array!37071 (store (arr!17791 a!2986) i!1108 k0!1786) (size!18155 a!2986)))))

(declare-fun b!599561 () Bool)

(declare-fun res!384682 () Bool)

(assert (=> b!599561 (=> (not res!384682) (not e!342790))))

(declare-fun arrayContainsKey!0 (array!37070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599561 (= res!384682 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599562 () Bool)

(declare-fun res!384690 () Bool)

(assert (=> b!599562 (=> (not res!384690) (not e!342790))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599562 (= res!384690 (validKeyInArray!0 k0!1786))))

(declare-fun b!599563 () Bool)

(assert (=> b!599563 (= e!342789 e!342784)))

(declare-fun res!384679 () Bool)

(assert (=> b!599563 (=> (not res!384679) (not e!342784))))

(declare-fun lt!272665 () SeekEntryResult!6238)

(assert (=> b!599563 (= res!384679 (and (= lt!272665 (Found!6238 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17791 a!2986) index!984) (select (arr!17791 a!2986) j!136))) (not (= (select (arr!17791 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599563 (= lt!272665 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17791 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599564 () Bool)

(declare-fun res!384681 () Bool)

(assert (=> b!599564 (=> (not res!384681) (not e!342782))))

(declare-fun arrayNoDuplicates!0 (array!37070 (_ BitVec 32) List!11885) Bool)

(assert (=> b!599564 (= res!384681 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11882))))

(declare-fun b!599565 () Bool)

(declare-fun e!342788 () Bool)

(assert (=> b!599565 (= e!342788 (arrayContainsKey!0 lt!272667 (select (arr!17791 a!2986) j!136) index!984))))

(declare-fun b!599566 () Bool)

(declare-fun e!342778 () Bool)

(assert (=> b!599566 (= e!342778 e!342788)))

(declare-fun res!384695 () Bool)

(assert (=> b!599566 (=> (not res!384695) (not e!342788))))

(assert (=> b!599566 (= res!384695 (arrayContainsKey!0 lt!272667 (select (arr!17791 a!2986) j!136) j!136))))

(declare-fun b!599567 () Bool)

(assert (=> b!599567 (= e!342787 (= lt!272665 lt!272659))))

(declare-fun b!599568 () Bool)

(declare-fun e!342779 () Bool)

(assert (=> b!599568 (= e!342783 e!342779)))

(declare-fun res!384688 () Bool)

(assert (=> b!599568 (=> res!384688 e!342779)))

(declare-fun lt!272670 () (_ BitVec 64))

(assert (=> b!599568 (= res!384688 (or (not (= (select (arr!17791 a!2986) j!136) lt!272663)) (not (= (select (arr!17791 a!2986) j!136) lt!272670)) (bvsge j!136 index!984)))))

(declare-fun e!342785 () Bool)

(assert (=> b!599568 e!342785))

(declare-fun res!384686 () Bool)

(assert (=> b!599568 (=> (not res!384686) (not e!342785))))

(assert (=> b!599568 (= res!384686 (= lt!272670 (select (arr!17791 a!2986) j!136)))))

(assert (=> b!599568 (= lt!272670 (select (store (arr!17791 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!599569 () Bool)

(declare-fun res!384697 () Bool)

(assert (=> b!599569 (=> res!384697 e!342780)))

(declare-fun noDuplicate!284 (List!11885) Bool)

(assert (=> b!599569 (= res!384697 (not (noDuplicate!284 Nil!11882)))))

(declare-fun b!599570 () Bool)

(declare-fun res!384692 () Bool)

(assert (=> b!599570 (=> (not res!384692) (not e!342782))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37070 (_ BitVec 32)) Bool)

(assert (=> b!599570 (= res!384692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599571 () Bool)

(declare-fun res!384689 () Bool)

(assert (=> b!599571 (=> (not res!384689) (not e!342790))))

(assert (=> b!599571 (= res!384689 (validKeyInArray!0 (select (arr!17791 a!2986) j!136)))))

(declare-fun b!599572 () Bool)

(assert (=> b!599572 (= e!342779 e!342780)))

(declare-fun res!384698 () Bool)

(assert (=> b!599572 (=> res!384698 e!342780)))

(assert (=> b!599572 (= res!384698 (or (bvsge (size!18155 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18155 a!2986))))))

(assert (=> b!599572 (arrayNoDuplicates!0 lt!272667 j!136 Nil!11882)))

(declare-fun lt!272661 () Unit!18896)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37070 (_ BitVec 32) (_ BitVec 32)) Unit!18896)

(assert (=> b!599572 (= lt!272661 (lemmaNoDuplicateFromThenFromBigger!0 lt!272667 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599572 (arrayNoDuplicates!0 lt!272667 #b00000000000000000000000000000000 Nil!11882)))

(declare-fun lt!272669 () Unit!18896)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37070 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11885) Unit!18896)

(assert (=> b!599572 (= lt!272669 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11882))))

(assert (=> b!599572 (arrayContainsKey!0 lt!272667 (select (arr!17791 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272662 () Unit!18896)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37070 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18896)

(assert (=> b!599572 (= lt!272662 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272667 (select (arr!17791 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599573 () Bool)

(declare-fun Unit!18899 () Unit!18896)

(assert (=> b!599573 (= e!342786 Unit!18899)))

(assert (=> b!599573 false))

(declare-fun b!599574 () Bool)

(declare-fun res!384691 () Bool)

(assert (=> b!599574 (=> (not res!384691) (not e!342790))))

(assert (=> b!599574 (= res!384691 (and (= (size!18155 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18155 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18155 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599575 () Bool)

(assert (=> b!599575 (= e!342780 true)))

(declare-fun lt!272668 () Bool)

(assert (=> b!599575 (= lt!272668 (contains!2970 Nil!11882 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599576 () Bool)

(assert (=> b!599576 (= e!342785 e!342778)))

(declare-fun res!384684 () Bool)

(assert (=> b!599576 (=> res!384684 e!342778)))

(assert (=> b!599576 (= res!384684 (or (not (= (select (arr!17791 a!2986) j!136) lt!272663)) (not (= (select (arr!17791 a!2986) j!136) lt!272670)) (bvsge j!136 index!984)))))

(assert (= (and start!54872 res!384694) b!599574))

(assert (= (and b!599574 res!384691) b!599571))

(assert (= (and b!599571 res!384689) b!599562))

(assert (= (and b!599562 res!384690) b!599561))

(assert (= (and b!599561 res!384682) b!599559))

(assert (= (and b!599559 res!384680) b!599570))

(assert (= (and b!599570 res!384692) b!599564))

(assert (= (and b!599564 res!384681) b!599555))

(assert (= (and b!599555 res!384685) b!599560))

(assert (= (and b!599560 res!384683) b!599563))

(assert (= (and b!599563 res!384679) b!599556))

(assert (= (and b!599556 res!384696) b!599567))

(assert (= (and b!599556 c!67805) b!599573))

(assert (= (and b!599556 (not c!67805)) b!599558))

(assert (= (and b!599556 (not res!384693)) b!599568))

(assert (= (and b!599568 res!384686) b!599576))

(assert (= (and b!599576 (not res!384684)) b!599566))

(assert (= (and b!599566 res!384695) b!599565))

(assert (= (and b!599568 (not res!384688)) b!599572))

(assert (= (and b!599572 (not res!384698)) b!599569))

(assert (= (and b!599569 (not res!384697)) b!599557))

(assert (= (and b!599557 (not res!384687)) b!599575))

(declare-fun m!576847 () Bool)

(assert (=> b!599560 m!576847))

(declare-fun m!576849 () Bool)

(assert (=> b!599560 m!576849))

(declare-fun m!576851 () Bool)

(assert (=> b!599556 m!576851))

(declare-fun m!576853 () Bool)

(assert (=> b!599556 m!576853))

(declare-fun m!576855 () Bool)

(assert (=> b!599556 m!576855))

(assert (=> b!599556 m!576847))

(declare-fun m!576857 () Bool)

(assert (=> b!599556 m!576857))

(declare-fun m!576859 () Bool)

(assert (=> b!599556 m!576859))

(declare-fun m!576861 () Bool)

(assert (=> b!599556 m!576861))

(assert (=> b!599556 m!576859))

(declare-fun m!576863 () Bool)

(assert (=> b!599556 m!576863))

(declare-fun m!576865 () Bool)

(assert (=> b!599575 m!576865))

(declare-fun m!576867 () Bool)

(assert (=> b!599569 m!576867))

(declare-fun m!576869 () Bool)

(assert (=> b!599563 m!576869))

(assert (=> b!599563 m!576859))

(assert (=> b!599563 m!576859))

(declare-fun m!576871 () Bool)

(assert (=> b!599563 m!576871))

(declare-fun m!576873 () Bool)

(assert (=> b!599570 m!576873))

(declare-fun m!576875 () Bool)

(assert (=> b!599559 m!576875))

(assert (=> b!599568 m!576859))

(assert (=> b!599568 m!576847))

(declare-fun m!576877 () Bool)

(assert (=> b!599568 m!576877))

(assert (=> b!599572 m!576859))

(declare-fun m!576879 () Bool)

(assert (=> b!599572 m!576879))

(declare-fun m!576881 () Bool)

(assert (=> b!599572 m!576881))

(assert (=> b!599572 m!576859))

(declare-fun m!576883 () Bool)

(assert (=> b!599572 m!576883))

(declare-fun m!576885 () Bool)

(assert (=> b!599572 m!576885))

(assert (=> b!599572 m!576859))

(declare-fun m!576887 () Bool)

(assert (=> b!599572 m!576887))

(declare-fun m!576889 () Bool)

(assert (=> b!599572 m!576889))

(assert (=> b!599571 m!576859))

(assert (=> b!599571 m!576859))

(declare-fun m!576891 () Bool)

(assert (=> b!599571 m!576891))

(declare-fun m!576893 () Bool)

(assert (=> b!599561 m!576893))

(assert (=> b!599565 m!576859))

(assert (=> b!599565 m!576859))

(declare-fun m!576895 () Bool)

(assert (=> b!599565 m!576895))

(assert (=> b!599576 m!576859))

(declare-fun m!576897 () Bool)

(assert (=> start!54872 m!576897))

(declare-fun m!576899 () Bool)

(assert (=> start!54872 m!576899))

(assert (=> b!599566 m!576859))

(assert (=> b!599566 m!576859))

(declare-fun m!576901 () Bool)

(assert (=> b!599566 m!576901))

(declare-fun m!576903 () Bool)

(assert (=> b!599557 m!576903))

(declare-fun m!576905 () Bool)

(assert (=> b!599564 m!576905))

(declare-fun m!576907 () Bool)

(assert (=> b!599555 m!576907))

(declare-fun m!576909 () Bool)

(assert (=> b!599562 m!576909))

(check-sat (not b!599556) (not b!599572) (not b!599564) (not b!599559) (not b!599562) (not b!599570) (not b!599563) (not b!599561) (not b!599569) (not b!599557) (not b!599566) (not b!599565) (not start!54872) (not b!599575) (not b!599571))
(check-sat)
