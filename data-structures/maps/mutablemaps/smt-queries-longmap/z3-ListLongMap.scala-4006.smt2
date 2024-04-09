; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54518 () Bool)

(assert start!54518)

(declare-fun b!594730 () Bool)

(declare-fun res!380845 () Bool)

(declare-fun e!339802 () Bool)

(assert (=> b!594730 (=> (not res!380845) (not e!339802))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36941 0))(
  ( (array!36942 (arr!17731 (Array (_ BitVec 32) (_ BitVec 64))) (size!18095 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36941)

(assert (=> b!594730 (= res!380845 (and (= (size!18095 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18095 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18095 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594731 () Bool)

(declare-fun e!339805 () Bool)

(declare-fun e!339803 () Bool)

(assert (=> b!594731 (= e!339805 e!339803)))

(declare-fun res!380832 () Bool)

(assert (=> b!594731 (=> res!380832 e!339803)))

(declare-fun lt!270068 () (_ BitVec 64))

(declare-fun lt!270064 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594731 (= res!380832 (or (not (= (select (arr!17731 a!2986) j!136) lt!270068)) (not (= (select (arr!17731 a!2986) j!136) lt!270064)) (bvsge j!136 index!984)))))

(declare-fun e!339812 () Bool)

(assert (=> b!594731 e!339812))

(declare-fun res!380831 () Bool)

(assert (=> b!594731 (=> (not res!380831) (not e!339812))))

(assert (=> b!594731 (= res!380831 (= lt!270064 (select (arr!17731 a!2986) j!136)))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!594731 (= lt!270064 (select (store (arr!17731 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!594732 () Bool)

(declare-fun res!380844 () Bool)

(declare-fun e!339814 () Bool)

(assert (=> b!594732 (=> (not res!380844) (not e!339814))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!594732 (= res!380844 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17731 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594734 () Bool)

(declare-fun e!339804 () Bool)

(assert (=> b!594734 (= e!339812 e!339804)))

(declare-fun res!380833 () Bool)

(assert (=> b!594734 (=> res!380833 e!339804)))

(assert (=> b!594734 (= res!380833 (or (not (= (select (arr!17731 a!2986) j!136) lt!270068)) (not (= (select (arr!17731 a!2986) j!136) lt!270064)) (bvsge j!136 index!984)))))

(declare-fun b!594735 () Bool)

(declare-fun e!339808 () Bool)

(declare-fun e!339807 () Bool)

(assert (=> b!594735 (= e!339808 e!339807)))

(declare-fun res!380828 () Bool)

(assert (=> b!594735 (=> (not res!380828) (not e!339807))))

(declare-datatypes ((SeekEntryResult!6178 0))(
  ( (MissingZero!6178 (index!26959 (_ BitVec 32))) (Found!6178 (index!26960 (_ BitVec 32))) (Intermediate!6178 (undefined!6990 Bool) (index!26961 (_ BitVec 32)) (x!55791 (_ BitVec 32))) (Undefined!6178) (MissingVacant!6178 (index!26962 (_ BitVec 32))) )
))
(declare-fun lt!270066 () SeekEntryResult!6178)

(assert (=> b!594735 (= res!380828 (and (= lt!270066 (Found!6178 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17731 a!2986) index!984) (select (arr!17731 a!2986) j!136))) (not (= (select (arr!17731 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36941 (_ BitVec 32)) SeekEntryResult!6178)

(assert (=> b!594735 (= lt!270066 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17731 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594736 () Bool)

(declare-fun lt!270065 () array!36941)

(declare-fun e!339813 () Bool)

(declare-fun arrayContainsKey!0 (array!36941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594736 (= e!339813 (arrayContainsKey!0 lt!270065 (select (arr!17731 a!2986) j!136) index!984))))

(declare-fun b!594737 () Bool)

(declare-fun e!339806 () Bool)

(declare-fun lt!270071 () SeekEntryResult!6178)

(assert (=> b!594737 (= e!339806 (= lt!270066 lt!270071))))

(declare-fun b!594738 () Bool)

(declare-fun e!339811 () Bool)

(assert (=> b!594738 (= e!339803 e!339811)))

(declare-fun res!380829 () Bool)

(assert (=> b!594738 (=> res!380829 e!339811)))

(assert (=> b!594738 (= res!380829 (or (bvsge (size!18095 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18095 a!2986))))))

(assert (=> b!594738 (arrayContainsKey!0 lt!270065 (select (arr!17731 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18656 0))(
  ( (Unit!18657) )
))
(declare-fun lt!270072 () Unit!18656)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36941 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18656)

(assert (=> b!594738 (= lt!270072 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270065 (select (arr!17731 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594739 () Bool)

(declare-fun res!380827 () Bool)

(assert (=> b!594739 (=> (not res!380827) (not e!339802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594739 (= res!380827 (validKeyInArray!0 k0!1786))))

(declare-fun b!594740 () Bool)

(assert (=> b!594740 (= e!339811 true)))

(declare-fun lt!270063 () Bool)

(declare-datatypes ((List!11825 0))(
  ( (Nil!11822) (Cons!11821 (h!12866 (_ BitVec 64)) (t!18061 List!11825)) )
))
(declare-fun contains!2929 (List!11825 (_ BitVec 64)) Bool)

(assert (=> b!594740 (= lt!270063 (contains!2929 Nil!11822 k0!1786))))

(declare-fun b!594741 () Bool)

(declare-fun res!380846 () Bool)

(assert (=> b!594741 (=> (not res!380846) (not e!339802))))

(assert (=> b!594741 (= res!380846 (validKeyInArray!0 (select (arr!17731 a!2986) j!136)))))

(declare-fun b!594742 () Bool)

(assert (=> b!594742 (= e!339804 e!339813)))

(declare-fun res!380834 () Bool)

(assert (=> b!594742 (=> (not res!380834) (not e!339813))))

(assert (=> b!594742 (= res!380834 (arrayContainsKey!0 lt!270065 (select (arr!17731 a!2986) j!136) j!136))))

(declare-fun b!594743 () Bool)

(assert (=> b!594743 (= e!339814 e!339808)))

(declare-fun res!380835 () Bool)

(assert (=> b!594743 (=> (not res!380835) (not e!339808))))

(assert (=> b!594743 (= res!380835 (= (select (store (arr!17731 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594743 (= lt!270065 (array!36942 (store (arr!17731 a!2986) i!1108 k0!1786) (size!18095 a!2986)))))

(declare-fun b!594744 () Bool)

(declare-fun res!380838 () Bool)

(assert (=> b!594744 (=> res!380838 e!339811)))

(assert (=> b!594744 (= res!380838 (contains!2929 Nil!11822 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594745 () Bool)

(declare-fun res!380841 () Bool)

(assert (=> b!594745 (=> res!380841 e!339811)))

(declare-fun noDuplicate!245 (List!11825) Bool)

(assert (=> b!594745 (= res!380841 (not (noDuplicate!245 Nil!11822)))))

(declare-fun b!594746 () Bool)

(declare-fun e!339810 () Unit!18656)

(declare-fun Unit!18658 () Unit!18656)

(assert (=> b!594746 (= e!339810 Unit!18658)))

(assert (=> b!594746 false))

(declare-fun b!594747 () Bool)

(assert (=> b!594747 (= e!339802 e!339814)))

(declare-fun res!380842 () Bool)

(assert (=> b!594747 (=> (not res!380842) (not e!339814))))

(declare-fun lt!270062 () SeekEntryResult!6178)

(assert (=> b!594747 (= res!380842 (or (= lt!270062 (MissingZero!6178 i!1108)) (= lt!270062 (MissingVacant!6178 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36941 (_ BitVec 32)) SeekEntryResult!6178)

(assert (=> b!594747 (= lt!270062 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!594748 () Bool)

(declare-fun Unit!18659 () Unit!18656)

(assert (=> b!594748 (= e!339810 Unit!18659)))

(declare-fun b!594749 () Bool)

(declare-fun res!380830 () Bool)

(assert (=> b!594749 (=> (not res!380830) (not e!339814))))

(declare-fun arrayNoDuplicates!0 (array!36941 (_ BitVec 32) List!11825) Bool)

(assert (=> b!594749 (= res!380830 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11822))))

(declare-fun b!594750 () Bool)

(declare-fun res!380839 () Bool)

(assert (=> b!594750 (=> (not res!380839) (not e!339802))))

(assert (=> b!594750 (= res!380839 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!380840 () Bool)

(assert (=> start!54518 (=> (not res!380840) (not e!339802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54518 (= res!380840 (validMask!0 mask!3053))))

(assert (=> start!54518 e!339802))

(assert (=> start!54518 true))

(declare-fun array_inv!13505 (array!36941) Bool)

(assert (=> start!54518 (array_inv!13505 a!2986)))

(declare-fun b!594733 () Bool)

(declare-fun res!380843 () Bool)

(assert (=> b!594733 (=> res!380843 e!339811)))

(assert (=> b!594733 (= res!380843 (contains!2929 Nil!11822 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594751 () Bool)

(assert (=> b!594751 (= e!339807 (not e!339805))))

(declare-fun res!380836 () Bool)

(assert (=> b!594751 (=> res!380836 e!339805)))

(declare-fun lt!270070 () SeekEntryResult!6178)

(assert (=> b!594751 (= res!380836 (not (= lt!270070 (Found!6178 index!984))))))

(declare-fun lt!270061 () Unit!18656)

(assert (=> b!594751 (= lt!270061 e!339810)))

(declare-fun c!67319 () Bool)

(assert (=> b!594751 (= c!67319 (= lt!270070 Undefined!6178))))

(assert (=> b!594751 (= lt!270070 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270068 lt!270065 mask!3053))))

(assert (=> b!594751 e!339806))

(declare-fun res!380837 () Bool)

(assert (=> b!594751 (=> (not res!380837) (not e!339806))))

(declare-fun lt!270069 () (_ BitVec 32))

(assert (=> b!594751 (= res!380837 (= lt!270071 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270069 vacantSpotIndex!68 lt!270068 lt!270065 mask!3053)))))

(assert (=> b!594751 (= lt!270071 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270069 vacantSpotIndex!68 (select (arr!17731 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!594751 (= lt!270068 (select (store (arr!17731 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270067 () Unit!18656)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36941 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18656)

(assert (=> b!594751 (= lt!270067 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270069 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594751 (= lt!270069 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594752 () Bool)

(declare-fun res!380826 () Bool)

(assert (=> b!594752 (=> (not res!380826) (not e!339814))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36941 (_ BitVec 32)) Bool)

(assert (=> b!594752 (= res!380826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54518 res!380840) b!594730))

(assert (= (and b!594730 res!380845) b!594741))

(assert (= (and b!594741 res!380846) b!594739))

(assert (= (and b!594739 res!380827) b!594750))

(assert (= (and b!594750 res!380839) b!594747))

(assert (= (and b!594747 res!380842) b!594752))

(assert (= (and b!594752 res!380826) b!594749))

(assert (= (and b!594749 res!380830) b!594732))

(assert (= (and b!594732 res!380844) b!594743))

(assert (= (and b!594743 res!380835) b!594735))

(assert (= (and b!594735 res!380828) b!594751))

(assert (= (and b!594751 res!380837) b!594737))

(assert (= (and b!594751 c!67319) b!594746))

(assert (= (and b!594751 (not c!67319)) b!594748))

(assert (= (and b!594751 (not res!380836)) b!594731))

(assert (= (and b!594731 res!380831) b!594734))

(assert (= (and b!594734 (not res!380833)) b!594742))

(assert (= (and b!594742 res!380834) b!594736))

(assert (= (and b!594731 (not res!380832)) b!594738))

(assert (= (and b!594738 (not res!380829)) b!594745))

(assert (= (and b!594745 (not res!380841)) b!594744))

(assert (= (and b!594744 (not res!380838)) b!594733))

(assert (= (and b!594733 (not res!380843)) b!594740))

(declare-fun m!572509 () Bool)

(assert (=> b!594736 m!572509))

(assert (=> b!594736 m!572509))

(declare-fun m!572511 () Bool)

(assert (=> b!594736 m!572511))

(declare-fun m!572513 () Bool)

(assert (=> b!594750 m!572513))

(declare-fun m!572515 () Bool)

(assert (=> b!594747 m!572515))

(assert (=> b!594734 m!572509))

(declare-fun m!572517 () Bool)

(assert (=> b!594749 m!572517))

(assert (=> b!594731 m!572509))

(declare-fun m!572519 () Bool)

(assert (=> b!594731 m!572519))

(declare-fun m!572521 () Bool)

(assert (=> b!594731 m!572521))

(declare-fun m!572523 () Bool)

(assert (=> b!594739 m!572523))

(declare-fun m!572525 () Bool)

(assert (=> b!594751 m!572525))

(declare-fun m!572527 () Bool)

(assert (=> b!594751 m!572527))

(assert (=> b!594751 m!572509))

(declare-fun m!572529 () Bool)

(assert (=> b!594751 m!572529))

(assert (=> b!594751 m!572519))

(declare-fun m!572531 () Bool)

(assert (=> b!594751 m!572531))

(declare-fun m!572533 () Bool)

(assert (=> b!594751 m!572533))

(assert (=> b!594751 m!572509))

(declare-fun m!572535 () Bool)

(assert (=> b!594751 m!572535))

(assert (=> b!594743 m!572519))

(declare-fun m!572537 () Bool)

(assert (=> b!594743 m!572537))

(declare-fun m!572539 () Bool)

(assert (=> b!594740 m!572539))

(declare-fun m!572541 () Bool)

(assert (=> b!594745 m!572541))

(assert (=> b!594738 m!572509))

(assert (=> b!594738 m!572509))

(declare-fun m!572543 () Bool)

(assert (=> b!594738 m!572543))

(assert (=> b!594738 m!572509))

(declare-fun m!572545 () Bool)

(assert (=> b!594738 m!572545))

(declare-fun m!572547 () Bool)

(assert (=> b!594752 m!572547))

(declare-fun m!572549 () Bool)

(assert (=> b!594733 m!572549))

(assert (=> b!594741 m!572509))

(assert (=> b!594741 m!572509))

(declare-fun m!572551 () Bool)

(assert (=> b!594741 m!572551))

(declare-fun m!572553 () Bool)

(assert (=> start!54518 m!572553))

(declare-fun m!572555 () Bool)

(assert (=> start!54518 m!572555))

(declare-fun m!572557 () Bool)

(assert (=> b!594735 m!572557))

(assert (=> b!594735 m!572509))

(assert (=> b!594735 m!572509))

(declare-fun m!572559 () Bool)

(assert (=> b!594735 m!572559))

(declare-fun m!572561 () Bool)

(assert (=> b!594744 m!572561))

(assert (=> b!594742 m!572509))

(assert (=> b!594742 m!572509))

(declare-fun m!572563 () Bool)

(assert (=> b!594742 m!572563))

(declare-fun m!572565 () Bool)

(assert (=> b!594732 m!572565))

(check-sat (not b!594742) (not b!594740) (not b!594744) (not b!594733) (not b!594739) (not b!594735) (not b!594747) (not b!594751) (not b!594750) (not b!594752) (not b!594741) (not b!594745) (not b!594738) (not b!594736) (not b!594749) (not start!54518))
(check-sat)
