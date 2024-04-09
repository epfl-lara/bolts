; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56190 () Bool)

(assert start!56190)

(declare-fun b!621831 () Bool)

(declare-fun res!400836 () Bool)

(declare-fun e!356677 () Bool)

(assert (=> b!621831 (=> (not res!400836) (not e!356677))))

(declare-datatypes ((array!37623 0))(
  ( (array!37624 (arr!18054 (Array (_ BitVec 32) (_ BitVec 64))) (size!18418 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37623)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37623 (_ BitVec 32)) Bool)

(assert (=> b!621831 (= res!400836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621832 () Bool)

(declare-datatypes ((Unit!20830 0))(
  ( (Unit!20831) )
))
(declare-fun e!356664 () Unit!20830)

(declare-fun Unit!20832 () Unit!20830)

(assert (=> b!621832 (= e!356664 Unit!20832)))

(declare-fun b!621833 () Bool)

(declare-fun Unit!20833 () Unit!20830)

(assert (=> b!621833 (= e!356664 Unit!20833)))

(assert (=> b!621833 false))

(declare-fun b!621834 () Bool)

(declare-fun res!400841 () Bool)

(declare-fun e!356672 () Bool)

(assert (=> b!621834 (=> (not res!400841) (not e!356672))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621834 (= res!400841 (validKeyInArray!0 k!1786))))

(declare-fun b!621835 () Bool)

(declare-fun e!356671 () Bool)

(declare-datatypes ((SeekEntryResult!6501 0))(
  ( (MissingZero!6501 (index!28287 (_ BitVec 32))) (Found!6501 (index!28288 (_ BitVec 32))) (Intermediate!6501 (undefined!7313 Bool) (index!28289 (_ BitVec 32)) (x!57086 (_ BitVec 32))) (Undefined!6501) (MissingVacant!6501 (index!28290 (_ BitVec 32))) )
))
(declare-fun lt!288024 () SeekEntryResult!6501)

(declare-fun lt!288022 () SeekEntryResult!6501)

(assert (=> b!621835 (= e!356671 (= lt!288024 lt!288022))))

(declare-fun res!400842 () Bool)

(assert (=> start!56190 (=> (not res!400842) (not e!356672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56190 (= res!400842 (validMask!0 mask!3053))))

(assert (=> start!56190 e!356672))

(assert (=> start!56190 true))

(declare-fun array_inv!13828 (array!37623) Bool)

(assert (=> start!56190 (array_inv!13828 a!2986)))

(declare-fun b!621836 () Bool)

(declare-fun res!400831 () Bool)

(assert (=> b!621836 (=> (not res!400831) (not e!356672))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!621836 (= res!400831 (and (= (size!18418 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18418 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18418 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621837 () Bool)

(declare-fun e!356667 () Unit!20830)

(declare-fun Unit!20834 () Unit!20830)

(assert (=> b!621837 (= e!356667 Unit!20834)))

(declare-fun b!621838 () Bool)

(declare-fun res!400835 () Bool)

(assert (=> b!621838 (=> (not res!400835) (not e!356672))))

(declare-fun arrayContainsKey!0 (array!37623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621838 (= res!400835 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621839 () Bool)

(declare-fun e!356676 () Unit!20830)

(declare-fun Unit!20835 () Unit!20830)

(assert (=> b!621839 (= e!356676 Unit!20835)))

(declare-fun lt!288025 () array!37623)

(declare-fun b!621840 () Bool)

(declare-fun e!356668 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621840 (= e!356668 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) index!984))))

(declare-fun b!621841 () Bool)

(declare-fun e!356669 () Bool)

(assert (=> b!621841 (= e!356677 e!356669)))

(declare-fun res!400844 () Bool)

(assert (=> b!621841 (=> (not res!400844) (not e!356669))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!621841 (= res!400844 (= (select (store (arr!18054 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621841 (= lt!288025 (array!37624 (store (arr!18054 a!2986) i!1108 k!1786) (size!18418 a!2986)))))

(declare-fun b!621842 () Bool)

(declare-fun Unit!20836 () Unit!20830)

(assert (=> b!621842 (= e!356667 Unit!20836)))

(declare-fun res!400832 () Bool)

(assert (=> b!621842 (= res!400832 (= (select (store (arr!18054 a!2986) i!1108 k!1786) index!984) (select (arr!18054 a!2986) j!136)))))

(declare-fun e!356675 () Bool)

(assert (=> b!621842 (=> (not res!400832) (not e!356675))))

(assert (=> b!621842 e!356675))

(declare-fun c!70870 () Bool)

(assert (=> b!621842 (= c!70870 (bvslt j!136 index!984))))

(declare-fun lt!288029 () Unit!20830)

(assert (=> b!621842 (= lt!288029 e!356676)))

(declare-fun c!70871 () Bool)

(assert (=> b!621842 (= c!70871 (bvslt index!984 j!136))))

(declare-fun lt!288034 () Unit!20830)

(declare-fun e!356666 () Unit!20830)

(assert (=> b!621842 (= lt!288034 e!356666)))

(assert (=> b!621842 false))

(declare-fun b!621843 () Bool)

(declare-fun res!400837 () Bool)

(assert (=> b!621843 (= res!400837 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) j!136))))

(declare-fun e!356665 () Bool)

(assert (=> b!621843 (=> (not res!400837) (not e!356665))))

(declare-fun e!356674 () Bool)

(assert (=> b!621843 (= e!356674 e!356665)))

(declare-fun b!621844 () Bool)

(declare-fun res!400839 () Bool)

(assert (=> b!621844 (=> (not res!400839) (not e!356677))))

(declare-datatypes ((List!12148 0))(
  ( (Nil!12145) (Cons!12144 (h!13189 (_ BitVec 64)) (t!18384 List!12148)) )
))
(declare-fun arrayNoDuplicates!0 (array!37623 (_ BitVec 32) List!12148) Bool)

(assert (=> b!621844 (= res!400839 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12145))))

(declare-fun b!621845 () Bool)

(declare-fun Unit!20837 () Unit!20830)

(assert (=> b!621845 (= e!356666 Unit!20837)))

(declare-fun b!621846 () Bool)

(declare-fun res!400840 () Bool)

(assert (=> b!621846 (= res!400840 (bvsge j!136 index!984))))

(assert (=> b!621846 (=> res!400840 e!356674)))

(assert (=> b!621846 (= e!356675 e!356674)))

(declare-fun b!621847 () Bool)

(declare-fun res!400838 () Bool)

(assert (=> b!621847 (=> (not res!400838) (not e!356677))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!621847 (= res!400838 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18054 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621848 () Bool)

(assert (=> b!621848 false))

(declare-fun lt!288033 () Unit!20830)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37623 (_ BitVec 64) (_ BitVec 32) List!12148) Unit!20830)

(assert (=> b!621848 (= lt!288033 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288025 (select (arr!18054 a!2986) j!136) j!136 Nil!12145))))

(assert (=> b!621848 (arrayNoDuplicates!0 lt!288025 j!136 Nil!12145)))

(declare-fun lt!288036 () Unit!20830)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37623 (_ BitVec 32) (_ BitVec 32)) Unit!20830)

(assert (=> b!621848 (= lt!288036 (lemmaNoDuplicateFromThenFromBigger!0 lt!288025 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621848 (arrayNoDuplicates!0 lt!288025 #b00000000000000000000000000000000 Nil!12145)))

(declare-fun lt!288035 () Unit!20830)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37623 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12148) Unit!20830)

(assert (=> b!621848 (= lt!288035 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12145))))

(assert (=> b!621848 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288028 () Unit!20830)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37623 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20830)

(assert (=> b!621848 (= lt!288028 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288025 (select (arr!18054 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20838 () Unit!20830)

(assert (=> b!621848 (= e!356676 Unit!20838)))

(declare-fun b!621849 () Bool)

(declare-fun e!356670 () Bool)

(assert (=> b!621849 (= e!356669 e!356670)))

(declare-fun res!400834 () Bool)

(assert (=> b!621849 (=> (not res!400834) (not e!356670))))

(assert (=> b!621849 (= res!400834 (and (= lt!288024 (Found!6501 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18054 a!2986) index!984) (select (arr!18054 a!2986) j!136))) (not (= (select (arr!18054 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37623 (_ BitVec 32)) SeekEntryResult!6501)

(assert (=> b!621849 (= lt!288024 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18054 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621850 () Bool)

(assert (=> b!621850 (= e!356665 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) index!984))))

(declare-fun b!621851 () Bool)

(declare-fun res!400830 () Bool)

(assert (=> b!621851 (=> (not res!400830) (not e!356672))))

(assert (=> b!621851 (= res!400830 (validKeyInArray!0 (select (arr!18054 a!2986) j!136)))))

(declare-fun b!621852 () Bool)

(assert (=> b!621852 false))

(declare-fun lt!288018 () Unit!20830)

(assert (=> b!621852 (= lt!288018 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288025 (select (arr!18054 a!2986) j!136) index!984 Nil!12145))))

(assert (=> b!621852 (arrayNoDuplicates!0 lt!288025 index!984 Nil!12145)))

(declare-fun lt!288030 () Unit!20830)

(assert (=> b!621852 (= lt!288030 (lemmaNoDuplicateFromThenFromBigger!0 lt!288025 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621852 (arrayNoDuplicates!0 lt!288025 #b00000000000000000000000000000000 Nil!12145)))

(declare-fun lt!288026 () Unit!20830)

(assert (=> b!621852 (= lt!288026 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12145))))

(assert (=> b!621852 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288017 () Unit!20830)

(assert (=> b!621852 (= lt!288017 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288025 (select (arr!18054 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!621852 e!356668))

(declare-fun res!400843 () Bool)

(assert (=> b!621852 (=> (not res!400843) (not e!356668))))

(assert (=> b!621852 (= res!400843 (arrayContainsKey!0 lt!288025 (select (arr!18054 a!2986) j!136) j!136))))

(declare-fun Unit!20839 () Unit!20830)

(assert (=> b!621852 (= e!356666 Unit!20839)))

(declare-fun b!621853 () Bool)

(assert (=> b!621853 (= e!356672 e!356677)))

(declare-fun res!400829 () Bool)

(assert (=> b!621853 (=> (not res!400829) (not e!356677))))

(declare-fun lt!288032 () SeekEntryResult!6501)

(assert (=> b!621853 (= res!400829 (or (= lt!288032 (MissingZero!6501 i!1108)) (= lt!288032 (MissingVacant!6501 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37623 (_ BitVec 32)) SeekEntryResult!6501)

(assert (=> b!621853 (= lt!288032 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621854 () Bool)

(declare-fun lt!288031 () SeekEntryResult!6501)

(assert (=> b!621854 (= e!356670 (not (or (= lt!288031 (MissingVacant!6501 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!288027 () Unit!20830)

(assert (=> b!621854 (= lt!288027 e!356667)))

(declare-fun c!70869 () Bool)

(assert (=> b!621854 (= c!70869 (= lt!288031 (Found!6501 index!984)))))

(declare-fun lt!288019 () Unit!20830)

(assert (=> b!621854 (= lt!288019 e!356664)))

(declare-fun c!70868 () Bool)

(assert (=> b!621854 (= c!70868 (= lt!288031 Undefined!6501))))

(declare-fun lt!288021 () (_ BitVec 64))

(assert (=> b!621854 (= lt!288031 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288021 lt!288025 mask!3053))))

(assert (=> b!621854 e!356671))

(declare-fun res!400833 () Bool)

(assert (=> b!621854 (=> (not res!400833) (not e!356671))))

(declare-fun lt!288020 () (_ BitVec 32))

(assert (=> b!621854 (= res!400833 (= lt!288022 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288020 vacantSpotIndex!68 lt!288021 lt!288025 mask!3053)))))

(assert (=> b!621854 (= lt!288022 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288020 vacantSpotIndex!68 (select (arr!18054 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621854 (= lt!288021 (select (store (arr!18054 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288023 () Unit!20830)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37623 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20830)

(assert (=> b!621854 (= lt!288023 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288020 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621854 (= lt!288020 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!56190 res!400842) b!621836))

(assert (= (and b!621836 res!400831) b!621851))

(assert (= (and b!621851 res!400830) b!621834))

(assert (= (and b!621834 res!400841) b!621838))

(assert (= (and b!621838 res!400835) b!621853))

(assert (= (and b!621853 res!400829) b!621831))

(assert (= (and b!621831 res!400836) b!621844))

(assert (= (and b!621844 res!400839) b!621847))

(assert (= (and b!621847 res!400838) b!621841))

(assert (= (and b!621841 res!400844) b!621849))

(assert (= (and b!621849 res!400834) b!621854))

(assert (= (and b!621854 res!400833) b!621835))

(assert (= (and b!621854 c!70868) b!621833))

(assert (= (and b!621854 (not c!70868)) b!621832))

(assert (= (and b!621854 c!70869) b!621842))

(assert (= (and b!621854 (not c!70869)) b!621837))

(assert (= (and b!621842 res!400832) b!621846))

(assert (= (and b!621846 (not res!400840)) b!621843))

(assert (= (and b!621843 res!400837) b!621850))

(assert (= (and b!621842 c!70870) b!621848))

(assert (= (and b!621842 (not c!70870)) b!621839))

(assert (= (and b!621842 c!70871) b!621852))

(assert (= (and b!621842 (not c!70871)) b!621845))

(assert (= (and b!621852 res!400843) b!621840))

(declare-fun m!597759 () Bool)

(assert (=> b!621854 m!597759))

(declare-fun m!597761 () Bool)

(assert (=> b!621854 m!597761))

(declare-fun m!597763 () Bool)

(assert (=> b!621854 m!597763))

(declare-fun m!597765 () Bool)

(assert (=> b!621854 m!597765))

(assert (=> b!621854 m!597763))

(declare-fun m!597767 () Bool)

(assert (=> b!621854 m!597767))

(declare-fun m!597769 () Bool)

(assert (=> b!621854 m!597769))

(declare-fun m!597771 () Bool)

(assert (=> b!621854 m!597771))

(declare-fun m!597773 () Bool)

(assert (=> b!621854 m!597773))

(declare-fun m!597775 () Bool)

(assert (=> start!56190 m!597775))

(declare-fun m!597777 () Bool)

(assert (=> start!56190 m!597777))

(assert (=> b!621843 m!597763))

(assert (=> b!621843 m!597763))

(declare-fun m!597779 () Bool)

(assert (=> b!621843 m!597779))

(declare-fun m!597781 () Bool)

(assert (=> b!621831 m!597781))

(declare-fun m!597783 () Bool)

(assert (=> b!621853 m!597783))

(declare-fun m!597785 () Bool)

(assert (=> b!621834 m!597785))

(declare-fun m!597787 () Bool)

(assert (=> b!621852 m!597787))

(assert (=> b!621852 m!597763))

(assert (=> b!621852 m!597763))

(declare-fun m!597789 () Bool)

(assert (=> b!621852 m!597789))

(declare-fun m!597791 () Bool)

(assert (=> b!621852 m!597791))

(assert (=> b!621852 m!597763))

(declare-fun m!597793 () Bool)

(assert (=> b!621852 m!597793))

(assert (=> b!621852 m!597763))

(assert (=> b!621852 m!597779))

(assert (=> b!621852 m!597763))

(declare-fun m!597795 () Bool)

(assert (=> b!621852 m!597795))

(declare-fun m!597797 () Bool)

(assert (=> b!621852 m!597797))

(declare-fun m!597799 () Bool)

(assert (=> b!621852 m!597799))

(declare-fun m!597801 () Bool)

(assert (=> b!621838 m!597801))

(declare-fun m!597803 () Bool)

(assert (=> b!621847 m!597803))

(assert (=> b!621850 m!597763))

(assert (=> b!621850 m!597763))

(declare-fun m!597805 () Bool)

(assert (=> b!621850 m!597805))

(assert (=> b!621841 m!597767))

(declare-fun m!597807 () Bool)

(assert (=> b!621841 m!597807))

(declare-fun m!597809 () Bool)

(assert (=> b!621849 m!597809))

(assert (=> b!621849 m!597763))

(assert (=> b!621849 m!597763))

(declare-fun m!597811 () Bool)

(assert (=> b!621849 m!597811))

(declare-fun m!597813 () Bool)

(assert (=> b!621844 m!597813))

(assert (=> b!621851 m!597763))

(assert (=> b!621851 m!597763))

(declare-fun m!597815 () Bool)

(assert (=> b!621851 m!597815))

(assert (=> b!621848 m!597787))

(declare-fun m!597817 () Bool)

(assert (=> b!621848 m!597817))

(assert (=> b!621848 m!597763))

(declare-fun m!597819 () Bool)

(assert (=> b!621848 m!597819))

(assert (=> b!621848 m!597763))

(declare-fun m!597821 () Bool)

(assert (=> b!621848 m!597821))

(assert (=> b!621848 m!597763))

(declare-fun m!597823 () Bool)

(assert (=> b!621848 m!597823))

(assert (=> b!621848 m!597763))

(declare-fun m!597825 () Bool)

(assert (=> b!621848 m!597825))

(assert (=> b!621848 m!597799))

(assert (=> b!621842 m!597767))

(declare-fun m!597827 () Bool)

(assert (=> b!621842 m!597827))

(assert (=> b!621842 m!597763))

(assert (=> b!621840 m!597763))

(assert (=> b!621840 m!597763))

(assert (=> b!621840 m!597805))

(push 1)

