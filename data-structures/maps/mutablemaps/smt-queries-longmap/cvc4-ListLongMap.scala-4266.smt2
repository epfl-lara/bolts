; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59356 () Bool)

(assert start!59356)

(declare-fun b!654594 () Bool)

(declare-fun res!424715 () Bool)

(declare-fun e!375937 () Bool)

(assert (=> b!654594 (=> (not res!424715) (not e!375937))))

(declare-datatypes ((array!38632 0))(
  ( (array!38633 (arr!18512 (Array (_ BitVec 32) (_ BitVec 64))) (size!18876 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38632)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38632 (_ BitVec 32)) Bool)

(assert (=> b!654594 (= res!424715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!654595 () Bool)

(declare-fun e!375931 () Bool)

(declare-fun lt!305112 () array!38632)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!654595 (= e!375931 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) index!984))))

(declare-fun b!654596 () Bool)

(declare-datatypes ((Unit!22436 0))(
  ( (Unit!22437) )
))
(declare-fun e!375930 () Unit!22436)

(declare-fun Unit!22438 () Unit!22436)

(assert (=> b!654596 (= e!375930 Unit!22438)))

(assert (=> b!654596 false))

(declare-fun b!654597 () Bool)

(declare-fun e!375936 () Bool)

(assert (=> b!654597 (= e!375936 e!375931)))

(declare-fun res!424712 () Bool)

(assert (=> b!654597 (=> (not res!424712) (not e!375931))))

(assert (=> b!654597 (= res!424712 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) j!136))))

(declare-fun b!654598 () Bool)

(declare-fun e!375935 () Bool)

(declare-datatypes ((SeekEntryResult!6959 0))(
  ( (MissingZero!6959 (index!30194 (_ BitVec 32))) (Found!6959 (index!30195 (_ BitVec 32))) (Intermediate!6959 (undefined!7771 Bool) (index!30196 (_ BitVec 32)) (x!59009 (_ BitVec 32))) (Undefined!6959) (MissingVacant!6959 (index!30197 (_ BitVec 32))) )
))
(declare-fun lt!305102 () SeekEntryResult!6959)

(declare-fun lt!305104 () SeekEntryResult!6959)

(assert (=> b!654598 (= e!375935 (= lt!305102 lt!305104))))

(declare-fun b!654599 () Bool)

(declare-fun res!424722 () Bool)

(assert (=> b!654599 (=> (not res!424722) (not e!375937))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!654599 (= res!424722 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18512 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!654600 () Bool)

(declare-fun res!424721 () Bool)

(declare-fun e!375924 () Bool)

(assert (=> b!654600 (=> (not res!424721) (not e!375924))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!654600 (= res!424721 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!654601 () Bool)

(declare-fun e!375925 () Bool)

(assert (=> b!654601 (= e!375925 true)))

(assert (=> b!654601 false))

(declare-fun lt!305111 () Unit!22436)

(declare-fun e!375929 () Unit!22436)

(assert (=> b!654601 (= lt!305111 e!375929)))

(declare-fun c!75309 () Bool)

(assert (=> b!654601 (= c!75309 (bvslt index!984 j!136))))

(declare-fun lt!305106 () Unit!22436)

(declare-fun e!375928 () Unit!22436)

(assert (=> b!654601 (= lt!305106 e!375928)))

(declare-fun c!75310 () Bool)

(assert (=> b!654601 (= c!75310 (bvslt j!136 index!984))))

(declare-fun b!654602 () Bool)

(declare-fun Unit!22439 () Unit!22436)

(assert (=> b!654602 (= e!375928 Unit!22439)))

(declare-fun lt!305117 () Unit!22436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38632 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22436)

(assert (=> b!654602 (= lt!305117 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305112 (select (arr!18512 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!654602 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!305119 () Unit!22436)

(declare-datatypes ((List!12606 0))(
  ( (Nil!12603) (Cons!12602 (h!13647 (_ BitVec 64)) (t!18842 List!12606)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38632 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12606) Unit!22436)

(assert (=> b!654602 (= lt!305119 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12603))))

(declare-fun arrayNoDuplicates!0 (array!38632 (_ BitVec 32) List!12606) Bool)

(assert (=> b!654602 (arrayNoDuplicates!0 lt!305112 #b00000000000000000000000000000000 Nil!12603)))

(declare-fun lt!305105 () Unit!22436)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38632 (_ BitVec 32) (_ BitVec 32)) Unit!22436)

(assert (=> b!654602 (= lt!305105 (lemmaNoDuplicateFromThenFromBigger!0 lt!305112 #b00000000000000000000000000000000 j!136))))

(assert (=> b!654602 (arrayNoDuplicates!0 lt!305112 j!136 Nil!12603)))

(declare-fun lt!305103 () Unit!22436)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38632 (_ BitVec 64) (_ BitVec 32) List!12606) Unit!22436)

(assert (=> b!654602 (= lt!305103 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305112 (select (arr!18512 a!2986) j!136) j!136 Nil!12603))))

(assert (=> b!654602 false))

(declare-fun b!654603 () Bool)

(declare-fun res!424727 () Bool)

(assert (=> b!654603 (=> (not res!424727) (not e!375924))))

(assert (=> b!654603 (= res!424727 (and (= (size!18876 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18876 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18876 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!654604 () Bool)

(declare-fun res!424717 () Bool)

(assert (=> b!654604 (=> (not res!424717) (not e!375924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!654604 (= res!424717 (validKeyInArray!0 k!1786))))

(declare-fun b!654605 () Bool)

(declare-fun Unit!22440 () Unit!22436)

(assert (=> b!654605 (= e!375928 Unit!22440)))

(declare-fun b!654607 () Bool)

(declare-fun e!375933 () Bool)

(assert (=> b!654607 (= e!375937 e!375933)))

(declare-fun res!424718 () Bool)

(assert (=> b!654607 (=> (not res!424718) (not e!375933))))

(assert (=> b!654607 (= res!424718 (= (select (store (arr!18512 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!654607 (= lt!305112 (array!38633 (store (arr!18512 a!2986) i!1108 k!1786) (size!18876 a!2986)))))

(declare-fun b!654608 () Bool)

(declare-fun e!375927 () Bool)

(assert (=> b!654608 (= e!375927 e!375936)))

(declare-fun res!424714 () Bool)

(assert (=> b!654608 (=> res!424714 e!375936)))

(declare-fun lt!305116 () (_ BitVec 64))

(declare-fun lt!305120 () (_ BitVec 64))

(assert (=> b!654608 (= res!424714 (or (not (= (select (arr!18512 a!2986) j!136) lt!305120)) (not (= (select (arr!18512 a!2986) j!136) lt!305116)) (bvsge j!136 index!984)))))

(declare-fun b!654609 () Bool)

(declare-fun res!424723 () Bool)

(assert (=> b!654609 (=> (not res!424723) (not e!375937))))

(assert (=> b!654609 (= res!424723 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12603))))

(declare-fun b!654610 () Bool)

(declare-fun e!375932 () Bool)

(assert (=> b!654610 (= e!375933 e!375932)))

(declare-fun res!424720 () Bool)

(assert (=> b!654610 (=> (not res!424720) (not e!375932))))

(assert (=> b!654610 (= res!424720 (and (= lt!305102 (Found!6959 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18512 a!2986) index!984) (select (arr!18512 a!2986) j!136))) (not (= (select (arr!18512 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38632 (_ BitVec 32)) SeekEntryResult!6959)

(assert (=> b!654610 (= lt!305102 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18512 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!654611 () Bool)

(declare-fun Unit!22441 () Unit!22436)

(assert (=> b!654611 (= e!375930 Unit!22441)))

(declare-fun b!654612 () Bool)

(declare-fun res!424719 () Bool)

(assert (=> b!654612 (=> (not res!424719) (not e!375924))))

(assert (=> b!654612 (= res!424719 (validKeyInArray!0 (select (arr!18512 a!2986) j!136)))))

(declare-fun b!654613 () Bool)

(declare-fun e!375923 () Bool)

(assert (=> b!654613 (= e!375932 (not e!375923))))

(declare-fun res!424725 () Bool)

(assert (=> b!654613 (=> res!424725 e!375923)))

(declare-fun lt!305107 () SeekEntryResult!6959)

(assert (=> b!654613 (= res!424725 (not (= lt!305107 (Found!6959 index!984))))))

(declare-fun lt!305110 () Unit!22436)

(assert (=> b!654613 (= lt!305110 e!375930)))

(declare-fun c!75311 () Bool)

(assert (=> b!654613 (= c!75311 (= lt!305107 Undefined!6959))))

(assert (=> b!654613 (= lt!305107 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!305120 lt!305112 mask!3053))))

(assert (=> b!654613 e!375935))

(declare-fun res!424713 () Bool)

(assert (=> b!654613 (=> (not res!424713) (not e!375935))))

(declare-fun lt!305109 () (_ BitVec 32))

(assert (=> b!654613 (= res!424713 (= lt!305104 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305109 vacantSpotIndex!68 lt!305120 lt!305112 mask!3053)))))

(assert (=> b!654613 (= lt!305104 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!305109 vacantSpotIndex!68 (select (arr!18512 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!654613 (= lt!305120 (select (store (arr!18512 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!305108 () Unit!22436)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38632 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22436)

(assert (=> b!654613 (= lt!305108 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!305109 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!654613 (= lt!305109 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!654614 () Bool)

(declare-fun e!375934 () Bool)

(assert (=> b!654614 (= e!375934 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) index!984))))

(declare-fun b!654615 () Bool)

(assert (=> b!654615 (= e!375924 e!375937)))

(declare-fun res!424726 () Bool)

(assert (=> b!654615 (=> (not res!424726) (not e!375937))))

(declare-fun lt!305115 () SeekEntryResult!6959)

(assert (=> b!654615 (= res!424726 (or (= lt!305115 (MissingZero!6959 i!1108)) (= lt!305115 (MissingVacant!6959 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38632 (_ BitVec 32)) SeekEntryResult!6959)

(assert (=> b!654615 (= lt!305115 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!654616 () Bool)

(declare-fun Unit!22442 () Unit!22436)

(assert (=> b!654616 (= e!375929 Unit!22442)))

(declare-fun b!654617 () Bool)

(declare-fun Unit!22443 () Unit!22436)

(assert (=> b!654617 (= e!375929 Unit!22443)))

(declare-fun res!424716 () Bool)

(assert (=> b!654617 (= res!424716 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) j!136))))

(assert (=> b!654617 (=> (not res!424716) (not e!375934))))

(assert (=> b!654617 e!375934))

(declare-fun lt!305118 () Unit!22436)

(assert (=> b!654617 (= lt!305118 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!305112 (select (arr!18512 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!654617 (arrayContainsKey!0 lt!305112 (select (arr!18512 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!305114 () Unit!22436)

(assert (=> b!654617 (= lt!305114 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12603))))

(assert (=> b!654617 (arrayNoDuplicates!0 lt!305112 #b00000000000000000000000000000000 Nil!12603)))

(declare-fun lt!305121 () Unit!22436)

(assert (=> b!654617 (= lt!305121 (lemmaNoDuplicateFromThenFromBigger!0 lt!305112 #b00000000000000000000000000000000 index!984))))

(assert (=> b!654617 (arrayNoDuplicates!0 lt!305112 index!984 Nil!12603)))

(declare-fun lt!305113 () Unit!22436)

(assert (=> b!654617 (= lt!305113 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!305112 (select (arr!18512 a!2986) j!136) index!984 Nil!12603))))

(assert (=> b!654617 false))

(declare-fun res!424724 () Bool)

(assert (=> start!59356 (=> (not res!424724) (not e!375924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59356 (= res!424724 (validMask!0 mask!3053))))

(assert (=> start!59356 e!375924))

(assert (=> start!59356 true))

(declare-fun array_inv!14286 (array!38632) Bool)

(assert (=> start!59356 (array_inv!14286 a!2986)))

(declare-fun b!654606 () Bool)

(assert (=> b!654606 (= e!375923 e!375925)))

(declare-fun res!424710 () Bool)

(assert (=> b!654606 (=> res!424710 e!375925)))

(assert (=> b!654606 (= res!424710 (or (not (= (select (arr!18512 a!2986) j!136) lt!305120)) (not (= (select (arr!18512 a!2986) j!136) lt!305116))))))

(assert (=> b!654606 e!375927))

(declare-fun res!424711 () Bool)

(assert (=> b!654606 (=> (not res!424711) (not e!375927))))

(assert (=> b!654606 (= res!424711 (= lt!305116 (select (arr!18512 a!2986) j!136)))))

(assert (=> b!654606 (= lt!305116 (select (store (arr!18512 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!59356 res!424724) b!654603))

(assert (= (and b!654603 res!424727) b!654612))

(assert (= (and b!654612 res!424719) b!654604))

(assert (= (and b!654604 res!424717) b!654600))

(assert (= (and b!654600 res!424721) b!654615))

(assert (= (and b!654615 res!424726) b!654594))

(assert (= (and b!654594 res!424715) b!654609))

(assert (= (and b!654609 res!424723) b!654599))

(assert (= (and b!654599 res!424722) b!654607))

(assert (= (and b!654607 res!424718) b!654610))

(assert (= (and b!654610 res!424720) b!654613))

(assert (= (and b!654613 res!424713) b!654598))

(assert (= (and b!654613 c!75311) b!654596))

(assert (= (and b!654613 (not c!75311)) b!654611))

(assert (= (and b!654613 (not res!424725)) b!654606))

(assert (= (and b!654606 res!424711) b!654608))

(assert (= (and b!654608 (not res!424714)) b!654597))

(assert (= (and b!654597 res!424712) b!654595))

(assert (= (and b!654606 (not res!424710)) b!654601))

(assert (= (and b!654601 c!75310) b!654602))

(assert (= (and b!654601 (not c!75310)) b!654605))

(assert (= (and b!654601 c!75309) b!654617))

(assert (= (and b!654601 (not c!75309)) b!654616))

(assert (= (and b!654617 res!424716) b!654614))

(declare-fun m!627761 () Bool)

(assert (=> b!654613 m!627761))

(declare-fun m!627763 () Bool)

(assert (=> b!654613 m!627763))

(declare-fun m!627765 () Bool)

(assert (=> b!654613 m!627765))

(assert (=> b!654613 m!627765))

(declare-fun m!627767 () Bool)

(assert (=> b!654613 m!627767))

(declare-fun m!627769 () Bool)

(assert (=> b!654613 m!627769))

(declare-fun m!627771 () Bool)

(assert (=> b!654613 m!627771))

(declare-fun m!627773 () Bool)

(assert (=> b!654613 m!627773))

(declare-fun m!627775 () Bool)

(assert (=> b!654613 m!627775))

(assert (=> b!654597 m!627765))

(assert (=> b!654597 m!627765))

(declare-fun m!627777 () Bool)

(assert (=> b!654597 m!627777))

(assert (=> b!654617 m!627765))

(declare-fun m!627779 () Bool)

(assert (=> b!654617 m!627779))

(declare-fun m!627781 () Bool)

(assert (=> b!654617 m!627781))

(declare-fun m!627783 () Bool)

(assert (=> b!654617 m!627783))

(assert (=> b!654617 m!627765))

(declare-fun m!627785 () Bool)

(assert (=> b!654617 m!627785))

(assert (=> b!654617 m!627765))

(declare-fun m!627787 () Bool)

(assert (=> b!654617 m!627787))

(declare-fun m!627789 () Bool)

(assert (=> b!654617 m!627789))

(declare-fun m!627791 () Bool)

(assert (=> b!654617 m!627791))

(assert (=> b!654617 m!627765))

(assert (=> b!654617 m!627765))

(assert (=> b!654617 m!627777))

(declare-fun m!627793 () Bool)

(assert (=> b!654594 m!627793))

(declare-fun m!627795 () Bool)

(assert (=> b!654610 m!627795))

(assert (=> b!654610 m!627765))

(assert (=> b!654610 m!627765))

(declare-fun m!627797 () Bool)

(assert (=> b!654610 m!627797))

(assert (=> b!654612 m!627765))

(assert (=> b!654612 m!627765))

(declare-fun m!627799 () Bool)

(assert (=> b!654612 m!627799))

(assert (=> b!654607 m!627775))

(declare-fun m!627801 () Bool)

(assert (=> b!654607 m!627801))

(assert (=> b!654602 m!627765))

(assert (=> b!654602 m!627765))

(declare-fun m!627803 () Bool)

(assert (=> b!654602 m!627803))

(assert (=> b!654602 m!627765))

(declare-fun m!627805 () Bool)

(assert (=> b!654602 m!627805))

(declare-fun m!627807 () Bool)

(assert (=> b!654602 m!627807))

(declare-fun m!627809 () Bool)

(assert (=> b!654602 m!627809))

(assert (=> b!654602 m!627791))

(assert (=> b!654602 m!627783))

(assert (=> b!654602 m!627765))

(declare-fun m!627811 () Bool)

(assert (=> b!654602 m!627811))

(declare-fun m!627813 () Bool)

(assert (=> start!59356 m!627813))

(declare-fun m!627815 () Bool)

(assert (=> start!59356 m!627815))

(assert (=> b!654608 m!627765))

(declare-fun m!627817 () Bool)

(assert (=> b!654599 m!627817))

(declare-fun m!627819 () Bool)

(assert (=> b!654604 m!627819))

(assert (=> b!654614 m!627765))

(assert (=> b!654614 m!627765))

(declare-fun m!627821 () Bool)

(assert (=> b!654614 m!627821))

(declare-fun m!627823 () Bool)

(assert (=> b!654600 m!627823))

(declare-fun m!627825 () Bool)

(assert (=> b!654615 m!627825))

(assert (=> b!654595 m!627765))

(assert (=> b!654595 m!627765))

(assert (=> b!654595 m!627821))

(assert (=> b!654606 m!627765))

(assert (=> b!654606 m!627775))

(declare-fun m!627827 () Bool)

(assert (=> b!654606 m!627827))

(declare-fun m!627829 () Bool)

(assert (=> b!654609 m!627829))

(push 1)

(assert (not b!654613))

(assert (not b!654594))

(assert (not b!654595))

(assert (not b!654615))

(assert (not b!654609))

(assert (not b!654610))

(assert (not b!654600))

(assert (not b!654614))

(assert (not b!654602))

(assert (not b!654597))

(assert (not b!654612))

(assert (not b!654617))

(assert (not b!654604))

(assert (not start!59356))

(check-sat)

(pop 1)

(push 1)

