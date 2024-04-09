; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56026 () Bool)

(assert start!56026)

(declare-fun b!615774 () Bool)

(declare-fun res!396754 () Bool)

(declare-fun e!353075 () Bool)

(assert (=> b!615774 (=> (not res!396754) (not e!353075))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37459 0))(
  ( (array!37460 (arr!17972 (Array (_ BitVec 32) (_ BitVec 64))) (size!18336 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37459)

(assert (=> b!615774 (= res!396754 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17972 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615775 () Bool)

(declare-fun e!353073 () Bool)

(assert (=> b!615775 (= e!353075 e!353073)))

(declare-fun res!396752 () Bool)

(assert (=> b!615775 (=> (not res!396752) (not e!353073))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!615775 (= res!396752 (= (select (store (arr!17972 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!283114 () array!37459)

(assert (=> b!615775 (= lt!283114 (array!37460 (store (arr!17972 a!2986) i!1108 k!1786) (size!18336 a!2986)))))

(declare-fun b!615777 () Bool)

(declare-datatypes ((Unit!20010 0))(
  ( (Unit!20011) )
))
(declare-fun e!353077 () Unit!20010)

(declare-fun Unit!20012 () Unit!20010)

(assert (=> b!615777 (= e!353077 Unit!20012)))

(assert (=> b!615777 false))

(declare-fun b!615778 () Bool)

(declare-fun e!353079 () Bool)

(assert (=> b!615778 (= e!353073 e!353079)))

(declare-fun res!396748 () Bool)

(assert (=> b!615778 (=> (not res!396748) (not e!353079))))

(declare-datatypes ((SeekEntryResult!6419 0))(
  ( (MissingZero!6419 (index!27959 (_ BitVec 32))) (Found!6419 (index!27960 (_ BitVec 32))) (Intermediate!6419 (undefined!7231 Bool) (index!27961 (_ BitVec 32)) (x!56780 (_ BitVec 32))) (Undefined!6419) (MissingVacant!6419 (index!27962 (_ BitVec 32))) )
))
(declare-fun lt!283109 () SeekEntryResult!6419)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!615778 (= res!396748 (and (= lt!283109 (Found!6419 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17972 a!2986) index!984) (select (arr!17972 a!2986) j!136))) (not (= (select (arr!17972 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37459 (_ BitVec 32)) SeekEntryResult!6419)

(assert (=> b!615778 (= lt!283109 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17972 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615779 () Bool)

(declare-fun res!396746 () Bool)

(assert (=> b!615779 (= res!396746 (bvsge j!136 index!984))))

(declare-fun e!353072 () Bool)

(assert (=> b!615779 (=> res!396746 e!353072)))

(declare-fun e!353068 () Bool)

(assert (=> b!615779 (= e!353068 e!353072)))

(declare-fun b!615780 () Bool)

(declare-fun res!396755 () Bool)

(declare-fun e!353067 () Bool)

(assert (=> b!615780 (=> (not res!396755) (not e!353067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615780 (= res!396755 (validKeyInArray!0 (select (arr!17972 a!2986) j!136)))))

(declare-fun b!615781 () Bool)

(assert (=> b!615781 false))

(declare-fun lt!283115 () Unit!20010)

(declare-datatypes ((List!12066 0))(
  ( (Nil!12063) (Cons!12062 (h!13107 (_ BitVec 64)) (t!18302 List!12066)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37459 (_ BitVec 64) (_ BitVec 32) List!12066) Unit!20010)

(assert (=> b!615781 (= lt!283115 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283114 (select (arr!17972 a!2986) j!136) j!136 Nil!12063))))

(declare-fun arrayNoDuplicates!0 (array!37459 (_ BitVec 32) List!12066) Bool)

(assert (=> b!615781 (arrayNoDuplicates!0 lt!283114 j!136 Nil!12063)))

(declare-fun lt!283106 () Unit!20010)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37459 (_ BitVec 32) (_ BitVec 32)) Unit!20010)

(assert (=> b!615781 (= lt!283106 (lemmaNoDuplicateFromThenFromBigger!0 lt!283114 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615781 (arrayNoDuplicates!0 lt!283114 #b00000000000000000000000000000000 Nil!12063)))

(declare-fun lt!283112 () Unit!20010)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12066) Unit!20010)

(assert (=> b!615781 (= lt!283112 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12063))))

(declare-fun arrayContainsKey!0 (array!37459 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615781 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283102 () Unit!20010)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37459 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20010)

(assert (=> b!615781 (= lt!283102 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283114 (select (arr!17972 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353071 () Unit!20010)

(declare-fun Unit!20013 () Unit!20010)

(assert (=> b!615781 (= e!353071 Unit!20013)))

(declare-fun b!615782 () Bool)

(declare-fun res!396740 () Bool)

(assert (=> b!615782 (=> (not res!396740) (not e!353075))))

(assert (=> b!615782 (= res!396740 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12063))))

(declare-fun b!615783 () Bool)

(declare-fun e!353080 () Bool)

(assert (=> b!615783 (= e!353080 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) index!984))))

(declare-fun b!615784 () Bool)

(declare-fun e!353074 () Unit!20010)

(declare-fun Unit!20014 () Unit!20010)

(assert (=> b!615784 (= e!353074 Unit!20014)))

(declare-fun b!615785 () Bool)

(declare-fun res!396753 () Bool)

(assert (=> b!615785 (=> (not res!396753) (not e!353067))))

(assert (=> b!615785 (= res!396753 (and (= (size!18336 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18336 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18336 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615786 () Bool)

(declare-fun e!353070 () Unit!20010)

(declare-fun Unit!20015 () Unit!20010)

(assert (=> b!615786 (= e!353070 Unit!20015)))

(declare-fun b!615787 () Bool)

(assert (=> b!615787 false))

(declare-fun lt!283105 () Unit!20010)

(assert (=> b!615787 (= lt!283105 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283114 (select (arr!17972 a!2986) j!136) index!984 Nil!12063))))

(assert (=> b!615787 (arrayNoDuplicates!0 lt!283114 index!984 Nil!12063)))

(declare-fun lt!283111 () Unit!20010)

(assert (=> b!615787 (= lt!283111 (lemmaNoDuplicateFromThenFromBigger!0 lt!283114 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615787 (arrayNoDuplicates!0 lt!283114 #b00000000000000000000000000000000 Nil!12063)))

(declare-fun lt!283110 () Unit!20010)

(assert (=> b!615787 (= lt!283110 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12063))))

(assert (=> b!615787 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283097 () Unit!20010)

(assert (=> b!615787 (= lt!283097 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283114 (select (arr!17972 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353069 () Bool)

(assert (=> b!615787 e!353069))

(declare-fun res!396744 () Bool)

(assert (=> b!615787 (=> (not res!396744) (not e!353069))))

(assert (=> b!615787 (= res!396744 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) j!136))))

(declare-fun Unit!20016 () Unit!20010)

(assert (=> b!615787 (= e!353074 Unit!20016)))

(declare-fun b!615788 () Bool)

(declare-fun Unit!20017 () Unit!20010)

(assert (=> b!615788 (= e!353077 Unit!20017)))

(declare-fun b!615789 () Bool)

(declare-fun Unit!20018 () Unit!20010)

(assert (=> b!615789 (= e!353070 Unit!20018)))

(declare-fun res!396749 () Bool)

(assert (=> b!615789 (= res!396749 (= (select (store (arr!17972 a!2986) i!1108 k!1786) index!984) (select (arr!17972 a!2986) j!136)))))

(assert (=> b!615789 (=> (not res!396749) (not e!353068))))

(assert (=> b!615789 e!353068))

(declare-fun c!69887 () Bool)

(assert (=> b!615789 (= c!69887 (bvslt j!136 index!984))))

(declare-fun lt!283100 () Unit!20010)

(assert (=> b!615789 (= lt!283100 e!353071)))

(declare-fun c!69885 () Bool)

(assert (=> b!615789 (= c!69885 (bvslt index!984 j!136))))

(declare-fun lt!283098 () Unit!20010)

(assert (=> b!615789 (= lt!283098 e!353074)))

(assert (=> b!615789 false))

(declare-fun b!615790 () Bool)

(declare-fun res!396751 () Bool)

(assert (=> b!615790 (=> (not res!396751) (not e!353067))))

(assert (=> b!615790 (= res!396751 (validKeyInArray!0 k!1786))))

(declare-fun b!615791 () Bool)

(assert (=> b!615791 (= e!353079 (not true))))

(declare-fun lt!283113 () Unit!20010)

(assert (=> b!615791 (= lt!283113 e!353070)))

(declare-fun c!69886 () Bool)

(declare-fun lt!283107 () SeekEntryResult!6419)

(assert (=> b!615791 (= c!69886 (= lt!283107 (Found!6419 index!984)))))

(declare-fun lt!283103 () Unit!20010)

(assert (=> b!615791 (= lt!283103 e!353077)))

(declare-fun c!69884 () Bool)

(assert (=> b!615791 (= c!69884 (= lt!283107 Undefined!6419))))

(declare-fun lt!283108 () (_ BitVec 64))

(assert (=> b!615791 (= lt!283107 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283108 lt!283114 mask!3053))))

(declare-fun e!353076 () Bool)

(assert (=> b!615791 e!353076))

(declare-fun res!396742 () Bool)

(assert (=> b!615791 (=> (not res!396742) (not e!353076))))

(declare-fun lt!283116 () SeekEntryResult!6419)

(declare-fun lt!283101 () (_ BitVec 32))

(assert (=> b!615791 (= res!396742 (= lt!283116 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283101 vacantSpotIndex!68 lt!283108 lt!283114 mask!3053)))))

(assert (=> b!615791 (= lt!283116 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283101 vacantSpotIndex!68 (select (arr!17972 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615791 (= lt!283108 (select (store (arr!17972 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!283099 () Unit!20010)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20010)

(assert (=> b!615791 (= lt!283099 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283101 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615791 (= lt!283101 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!396745 () Bool)

(assert (=> start!56026 (=> (not res!396745) (not e!353067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56026 (= res!396745 (validMask!0 mask!3053))))

(assert (=> start!56026 e!353067))

(assert (=> start!56026 true))

(declare-fun array_inv!13746 (array!37459) Bool)

(assert (=> start!56026 (array_inv!13746 a!2986)))

(declare-fun b!615776 () Bool)

(declare-fun res!396743 () Bool)

(assert (=> b!615776 (= res!396743 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) j!136))))

(assert (=> b!615776 (=> (not res!396743) (not e!353080))))

(assert (=> b!615776 (= e!353072 e!353080)))

(declare-fun b!615792 () Bool)

(declare-fun res!396747 () Bool)

(assert (=> b!615792 (=> (not res!396747) (not e!353075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37459 (_ BitVec 32)) Bool)

(assert (=> b!615792 (= res!396747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615793 () Bool)

(assert (=> b!615793 (= e!353069 (arrayContainsKey!0 lt!283114 (select (arr!17972 a!2986) j!136) index!984))))

(declare-fun b!615794 () Bool)

(declare-fun Unit!20019 () Unit!20010)

(assert (=> b!615794 (= e!353071 Unit!20019)))

(declare-fun b!615795 () Bool)

(assert (=> b!615795 (= e!353067 e!353075)))

(declare-fun res!396741 () Bool)

(assert (=> b!615795 (=> (not res!396741) (not e!353075))))

(declare-fun lt!283104 () SeekEntryResult!6419)

(assert (=> b!615795 (= res!396741 (or (= lt!283104 (MissingZero!6419 i!1108)) (= lt!283104 (MissingVacant!6419 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37459 (_ BitVec 32)) SeekEntryResult!6419)

(assert (=> b!615795 (= lt!283104 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615796 () Bool)

(declare-fun res!396750 () Bool)

(assert (=> b!615796 (=> (not res!396750) (not e!353067))))

(assert (=> b!615796 (= res!396750 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615797 () Bool)

(assert (=> b!615797 (= e!353076 (= lt!283109 lt!283116))))

(assert (= (and start!56026 res!396745) b!615785))

(assert (= (and b!615785 res!396753) b!615780))

(assert (= (and b!615780 res!396755) b!615790))

(assert (= (and b!615790 res!396751) b!615796))

(assert (= (and b!615796 res!396750) b!615795))

(assert (= (and b!615795 res!396741) b!615792))

(assert (= (and b!615792 res!396747) b!615782))

(assert (= (and b!615782 res!396740) b!615774))

(assert (= (and b!615774 res!396754) b!615775))

(assert (= (and b!615775 res!396752) b!615778))

(assert (= (and b!615778 res!396748) b!615791))

(assert (= (and b!615791 res!396742) b!615797))

(assert (= (and b!615791 c!69884) b!615777))

(assert (= (and b!615791 (not c!69884)) b!615788))

(assert (= (and b!615791 c!69886) b!615789))

(assert (= (and b!615791 (not c!69886)) b!615786))

(assert (= (and b!615789 res!396749) b!615779))

(assert (= (and b!615779 (not res!396746)) b!615776))

(assert (= (and b!615776 res!396743) b!615783))

(assert (= (and b!615789 c!69887) b!615781))

(assert (= (and b!615789 (not c!69887)) b!615794))

(assert (= (and b!615789 c!69885) b!615787))

(assert (= (and b!615789 (not c!69885)) b!615784))

(assert (= (and b!615787 res!396744) b!615793))

(declare-fun m!592013 () Bool)

(assert (=> b!615778 m!592013))

(declare-fun m!592015 () Bool)

(assert (=> b!615778 m!592015))

(assert (=> b!615778 m!592015))

(declare-fun m!592017 () Bool)

(assert (=> b!615778 m!592017))

(declare-fun m!592019 () Bool)

(assert (=> b!615791 m!592019))

(assert (=> b!615791 m!592015))

(declare-fun m!592021 () Bool)

(assert (=> b!615791 m!592021))

(assert (=> b!615791 m!592015))

(declare-fun m!592023 () Bool)

(assert (=> b!615791 m!592023))

(declare-fun m!592025 () Bool)

(assert (=> b!615791 m!592025))

(declare-fun m!592027 () Bool)

(assert (=> b!615791 m!592027))

(declare-fun m!592029 () Bool)

(assert (=> b!615791 m!592029))

(declare-fun m!592031 () Bool)

(assert (=> b!615791 m!592031))

(assert (=> b!615793 m!592015))

(assert (=> b!615793 m!592015))

(declare-fun m!592033 () Bool)

(assert (=> b!615793 m!592033))

(declare-fun m!592035 () Bool)

(assert (=> b!615790 m!592035))

(assert (=> b!615783 m!592015))

(assert (=> b!615783 m!592015))

(assert (=> b!615783 m!592033))

(declare-fun m!592037 () Bool)

(assert (=> b!615774 m!592037))

(assert (=> b!615776 m!592015))

(assert (=> b!615776 m!592015))

(declare-fun m!592039 () Bool)

(assert (=> b!615776 m!592039))

(declare-fun m!592041 () Bool)

(assert (=> start!56026 m!592041))

(declare-fun m!592043 () Bool)

(assert (=> start!56026 m!592043))

(assert (=> b!615787 m!592015))

(declare-fun m!592045 () Bool)

(assert (=> b!615787 m!592045))

(assert (=> b!615787 m!592015))

(declare-fun m!592047 () Bool)

(assert (=> b!615787 m!592047))

(assert (=> b!615787 m!592015))

(declare-fun m!592049 () Bool)

(assert (=> b!615787 m!592049))

(declare-fun m!592051 () Bool)

(assert (=> b!615787 m!592051))

(declare-fun m!592053 () Bool)

(assert (=> b!615787 m!592053))

(declare-fun m!592055 () Bool)

(assert (=> b!615787 m!592055))

(assert (=> b!615787 m!592015))

(declare-fun m!592057 () Bool)

(assert (=> b!615787 m!592057))

(assert (=> b!615787 m!592015))

(assert (=> b!615787 m!592039))

(declare-fun m!592059 () Bool)

(assert (=> b!615781 m!592059))

(assert (=> b!615781 m!592015))

(declare-fun m!592061 () Bool)

(assert (=> b!615781 m!592061))

(assert (=> b!615781 m!592047))

(declare-fun m!592063 () Bool)

(assert (=> b!615781 m!592063))

(assert (=> b!615781 m!592015))

(declare-fun m!592065 () Bool)

(assert (=> b!615781 m!592065))

(assert (=> b!615781 m!592051))

(assert (=> b!615781 m!592015))

(declare-fun m!592067 () Bool)

(assert (=> b!615781 m!592067))

(assert (=> b!615781 m!592015))

(assert (=> b!615789 m!592021))

(declare-fun m!592069 () Bool)

(assert (=> b!615789 m!592069))

(assert (=> b!615789 m!592015))

(assert (=> b!615775 m!592021))

(declare-fun m!592071 () Bool)

(assert (=> b!615775 m!592071))

(declare-fun m!592073 () Bool)

(assert (=> b!615792 m!592073))

(declare-fun m!592075 () Bool)

(assert (=> b!615796 m!592075))

(assert (=> b!615780 m!592015))

(assert (=> b!615780 m!592015))

(declare-fun m!592077 () Bool)

(assert (=> b!615780 m!592077))

(declare-fun m!592079 () Bool)

(assert (=> b!615782 m!592079))

(declare-fun m!592081 () Bool)

(assert (=> b!615795 m!592081))

(push 1)

(assert (not b!615795))

(assert (not b!615780))

(assert (not b!615790))

(assert (not b!615776))

(assert (not b!615782))

(assert (not b!615796))

(assert (not b!615787))

(assert (not b!615791))

(assert (not b!615781))

(assert (not b!615792))

(assert (not b!615778))

(assert (not b!615783))

(assert (not start!56026))

(assert (not b!615793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

