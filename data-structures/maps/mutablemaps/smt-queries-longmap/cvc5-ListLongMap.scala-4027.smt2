; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54876 () Bool)

(assert start!54876)

(declare-fun b!599687 () Bool)

(declare-fun res!384810 () Bool)

(declare-fun e!342861 () Bool)

(assert (=> b!599687 (=> (not res!384810) (not e!342861))))

(declare-datatypes ((array!37074 0))(
  ( (array!37075 (arr!17793 (Array (_ BitVec 32) (_ BitVec 64))) (size!18157 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37074)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599687 (= res!384810 (validKeyInArray!0 (select (arr!17793 a!2986) j!136)))))

(declare-fun b!599688 () Bool)

(declare-fun res!384818 () Bool)

(declare-fun e!342868 () Bool)

(assert (=> b!599688 (=> (not res!384818) (not e!342868))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599688 (= res!384818 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17793 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599689 () Bool)

(declare-fun res!384806 () Bool)

(assert (=> b!599689 (=> (not res!384806) (not e!342868))))

(declare-datatypes ((List!11887 0))(
  ( (Nil!11884) (Cons!11883 (h!12928 (_ BitVec 64)) (t!18123 List!11887)) )
))
(declare-fun arrayNoDuplicates!0 (array!37074 (_ BitVec 32) List!11887) Bool)

(assert (=> b!599689 (= res!384806 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11884))))

(declare-fun b!599690 () Bool)

(assert (=> b!599690 (= e!342861 e!342868)))

(declare-fun res!384807 () Bool)

(assert (=> b!599690 (=> (not res!384807) (not e!342868))))

(declare-datatypes ((SeekEntryResult!6240 0))(
  ( (MissingZero!6240 (index!27216 (_ BitVec 32))) (Found!6240 (index!27217 (_ BitVec 32))) (Intermediate!6240 (undefined!7052 Bool) (index!27218 (_ BitVec 32)) (x!56048 (_ BitVec 32))) (Undefined!6240) (MissingVacant!6240 (index!27219 (_ BitVec 32))) )
))
(declare-fun lt!272746 () SeekEntryResult!6240)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599690 (= res!384807 (or (= lt!272746 (MissingZero!6240 i!1108)) (= lt!272746 (MissingVacant!6240 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37074 (_ BitVec 32)) SeekEntryResult!6240)

(assert (=> b!599690 (= lt!272746 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599691 () Bool)

(declare-fun e!342866 () Bool)

(declare-fun e!342865 () Bool)

(assert (=> b!599691 (= e!342866 e!342865)))

(declare-fun res!384808 () Bool)

(assert (=> b!599691 (=> (not res!384808) (not e!342865))))

(declare-fun lt!272743 () SeekEntryResult!6240)

(assert (=> b!599691 (= res!384808 (and (= lt!272743 (Found!6240 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17793 a!2986) index!984) (select (arr!17793 a!2986) j!136))) (not (= (select (arr!17793 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37074 (_ BitVec 32)) SeekEntryResult!6240)

(assert (=> b!599691 (= lt!272743 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17793 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599692 () Bool)

(declare-fun e!342867 () Bool)

(declare-fun e!342856 () Bool)

(assert (=> b!599692 (= e!342867 e!342856)))

(declare-fun res!384800 () Bool)

(assert (=> b!599692 (=> res!384800 e!342856)))

(declare-fun lt!272749 () (_ BitVec 64))

(declare-fun lt!272744 () (_ BitVec 64))

(assert (=> b!599692 (= res!384800 (or (not (= (select (arr!17793 a!2986) j!136) lt!272749)) (not (= (select (arr!17793 a!2986) j!136) lt!272744)) (bvsge j!136 index!984)))))

(declare-fun e!342864 () Bool)

(assert (=> b!599692 e!342864))

(declare-fun res!384816 () Bool)

(assert (=> b!599692 (=> (not res!384816) (not e!342864))))

(assert (=> b!599692 (= res!384816 (= lt!272744 (select (arr!17793 a!2986) j!136)))))

(assert (=> b!599692 (= lt!272744 (select (store (arr!17793 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599693 () Bool)

(declare-fun res!384801 () Bool)

(assert (=> b!599693 (=> (not res!384801) (not e!342861))))

(declare-fun arrayContainsKey!0 (array!37074 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599693 (= res!384801 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599694 () Bool)

(declare-fun res!384812 () Bool)

(declare-fun e!342858 () Bool)

(assert (=> b!599694 (=> res!384812 e!342858)))

(declare-fun contains!2972 (List!11887 (_ BitVec 64)) Bool)

(assert (=> b!599694 (= res!384812 (contains!2972 Nil!11884 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599695 () Bool)

(declare-fun res!384803 () Bool)

(assert (=> b!599695 (=> res!384803 e!342858)))

(declare-fun noDuplicate!286 (List!11887) Bool)

(assert (=> b!599695 (= res!384803 (not (noDuplicate!286 Nil!11884)))))

(declare-fun b!599696 () Bool)

(declare-fun e!342857 () Bool)

(declare-fun e!342860 () Bool)

(assert (=> b!599696 (= e!342857 e!342860)))

(declare-fun res!384815 () Bool)

(assert (=> b!599696 (=> (not res!384815) (not e!342860))))

(declare-fun lt!272751 () array!37074)

(assert (=> b!599696 (= res!384815 (arrayContainsKey!0 lt!272751 (select (arr!17793 a!2986) j!136) j!136))))

(declare-fun b!599697 () Bool)

(declare-fun res!384809 () Bool)

(assert (=> b!599697 (=> (not res!384809) (not e!342868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37074 (_ BitVec 32)) Bool)

(assert (=> b!599697 (= res!384809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599698 () Bool)

(declare-fun res!384817 () Bool)

(assert (=> b!599698 (=> (not res!384817) (not e!342861))))

(assert (=> b!599698 (= res!384817 (and (= (size!18157 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18157 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18157 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599699 () Bool)

(assert (=> b!599699 (= e!342865 (not e!342867))))

(declare-fun res!384813 () Bool)

(assert (=> b!599699 (=> res!384813 e!342867)))

(declare-fun lt!272750 () SeekEntryResult!6240)

(assert (=> b!599699 (= res!384813 (not (= lt!272750 (Found!6240 index!984))))))

(declare-datatypes ((Unit!18904 0))(
  ( (Unit!18905) )
))
(declare-fun lt!272748 () Unit!18904)

(declare-fun e!342859 () Unit!18904)

(assert (=> b!599699 (= lt!272748 e!342859)))

(declare-fun c!67811 () Bool)

(assert (=> b!599699 (= c!67811 (= lt!272750 Undefined!6240))))

(assert (=> b!599699 (= lt!272750 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272749 lt!272751 mask!3053))))

(declare-fun e!342863 () Bool)

(assert (=> b!599699 e!342863))

(declare-fun res!384802 () Bool)

(assert (=> b!599699 (=> (not res!384802) (not e!342863))))

(declare-fun lt!272745 () (_ BitVec 32))

(declare-fun lt!272742 () SeekEntryResult!6240)

(assert (=> b!599699 (= res!384802 (= lt!272742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272745 vacantSpotIndex!68 lt!272749 lt!272751 mask!3053)))))

(assert (=> b!599699 (= lt!272742 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272745 vacantSpotIndex!68 (select (arr!17793 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599699 (= lt!272749 (select (store (arr!17793 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272752 () Unit!18904)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37074 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18904)

(assert (=> b!599699 (= lt!272752 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272745 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599699 (= lt!272745 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599700 () Bool)

(assert (=> b!599700 (= e!342856 e!342858)))

(declare-fun res!384811 () Bool)

(assert (=> b!599700 (=> res!384811 e!342858)))

(assert (=> b!599700 (= res!384811 (or (bvsge (size!18157 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18157 a!2986))))))

(assert (=> b!599700 (arrayNoDuplicates!0 lt!272751 j!136 Nil!11884)))

(declare-fun lt!272753 () Unit!18904)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37074 (_ BitVec 32) (_ BitVec 32)) Unit!18904)

(assert (=> b!599700 (= lt!272753 (lemmaNoDuplicateFromThenFromBigger!0 lt!272751 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599700 (arrayNoDuplicates!0 lt!272751 #b00000000000000000000000000000000 Nil!11884)))

(declare-fun lt!272741 () Unit!18904)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37074 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11887) Unit!18904)

(assert (=> b!599700 (= lt!272741 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11884))))

(assert (=> b!599700 (arrayContainsKey!0 lt!272751 (select (arr!17793 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272754 () Unit!18904)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37074 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18904)

(assert (=> b!599700 (= lt!272754 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272751 (select (arr!17793 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599701 () Bool)

(assert (=> b!599701 (= e!342858 true)))

(declare-fun lt!272747 () Bool)

(assert (=> b!599701 (= lt!272747 (contains!2972 Nil!11884 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599702 () Bool)

(assert (=> b!599702 (= e!342864 e!342857)))

(declare-fun res!384814 () Bool)

(assert (=> b!599702 (=> res!384814 e!342857)))

(assert (=> b!599702 (= res!384814 (or (not (= (select (arr!17793 a!2986) j!136) lt!272749)) (not (= (select (arr!17793 a!2986) j!136) lt!272744)) (bvsge j!136 index!984)))))

(declare-fun b!599703 () Bool)

(assert (=> b!599703 (= e!342860 (arrayContainsKey!0 lt!272751 (select (arr!17793 a!2986) j!136) index!984))))

(declare-fun res!384799 () Bool)

(assert (=> start!54876 (=> (not res!384799) (not e!342861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54876 (= res!384799 (validMask!0 mask!3053))))

(assert (=> start!54876 e!342861))

(assert (=> start!54876 true))

(declare-fun array_inv!13567 (array!37074) Bool)

(assert (=> start!54876 (array_inv!13567 a!2986)))

(declare-fun b!599704 () Bool)

(declare-fun res!384804 () Bool)

(assert (=> b!599704 (=> (not res!384804) (not e!342861))))

(assert (=> b!599704 (= res!384804 (validKeyInArray!0 k!1786))))

(declare-fun b!599705 () Bool)

(assert (=> b!599705 (= e!342863 (= lt!272743 lt!272742))))

(declare-fun b!599706 () Bool)

(declare-fun Unit!18906 () Unit!18904)

(assert (=> b!599706 (= e!342859 Unit!18906)))

(assert (=> b!599706 false))

(declare-fun b!599707 () Bool)

(declare-fun Unit!18907 () Unit!18904)

(assert (=> b!599707 (= e!342859 Unit!18907)))

(declare-fun b!599708 () Bool)

(assert (=> b!599708 (= e!342868 e!342866)))

(declare-fun res!384805 () Bool)

(assert (=> b!599708 (=> (not res!384805) (not e!342866))))

(assert (=> b!599708 (= res!384805 (= (select (store (arr!17793 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599708 (= lt!272751 (array!37075 (store (arr!17793 a!2986) i!1108 k!1786) (size!18157 a!2986)))))

(assert (= (and start!54876 res!384799) b!599698))

(assert (= (and b!599698 res!384817) b!599687))

(assert (= (and b!599687 res!384810) b!599704))

(assert (= (and b!599704 res!384804) b!599693))

(assert (= (and b!599693 res!384801) b!599690))

(assert (= (and b!599690 res!384807) b!599697))

(assert (= (and b!599697 res!384809) b!599689))

(assert (= (and b!599689 res!384806) b!599688))

(assert (= (and b!599688 res!384818) b!599708))

(assert (= (and b!599708 res!384805) b!599691))

(assert (= (and b!599691 res!384808) b!599699))

(assert (= (and b!599699 res!384802) b!599705))

(assert (= (and b!599699 c!67811) b!599706))

(assert (= (and b!599699 (not c!67811)) b!599707))

(assert (= (and b!599699 (not res!384813)) b!599692))

(assert (= (and b!599692 res!384816) b!599702))

(assert (= (and b!599702 (not res!384814)) b!599696))

(assert (= (and b!599696 res!384815) b!599703))

(assert (= (and b!599692 (not res!384800)) b!599700))

(assert (= (and b!599700 (not res!384811)) b!599695))

(assert (= (and b!599695 (not res!384803)) b!599694))

(assert (= (and b!599694 (not res!384812)) b!599701))

(declare-fun m!576975 () Bool)

(assert (=> b!599702 m!576975))

(assert (=> b!599692 m!576975))

(declare-fun m!576977 () Bool)

(assert (=> b!599692 m!576977))

(declare-fun m!576979 () Bool)

(assert (=> b!599692 m!576979))

(assert (=> b!599708 m!576977))

(declare-fun m!576981 () Bool)

(assert (=> b!599708 m!576981))

(declare-fun m!576983 () Bool)

(assert (=> b!599699 m!576983))

(declare-fun m!576985 () Bool)

(assert (=> b!599699 m!576985))

(assert (=> b!599699 m!576975))

(declare-fun m!576987 () Bool)

(assert (=> b!599699 m!576987))

(declare-fun m!576989 () Bool)

(assert (=> b!599699 m!576989))

(declare-fun m!576991 () Bool)

(assert (=> b!599699 m!576991))

(assert (=> b!599699 m!576975))

(declare-fun m!576993 () Bool)

(assert (=> b!599699 m!576993))

(assert (=> b!599699 m!576977))

(assert (=> b!599703 m!576975))

(assert (=> b!599703 m!576975))

(declare-fun m!576995 () Bool)

(assert (=> b!599703 m!576995))

(declare-fun m!576997 () Bool)

(assert (=> b!599704 m!576997))

(declare-fun m!576999 () Bool)

(assert (=> b!599688 m!576999))

(declare-fun m!577001 () Bool)

(assert (=> b!599697 m!577001))

(declare-fun m!577003 () Bool)

(assert (=> start!54876 m!577003))

(declare-fun m!577005 () Bool)

(assert (=> start!54876 m!577005))

(declare-fun m!577007 () Bool)

(assert (=> b!599690 m!577007))

(assert (=> b!599696 m!576975))

(assert (=> b!599696 m!576975))

(declare-fun m!577009 () Bool)

(assert (=> b!599696 m!577009))

(declare-fun m!577011 () Bool)

(assert (=> b!599694 m!577011))

(declare-fun m!577013 () Bool)

(assert (=> b!599701 m!577013))

(declare-fun m!577015 () Bool)

(assert (=> b!599695 m!577015))

(declare-fun m!577017 () Bool)

(assert (=> b!599689 m!577017))

(assert (=> b!599687 m!576975))

(assert (=> b!599687 m!576975))

(declare-fun m!577019 () Bool)

(assert (=> b!599687 m!577019))

(declare-fun m!577021 () Bool)

(assert (=> b!599700 m!577021))

(assert (=> b!599700 m!576975))

(assert (=> b!599700 m!576975))

(declare-fun m!577023 () Bool)

(assert (=> b!599700 m!577023))

(assert (=> b!599700 m!576975))

(declare-fun m!577025 () Bool)

(assert (=> b!599700 m!577025))

(declare-fun m!577027 () Bool)

(assert (=> b!599700 m!577027))

(declare-fun m!577029 () Bool)

(assert (=> b!599700 m!577029))

(declare-fun m!577031 () Bool)

(assert (=> b!599700 m!577031))

(declare-fun m!577033 () Bool)

(assert (=> b!599693 m!577033))

(declare-fun m!577035 () Bool)

(assert (=> b!599691 m!577035))

(assert (=> b!599691 m!576975))

(assert (=> b!599691 m!576975))

(declare-fun m!577037 () Bool)

(assert (=> b!599691 m!577037))

(push 1)

