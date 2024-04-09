; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56106 () Bool)

(assert start!56106)

(declare-fun res!398778 () Bool)

(declare-fun e!354868 () Bool)

(assert (=> start!56106 (=> (not res!398778) (not e!354868))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56106 (= res!398778 (validMask!0 mask!3053))))

(assert (=> start!56106 e!354868))

(assert (=> start!56106 true))

(declare-datatypes ((array!37539 0))(
  ( (array!37540 (arr!18012 (Array (_ BitVec 32) (_ BitVec 64))) (size!18376 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37539)

(declare-fun array_inv!13786 (array!37539) Bool)

(assert (=> start!56106 (array_inv!13786 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!354871 () Bool)

(declare-fun b!618764 () Bool)

(declare-fun lt!285515 () array!37539)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618764 (= e!354871 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) index!984))))

(declare-fun b!618765 () Bool)

(declare-fun res!398781 () Bool)

(declare-fun e!354865 () Bool)

(assert (=> b!618765 (=> (not res!398781) (not e!354865))))

(declare-datatypes ((List!12106 0))(
  ( (Nil!12103) (Cons!12102 (h!13147 (_ BitVec 64)) (t!18342 List!12106)) )
))
(declare-fun arrayNoDuplicates!0 (array!37539 (_ BitVec 32) List!12106) Bool)

(assert (=> b!618765 (= res!398781 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12103))))

(declare-fun b!618766 () Bool)

(declare-datatypes ((Unit!20410 0))(
  ( (Unit!20411) )
))
(declare-fun e!354860 () Unit!20410)

(declare-fun Unit!20412 () Unit!20410)

(assert (=> b!618766 (= e!354860 Unit!20412)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!398786 () Bool)

(assert (=> b!618766 (= res!398786 (= (select (store (arr!18012 a!2986) i!1108 k!1786) index!984) (select (arr!18012 a!2986) j!136)))))

(declare-fun e!354869 () Bool)

(assert (=> b!618766 (=> (not res!398786) (not e!354869))))

(assert (=> b!618766 e!354869))

(declare-fun c!70365 () Bool)

(assert (=> b!618766 (= c!70365 (bvslt j!136 index!984))))

(declare-fun lt!285500 () Unit!20410)

(declare-fun e!354867 () Unit!20410)

(assert (=> b!618766 (= lt!285500 e!354867)))

(declare-fun c!70364 () Bool)

(assert (=> b!618766 (= c!70364 (bvslt index!984 j!136))))

(declare-fun lt!285508 () Unit!20410)

(declare-fun e!354863 () Unit!20410)

(assert (=> b!618766 (= lt!285508 e!354863)))

(assert (=> b!618766 false))

(declare-fun b!618767 () Bool)

(declare-fun res!398777 () Bool)

(assert (=> b!618767 (=> (not res!398777) (not e!354868))))

(assert (=> b!618767 (= res!398777 (and (= (size!18376 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18376 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18376 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618768 () Bool)

(declare-fun e!354861 () Bool)

(assert (=> b!618768 (= e!354865 e!354861)))

(declare-fun res!398782 () Bool)

(assert (=> b!618768 (=> (not res!398782) (not e!354861))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!618768 (= res!398782 (= (select (store (arr!18012 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618768 (= lt!285515 (array!37540 (store (arr!18012 a!2986) i!1108 k!1786) (size!18376 a!2986)))))

(declare-fun b!618769 () Bool)

(declare-fun e!354866 () Bool)

(declare-datatypes ((SeekEntryResult!6459 0))(
  ( (MissingZero!6459 (index!28119 (_ BitVec 32))) (Found!6459 (index!28120 (_ BitVec 32))) (Intermediate!6459 (undefined!7271 Bool) (index!28121 (_ BitVec 32)) (x!56932 (_ BitVec 32))) (Undefined!6459) (MissingVacant!6459 (index!28122 (_ BitVec 32))) )
))
(declare-fun lt!285498 () SeekEntryResult!6459)

(declare-fun lt!285503 () SeekEntryResult!6459)

(assert (=> b!618769 (= e!354866 (= lt!285498 lt!285503))))

(declare-fun b!618770 () Bool)

(declare-fun res!398779 () Bool)

(assert (=> b!618770 (=> (not res!398779) (not e!354868))))

(assert (=> b!618770 (= res!398779 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618771 () Bool)

(declare-fun res!398776 () Bool)

(assert (=> b!618771 (=> (not res!398776) (not e!354865))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!618771 (= res!398776 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18012 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618772 () Bool)

(declare-fun e!354862 () Bool)

(assert (=> b!618772 (= e!354861 e!354862)))

(declare-fun res!398774 () Bool)

(assert (=> b!618772 (=> (not res!398774) (not e!354862))))

(assert (=> b!618772 (= res!398774 (and (= lt!285498 (Found!6459 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18012 a!2986) index!984) (select (arr!18012 a!2986) j!136))) (not (= (select (arr!18012 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37539 (_ BitVec 32)) SeekEntryResult!6459)

(assert (=> b!618772 (= lt!285498 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18012 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!398772 () Bool)

(declare-fun b!618773 () Bool)

(assert (=> b!618773 (= res!398772 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) j!136))))

(assert (=> b!618773 (=> (not res!398772) (not e!354871))))

(declare-fun e!354857 () Bool)

(assert (=> b!618773 (= e!354857 e!354871)))

(declare-fun b!618774 () Bool)

(declare-fun res!398784 () Bool)

(assert (=> b!618774 (= res!398784 (bvsge j!136 index!984))))

(assert (=> b!618774 (=> res!398784 e!354857)))

(assert (=> b!618774 (= e!354869 e!354857)))

(declare-fun b!618775 () Bool)

(declare-fun res!398785 () Bool)

(assert (=> b!618775 (=> (not res!398785) (not e!354868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618775 (= res!398785 (validKeyInArray!0 k!1786))))

(declare-fun b!618776 () Bool)

(declare-fun e!354864 () Unit!20410)

(declare-fun Unit!20413 () Unit!20410)

(assert (=> b!618776 (= e!354864 Unit!20413)))

(declare-fun b!618777 () Bool)

(assert (=> b!618777 false))

(declare-fun lt!285505 () Unit!20410)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37539 (_ BitVec 64) (_ BitVec 32) List!12106) Unit!20410)

(assert (=> b!618777 (= lt!285505 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285515 (select (arr!18012 a!2986) j!136) j!136 Nil!12103))))

(assert (=> b!618777 (arrayNoDuplicates!0 lt!285515 j!136 Nil!12103)))

(declare-fun lt!285499 () Unit!20410)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37539 (_ BitVec 32) (_ BitVec 32)) Unit!20410)

(assert (=> b!618777 (= lt!285499 (lemmaNoDuplicateFromThenFromBigger!0 lt!285515 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618777 (arrayNoDuplicates!0 lt!285515 #b00000000000000000000000000000000 Nil!12103)))

(declare-fun lt!285502 () Unit!20410)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37539 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12106) Unit!20410)

(assert (=> b!618777 (= lt!285502 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12103))))

(assert (=> b!618777 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285509 () Unit!20410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37539 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20410)

(assert (=> b!618777 (= lt!285509 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285515 (select (arr!18012 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20414 () Unit!20410)

(assert (=> b!618777 (= e!354867 Unit!20414)))

(declare-fun b!618778 () Bool)

(declare-fun Unit!20415 () Unit!20410)

(assert (=> b!618778 (= e!354860 Unit!20415)))

(declare-fun b!618779 () Bool)

(declare-fun Unit!20416 () Unit!20410)

(assert (=> b!618779 (= e!354864 Unit!20416)))

(assert (=> b!618779 false))

(declare-fun b!618780 () Bool)

(declare-fun res!398771 () Bool)

(assert (=> b!618780 (=> (not res!398771) (not e!354868))))

(assert (=> b!618780 (= res!398771 (validKeyInArray!0 (select (arr!18012 a!2986) j!136)))))

(declare-fun b!618781 () Bool)

(assert (=> b!618781 false))

(declare-fun lt!285497 () Unit!20410)

(assert (=> b!618781 (= lt!285497 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285515 (select (arr!18012 a!2986) j!136) index!984 Nil!12103))))

(assert (=> b!618781 (arrayNoDuplicates!0 lt!285515 index!984 Nil!12103)))

(declare-fun lt!285504 () Unit!20410)

(assert (=> b!618781 (= lt!285504 (lemmaNoDuplicateFromThenFromBigger!0 lt!285515 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618781 (arrayNoDuplicates!0 lt!285515 #b00000000000000000000000000000000 Nil!12103)))

(declare-fun lt!285514 () Unit!20410)

(assert (=> b!618781 (= lt!285514 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12103))))

(assert (=> b!618781 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285501 () Unit!20410)

(assert (=> b!618781 (= lt!285501 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285515 (select (arr!18012 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354870 () Bool)

(assert (=> b!618781 e!354870))

(declare-fun res!398770 () Bool)

(assert (=> b!618781 (=> (not res!398770) (not e!354870))))

(assert (=> b!618781 (= res!398770 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) j!136))))

(declare-fun Unit!20417 () Unit!20410)

(assert (=> b!618781 (= e!354863 Unit!20417)))

(declare-fun b!618782 () Bool)

(assert (=> b!618782 (= e!354868 e!354865)))

(declare-fun res!398775 () Bool)

(assert (=> b!618782 (=> (not res!398775) (not e!354865))))

(declare-fun lt!285516 () SeekEntryResult!6459)

(assert (=> b!618782 (= res!398775 (or (= lt!285516 (MissingZero!6459 i!1108)) (= lt!285516 (MissingVacant!6459 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37539 (_ BitVec 32)) SeekEntryResult!6459)

(assert (=> b!618782 (= lt!285516 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618783 () Bool)

(assert (=> b!618783 (= e!354870 (arrayContainsKey!0 lt!285515 (select (arr!18012 a!2986) j!136) index!984))))

(declare-fun b!618784 () Bool)

(declare-fun res!398773 () Bool)

(assert (=> b!618784 (=> (not res!398773) (not e!354865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37539 (_ BitVec 32)) Bool)

(assert (=> b!618784 (= res!398773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618785 () Bool)

(declare-fun Unit!20418 () Unit!20410)

(assert (=> b!618785 (= e!354867 Unit!20418)))

(declare-fun b!618786 () Bool)

(declare-fun e!354859 () Bool)

(assert (=> b!618786 (= e!354862 (not e!354859))))

(declare-fun res!398780 () Bool)

(assert (=> b!618786 (=> res!398780 e!354859)))

(declare-fun lt!285507 () SeekEntryResult!6459)

(assert (=> b!618786 (= res!398780 (not (= lt!285507 (MissingVacant!6459 vacantSpotIndex!68))))))

(declare-fun lt!285506 () Unit!20410)

(assert (=> b!618786 (= lt!285506 e!354860)))

(declare-fun c!70366 () Bool)

(assert (=> b!618786 (= c!70366 (= lt!285507 (Found!6459 index!984)))))

(declare-fun lt!285512 () Unit!20410)

(assert (=> b!618786 (= lt!285512 e!354864)))

(declare-fun c!70367 () Bool)

(assert (=> b!618786 (= c!70367 (= lt!285507 Undefined!6459))))

(declare-fun lt!285513 () (_ BitVec 64))

(assert (=> b!618786 (= lt!285507 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285513 lt!285515 mask!3053))))

(assert (=> b!618786 e!354866))

(declare-fun res!398783 () Bool)

(assert (=> b!618786 (=> (not res!398783) (not e!354866))))

(declare-fun lt!285510 () (_ BitVec 32))

(assert (=> b!618786 (= res!398783 (= lt!285503 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285510 vacantSpotIndex!68 lt!285513 lt!285515 mask!3053)))))

(assert (=> b!618786 (= lt!285503 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285510 vacantSpotIndex!68 (select (arr!18012 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618786 (= lt!285513 (select (store (arr!18012 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285511 () Unit!20410)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20410)

(assert (=> b!618786 (= lt!285511 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285510 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618786 (= lt!285510 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618787 () Bool)

(declare-fun Unit!20419 () Unit!20410)

(assert (=> b!618787 (= e!354863 Unit!20419)))

(declare-fun b!618788 () Bool)

(assert (=> b!618788 (= e!354859 true)))

(assert (=> b!618788 (= (select (store (arr!18012 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!56106 res!398778) b!618767))

(assert (= (and b!618767 res!398777) b!618780))

(assert (= (and b!618780 res!398771) b!618775))

(assert (= (and b!618775 res!398785) b!618770))

(assert (= (and b!618770 res!398779) b!618782))

(assert (= (and b!618782 res!398775) b!618784))

(assert (= (and b!618784 res!398773) b!618765))

(assert (= (and b!618765 res!398781) b!618771))

(assert (= (and b!618771 res!398776) b!618768))

(assert (= (and b!618768 res!398782) b!618772))

(assert (= (and b!618772 res!398774) b!618786))

(assert (= (and b!618786 res!398783) b!618769))

(assert (= (and b!618786 c!70367) b!618779))

(assert (= (and b!618786 (not c!70367)) b!618776))

(assert (= (and b!618786 c!70366) b!618766))

(assert (= (and b!618786 (not c!70366)) b!618778))

(assert (= (and b!618766 res!398786) b!618774))

(assert (= (and b!618774 (not res!398784)) b!618773))

(assert (= (and b!618773 res!398772) b!618764))

(assert (= (and b!618766 c!70365) b!618777))

(assert (= (and b!618766 (not c!70365)) b!618785))

(assert (= (and b!618766 c!70364) b!618781))

(assert (= (and b!618766 (not c!70364)) b!618787))

(assert (= (and b!618781 res!398770) b!618783))

(assert (= (and b!618786 (not res!398780)) b!618788))

(declare-fun m!594819 () Bool)

(assert (=> b!618775 m!594819))

(declare-fun m!594821 () Bool)

(assert (=> b!618768 m!594821))

(declare-fun m!594823 () Bool)

(assert (=> b!618768 m!594823))

(assert (=> b!618766 m!594821))

(declare-fun m!594825 () Bool)

(assert (=> b!618766 m!594825))

(declare-fun m!594827 () Bool)

(assert (=> b!618766 m!594827))

(declare-fun m!594829 () Bool)

(assert (=> b!618784 m!594829))

(assert (=> b!618780 m!594827))

(assert (=> b!618780 m!594827))

(declare-fun m!594831 () Bool)

(assert (=> b!618780 m!594831))

(declare-fun m!594833 () Bool)

(assert (=> b!618771 m!594833))

(declare-fun m!594835 () Bool)

(assert (=> b!618770 m!594835))

(assert (=> b!618783 m!594827))

(assert (=> b!618783 m!594827))

(declare-fun m!594837 () Bool)

(assert (=> b!618783 m!594837))

(assert (=> b!618773 m!594827))

(assert (=> b!618773 m!594827))

(declare-fun m!594839 () Bool)

(assert (=> b!618773 m!594839))

(declare-fun m!594841 () Bool)

(assert (=> b!618765 m!594841))

(declare-fun m!594843 () Bool)

(assert (=> b!618772 m!594843))

(assert (=> b!618772 m!594827))

(assert (=> b!618772 m!594827))

(declare-fun m!594845 () Bool)

(assert (=> b!618772 m!594845))

(declare-fun m!594847 () Bool)

(assert (=> start!56106 m!594847))

(declare-fun m!594849 () Bool)

(assert (=> start!56106 m!594849))

(declare-fun m!594851 () Bool)

(assert (=> b!618786 m!594851))

(declare-fun m!594853 () Bool)

(assert (=> b!618786 m!594853))

(assert (=> b!618786 m!594827))

(declare-fun m!594855 () Bool)

(assert (=> b!618786 m!594855))

(declare-fun m!594857 () Bool)

(assert (=> b!618786 m!594857))

(assert (=> b!618786 m!594821))

(declare-fun m!594859 () Bool)

(assert (=> b!618786 m!594859))

(declare-fun m!594861 () Bool)

(assert (=> b!618786 m!594861))

(assert (=> b!618786 m!594827))

(assert (=> b!618764 m!594827))

(assert (=> b!618764 m!594827))

(assert (=> b!618764 m!594837))

(assert (=> b!618788 m!594821))

(assert (=> b!618788 m!594825))

(declare-fun m!594863 () Bool)

(assert (=> b!618777 m!594863))

(assert (=> b!618777 m!594827))

(assert (=> b!618777 m!594827))

(declare-fun m!594865 () Bool)

(assert (=> b!618777 m!594865))

(declare-fun m!594867 () Bool)

(assert (=> b!618777 m!594867))

(declare-fun m!594869 () Bool)

(assert (=> b!618777 m!594869))

(assert (=> b!618777 m!594827))

(declare-fun m!594871 () Bool)

(assert (=> b!618777 m!594871))

(assert (=> b!618777 m!594827))

(declare-fun m!594873 () Bool)

(assert (=> b!618777 m!594873))

(declare-fun m!594875 () Bool)

(assert (=> b!618777 m!594875))

(declare-fun m!594877 () Bool)

(assert (=> b!618782 m!594877))

(assert (=> b!618781 m!594827))

(declare-fun m!594879 () Bool)

(assert (=> b!618781 m!594879))

(declare-fun m!594881 () Bool)

(assert (=> b!618781 m!594881))

(assert (=> b!618781 m!594827))

(declare-fun m!594883 () Bool)

(assert (=> b!618781 m!594883))

(assert (=> b!618781 m!594827))

(assert (=> b!618781 m!594839))

(assert (=> b!618781 m!594827))

(declare-fun m!594885 () Bool)

(assert (=> b!618781 m!594885))

(assert (=> b!618781 m!594875))

(assert (=> b!618781 m!594869))

(assert (=> b!618781 m!594827))

(declare-fun m!594887 () Bool)

(assert (=> b!618781 m!594887))

(push 1)

