; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54838 () Bool)

(assert start!54838)

(declare-fun b!598517 () Bool)

(declare-fun e!342143 () Bool)

(declare-fun e!342154 () Bool)

(assert (=> b!598517 (= e!342143 e!342154)))

(declare-fun res!383743 () Bool)

(assert (=> b!598517 (=> (not res!383743) (not e!342154))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37036 0))(
  ( (array!37037 (arr!17774 (Array (_ BitVec 32) (_ BitVec 64))) (size!18138 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37036)

(assert (=> b!598517 (= res!383743 (= (select (store (arr!17774 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!272008 () array!37036)

(assert (=> b!598517 (= lt!272008 (array!37037 (store (arr!17774 a!2986) i!1108 k!1786) (size!18138 a!2986)))))

(declare-fun b!598518 () Bool)

(declare-fun e!342146 () Bool)

(declare-datatypes ((SeekEntryResult!6221 0))(
  ( (MissingZero!6221 (index!27140 (_ BitVec 32))) (Found!6221 (index!27141 (_ BitVec 32))) (Intermediate!6221 (undefined!7033 Bool) (index!27142 (_ BitVec 32)) (x!55973 (_ BitVec 32))) (Undefined!6221) (MissingVacant!6221 (index!27143 (_ BitVec 32))) )
))
(declare-fun lt!272000 () SeekEntryResult!6221)

(declare-fun lt!272004 () SeekEntryResult!6221)

(assert (=> b!598518 (= e!342146 (= lt!272000 lt!272004))))

(declare-fun b!598519 () Bool)

(declare-fun res!383746 () Bool)

(declare-fun e!342152 () Bool)

(assert (=> b!598519 (=> (not res!383746) (not e!342152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598519 (= res!383746 (validKeyInArray!0 k!1786))))

(declare-fun b!598520 () Bool)

(declare-fun res!383754 () Bool)

(assert (=> b!598520 (=> (not res!383754) (not e!342143))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598520 (= res!383754 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17774 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598521 () Bool)

(declare-fun res!383749 () Bool)

(assert (=> b!598521 (=> (not res!383749) (not e!342152))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!598521 (= res!383749 (and (= (size!18138 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18138 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18138 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598522 () Bool)

(declare-fun res!383755 () Bool)

(assert (=> b!598522 (=> (not res!383755) (not e!342143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37036 (_ BitVec 32)) Bool)

(assert (=> b!598522 (= res!383755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598523 () Bool)

(declare-datatypes ((Unit!18828 0))(
  ( (Unit!18829) )
))
(declare-fun e!342147 () Unit!18828)

(declare-fun Unit!18830 () Unit!18828)

(assert (=> b!598523 (= e!342147 Unit!18830)))

(declare-fun b!598524 () Bool)

(declare-fun e!342150 () Bool)

(assert (=> b!598524 (= e!342154 e!342150)))

(declare-fun res!383757 () Bool)

(assert (=> b!598524 (=> (not res!383757) (not e!342150))))

(assert (=> b!598524 (= res!383757 (and (= lt!272000 (Found!6221 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17774 a!2986) index!984) (select (arr!17774 a!2986) j!136))) (not (= (select (arr!17774 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37036 (_ BitVec 32)) SeekEntryResult!6221)

(assert (=> b!598524 (= lt!272000 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17774 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598525 () Bool)

(declare-fun res!383745 () Bool)

(assert (=> b!598525 (=> (not res!383745) (not e!342143))))

(declare-datatypes ((List!11868 0))(
  ( (Nil!11865) (Cons!11864 (h!12909 (_ BitVec 64)) (t!18104 List!11868)) )
))
(declare-fun arrayNoDuplicates!0 (array!37036 (_ BitVec 32) List!11868) Bool)

(assert (=> b!598525 (= res!383745 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11865))))

(declare-fun b!598526 () Bool)

(declare-fun e!342144 () Bool)

(assert (=> b!598526 (= e!342144 true)))

(assert (=> b!598526 (arrayNoDuplicates!0 lt!272008 #b00000000000000000000000000000000 Nil!11865)))

(declare-fun lt!272010 () Unit!18828)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37036 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11868) Unit!18828)

(assert (=> b!598526 (= lt!272010 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11865))))

(declare-fun arrayContainsKey!0 (array!37036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598526 (arrayContainsKey!0 lt!272008 (select (arr!17774 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272002 () Unit!18828)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37036 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18828)

(assert (=> b!598526 (= lt!272002 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272008 (select (arr!17774 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598527 () Bool)

(assert (=> b!598527 (= e!342152 e!342143)))

(declare-fun res!383758 () Bool)

(assert (=> b!598527 (=> (not res!383758) (not e!342143))))

(declare-fun lt!272006 () SeekEntryResult!6221)

(assert (=> b!598527 (= res!383758 (or (= lt!272006 (MissingZero!6221 i!1108)) (= lt!272006 (MissingVacant!6221 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37036 (_ BitVec 32)) SeekEntryResult!6221)

(assert (=> b!598527 (= lt!272006 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598528 () Bool)

(declare-fun res!383756 () Bool)

(assert (=> b!598528 (=> (not res!383756) (not e!342152))))

(assert (=> b!598528 (= res!383756 (validKeyInArray!0 (select (arr!17774 a!2986) j!136)))))

(declare-fun b!598529 () Bool)

(declare-fun res!383744 () Bool)

(assert (=> b!598529 (=> (not res!383744) (not e!342152))))

(assert (=> b!598529 (= res!383744 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!342151 () Bool)

(declare-fun b!598530 () Bool)

(assert (=> b!598530 (= e!342151 (arrayContainsKey!0 lt!272008 (select (arr!17774 a!2986) j!136) index!984))))

(declare-fun b!598531 () Bool)

(declare-fun e!342149 () Bool)

(assert (=> b!598531 (= e!342149 e!342144)))

(declare-fun res!383759 () Bool)

(assert (=> b!598531 (=> res!383759 e!342144)))

(declare-fun lt!272003 () (_ BitVec 64))

(declare-fun lt!272001 () (_ BitVec 64))

(assert (=> b!598531 (= res!383759 (or (not (= (select (arr!17774 a!2986) j!136) lt!272003)) (not (= (select (arr!17774 a!2986) j!136) lt!272001)) (bvsge j!136 index!984)))))

(declare-fun e!342153 () Bool)

(assert (=> b!598531 e!342153))

(declare-fun res!383750 () Bool)

(assert (=> b!598531 (=> (not res!383750) (not e!342153))))

(assert (=> b!598531 (= res!383750 (= lt!272001 (select (arr!17774 a!2986) j!136)))))

(assert (=> b!598531 (= lt!272001 (select (store (arr!17774 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598532 () Bool)

(declare-fun Unit!18831 () Unit!18828)

(assert (=> b!598532 (= e!342147 Unit!18831)))

(assert (=> b!598532 false))

(declare-fun res!383748 () Bool)

(assert (=> start!54838 (=> (not res!383748) (not e!342152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54838 (= res!383748 (validMask!0 mask!3053))))

(assert (=> start!54838 e!342152))

(assert (=> start!54838 true))

(declare-fun array_inv!13548 (array!37036) Bool)

(assert (=> start!54838 (array_inv!13548 a!2986)))

(declare-fun b!598533 () Bool)

(declare-fun e!342148 () Bool)

(assert (=> b!598533 (= e!342153 e!342148)))

(declare-fun res!383751 () Bool)

(assert (=> b!598533 (=> res!383751 e!342148)))

(assert (=> b!598533 (= res!383751 (or (not (= (select (arr!17774 a!2986) j!136) lt!272003)) (not (= (select (arr!17774 a!2986) j!136) lt!272001)) (bvsge j!136 index!984)))))

(declare-fun b!598534 () Bool)

(assert (=> b!598534 (= e!342150 (not e!342149))))

(declare-fun res!383752 () Bool)

(assert (=> b!598534 (=> res!383752 e!342149)))

(declare-fun lt!272005 () SeekEntryResult!6221)

(assert (=> b!598534 (= res!383752 (not (= lt!272005 (Found!6221 index!984))))))

(declare-fun lt!272007 () Unit!18828)

(assert (=> b!598534 (= lt!272007 e!342147)))

(declare-fun c!67754 () Bool)

(assert (=> b!598534 (= c!67754 (= lt!272005 Undefined!6221))))

(assert (=> b!598534 (= lt!272005 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272003 lt!272008 mask!3053))))

(assert (=> b!598534 e!342146))

(declare-fun res!383747 () Bool)

(assert (=> b!598534 (=> (not res!383747) (not e!342146))))

(declare-fun lt!272009 () (_ BitVec 32))

(assert (=> b!598534 (= res!383747 (= lt!272004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272009 vacantSpotIndex!68 lt!272003 lt!272008 mask!3053)))))

(assert (=> b!598534 (= lt!272004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272009 vacantSpotIndex!68 (select (arr!17774 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598534 (= lt!272003 (select (store (arr!17774 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271999 () Unit!18828)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37036 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18828)

(assert (=> b!598534 (= lt!271999 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272009 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598534 (= lt!272009 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598535 () Bool)

(assert (=> b!598535 (= e!342148 e!342151)))

(declare-fun res!383753 () Bool)

(assert (=> b!598535 (=> (not res!383753) (not e!342151))))

(assert (=> b!598535 (= res!383753 (arrayContainsKey!0 lt!272008 (select (arr!17774 a!2986) j!136) j!136))))

(assert (= (and start!54838 res!383748) b!598521))

(assert (= (and b!598521 res!383749) b!598528))

(assert (= (and b!598528 res!383756) b!598519))

(assert (= (and b!598519 res!383746) b!598529))

(assert (= (and b!598529 res!383744) b!598527))

(assert (= (and b!598527 res!383758) b!598522))

(assert (= (and b!598522 res!383755) b!598525))

(assert (= (and b!598525 res!383745) b!598520))

(assert (= (and b!598520 res!383754) b!598517))

(assert (= (and b!598517 res!383743) b!598524))

(assert (= (and b!598524 res!383757) b!598534))

(assert (= (and b!598534 res!383747) b!598518))

(assert (= (and b!598534 c!67754) b!598532))

(assert (= (and b!598534 (not c!67754)) b!598523))

(assert (= (and b!598534 (not res!383752)) b!598531))

(assert (= (and b!598531 res!383750) b!598533))

(assert (= (and b!598533 (not res!383751)) b!598535))

(assert (= (and b!598535 res!383753) b!598530))

(assert (= (and b!598531 (not res!383759)) b!598526))

(declare-fun m!575859 () Bool)

(assert (=> b!598519 m!575859))

(declare-fun m!575861 () Bool)

(assert (=> b!598525 m!575861))

(declare-fun m!575863 () Bool)

(assert (=> b!598535 m!575863))

(assert (=> b!598535 m!575863))

(declare-fun m!575865 () Bool)

(assert (=> b!598535 m!575865))

(declare-fun m!575867 () Bool)

(assert (=> start!54838 m!575867))

(declare-fun m!575869 () Bool)

(assert (=> start!54838 m!575869))

(declare-fun m!575871 () Bool)

(assert (=> b!598520 m!575871))

(assert (=> b!598533 m!575863))

(assert (=> b!598530 m!575863))

(assert (=> b!598530 m!575863))

(declare-fun m!575873 () Bool)

(assert (=> b!598530 m!575873))

(assert (=> b!598526 m!575863))

(declare-fun m!575875 () Bool)

(assert (=> b!598526 m!575875))

(assert (=> b!598526 m!575863))

(assert (=> b!598526 m!575863))

(declare-fun m!575877 () Bool)

(assert (=> b!598526 m!575877))

(declare-fun m!575879 () Bool)

(assert (=> b!598526 m!575879))

(declare-fun m!575881 () Bool)

(assert (=> b!598526 m!575881))

(declare-fun m!575883 () Bool)

(assert (=> b!598517 m!575883))

(declare-fun m!575885 () Bool)

(assert (=> b!598517 m!575885))

(assert (=> b!598531 m!575863))

(assert (=> b!598531 m!575883))

(declare-fun m!575887 () Bool)

(assert (=> b!598531 m!575887))

(declare-fun m!575889 () Bool)

(assert (=> b!598529 m!575889))

(declare-fun m!575891 () Bool)

(assert (=> b!598527 m!575891))

(declare-fun m!575893 () Bool)

(assert (=> b!598534 m!575893))

(declare-fun m!575895 () Bool)

(assert (=> b!598534 m!575895))

(declare-fun m!575897 () Bool)

(assert (=> b!598534 m!575897))

(assert (=> b!598534 m!575863))

(assert (=> b!598534 m!575883))

(assert (=> b!598534 m!575863))

(declare-fun m!575899 () Bool)

(assert (=> b!598534 m!575899))

(declare-fun m!575901 () Bool)

(assert (=> b!598534 m!575901))

(declare-fun m!575903 () Bool)

(assert (=> b!598534 m!575903))

(declare-fun m!575905 () Bool)

(assert (=> b!598524 m!575905))

(assert (=> b!598524 m!575863))

(assert (=> b!598524 m!575863))

(declare-fun m!575907 () Bool)

(assert (=> b!598524 m!575907))

(declare-fun m!575909 () Bool)

(assert (=> b!598522 m!575909))

(assert (=> b!598528 m!575863))

(assert (=> b!598528 m!575863))

(declare-fun m!575911 () Bool)

(assert (=> b!598528 m!575911))

(push 1)

