; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59386 () Bool)

(assert start!59386)

(declare-fun b!655674 () Bool)

(declare-datatypes ((Unit!22584 0))(
  ( (Unit!22585) )
))
(declare-fun e!376556 () Unit!22584)

(declare-fun Unit!22586 () Unit!22584)

(assert (=> b!655674 (= e!376556 Unit!22586)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!376559 () Bool)

(declare-fun b!655676 () Bool)

(declare-datatypes ((array!38662 0))(
  ( (array!38663 (arr!18527 (Array (_ BitVec 32) (_ BitVec 64))) (size!18891 (_ BitVec 32))) )
))
(declare-fun lt!306021 () array!38662)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38662)

(declare-fun arrayContainsKey!0 (array!38662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!655676 (= e!376559 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) index!984))))

(declare-fun b!655677 () Bool)

(declare-fun res!425432 () Bool)

(declare-fun e!376558 () Bool)

(assert (=> b!655677 (=> (not res!425432) (not e!376558))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!655677 (= res!425432 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18527 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!655678 () Bool)

(declare-datatypes ((SeekEntryResult!6974 0))(
  ( (MissingZero!6974 (index!30254 (_ BitVec 32))) (Found!6974 (index!30255 (_ BitVec 32))) (Intermediate!6974 (undefined!7786 Bool) (index!30256 (_ BitVec 32)) (x!59064 (_ BitVec 32))) (Undefined!6974) (MissingVacant!6974 (index!30257 (_ BitVec 32))) )
))
(declare-fun lt!306009 () SeekEntryResult!6974)

(declare-fun e!376563 () Bool)

(assert (=> b!655678 (= e!376563 (not (or (not (= lt!306009 (MissingVacant!6974 vacantSpotIndex!68))) (bvslt index!984 (size!18891 a!2986)))))))

(declare-fun lt!306018 () Unit!22584)

(assert (=> b!655678 (= lt!306018 e!376556)))

(declare-fun c!75491 () Bool)

(assert (=> b!655678 (= c!75491 (= lt!306009 (Found!6974 index!984)))))

(declare-fun lt!306010 () Unit!22584)

(declare-fun e!376565 () Unit!22584)

(assert (=> b!655678 (= lt!306010 e!376565)))

(declare-fun c!75490 () Bool)

(assert (=> b!655678 (= c!75490 (= lt!306009 Undefined!6974))))

(declare-fun lt!306008 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38662 (_ BitVec 32)) SeekEntryResult!6974)

(assert (=> b!655678 (= lt!306009 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306008 lt!306021 mask!3053))))

(declare-fun e!376566 () Bool)

(assert (=> b!655678 e!376566))

(declare-fun res!425442 () Bool)

(assert (=> b!655678 (=> (not res!425442) (not e!376566))))

(declare-fun lt!306020 () SeekEntryResult!6974)

(declare-fun lt!306015 () (_ BitVec 32))

(assert (=> b!655678 (= res!425442 (= lt!306020 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306015 vacantSpotIndex!68 lt!306008 lt!306021 mask!3053)))))

(assert (=> b!655678 (= lt!306020 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306015 vacantSpotIndex!68 (select (arr!18527 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!655678 (= lt!306008 (select (store (arr!18527 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306006 () Unit!22584)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38662 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22584)

(assert (=> b!655678 (= lt!306006 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306015 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!655678 (= lt!306015 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!655679 () Bool)

(declare-fun res!425439 () Bool)

(assert (=> b!655679 (= res!425439 (bvsge j!136 index!984))))

(declare-fun e!376554 () Bool)

(assert (=> b!655679 (=> res!425439 e!376554)))

(declare-fun e!376562 () Bool)

(assert (=> b!655679 (= e!376562 e!376554)))

(declare-fun b!655680 () Bool)

(assert (=> b!655680 false))

(declare-fun lt!306007 () Unit!22584)

(declare-datatypes ((List!12621 0))(
  ( (Nil!12618) (Cons!12617 (h!13662 (_ BitVec 64)) (t!18857 List!12621)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38662 (_ BitVec 64) (_ BitVec 32) List!12621) Unit!22584)

(assert (=> b!655680 (= lt!306007 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306021 (select (arr!18527 a!2986) j!136) index!984 Nil!12618))))

(declare-fun arrayNoDuplicates!0 (array!38662 (_ BitVec 32) List!12621) Bool)

(assert (=> b!655680 (arrayNoDuplicates!0 lt!306021 index!984 Nil!12618)))

(declare-fun lt!306017 () Unit!22584)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38662 (_ BitVec 32) (_ BitVec 32)) Unit!22584)

(assert (=> b!655680 (= lt!306017 (lemmaNoDuplicateFromThenFromBigger!0 lt!306021 #b00000000000000000000000000000000 index!984))))

(assert (=> b!655680 (arrayNoDuplicates!0 lt!306021 #b00000000000000000000000000000000 Nil!12618)))

(declare-fun lt!306004 () Unit!22584)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12621) Unit!22584)

(assert (=> b!655680 (= lt!306004 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12618))))

(assert (=> b!655680 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306014 () Unit!22584)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38662 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22584)

(assert (=> b!655680 (= lt!306014 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306021 (select (arr!18527 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!655680 e!376559))

(declare-fun res!425435 () Bool)

(assert (=> b!655680 (=> (not res!425435) (not e!376559))))

(assert (=> b!655680 (= res!425435 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) j!136))))

(declare-fun e!376555 () Unit!22584)

(declare-fun Unit!22587 () Unit!22584)

(assert (=> b!655680 (= e!376555 Unit!22587)))

(declare-fun b!655675 () Bool)

(declare-fun Unit!22588 () Unit!22584)

(assert (=> b!655675 (= e!376555 Unit!22588)))

(declare-fun res!425434 () Bool)

(declare-fun e!376567 () Bool)

(assert (=> start!59386 (=> (not res!425434) (not e!376567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59386 (= res!425434 (validMask!0 mask!3053))))

(assert (=> start!59386 e!376567))

(assert (=> start!59386 true))

(declare-fun array_inv!14301 (array!38662) Bool)

(assert (=> start!59386 (array_inv!14301 a!2986)))

(declare-fun b!655681 () Bool)

(declare-fun e!376561 () Unit!22584)

(declare-fun Unit!22589 () Unit!22584)

(assert (=> b!655681 (= e!376561 Unit!22589)))

(declare-fun b!655682 () Bool)

(assert (=> b!655682 false))

(declare-fun lt!306003 () Unit!22584)

(assert (=> b!655682 (= lt!306003 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306021 (select (arr!18527 a!2986) j!136) j!136 Nil!12618))))

(assert (=> b!655682 (arrayNoDuplicates!0 lt!306021 j!136 Nil!12618)))

(declare-fun lt!306011 () Unit!22584)

(assert (=> b!655682 (= lt!306011 (lemmaNoDuplicateFromThenFromBigger!0 lt!306021 #b00000000000000000000000000000000 j!136))))

(assert (=> b!655682 (arrayNoDuplicates!0 lt!306021 #b00000000000000000000000000000000 Nil!12618)))

(declare-fun lt!306013 () Unit!22584)

(assert (=> b!655682 (= lt!306013 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12618))))

(assert (=> b!655682 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306005 () Unit!22584)

(assert (=> b!655682 (= lt!306005 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306021 (select (arr!18527 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22590 () Unit!22584)

(assert (=> b!655682 (= e!376561 Unit!22590)))

(declare-fun b!655683 () Bool)

(declare-fun res!425436 () Bool)

(assert (=> b!655683 (=> (not res!425436) (not e!376558))))

(assert (=> b!655683 (= res!425436 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12618))))

(declare-fun b!655684 () Bool)

(declare-fun lt!306012 () SeekEntryResult!6974)

(assert (=> b!655684 (= e!376566 (= lt!306012 lt!306020))))

(declare-fun b!655685 () Bool)

(declare-fun Unit!22591 () Unit!22584)

(assert (=> b!655685 (= e!376556 Unit!22591)))

(declare-fun res!425438 () Bool)

(assert (=> b!655685 (= res!425438 (= (select (store (arr!18527 a!2986) i!1108 k!1786) index!984) (select (arr!18527 a!2986) j!136)))))

(assert (=> b!655685 (=> (not res!425438) (not e!376562))))

(assert (=> b!655685 e!376562))

(declare-fun c!75488 () Bool)

(assert (=> b!655685 (= c!75488 (bvslt j!136 index!984))))

(declare-fun lt!306016 () Unit!22584)

(assert (=> b!655685 (= lt!306016 e!376561)))

(declare-fun c!75489 () Bool)

(assert (=> b!655685 (= c!75489 (bvslt index!984 j!136))))

(declare-fun lt!306002 () Unit!22584)

(assert (=> b!655685 (= lt!306002 e!376555)))

(assert (=> b!655685 false))

(declare-fun b!655686 () Bool)

(declare-fun e!376564 () Bool)

(assert (=> b!655686 (= e!376564 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) index!984))))

(declare-fun b!655687 () Bool)

(declare-fun Unit!22592 () Unit!22584)

(assert (=> b!655687 (= e!376565 Unit!22592)))

(declare-fun b!655688 () Bool)

(declare-fun Unit!22593 () Unit!22584)

(assert (=> b!655688 (= e!376565 Unit!22593)))

(assert (=> b!655688 false))

(declare-fun b!655689 () Bool)

(declare-fun res!425437 () Bool)

(assert (=> b!655689 (=> (not res!425437) (not e!376558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38662 (_ BitVec 32)) Bool)

(assert (=> b!655689 (= res!425437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!655690 () Bool)

(declare-fun res!425433 () Bool)

(assert (=> b!655690 (=> (not res!425433) (not e!376567))))

(assert (=> b!655690 (= res!425433 (and (= (size!18891 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18891 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18891 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!655691 () Bool)

(declare-fun res!425440 () Bool)

(assert (=> b!655691 (= res!425440 (arrayContainsKey!0 lt!306021 (select (arr!18527 a!2986) j!136) j!136))))

(assert (=> b!655691 (=> (not res!425440) (not e!376564))))

(assert (=> b!655691 (= e!376554 e!376564)))

(declare-fun b!655692 () Bool)

(declare-fun e!376557 () Bool)

(assert (=> b!655692 (= e!376558 e!376557)))

(declare-fun res!425446 () Bool)

(assert (=> b!655692 (=> (not res!425446) (not e!376557))))

(assert (=> b!655692 (= res!425446 (= (select (store (arr!18527 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!655692 (= lt!306021 (array!38663 (store (arr!18527 a!2986) i!1108 k!1786) (size!18891 a!2986)))))

(declare-fun b!655693 () Bool)

(declare-fun res!425447 () Bool)

(assert (=> b!655693 (=> (not res!425447) (not e!376567))))

(assert (=> b!655693 (= res!425447 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!655694 () Bool)

(assert (=> b!655694 (= e!376567 e!376558)))

(declare-fun res!425445 () Bool)

(assert (=> b!655694 (=> (not res!425445) (not e!376558))))

(declare-fun lt!306019 () SeekEntryResult!6974)

(assert (=> b!655694 (= res!425445 (or (= lt!306019 (MissingZero!6974 i!1108)) (= lt!306019 (MissingVacant!6974 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38662 (_ BitVec 32)) SeekEntryResult!6974)

(assert (=> b!655694 (= lt!306019 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!655695 () Bool)

(declare-fun res!425441 () Bool)

(assert (=> b!655695 (=> (not res!425441) (not e!376567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!655695 (= res!425441 (validKeyInArray!0 k!1786))))

(declare-fun b!655696 () Bool)

(declare-fun res!425444 () Bool)

(assert (=> b!655696 (=> (not res!425444) (not e!376567))))

(assert (=> b!655696 (= res!425444 (validKeyInArray!0 (select (arr!18527 a!2986) j!136)))))

(declare-fun b!655697 () Bool)

(assert (=> b!655697 (= e!376557 e!376563)))

(declare-fun res!425443 () Bool)

(assert (=> b!655697 (=> (not res!425443) (not e!376563))))

(assert (=> b!655697 (= res!425443 (and (= lt!306012 (Found!6974 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18527 a!2986) index!984) (select (arr!18527 a!2986) j!136))) (not (= (select (arr!18527 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!655697 (= lt!306012 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18527 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59386 res!425434) b!655690))

(assert (= (and b!655690 res!425433) b!655696))

(assert (= (and b!655696 res!425444) b!655695))

(assert (= (and b!655695 res!425441) b!655693))

(assert (= (and b!655693 res!425447) b!655694))

(assert (= (and b!655694 res!425445) b!655689))

(assert (= (and b!655689 res!425437) b!655683))

(assert (= (and b!655683 res!425436) b!655677))

(assert (= (and b!655677 res!425432) b!655692))

(assert (= (and b!655692 res!425446) b!655697))

(assert (= (and b!655697 res!425443) b!655678))

(assert (= (and b!655678 res!425442) b!655684))

(assert (= (and b!655678 c!75490) b!655688))

(assert (= (and b!655678 (not c!75490)) b!655687))

(assert (= (and b!655678 c!75491) b!655685))

(assert (= (and b!655678 (not c!75491)) b!655674))

(assert (= (and b!655685 res!425438) b!655679))

(assert (= (and b!655679 (not res!425439)) b!655691))

(assert (= (and b!655691 res!425440) b!655686))

(assert (= (and b!655685 c!75488) b!655682))

(assert (= (and b!655685 (not c!75488)) b!655681))

(assert (= (and b!655685 c!75489) b!655680))

(assert (= (and b!655685 (not c!75489)) b!655675))

(assert (= (and b!655680 res!425435) b!655676))

(declare-fun m!628811 () Bool)

(assert (=> b!655692 m!628811))

(declare-fun m!628813 () Bool)

(assert (=> b!655692 m!628813))

(declare-fun m!628815 () Bool)

(assert (=> b!655678 m!628815))

(declare-fun m!628817 () Bool)

(assert (=> b!655678 m!628817))

(declare-fun m!628819 () Bool)

(assert (=> b!655678 m!628819))

(assert (=> b!655678 m!628811))

(declare-fun m!628821 () Bool)

(assert (=> b!655678 m!628821))

(declare-fun m!628823 () Bool)

(assert (=> b!655678 m!628823))

(assert (=> b!655678 m!628819))

(declare-fun m!628825 () Bool)

(assert (=> b!655678 m!628825))

(declare-fun m!628827 () Bool)

(assert (=> b!655678 m!628827))

(declare-fun m!628829 () Bool)

(assert (=> b!655683 m!628829))

(declare-fun m!628831 () Bool)

(assert (=> b!655697 m!628831))

(assert (=> b!655697 m!628819))

(assert (=> b!655697 m!628819))

(declare-fun m!628833 () Bool)

(assert (=> b!655697 m!628833))

(declare-fun m!628835 () Bool)

(assert (=> b!655693 m!628835))

(declare-fun m!628837 () Bool)

(assert (=> b!655677 m!628837))

(assert (=> b!655685 m!628811))

(declare-fun m!628839 () Bool)

(assert (=> b!655685 m!628839))

(assert (=> b!655685 m!628819))

(assert (=> b!655676 m!628819))

(assert (=> b!655676 m!628819))

(declare-fun m!628841 () Bool)

(assert (=> b!655676 m!628841))

(declare-fun m!628843 () Bool)

(assert (=> b!655694 m!628843))

(assert (=> b!655691 m!628819))

(assert (=> b!655691 m!628819))

(declare-fun m!628845 () Bool)

(assert (=> b!655691 m!628845))

(declare-fun m!628847 () Bool)

(assert (=> start!59386 m!628847))

(declare-fun m!628849 () Bool)

(assert (=> start!59386 m!628849))

(assert (=> b!655696 m!628819))

(assert (=> b!655696 m!628819))

(declare-fun m!628851 () Bool)

(assert (=> b!655696 m!628851))

(declare-fun m!628853 () Bool)

(assert (=> b!655680 m!628853))

(declare-fun m!628855 () Bool)

(assert (=> b!655680 m!628855))

(assert (=> b!655680 m!628819))

(assert (=> b!655680 m!628845))

(assert (=> b!655680 m!628819))

(declare-fun m!628857 () Bool)

(assert (=> b!655680 m!628857))

(declare-fun m!628859 () Bool)

(assert (=> b!655680 m!628859))

(assert (=> b!655680 m!628819))

(declare-fun m!628861 () Bool)

(assert (=> b!655680 m!628861))

(declare-fun m!628863 () Bool)

(assert (=> b!655680 m!628863))

(assert (=> b!655680 m!628819))

(assert (=> b!655680 m!628819))

(declare-fun m!628865 () Bool)

(assert (=> b!655680 m!628865))

(assert (=> b!655686 m!628819))

(assert (=> b!655686 m!628819))

(assert (=> b!655686 m!628841))

(declare-fun m!628867 () Bool)

(assert (=> b!655695 m!628867))

(declare-fun m!628869 () Bool)

(assert (=> b!655689 m!628869))

(declare-fun m!628871 () Bool)

(assert (=> b!655682 m!628871))

(assert (=> b!655682 m!628819))

(assert (=> b!655682 m!628819))

(declare-fun m!628873 () Bool)

(assert (=> b!655682 m!628873))

(assert (=> b!655682 m!628819))

(declare-fun m!628875 () Bool)

(assert (=> b!655682 m!628875))

(declare-fun m!628877 () Bool)

(assert (=> b!655682 m!628877))

(assert (=> b!655682 m!628859))

(assert (=> b!655682 m!628819))

(declare-fun m!628879 () Bool)

(assert (=> b!655682 m!628879))

(assert (=> b!655682 m!628863))

(push 1)

(assert (not b!655691))

(assert (not b!655686))

(assert (not b!655694))

(assert (not b!655676))

(assert (not b!655680))

(assert (not b!655697))

(assert (not b!655678))

(assert (not b!655682))

(assert (not b!655689))

(assert (not b!655696))

(assert (not start!59386))

(assert (not b!655683))

(assert (not b!655695))

(assert (not b!655693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

