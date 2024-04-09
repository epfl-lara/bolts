; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59358 () Bool)

(assert start!59358)

(declare-fun b!654666 () Bool)

(declare-datatypes ((Unit!22444 0))(
  ( (Unit!22445) )
))
(declare-fun e!375978 () Unit!22444)

(declare-fun Unit!22446 () Unit!22444)

(assert (=> b!654666 (= e!375978 Unit!22446)))

(declare-fun b!654667 () Bool)

(declare-fun e!375969 () Bool)

(assert (=> b!654667 (= e!375969 (not true))))

(declare-fun lt!305178 () Unit!22444)

(declare-fun e!375967 () Unit!22444)

(assert (=> b!654667 (= lt!305178 e!375967)))

(declare-fun c!75323 () Bool)

(declare-datatypes ((SeekEntryResult!6960 0))(
  ( (MissingZero!6960 (index!30198 (_ BitVec 32))) (Found!6960 (index!30199 (_ BitVec 32))) (Intermediate!6960 (undefined!7772 Bool) (index!30200 (_ BitVec 32)) (x!59018 (_ BitVec 32))) (Undefined!6960) (MissingVacant!6960 (index!30201 (_ BitVec 32))) )
))
(declare-fun lt!305163 () SeekEntryResult!6960)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!654667 (= c!75323 (= lt!305163 (Found!6960 index!984)))))

(declare-fun lt!305177 () Unit!22444)

(declare-fun e!375975 () Unit!22444)

(assert (=> b!654667 (= lt!305177 e!375975)))

(declare-fun c!75321 () Bool)

(assert (=> b!654667 (= c!75321 (= lt!305163 Undefined!6960))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!305173 () (_ BitVec 64))

(declare-datatypes ((array!38634 0))(
  ( (array!38635 (arr!18513 (Array (_ BitVec 32) (_ BitVec 64))) (size!18877 (_ BitVec 32))) )
))
(declare-fun lt!305180 () array!38634)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38634 (_ BitVec 32)) SeekEntryResult!6960)

(assert (=> b!654667 (= lt!305163 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305173 lt!305180 mask!3053))))

(declare-fun e!375976 () Bool)

(assert (=> b!654667 e!375976))

(declare-fun res!424770 () Bool)

(assert (=> b!654667 (=> (not res!424770) (not e!375976))))

(declare-fun lt!305179 () SeekEntryResult!6960)

(declare-fun lt!305167 () (_ BitVec 32))

(assert (=> b!654667 (= res!424770 (= lt!305179 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305167 vacantSpotIndex!68 lt!305173 lt!305180 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38634)

(assert (=> b!654667 (= lt!305179 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305167 vacantSpotIndex!68 (select (arr!18513 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!654667 (= lt!305173 (select (store (arr!18513 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305172 () Unit!22444)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38634 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22444)

(assert (=> b!654667 (= lt!305172 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305167 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654667 (= lt!305167 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654668 () Bool)

(declare-fun Unit!22447 () Unit!22444)

(assert (=> b!654668 (= e!375967 Unit!22447)))

(declare-fun res!424769 () Bool)

(assert (=> b!654668 (= res!424769 (= (select (store (arr!18513 a!2986) i!1108 k!1786) index!984) (select (arr!18513 a!2986) j!136)))))

(declare-fun e!375971 () Bool)

(assert (=> b!654668 (=> (not res!424769) (not e!375971))))

(assert (=> b!654668 e!375971))

(declare-fun c!75322 () Bool)

(assert (=> b!654668 (= c!75322 (bvslt j!136 index!984))))

(declare-fun lt!305165 () Unit!22444)

(declare-fun e!375972 () Unit!22444)

(assert (=> b!654668 (= lt!305165 e!375972)))

(declare-fun c!75320 () Bool)

(assert (=> b!654668 (= c!75320 (bvslt index!984 j!136))))

(declare-fun lt!305176 () Unit!22444)

(assert (=> b!654668 (= lt!305176 e!375978)))

(assert (=> b!654668 false))

(declare-fun b!654670 () Bool)

(declare-fun res!424767 () Bool)

(declare-fun e!375966 () Bool)

(assert (=> b!654670 (=> (not res!424767) (not e!375966))))

(declare-fun arrayContainsKey!0 (array!38634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654670 (= res!424767 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654671 () Bool)

(declare-fun res!424760 () Bool)

(declare-fun e!375979 () Bool)

(assert (=> b!654671 (=> (not res!424760) (not e!375979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38634 (_ BitVec 32)) Bool)

(assert (=> b!654671 (= res!424760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654672 () Bool)

(declare-fun res!424771 () Bool)

(assert (=> b!654672 (=> (not res!424771) (not e!375966))))

(assert (=> b!654672 (= res!424771 (and (= (size!18877 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18877 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18877 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654673 () Bool)

(declare-fun Unit!22448 () Unit!22444)

(assert (=> b!654673 (= e!375972 Unit!22448)))

(declare-fun b!654674 () Bool)

(declare-fun res!424763 () Bool)

(assert (=> b!654674 (=> (not res!424763) (not e!375979))))

(assert (=> b!654674 (= res!424763 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18513 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654675 () Bool)

(assert (=> b!654675 (= e!375966 e!375979)))

(declare-fun res!424773 () Bool)

(assert (=> b!654675 (=> (not res!424773) (not e!375979))))

(declare-fun lt!305168 () SeekEntryResult!6960)

(assert (=> b!654675 (= res!424773 (or (= lt!305168 (MissingZero!6960 i!1108)) (= lt!305168 (MissingVacant!6960 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38634 (_ BitVec 32)) SeekEntryResult!6960)

(assert (=> b!654675 (= lt!305168 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun e!375973 () Bool)

(declare-fun b!654676 () Bool)

(assert (=> b!654676 (= e!375973 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) index!984))))

(declare-fun b!654677 () Bool)

(declare-fun Unit!22449 () Unit!22444)

(assert (=> b!654677 (= e!375975 Unit!22449)))

(assert (=> b!654677 false))

(declare-fun b!654678 () Bool)

(assert (=> b!654678 false))

(declare-fun lt!305174 () Unit!22444)

(declare-datatypes ((List!12607 0))(
  ( (Nil!12604) (Cons!12603 (h!13648 (_ BitVec 64)) (t!18843 List!12607)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38634 (_ BitVec 64) (_ BitVec 32) List!12607) Unit!22444)

(assert (=> b!654678 (= lt!305174 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305180 (select (arr!18513 a!2986) j!136) index!984 Nil!12604))))

(declare-fun arrayNoDuplicates!0 (array!38634 (_ BitVec 32) List!12607) Bool)

(assert (=> b!654678 (arrayNoDuplicates!0 lt!305180 index!984 Nil!12604)))

(declare-fun lt!305164 () Unit!22444)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38634 (_ BitVec 32) (_ BitVec 32)) Unit!22444)

(assert (=> b!654678 (= lt!305164 (lemmaNoDuplicateFromThenFromBigger!0 lt!305180 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654678 (arrayNoDuplicates!0 lt!305180 #b00000000000000000000000000000000 Nil!12604)))

(declare-fun lt!305169 () Unit!22444)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38634 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12607) Unit!22444)

(assert (=> b!654678 (= lt!305169 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12604))))

(assert (=> b!654678 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305175 () Unit!22444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38634 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22444)

(assert (=> b!654678 (= lt!305175 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305180 (select (arr!18513 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!375977 () Bool)

(assert (=> b!654678 e!375977))

(declare-fun res!424772 () Bool)

(assert (=> b!654678 (=> (not res!424772) (not e!375977))))

(assert (=> b!654678 (= res!424772 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) j!136))))

(declare-fun Unit!22450 () Unit!22444)

(assert (=> b!654678 (= e!375978 Unit!22450)))

(declare-fun res!424765 () Bool)

(declare-fun b!654679 () Bool)

(assert (=> b!654679 (= res!424765 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) j!136))))

(assert (=> b!654679 (=> (not res!424765) (not e!375973))))

(declare-fun e!375970 () Bool)

(assert (=> b!654679 (= e!375970 e!375973)))

(declare-fun b!654680 () Bool)

(assert (=> b!654680 (= e!375977 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) index!984))))

(declare-fun b!654681 () Bool)

(declare-fun res!424768 () Bool)

(assert (=> b!654681 (=> (not res!424768) (not e!375966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654681 (= res!424768 (validKeyInArray!0 k!1786))))

(declare-fun res!424761 () Bool)

(assert (=> start!59358 (=> (not res!424761) (not e!375966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59358 (= res!424761 (validMask!0 mask!3053))))

(assert (=> start!59358 e!375966))

(assert (=> start!59358 true))

(declare-fun array_inv!14287 (array!38634) Bool)

(assert (=> start!59358 (array_inv!14287 a!2986)))

(declare-fun b!654669 () Bool)

(declare-fun lt!305181 () SeekEntryResult!6960)

(assert (=> b!654669 (= e!375976 (= lt!305181 lt!305179))))

(declare-fun b!654682 () Bool)

(declare-fun Unit!22451 () Unit!22444)

(assert (=> b!654682 (= e!375975 Unit!22451)))

(declare-fun b!654683 () Bool)

(declare-fun Unit!22452 () Unit!22444)

(assert (=> b!654683 (= e!375967 Unit!22452)))

(declare-fun b!654684 () Bool)

(declare-fun e!375968 () Bool)

(assert (=> b!654684 (= e!375968 e!375969)))

(declare-fun res!424774 () Bool)

(assert (=> b!654684 (=> (not res!424774) (not e!375969))))

(assert (=> b!654684 (= res!424774 (and (= lt!305181 (Found!6960 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18513 a!2986) index!984) (select (arr!18513 a!2986) j!136))) (not (= (select (arr!18513 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!654684 (= lt!305181 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18513 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654685 () Bool)

(assert (=> b!654685 false))

(declare-fun lt!305166 () Unit!22444)

(assert (=> b!654685 (= lt!305166 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305180 (select (arr!18513 a!2986) j!136) j!136 Nil!12604))))

(assert (=> b!654685 (arrayNoDuplicates!0 lt!305180 j!136 Nil!12604)))

(declare-fun lt!305162 () Unit!22444)

(assert (=> b!654685 (= lt!305162 (lemmaNoDuplicateFromThenFromBigger!0 lt!305180 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654685 (arrayNoDuplicates!0 lt!305180 #b00000000000000000000000000000000 Nil!12604)))

(declare-fun lt!305171 () Unit!22444)

(assert (=> b!654685 (= lt!305171 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12604))))

(assert (=> b!654685 (arrayContainsKey!0 lt!305180 (select (arr!18513 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!305170 () Unit!22444)

(assert (=> b!654685 (= lt!305170 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305180 (select (arr!18513 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22453 () Unit!22444)

(assert (=> b!654685 (= e!375972 Unit!22453)))

(declare-fun b!654686 () Bool)

(declare-fun res!424775 () Bool)

(assert (=> b!654686 (=> (not res!424775) (not e!375966))))

(assert (=> b!654686 (= res!424775 (validKeyInArray!0 (select (arr!18513 a!2986) j!136)))))

(declare-fun b!654687 () Bool)

(assert (=> b!654687 (= e!375979 e!375968)))

(declare-fun res!424764 () Bool)

(assert (=> b!654687 (=> (not res!424764) (not e!375968))))

(assert (=> b!654687 (= res!424764 (= (select (store (arr!18513 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654687 (= lt!305180 (array!38635 (store (arr!18513 a!2986) i!1108 k!1786) (size!18877 a!2986)))))

(declare-fun b!654688 () Bool)

(declare-fun res!424766 () Bool)

(assert (=> b!654688 (= res!424766 (bvsge j!136 index!984))))

(assert (=> b!654688 (=> res!424766 e!375970)))

(assert (=> b!654688 (= e!375971 e!375970)))

(declare-fun b!654689 () Bool)

(declare-fun res!424762 () Bool)

(assert (=> b!654689 (=> (not res!424762) (not e!375979))))

(assert (=> b!654689 (= res!424762 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12604))))

(assert (= (and start!59358 res!424761) b!654672))

(assert (= (and b!654672 res!424771) b!654686))

(assert (= (and b!654686 res!424775) b!654681))

(assert (= (and b!654681 res!424768) b!654670))

(assert (= (and b!654670 res!424767) b!654675))

(assert (= (and b!654675 res!424773) b!654671))

(assert (= (and b!654671 res!424760) b!654689))

(assert (= (and b!654689 res!424762) b!654674))

(assert (= (and b!654674 res!424763) b!654687))

(assert (= (and b!654687 res!424764) b!654684))

(assert (= (and b!654684 res!424774) b!654667))

(assert (= (and b!654667 res!424770) b!654669))

(assert (= (and b!654667 c!75321) b!654677))

(assert (= (and b!654667 (not c!75321)) b!654682))

(assert (= (and b!654667 c!75323) b!654668))

(assert (= (and b!654667 (not c!75323)) b!654683))

(assert (= (and b!654668 res!424769) b!654688))

(assert (= (and b!654688 (not res!424766)) b!654679))

(assert (= (and b!654679 res!424765) b!654676))

(assert (= (and b!654668 c!75322) b!654685))

(assert (= (and b!654668 (not c!75322)) b!654673))

(assert (= (and b!654668 c!75320) b!654678))

(assert (= (and b!654668 (not c!75320)) b!654666))

(assert (= (and b!654678 res!424772) b!654680))

(declare-fun m!627831 () Bool)

(assert (=> b!654670 m!627831))

(declare-fun m!627833 () Bool)

(assert (=> b!654679 m!627833))

(assert (=> b!654679 m!627833))

(declare-fun m!627835 () Bool)

(assert (=> b!654679 m!627835))

(declare-fun m!627837 () Bool)

(assert (=> b!654689 m!627837))

(assert (=> b!654685 m!627833))

(declare-fun m!627839 () Bool)

(assert (=> b!654685 m!627839))

(declare-fun m!627841 () Bool)

(assert (=> b!654685 m!627841))

(assert (=> b!654685 m!627833))

(declare-fun m!627843 () Bool)

(assert (=> b!654685 m!627843))

(declare-fun m!627845 () Bool)

(assert (=> b!654685 m!627845))

(declare-fun m!627847 () Bool)

(assert (=> b!654685 m!627847))

(declare-fun m!627849 () Bool)

(assert (=> b!654685 m!627849))

(assert (=> b!654685 m!627833))

(declare-fun m!627851 () Bool)

(assert (=> b!654685 m!627851))

(assert (=> b!654685 m!627833))

(declare-fun m!627853 () Bool)

(assert (=> start!59358 m!627853))

(declare-fun m!627855 () Bool)

(assert (=> start!59358 m!627855))

(declare-fun m!627857 () Bool)

(assert (=> b!654667 m!627857))

(declare-fun m!627859 () Bool)

(assert (=> b!654667 m!627859))

(declare-fun m!627861 () Bool)

(assert (=> b!654667 m!627861))

(assert (=> b!654667 m!627833))

(declare-fun m!627863 () Bool)

(assert (=> b!654667 m!627863))

(declare-fun m!627865 () Bool)

(assert (=> b!654667 m!627865))

(declare-fun m!627867 () Bool)

(assert (=> b!654667 m!627867))

(assert (=> b!654667 m!627833))

(declare-fun m!627869 () Bool)

(assert (=> b!654667 m!627869))

(declare-fun m!627871 () Bool)

(assert (=> b!654671 m!627871))

(declare-fun m!627873 () Bool)

(assert (=> b!654674 m!627873))

(declare-fun m!627875 () Bool)

(assert (=> b!654684 m!627875))

(assert (=> b!654684 m!627833))

(assert (=> b!654684 m!627833))

(declare-fun m!627877 () Bool)

(assert (=> b!654684 m!627877))

(declare-fun m!627879 () Bool)

(assert (=> b!654681 m!627879))

(assert (=> b!654680 m!627833))

(assert (=> b!654680 m!627833))

(declare-fun m!627881 () Bool)

(assert (=> b!654680 m!627881))

(assert (=> b!654687 m!627863))

(declare-fun m!627883 () Bool)

(assert (=> b!654687 m!627883))

(assert (=> b!654668 m!627863))

(declare-fun m!627885 () Bool)

(assert (=> b!654668 m!627885))

(assert (=> b!654668 m!627833))

(assert (=> b!654678 m!627833))

(assert (=> b!654678 m!627833))

(declare-fun m!627887 () Bool)

(assert (=> b!654678 m!627887))

(assert (=> b!654678 m!627833))

(declare-fun m!627889 () Bool)

(assert (=> b!654678 m!627889))

(declare-fun m!627891 () Bool)

(assert (=> b!654678 m!627891))

(assert (=> b!654678 m!627833))

(assert (=> b!654678 m!627835))

(declare-fun m!627893 () Bool)

(assert (=> b!654678 m!627893))

(assert (=> b!654678 m!627833))

(declare-fun m!627895 () Bool)

(assert (=> b!654678 m!627895))

(assert (=> b!654678 m!627847))

(assert (=> b!654678 m!627849))

(assert (=> b!654676 m!627833))

(assert (=> b!654676 m!627833))

(assert (=> b!654676 m!627881))

(assert (=> b!654686 m!627833))

(assert (=> b!654686 m!627833))

(declare-fun m!627897 () Bool)

(assert (=> b!654686 m!627897))

(declare-fun m!627899 () Bool)

(assert (=> b!654675 m!627899))

(push 1)

