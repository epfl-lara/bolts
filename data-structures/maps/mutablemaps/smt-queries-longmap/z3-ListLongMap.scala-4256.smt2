; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59108 () Bool)

(assert start!59108)

(declare-fun b!651592 () Bool)

(declare-fun e!373952 () Bool)

(declare-fun e!373947 () Bool)

(assert (=> b!651592 (= e!373952 e!373947)))

(declare-fun res!422551 () Bool)

(assert (=> b!651592 (=> res!422551 e!373947)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303064 () (_ BitVec 64))

(declare-fun lt!303063 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38564 0))(
  ( (array!38565 (arr!18481 (Array (_ BitVec 32) (_ BitVec 64))) (size!18845 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38564)

(assert (=> b!651592 (= res!422551 (or (not (= (select (arr!18481 a!2986) j!136) lt!303063)) (not (= (select (arr!18481 a!2986) j!136) lt!303064)) (bvsge j!136 index!984)))))

(declare-fun b!651593 () Bool)

(declare-fun e!373951 () Bool)

(declare-datatypes ((SeekEntryResult!6928 0))(
  ( (MissingZero!6928 (index!30064 (_ BitVec 32))) (Found!6928 (index!30065 (_ BitVec 32))) (Intermediate!6928 (undefined!7740 Bool) (index!30066 (_ BitVec 32)) (x!58880 (_ BitVec 32))) (Undefined!6928) (MissingVacant!6928 (index!30067 (_ BitVec 32))) )
))
(declare-fun lt!303058 () SeekEntryResult!6928)

(declare-fun lt!303067 () SeekEntryResult!6928)

(assert (=> b!651593 (= e!373951 (= lt!303058 lt!303067))))

(declare-fun res!422558 () Bool)

(declare-fun e!373953 () Bool)

(assert (=> start!59108 (=> (not res!422558) (not e!373953))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59108 (= res!422558 (validMask!0 mask!3053))))

(assert (=> start!59108 e!373953))

(assert (=> start!59108 true))

(declare-fun array_inv!14255 (array!38564) Bool)

(assert (=> start!59108 (array_inv!14255 a!2986)))

(declare-fun b!651594 () Bool)

(declare-datatypes ((Unit!22240 0))(
  ( (Unit!22241) )
))
(declare-fun e!373949 () Unit!22240)

(declare-fun Unit!22242 () Unit!22240)

(assert (=> b!651594 (= e!373949 Unit!22242)))

(declare-fun b!651595 () Bool)

(declare-fun e!373946 () Unit!22240)

(declare-fun Unit!22243 () Unit!22240)

(assert (=> b!651595 (= e!373946 Unit!22243)))

(declare-fun lt!303061 () array!38564)

(declare-fun lt!303057 () Unit!22240)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22240)

(assert (=> b!651595 (= lt!303057 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303061 (select (arr!18481 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651595 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!303065 () Unit!22240)

(declare-datatypes ((List!12575 0))(
  ( (Nil!12572) (Cons!12571 (h!13616 (_ BitVec 64)) (t!18811 List!12575)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12575) Unit!22240)

(assert (=> b!651595 (= lt!303065 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12572))))

(declare-fun arrayNoDuplicates!0 (array!38564 (_ BitVec 32) List!12575) Bool)

(assert (=> b!651595 (arrayNoDuplicates!0 lt!303061 #b00000000000000000000000000000000 Nil!12572)))

(declare-fun lt!303069 () Unit!22240)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38564 (_ BitVec 32) (_ BitVec 32)) Unit!22240)

(assert (=> b!651595 (= lt!303069 (lemmaNoDuplicateFromThenFromBigger!0 lt!303061 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651595 (arrayNoDuplicates!0 lt!303061 j!136 Nil!12572)))

(declare-fun lt!303056 () Unit!22240)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38564 (_ BitVec 64) (_ BitVec 32) List!12575) Unit!22240)

(assert (=> b!651595 (= lt!303056 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303061 (select (arr!18481 a!2986) j!136) j!136 Nil!12572))))

(assert (=> b!651595 false))

(declare-fun b!651596 () Bool)

(declare-fun res!422552 () Bool)

(assert (=> b!651596 (=> (not res!422552) (not e!373953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651596 (= res!422552 (validKeyInArray!0 (select (arr!18481 a!2986) j!136)))))

(declare-fun b!651597 () Bool)

(declare-fun e!373950 () Bool)

(declare-fun e!373948 () Bool)

(assert (=> b!651597 (= e!373950 e!373948)))

(declare-fun res!422557 () Bool)

(assert (=> b!651597 (=> res!422557 e!373948)))

(assert (=> b!651597 (= res!422557 (bvsge index!984 j!136))))

(declare-fun lt!303068 () Unit!22240)

(assert (=> b!651597 (= lt!303068 e!373946)))

(declare-fun c!74890 () Bool)

(assert (=> b!651597 (= c!74890 (bvslt j!136 index!984))))

(declare-fun b!651598 () Bool)

(declare-fun Unit!22244 () Unit!22240)

(assert (=> b!651598 (= e!373946 Unit!22244)))

(declare-fun b!651599 () Bool)

(declare-fun res!422546 () Bool)

(assert (=> b!651599 (=> (not res!422546) (not e!373953))))

(assert (=> b!651599 (= res!422546 (validKeyInArray!0 k0!1786))))

(declare-fun b!651600 () Bool)

(declare-fun e!373957 () Bool)

(assert (=> b!651600 (= e!373953 e!373957)))

(declare-fun res!422564 () Bool)

(assert (=> b!651600 (=> (not res!422564) (not e!373957))))

(declare-fun lt!303072 () SeekEntryResult!6928)

(assert (=> b!651600 (= res!422564 (or (= lt!303072 (MissingZero!6928 i!1108)) (= lt!303072 (MissingVacant!6928 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38564 (_ BitVec 32)) SeekEntryResult!6928)

(assert (=> b!651600 (= lt!303072 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun e!373944 () Bool)

(declare-fun b!651601 () Bool)

(assert (=> b!651601 (= e!373944 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) index!984))))

(declare-fun b!651602 () Bool)

(declare-fun res!422549 () Bool)

(assert (=> b!651602 (=> (not res!422549) (not e!373953))))

(assert (=> b!651602 (= res!422549 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651603 () Bool)

(declare-fun e!373955 () Bool)

(assert (=> b!651603 (= e!373955 e!373950)))

(declare-fun res!422547 () Bool)

(assert (=> b!651603 (=> res!422547 e!373950)))

(assert (=> b!651603 (= res!422547 (or (not (= (select (arr!18481 a!2986) j!136) lt!303063)) (not (= (select (arr!18481 a!2986) j!136) lt!303064))))))

(assert (=> b!651603 e!373952))

(declare-fun res!422548 () Bool)

(assert (=> b!651603 (=> (not res!422548) (not e!373952))))

(assert (=> b!651603 (= res!422548 (= lt!303064 (select (arr!18481 a!2986) j!136)))))

(assert (=> b!651603 (= lt!303064 (select (store (arr!18481 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!651604 () Bool)

(declare-fun e!373943 () Bool)

(assert (=> b!651604 (= e!373943 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) index!984))))

(declare-fun b!651605 () Bool)

(assert (=> b!651605 (= e!373947 e!373944)))

(declare-fun res!422556 () Bool)

(assert (=> b!651605 (=> (not res!422556) (not e!373944))))

(assert (=> b!651605 (= res!422556 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) j!136))))

(declare-fun b!651606 () Bool)

(declare-fun e!373954 () Bool)

(declare-fun e!373956 () Bool)

(assert (=> b!651606 (= e!373954 e!373956)))

(declare-fun res!422560 () Bool)

(assert (=> b!651606 (=> (not res!422560) (not e!373956))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!651606 (= res!422560 (and (= lt!303058 (Found!6928 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18481 a!2986) index!984) (select (arr!18481 a!2986) j!136))) (not (= (select (arr!18481 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38564 (_ BitVec 32)) SeekEntryResult!6928)

(assert (=> b!651606 (= lt!303058 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18481 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651607 () Bool)

(declare-fun res!422553 () Bool)

(assert (=> b!651607 (=> (not res!422553) (not e!373957))))

(assert (=> b!651607 (= res!422553 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18481 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651608 () Bool)

(assert (=> b!651608 (= e!373956 (not e!373955))))

(declare-fun res!422554 () Bool)

(assert (=> b!651608 (=> res!422554 e!373955)))

(declare-fun lt!303066 () SeekEntryResult!6928)

(assert (=> b!651608 (= res!422554 (not (= lt!303066 (Found!6928 index!984))))))

(declare-fun lt!303070 () Unit!22240)

(assert (=> b!651608 (= lt!303070 e!373949)))

(declare-fun c!74891 () Bool)

(assert (=> b!651608 (= c!74891 (= lt!303066 Undefined!6928))))

(assert (=> b!651608 (= lt!303066 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303063 lt!303061 mask!3053))))

(assert (=> b!651608 e!373951))

(declare-fun res!422563 () Bool)

(assert (=> b!651608 (=> (not res!422563) (not e!373951))))

(declare-fun lt!303055 () (_ BitVec 32))

(assert (=> b!651608 (= res!422563 (= lt!303067 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303055 vacantSpotIndex!68 lt!303063 lt!303061 mask!3053)))))

(assert (=> b!651608 (= lt!303067 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303055 vacantSpotIndex!68 (select (arr!18481 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651608 (= lt!303063 (select (store (arr!18481 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!303062 () Unit!22240)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38564 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22240)

(assert (=> b!651608 (= lt!303062 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303055 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651608 (= lt!303055 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651609 () Bool)

(declare-fun res!422555 () Bool)

(assert (=> b!651609 (=> (not res!422555) (not e!373957))))

(assert (=> b!651609 (= res!422555 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12572))))

(declare-fun b!651610 () Bool)

(declare-fun Unit!22245 () Unit!22240)

(assert (=> b!651610 (= e!373949 Unit!22245)))

(assert (=> b!651610 false))

(declare-fun b!651611 () Bool)

(declare-fun res!422559 () Bool)

(assert (=> b!651611 (=> (not res!422559) (not e!373953))))

(assert (=> b!651611 (= res!422559 (and (= (size!18845 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18845 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18845 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651612 () Bool)

(assert (=> b!651612 (= e!373957 e!373954)))

(declare-fun res!422562 () Bool)

(assert (=> b!651612 (=> (not res!422562) (not e!373954))))

(assert (=> b!651612 (= res!422562 (= (select (store (arr!18481 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651612 (= lt!303061 (array!38565 (store (arr!18481 a!2986) i!1108 k0!1786) (size!18845 a!2986)))))

(declare-fun b!651613 () Bool)

(declare-fun res!422550 () Bool)

(assert (=> b!651613 (=> (not res!422550) (not e!373957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38564 (_ BitVec 32)) Bool)

(assert (=> b!651613 (= res!422550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651614 () Bool)

(assert (=> b!651614 (= e!373948 true)))

(assert (=> b!651614 (arrayNoDuplicates!0 lt!303061 index!984 Nil!12572)))

(declare-fun lt!303071 () Unit!22240)

(assert (=> b!651614 (= lt!303071 (lemmaNoDuplicateFromThenFromBigger!0 lt!303061 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651614 (arrayNoDuplicates!0 lt!303061 #b00000000000000000000000000000000 Nil!12572)))

(declare-fun lt!303059 () Unit!22240)

(assert (=> b!651614 (= lt!303059 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12572))))

(assert (=> b!651614 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303060 () Unit!22240)

(assert (=> b!651614 (= lt!303060 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303061 (select (arr!18481 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651614 e!373943))

(declare-fun res!422561 () Bool)

(assert (=> b!651614 (=> (not res!422561) (not e!373943))))

(assert (=> b!651614 (= res!422561 (arrayContainsKey!0 lt!303061 (select (arr!18481 a!2986) j!136) j!136))))

(assert (= (and start!59108 res!422558) b!651611))

(assert (= (and b!651611 res!422559) b!651596))

(assert (= (and b!651596 res!422552) b!651599))

(assert (= (and b!651599 res!422546) b!651602))

(assert (= (and b!651602 res!422549) b!651600))

(assert (= (and b!651600 res!422564) b!651613))

(assert (= (and b!651613 res!422550) b!651609))

(assert (= (and b!651609 res!422555) b!651607))

(assert (= (and b!651607 res!422553) b!651612))

(assert (= (and b!651612 res!422562) b!651606))

(assert (= (and b!651606 res!422560) b!651608))

(assert (= (and b!651608 res!422563) b!651593))

(assert (= (and b!651608 c!74891) b!651610))

(assert (= (and b!651608 (not c!74891)) b!651594))

(assert (= (and b!651608 (not res!422554)) b!651603))

(assert (= (and b!651603 res!422548) b!651592))

(assert (= (and b!651592 (not res!422551)) b!651605))

(assert (= (and b!651605 res!422556) b!651601))

(assert (= (and b!651603 (not res!422547)) b!651597))

(assert (= (and b!651597 c!74890) b!651595))

(assert (= (and b!651597 (not c!74890)) b!651598))

(assert (= (and b!651597 (not res!422557)) b!651614))

(assert (= (and b!651614 res!422561) b!651604))

(declare-fun m!624815 () Bool)

(assert (=> b!651609 m!624815))

(declare-fun m!624817 () Bool)

(assert (=> b!651601 m!624817))

(assert (=> b!651601 m!624817))

(declare-fun m!624819 () Bool)

(assert (=> b!651601 m!624819))

(assert (=> b!651592 m!624817))

(declare-fun m!624821 () Bool)

(assert (=> b!651600 m!624821))

(assert (=> b!651605 m!624817))

(assert (=> b!651605 m!624817))

(declare-fun m!624823 () Bool)

(assert (=> b!651605 m!624823))

(declare-fun m!624825 () Bool)

(assert (=> b!651607 m!624825))

(assert (=> b!651614 m!624817))

(declare-fun m!624827 () Bool)

(assert (=> b!651614 m!624827))

(assert (=> b!651614 m!624817))

(assert (=> b!651614 m!624817))

(assert (=> b!651614 m!624823))

(declare-fun m!624829 () Bool)

(assert (=> b!651614 m!624829))

(declare-fun m!624831 () Bool)

(assert (=> b!651614 m!624831))

(declare-fun m!624833 () Bool)

(assert (=> b!651614 m!624833))

(assert (=> b!651614 m!624817))

(declare-fun m!624835 () Bool)

(assert (=> b!651614 m!624835))

(declare-fun m!624837 () Bool)

(assert (=> b!651614 m!624837))

(declare-fun m!624839 () Bool)

(assert (=> b!651606 m!624839))

(assert (=> b!651606 m!624817))

(assert (=> b!651606 m!624817))

(declare-fun m!624841 () Bool)

(assert (=> b!651606 m!624841))

(assert (=> b!651603 m!624817))

(declare-fun m!624843 () Bool)

(assert (=> b!651603 m!624843))

(declare-fun m!624845 () Bool)

(assert (=> b!651603 m!624845))

(declare-fun m!624847 () Bool)

(assert (=> b!651602 m!624847))

(declare-fun m!624849 () Bool)

(assert (=> start!59108 m!624849))

(declare-fun m!624851 () Bool)

(assert (=> start!59108 m!624851))

(declare-fun m!624853 () Bool)

(assert (=> b!651608 m!624853))

(declare-fun m!624855 () Bool)

(assert (=> b!651608 m!624855))

(declare-fun m!624857 () Bool)

(assert (=> b!651608 m!624857))

(assert (=> b!651608 m!624843))

(declare-fun m!624859 () Bool)

(assert (=> b!651608 m!624859))

(assert (=> b!651608 m!624817))

(declare-fun m!624861 () Bool)

(assert (=> b!651608 m!624861))

(assert (=> b!651608 m!624817))

(declare-fun m!624863 () Bool)

(assert (=> b!651608 m!624863))

(declare-fun m!624865 () Bool)

(assert (=> b!651613 m!624865))

(assert (=> b!651612 m!624843))

(declare-fun m!624867 () Bool)

(assert (=> b!651612 m!624867))

(assert (=> b!651595 m!624817))

(declare-fun m!624869 () Bool)

(assert (=> b!651595 m!624869))

(assert (=> b!651595 m!624817))

(assert (=> b!651595 m!624817))

(declare-fun m!624871 () Bool)

(assert (=> b!651595 m!624871))

(declare-fun m!624873 () Bool)

(assert (=> b!651595 m!624873))

(assert (=> b!651595 m!624833))

(assert (=> b!651595 m!624837))

(assert (=> b!651595 m!624817))

(declare-fun m!624875 () Bool)

(assert (=> b!651595 m!624875))

(declare-fun m!624877 () Bool)

(assert (=> b!651595 m!624877))

(assert (=> b!651596 m!624817))

(assert (=> b!651596 m!624817))

(declare-fun m!624879 () Bool)

(assert (=> b!651596 m!624879))

(declare-fun m!624881 () Bool)

(assert (=> b!651599 m!624881))

(assert (=> b!651604 m!624817))

(assert (=> b!651604 m!624817))

(assert (=> b!651604 m!624819))

(check-sat (not b!651595) (not b!651613) (not b!651605) (not start!59108) (not b!651601) (not b!651604) (not b!651600) (not b!651614) (not b!651608) (not b!651606) (not b!651602) (not b!651609) (not b!651599) (not b!651596))
(check-sat)
