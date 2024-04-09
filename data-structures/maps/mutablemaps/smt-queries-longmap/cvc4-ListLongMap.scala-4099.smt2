; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56104 () Bool)

(assert start!56104)

(declare-fun b!618689 () Bool)

(declare-fun res!398721 () Bool)

(declare-fun e!354824 () Bool)

(assert (=> b!618689 (=> (not res!398721) (not e!354824))))

(declare-datatypes ((array!37537 0))(
  ( (array!37538 (arr!18011 (Array (_ BitVec 32) (_ BitVec 64))) (size!18375 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37537)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618689 (= res!398721 (validKeyInArray!0 (select (arr!18011 a!2986) j!136)))))

(declare-fun b!618690 () Bool)

(declare-datatypes ((Unit!20400 0))(
  ( (Unit!20401) )
))
(declare-fun e!354825 () Unit!20400)

(declare-fun Unit!20402 () Unit!20400)

(assert (=> b!618690 (= e!354825 Unit!20402)))

(declare-fun b!618691 () Bool)

(declare-fun e!354816 () Bool)

(declare-fun e!354820 () Bool)

(assert (=> b!618691 (= e!354816 e!354820)))

(declare-fun res!398734 () Bool)

(assert (=> b!618691 (=> (not res!398734) (not e!354820))))

(declare-datatypes ((SeekEntryResult!6458 0))(
  ( (MissingZero!6458 (index!28115 (_ BitVec 32))) (Found!6458 (index!28116 (_ BitVec 32))) (Intermediate!6458 (undefined!7270 Bool) (index!28117 (_ BitVec 32)) (x!56923 (_ BitVec 32))) (Undefined!6458) (MissingVacant!6458 (index!28118 (_ BitVec 32))) )
))
(declare-fun lt!285453 () SeekEntryResult!6458)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!618691 (= res!398734 (and (= lt!285453 (Found!6458 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18011 a!2986) index!984) (select (arr!18011 a!2986) j!136))) (not (= (select (arr!18011 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37537 (_ BitVec 32)) SeekEntryResult!6458)

(assert (=> b!618691 (= lt!285453 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18011 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618692 () Bool)

(declare-fun res!398730 () Bool)

(declare-fun e!354812 () Bool)

(assert (=> b!618692 (=> (not res!398730) (not e!354812))))

(assert (=> b!618692 (= res!398730 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18011 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618693 () Bool)

(declare-fun res!398722 () Bool)

(assert (=> b!618693 (=> (not res!398722) (not e!354824))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!618693 (= res!398722 (validKeyInArray!0 k!1786))))

(declare-fun b!618694 () Bool)

(declare-fun e!354821 () Unit!20400)

(declare-fun Unit!20403 () Unit!20400)

(assert (=> b!618694 (= e!354821 Unit!20403)))

(declare-fun b!618695 () Bool)

(declare-fun res!398728 () Bool)

(assert (=> b!618695 (= res!398728 (bvsge j!136 index!984))))

(declare-fun e!354823 () Bool)

(assert (=> b!618695 (=> res!398728 e!354823)))

(declare-fun e!354819 () Bool)

(assert (=> b!618695 (= e!354819 e!354823)))

(declare-fun b!618696 () Bool)

(declare-fun e!354826 () Unit!20400)

(declare-fun Unit!20404 () Unit!20400)

(assert (=> b!618696 (= e!354826 Unit!20404)))

(declare-fun b!618697 () Bool)

(declare-fun e!354822 () Bool)

(assert (=> b!618697 (= e!354820 (not e!354822))))

(declare-fun res!398723 () Bool)

(assert (=> b!618697 (=> res!398723 e!354822)))

(declare-fun lt!285442 () SeekEntryResult!6458)

(assert (=> b!618697 (= res!398723 (not (= lt!285442 (MissingVacant!6458 vacantSpotIndex!68))))))

(declare-fun lt!285455 () Unit!20400)

(assert (=> b!618697 (= lt!285455 e!354826)))

(declare-fun c!70354 () Bool)

(assert (=> b!618697 (= c!70354 (= lt!285442 (Found!6458 index!984)))))

(declare-fun lt!285437 () Unit!20400)

(assert (=> b!618697 (= lt!285437 e!354821)))

(declare-fun c!70353 () Bool)

(assert (=> b!618697 (= c!70353 (= lt!285442 Undefined!6458))))

(declare-fun lt!285446 () (_ BitVec 64))

(declare-fun lt!285438 () array!37537)

(assert (=> b!618697 (= lt!285442 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!285446 lt!285438 mask!3053))))

(declare-fun e!354815 () Bool)

(assert (=> b!618697 e!354815))

(declare-fun res!398727 () Bool)

(assert (=> b!618697 (=> (not res!398727) (not e!354815))))

(declare-fun lt!285441 () (_ BitVec 32))

(declare-fun lt!285443 () SeekEntryResult!6458)

(assert (=> b!618697 (= res!398727 (= lt!285443 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285441 vacantSpotIndex!68 lt!285446 lt!285438 mask!3053)))))

(assert (=> b!618697 (= lt!285443 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!285441 vacantSpotIndex!68 (select (arr!18011 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!618697 (= lt!285446 (select (store (arr!18011 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!285440 () Unit!20400)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20400)

(assert (=> b!618697 (= lt!285440 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!285441 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618697 (= lt!285441 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!398725 () Bool)

(assert (=> start!56104 (=> (not res!398725) (not e!354824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56104 (= res!398725 (validMask!0 mask!3053))))

(assert (=> start!56104 e!354824))

(assert (=> start!56104 true))

(declare-fun array_inv!13785 (array!37537) Bool)

(assert (=> start!56104 (array_inv!13785 a!2986)))

(declare-fun b!618698 () Bool)

(assert (=> b!618698 (= e!354822 true)))

(assert (=> b!618698 (= (select (store (arr!18011 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618699 () Bool)

(assert (=> b!618699 (= e!354812 e!354816)))

(declare-fun res!398733 () Bool)

(assert (=> b!618699 (=> (not res!398733) (not e!354816))))

(assert (=> b!618699 (= res!398733 (= (select (store (arr!18011 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618699 (= lt!285438 (array!37538 (store (arr!18011 a!2986) i!1108 k!1786) (size!18375 a!2986)))))

(declare-fun b!618700 () Bool)

(declare-fun res!398726 () Bool)

(assert (=> b!618700 (=> (not res!398726) (not e!354824))))

(assert (=> b!618700 (= res!398726 (and (= (size!18375 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18375 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18375 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618701 () Bool)

(declare-fun e!354813 () Unit!20400)

(declare-fun Unit!20405 () Unit!20400)

(assert (=> b!618701 (= e!354813 Unit!20405)))

(declare-fun b!618702 () Bool)

(declare-fun Unit!20406 () Unit!20400)

(assert (=> b!618702 (= e!354821 Unit!20406)))

(assert (=> b!618702 false))

(declare-fun b!618703 () Bool)

(declare-fun res!398735 () Bool)

(assert (=> b!618703 (=> (not res!398735) (not e!354812))))

(declare-datatypes ((List!12105 0))(
  ( (Nil!12102) (Cons!12101 (h!13146 (_ BitVec 64)) (t!18341 List!12105)) )
))
(declare-fun arrayNoDuplicates!0 (array!37537 (_ BitVec 32) List!12105) Bool)

(assert (=> b!618703 (= res!398735 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12102))))

(declare-fun b!618704 () Bool)

(declare-fun res!398719 () Bool)

(declare-fun arrayContainsKey!0 (array!37537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618704 (= res!398719 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) j!136))))

(declare-fun e!354818 () Bool)

(assert (=> b!618704 (=> (not res!398719) (not e!354818))))

(assert (=> b!618704 (= e!354823 e!354818)))

(declare-fun b!618705 () Bool)

(declare-fun Unit!20407 () Unit!20400)

(assert (=> b!618705 (= e!354826 Unit!20407)))

(declare-fun res!398729 () Bool)

(assert (=> b!618705 (= res!398729 (= (select (store (arr!18011 a!2986) i!1108 k!1786) index!984) (select (arr!18011 a!2986) j!136)))))

(assert (=> b!618705 (=> (not res!398729) (not e!354819))))

(assert (=> b!618705 e!354819))

(declare-fun c!70355 () Bool)

(assert (=> b!618705 (= c!70355 (bvslt j!136 index!984))))

(declare-fun lt!285448 () Unit!20400)

(assert (=> b!618705 (= lt!285448 e!354825)))

(declare-fun c!70352 () Bool)

(assert (=> b!618705 (= c!70352 (bvslt index!984 j!136))))

(declare-fun lt!285450 () Unit!20400)

(assert (=> b!618705 (= lt!285450 e!354813)))

(assert (=> b!618705 false))

(declare-fun b!618706 () Bool)

(declare-fun res!398731 () Bool)

(assert (=> b!618706 (=> (not res!398731) (not e!354812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37537 (_ BitVec 32)) Bool)

(assert (=> b!618706 (= res!398731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618707 () Bool)

(assert (=> b!618707 false))

(declare-fun lt!285447 () Unit!20400)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37537 (_ BitVec 64) (_ BitVec 32) List!12105) Unit!20400)

(assert (=> b!618707 (= lt!285447 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285438 (select (arr!18011 a!2986) j!136) index!984 Nil!12102))))

(assert (=> b!618707 (arrayNoDuplicates!0 lt!285438 index!984 Nil!12102)))

(declare-fun lt!285444 () Unit!20400)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37537 (_ BitVec 32) (_ BitVec 32)) Unit!20400)

(assert (=> b!618707 (= lt!285444 (lemmaNoDuplicateFromThenFromBigger!0 lt!285438 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618707 (arrayNoDuplicates!0 lt!285438 #b00000000000000000000000000000000 Nil!12102)))

(declare-fun lt!285439 () Unit!20400)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37537 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12105) Unit!20400)

(assert (=> b!618707 (= lt!285439 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12102))))

(assert (=> b!618707 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!285449 () Unit!20400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37537 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20400)

(assert (=> b!618707 (= lt!285449 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285438 (select (arr!18011 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354817 () Bool)

(assert (=> b!618707 e!354817))

(declare-fun res!398720 () Bool)

(assert (=> b!618707 (=> (not res!398720) (not e!354817))))

(assert (=> b!618707 (= res!398720 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) j!136))))

(declare-fun Unit!20408 () Unit!20400)

(assert (=> b!618707 (= e!354813 Unit!20408)))

(declare-fun b!618708 () Bool)

(assert (=> b!618708 (= e!354817 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) index!984))))

(declare-fun b!618709 () Bool)

(assert (=> b!618709 false))

(declare-fun lt!285452 () Unit!20400)

(assert (=> b!618709 (= lt!285452 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!285438 (select (arr!18011 a!2986) j!136) j!136 Nil!12102))))

(assert (=> b!618709 (arrayNoDuplicates!0 lt!285438 j!136 Nil!12102)))

(declare-fun lt!285451 () Unit!20400)

(assert (=> b!618709 (= lt!285451 (lemmaNoDuplicateFromThenFromBigger!0 lt!285438 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618709 (arrayNoDuplicates!0 lt!285438 #b00000000000000000000000000000000 Nil!12102)))

(declare-fun lt!285445 () Unit!20400)

(assert (=> b!618709 (= lt!285445 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12102))))

(assert (=> b!618709 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!285454 () Unit!20400)

(assert (=> b!618709 (= lt!285454 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!285438 (select (arr!18011 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20409 () Unit!20400)

(assert (=> b!618709 (= e!354825 Unit!20409)))

(declare-fun b!618710 () Bool)

(assert (=> b!618710 (= e!354824 e!354812)))

(declare-fun res!398732 () Bool)

(assert (=> b!618710 (=> (not res!398732) (not e!354812))))

(declare-fun lt!285456 () SeekEntryResult!6458)

(assert (=> b!618710 (= res!398732 (or (= lt!285456 (MissingZero!6458 i!1108)) (= lt!285456 (MissingVacant!6458 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37537 (_ BitVec 32)) SeekEntryResult!6458)

(assert (=> b!618710 (= lt!285456 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618711 () Bool)

(declare-fun res!398724 () Bool)

(assert (=> b!618711 (=> (not res!398724) (not e!354824))))

(assert (=> b!618711 (= res!398724 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618712 () Bool)

(assert (=> b!618712 (= e!354818 (arrayContainsKey!0 lt!285438 (select (arr!18011 a!2986) j!136) index!984))))

(declare-fun b!618713 () Bool)

(assert (=> b!618713 (= e!354815 (= lt!285453 lt!285443))))

(assert (= (and start!56104 res!398725) b!618700))

(assert (= (and b!618700 res!398726) b!618689))

(assert (= (and b!618689 res!398721) b!618693))

(assert (= (and b!618693 res!398722) b!618711))

(assert (= (and b!618711 res!398724) b!618710))

(assert (= (and b!618710 res!398732) b!618706))

(assert (= (and b!618706 res!398731) b!618703))

(assert (= (and b!618703 res!398735) b!618692))

(assert (= (and b!618692 res!398730) b!618699))

(assert (= (and b!618699 res!398733) b!618691))

(assert (= (and b!618691 res!398734) b!618697))

(assert (= (and b!618697 res!398727) b!618713))

(assert (= (and b!618697 c!70353) b!618702))

(assert (= (and b!618697 (not c!70353)) b!618694))

(assert (= (and b!618697 c!70354) b!618705))

(assert (= (and b!618697 (not c!70354)) b!618696))

(assert (= (and b!618705 res!398729) b!618695))

(assert (= (and b!618695 (not res!398728)) b!618704))

(assert (= (and b!618704 res!398719) b!618712))

(assert (= (and b!618705 c!70355) b!618709))

(assert (= (and b!618705 (not c!70355)) b!618690))

(assert (= (and b!618705 c!70352) b!618707))

(assert (= (and b!618705 (not c!70352)) b!618701))

(assert (= (and b!618707 res!398720) b!618708))

(assert (= (and b!618697 (not res!398723)) b!618698))

(declare-fun m!594749 () Bool)

(assert (=> b!618703 m!594749))

(declare-fun m!594751 () Bool)

(assert (=> b!618710 m!594751))

(declare-fun m!594753 () Bool)

(assert (=> b!618697 m!594753))

(declare-fun m!594755 () Bool)

(assert (=> b!618697 m!594755))

(assert (=> b!618697 m!594755))

(declare-fun m!594757 () Bool)

(assert (=> b!618697 m!594757))

(declare-fun m!594759 () Bool)

(assert (=> b!618697 m!594759))

(declare-fun m!594761 () Bool)

(assert (=> b!618697 m!594761))

(declare-fun m!594763 () Bool)

(assert (=> b!618697 m!594763))

(declare-fun m!594765 () Bool)

(assert (=> b!618697 m!594765))

(declare-fun m!594767 () Bool)

(assert (=> b!618697 m!594767))

(assert (=> b!618689 m!594755))

(assert (=> b!618689 m!594755))

(declare-fun m!594769 () Bool)

(assert (=> b!618689 m!594769))

(declare-fun m!594771 () Bool)

(assert (=> b!618706 m!594771))

(assert (=> b!618699 m!594759))

(declare-fun m!594773 () Bool)

(assert (=> b!618699 m!594773))

(assert (=> b!618698 m!594759))

(declare-fun m!594775 () Bool)

(assert (=> b!618698 m!594775))

(declare-fun m!594777 () Bool)

(assert (=> b!618711 m!594777))

(assert (=> b!618704 m!594755))

(assert (=> b!618704 m!594755))

(declare-fun m!594779 () Bool)

(assert (=> b!618704 m!594779))

(assert (=> b!618712 m!594755))

(assert (=> b!618712 m!594755))

(declare-fun m!594781 () Bool)

(assert (=> b!618712 m!594781))

(declare-fun m!594783 () Bool)

(assert (=> b!618691 m!594783))

(assert (=> b!618691 m!594755))

(assert (=> b!618691 m!594755))

(declare-fun m!594785 () Bool)

(assert (=> b!618691 m!594785))

(assert (=> b!618705 m!594759))

(assert (=> b!618705 m!594775))

(assert (=> b!618705 m!594755))

(assert (=> b!618708 m!594755))

(assert (=> b!618708 m!594755))

(assert (=> b!618708 m!594781))

(assert (=> b!618707 m!594755))

(declare-fun m!594787 () Bool)

(assert (=> b!618707 m!594787))

(assert (=> b!618707 m!594755))

(assert (=> b!618707 m!594779))

(assert (=> b!618707 m!594755))

(declare-fun m!594789 () Bool)

(assert (=> b!618707 m!594789))

(declare-fun m!594791 () Bool)

(assert (=> b!618707 m!594791))

(assert (=> b!618707 m!594755))

(declare-fun m!594793 () Bool)

(assert (=> b!618707 m!594793))

(assert (=> b!618707 m!594755))

(declare-fun m!594795 () Bool)

(assert (=> b!618707 m!594795))

(declare-fun m!594797 () Bool)

(assert (=> b!618707 m!594797))

(declare-fun m!594799 () Bool)

(assert (=> b!618707 m!594799))

(declare-fun m!594801 () Bool)

(assert (=> b!618692 m!594801))

(declare-fun m!594803 () Bool)

(assert (=> b!618693 m!594803))

(declare-fun m!594805 () Bool)

(assert (=> start!56104 m!594805))

(declare-fun m!594807 () Bool)

(assert (=> start!56104 m!594807))

(assert (=> b!618709 m!594755))

(declare-fun m!594809 () Bool)

(assert (=> b!618709 m!594809))

(assert (=> b!618709 m!594791))

(declare-fun m!594811 () Bool)

(assert (=> b!618709 m!594811))

(assert (=> b!618709 m!594755))

(declare-fun m!594813 () Bool)

(assert (=> b!618709 m!594813))

(declare-fun m!594815 () Bool)

(assert (=> b!618709 m!594815))

(assert (=> b!618709 m!594799))

(assert (=> b!618709 m!594755))

(declare-fun m!594817 () Bool)

(assert (=> b!618709 m!594817))

(assert (=> b!618709 m!594755))

(push 1)

