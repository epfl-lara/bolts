; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56162 () Bool)

(assert start!56162)

(declare-fun b!620823 () Bool)

(declare-datatypes ((Unit!20690 0))(
  ( (Unit!20691) )
))
(declare-fun e!356077 () Unit!20690)

(declare-fun Unit!20692 () Unit!20690)

(assert (=> b!620823 (= e!356077 Unit!20692)))

(declare-fun b!620824 () Bool)

(declare-fun res!400171 () Bool)

(declare-fun e!356088 () Bool)

(assert (=> b!620824 (=> (not res!400171) (not e!356088))))

(declare-datatypes ((array!37595 0))(
  ( (array!37596 (arr!18040 (Array (_ BitVec 32) (_ BitVec 64))) (size!18404 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37595)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620824 (= res!400171 (validKeyInArray!0 (select (arr!18040 a!2986) j!136)))))

(declare-fun b!620825 () Bool)

(declare-fun res!400160 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620825 (= res!400160 (bvsge j!136 index!984))))

(declare-fun e!356076 () Bool)

(assert (=> b!620825 (=> res!400160 e!356076)))

(declare-fun e!356082 () Bool)

(assert (=> b!620825 (= e!356082 e!356076)))

(declare-fun b!620826 () Bool)

(declare-fun res!400161 () Bool)

(assert (=> b!620826 (=> (not res!400161) (not e!356088))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!620826 (= res!400161 (and (= (size!18404 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18404 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18404 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620827 () Bool)

(declare-fun e!356083 () Unit!20690)

(declare-fun Unit!20693 () Unit!20690)

(assert (=> b!620827 (= e!356083 Unit!20693)))

(declare-fun b!620828 () Bool)

(declare-fun e!356087 () Bool)

(declare-fun lt!287179 () array!37595)

(declare-fun arrayContainsKey!0 (array!37595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620828 (= e!356087 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) index!984))))

(declare-fun b!620829 () Bool)

(declare-fun res!400162 () Bool)

(declare-fun e!356089 () Bool)

(assert (=> b!620829 (=> (not res!400162) (not e!356089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37595 (_ BitVec 32)) Bool)

(assert (=> b!620829 (= res!400162 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620830 () Bool)

(declare-fun res!400157 () Bool)

(assert (=> b!620830 (=> (not res!400157) (not e!356088))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!620830 (= res!400157 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620831 () Bool)

(declare-fun res!400170 () Bool)

(assert (=> b!620831 (=> (not res!400170) (not e!356089))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620831 (= res!400170 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18040 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620832 () Bool)

(declare-fun e!356086 () Bool)

(declare-datatypes ((SeekEntryResult!6487 0))(
  ( (MissingZero!6487 (index!28231 (_ BitVec 32))) (Found!6487 (index!28232 (_ BitVec 32))) (Intermediate!6487 (undefined!7299 Bool) (index!28233 (_ BitVec 32)) (x!57032 (_ BitVec 32))) (Undefined!6487) (MissingVacant!6487 (index!28234 (_ BitVec 32))) )
))
(declare-fun lt!287181 () SeekEntryResult!6487)

(declare-fun lt!287190 () SeekEntryResult!6487)

(assert (=> b!620832 (= e!356086 (= lt!287181 lt!287190))))

(declare-fun b!620833 () Bool)

(assert (=> b!620833 (= e!356088 e!356089)))

(declare-fun res!400168 () Bool)

(assert (=> b!620833 (=> (not res!400168) (not e!356089))))

(declare-fun lt!287178 () SeekEntryResult!6487)

(assert (=> b!620833 (= res!400168 (or (= lt!287178 (MissingZero!6487 i!1108)) (= lt!287178 (MissingVacant!6487 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37595 (_ BitVec 32)) SeekEntryResult!6487)

(assert (=> b!620833 (= lt!287178 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!620834 () Bool)

(declare-fun e!356084 () Unit!20690)

(declare-fun Unit!20694 () Unit!20690)

(assert (=> b!620834 (= e!356084 Unit!20694)))

(declare-fun res!400166 () Bool)

(assert (=> b!620834 (= res!400166 (= (select (store (arr!18040 a!2986) i!1108 k0!1786) index!984) (select (arr!18040 a!2986) j!136)))))

(assert (=> b!620834 (=> (not res!400166) (not e!356082))))

(assert (=> b!620834 e!356082))

(declare-fun c!70702 () Bool)

(assert (=> b!620834 (= c!70702 (bvslt j!136 index!984))))

(declare-fun lt!287191 () Unit!20690)

(assert (=> b!620834 (= lt!287191 e!356083)))

(declare-fun c!70700 () Bool)

(assert (=> b!620834 (= c!70700 (bvslt index!984 j!136))))

(declare-fun lt!287186 () Unit!20690)

(declare-fun e!356080 () Unit!20690)

(assert (=> b!620834 (= lt!287186 e!356080)))

(assert (=> b!620834 false))

(declare-fun b!620835 () Bool)

(declare-fun Unit!20695 () Unit!20690)

(assert (=> b!620835 (= e!356084 Unit!20695)))

(declare-fun res!400172 () Bool)

(assert (=> start!56162 (=> (not res!400172) (not e!356088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56162 (= res!400172 (validMask!0 mask!3053))))

(assert (=> start!56162 e!356088))

(assert (=> start!56162 true))

(declare-fun array_inv!13814 (array!37595) Bool)

(assert (=> start!56162 (array_inv!13814 a!2986)))

(declare-fun b!620836 () Bool)

(declare-fun res!400164 () Bool)

(assert (=> b!620836 (=> (not res!400164) (not e!356088))))

(assert (=> b!620836 (= res!400164 (validKeyInArray!0 k0!1786))))

(declare-fun b!620837 () Bool)

(assert (=> b!620837 false))

(declare-fun lt!287177 () Unit!20690)

(declare-datatypes ((List!12134 0))(
  ( (Nil!12131) (Cons!12130 (h!13175 (_ BitVec 64)) (t!18370 List!12134)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37595 (_ BitVec 64) (_ BitVec 32) List!12134) Unit!20690)

(assert (=> b!620837 (= lt!287177 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287179 (select (arr!18040 a!2986) j!136) index!984 Nil!12131))))

(declare-fun arrayNoDuplicates!0 (array!37595 (_ BitVec 32) List!12134) Bool)

(assert (=> b!620837 (arrayNoDuplicates!0 lt!287179 index!984 Nil!12131)))

(declare-fun lt!287187 () Unit!20690)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37595 (_ BitVec 32) (_ BitVec 32)) Unit!20690)

(assert (=> b!620837 (= lt!287187 (lemmaNoDuplicateFromThenFromBigger!0 lt!287179 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620837 (arrayNoDuplicates!0 lt!287179 #b00000000000000000000000000000000 Nil!12131)))

(declare-fun lt!287189 () Unit!20690)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12134) Unit!20690)

(assert (=> b!620837 (= lt!287189 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12131))))

(assert (=> b!620837 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287182 () Unit!20690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20690)

(assert (=> b!620837 (= lt!287182 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287179 (select (arr!18040 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!620837 e!356087))

(declare-fun res!400165 () Bool)

(assert (=> b!620837 (=> (not res!400165) (not e!356087))))

(assert (=> b!620837 (= res!400165 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) j!136))))

(declare-fun Unit!20696 () Unit!20690)

(assert (=> b!620837 (= e!356080 Unit!20696)))

(declare-fun b!620838 () Bool)

(declare-fun res!400167 () Bool)

(assert (=> b!620838 (=> (not res!400167) (not e!356089))))

(assert (=> b!620838 (= res!400167 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12131))))

(declare-fun b!620839 () Bool)

(declare-fun res!400169 () Bool)

(assert (=> b!620839 (= res!400169 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) j!136))))

(declare-fun e!356079 () Bool)

(assert (=> b!620839 (=> (not res!400169) (not e!356079))))

(assert (=> b!620839 (= e!356076 e!356079)))

(declare-fun b!620840 () Bool)

(declare-fun e!356078 () Bool)

(declare-fun e!356085 () Bool)

(assert (=> b!620840 (= e!356078 e!356085)))

(declare-fun res!400158 () Bool)

(assert (=> b!620840 (=> (not res!400158) (not e!356085))))

(assert (=> b!620840 (= res!400158 (and (= lt!287181 (Found!6487 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18040 a!2986) index!984) (select (arr!18040 a!2986) j!136))) (not (= (select (arr!18040 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37595 (_ BitVec 32)) SeekEntryResult!6487)

(assert (=> b!620840 (= lt!287181 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18040 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620841 () Bool)

(declare-fun Unit!20697 () Unit!20690)

(assert (=> b!620841 (= e!356077 Unit!20697)))

(assert (=> b!620841 false))

(declare-fun b!620842 () Bool)

(assert (=> b!620842 (= e!356089 e!356078)))

(declare-fun res!400159 () Bool)

(assert (=> b!620842 (=> (not res!400159) (not e!356078))))

(assert (=> b!620842 (= res!400159 (= (select (store (arr!18040 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620842 (= lt!287179 (array!37596 (store (arr!18040 a!2986) i!1108 k0!1786) (size!18404 a!2986)))))

(declare-fun b!620843 () Bool)

(assert (=> b!620843 (= e!356085 (not true))))

(declare-fun lt!287180 () Unit!20690)

(assert (=> b!620843 (= lt!287180 e!356084)))

(declare-fun c!70703 () Bool)

(declare-fun lt!287194 () SeekEntryResult!6487)

(assert (=> b!620843 (= c!70703 (= lt!287194 (Found!6487 index!984)))))

(declare-fun lt!287184 () Unit!20690)

(assert (=> b!620843 (= lt!287184 e!356077)))

(declare-fun c!70701 () Bool)

(assert (=> b!620843 (= c!70701 (= lt!287194 Undefined!6487))))

(declare-fun lt!287196 () (_ BitVec 64))

(assert (=> b!620843 (= lt!287194 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287196 lt!287179 mask!3053))))

(assert (=> b!620843 e!356086))

(declare-fun res!400163 () Bool)

(assert (=> b!620843 (=> (not res!400163) (not e!356086))))

(declare-fun lt!287185 () (_ BitVec 32))

(assert (=> b!620843 (= res!400163 (= lt!287190 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287185 vacantSpotIndex!68 lt!287196 lt!287179 mask!3053)))))

(assert (=> b!620843 (= lt!287190 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287185 vacantSpotIndex!68 (select (arr!18040 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620843 (= lt!287196 (select (store (arr!18040 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!287188 () Unit!20690)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20690)

(assert (=> b!620843 (= lt!287188 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287185 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620843 (= lt!287185 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620844 () Bool)

(declare-fun Unit!20698 () Unit!20690)

(assert (=> b!620844 (= e!356080 Unit!20698)))

(declare-fun b!620845 () Bool)

(assert (=> b!620845 (= e!356079 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) index!984))))

(declare-fun b!620846 () Bool)

(assert (=> b!620846 false))

(declare-fun lt!287195 () Unit!20690)

(assert (=> b!620846 (= lt!287195 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287179 (select (arr!18040 a!2986) j!136) j!136 Nil!12131))))

(assert (=> b!620846 (arrayNoDuplicates!0 lt!287179 j!136 Nil!12131)))

(declare-fun lt!287193 () Unit!20690)

(assert (=> b!620846 (= lt!287193 (lemmaNoDuplicateFromThenFromBigger!0 lt!287179 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620846 (arrayNoDuplicates!0 lt!287179 #b00000000000000000000000000000000 Nil!12131)))

(declare-fun lt!287192 () Unit!20690)

(assert (=> b!620846 (= lt!287192 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12131))))

(assert (=> b!620846 (arrayContainsKey!0 lt!287179 (select (arr!18040 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287183 () Unit!20690)

(assert (=> b!620846 (= lt!287183 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287179 (select (arr!18040 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20699 () Unit!20690)

(assert (=> b!620846 (= e!356083 Unit!20699)))

(assert (= (and start!56162 res!400172) b!620826))

(assert (= (and b!620826 res!400161) b!620824))

(assert (= (and b!620824 res!400171) b!620836))

(assert (= (and b!620836 res!400164) b!620830))

(assert (= (and b!620830 res!400157) b!620833))

(assert (= (and b!620833 res!400168) b!620829))

(assert (= (and b!620829 res!400162) b!620838))

(assert (= (and b!620838 res!400167) b!620831))

(assert (= (and b!620831 res!400170) b!620842))

(assert (= (and b!620842 res!400159) b!620840))

(assert (= (and b!620840 res!400158) b!620843))

(assert (= (and b!620843 res!400163) b!620832))

(assert (= (and b!620843 c!70701) b!620841))

(assert (= (and b!620843 (not c!70701)) b!620823))

(assert (= (and b!620843 c!70703) b!620834))

(assert (= (and b!620843 (not c!70703)) b!620835))

(assert (= (and b!620834 res!400166) b!620825))

(assert (= (and b!620825 (not res!400160)) b!620839))

(assert (= (and b!620839 res!400169) b!620845))

(assert (= (and b!620834 c!70702) b!620846))

(assert (= (and b!620834 (not c!70702)) b!620827))

(assert (= (and b!620834 c!70700) b!620837))

(assert (= (and b!620834 (not c!70700)) b!620844))

(assert (= (and b!620837 res!400165) b!620828))

(declare-fun m!596779 () Bool)

(assert (=> b!620824 m!596779))

(assert (=> b!620824 m!596779))

(declare-fun m!596781 () Bool)

(assert (=> b!620824 m!596781))

(declare-fun m!596783 () Bool)

(assert (=> start!56162 m!596783))

(declare-fun m!596785 () Bool)

(assert (=> start!56162 m!596785))

(declare-fun m!596787 () Bool)

(assert (=> b!620838 m!596787))

(declare-fun m!596789 () Bool)

(assert (=> b!620830 m!596789))

(assert (=> b!620837 m!596779))

(declare-fun m!596791 () Bool)

(assert (=> b!620837 m!596791))

(assert (=> b!620837 m!596779))

(declare-fun m!596793 () Bool)

(assert (=> b!620837 m!596793))

(declare-fun m!596795 () Bool)

(assert (=> b!620837 m!596795))

(assert (=> b!620837 m!596779))

(declare-fun m!596797 () Bool)

(assert (=> b!620837 m!596797))

(declare-fun m!596799 () Bool)

(assert (=> b!620837 m!596799))

(assert (=> b!620837 m!596779))

(declare-fun m!596801 () Bool)

(assert (=> b!620837 m!596801))

(declare-fun m!596803 () Bool)

(assert (=> b!620837 m!596803))

(declare-fun m!596805 () Bool)

(assert (=> b!620837 m!596805))

(assert (=> b!620837 m!596779))

(declare-fun m!596807 () Bool)

(assert (=> b!620829 m!596807))

(declare-fun m!596809 () Bool)

(assert (=> b!620840 m!596809))

(assert (=> b!620840 m!596779))

(assert (=> b!620840 m!596779))

(declare-fun m!596811 () Bool)

(assert (=> b!620840 m!596811))

(assert (=> b!620839 m!596779))

(assert (=> b!620839 m!596779))

(assert (=> b!620839 m!596801))

(declare-fun m!596813 () Bool)

(assert (=> b!620836 m!596813))

(declare-fun m!596815 () Bool)

(assert (=> b!620843 m!596815))

(declare-fun m!596817 () Bool)

(assert (=> b!620843 m!596817))

(assert (=> b!620843 m!596779))

(declare-fun m!596819 () Bool)

(assert (=> b!620843 m!596819))

(declare-fun m!596821 () Bool)

(assert (=> b!620843 m!596821))

(declare-fun m!596823 () Bool)

(assert (=> b!620843 m!596823))

(assert (=> b!620843 m!596779))

(declare-fun m!596825 () Bool)

(assert (=> b!620843 m!596825))

(declare-fun m!596827 () Bool)

(assert (=> b!620843 m!596827))

(assert (=> b!620842 m!596819))

(declare-fun m!596829 () Bool)

(assert (=> b!620842 m!596829))

(assert (=> b!620834 m!596819))

(declare-fun m!596831 () Bool)

(assert (=> b!620834 m!596831))

(assert (=> b!620834 m!596779))

(assert (=> b!620845 m!596779))

(assert (=> b!620845 m!596779))

(declare-fun m!596833 () Bool)

(assert (=> b!620845 m!596833))

(assert (=> b!620846 m!596779))

(declare-fun m!596835 () Bool)

(assert (=> b!620846 m!596835))

(assert (=> b!620846 m!596779))

(assert (=> b!620846 m!596795))

(assert (=> b!620846 m!596779))

(declare-fun m!596837 () Bool)

(assert (=> b!620846 m!596837))

(declare-fun m!596839 () Bool)

(assert (=> b!620846 m!596839))

(assert (=> b!620846 m!596799))

(declare-fun m!596841 () Bool)

(assert (=> b!620846 m!596841))

(assert (=> b!620846 m!596779))

(declare-fun m!596843 () Bool)

(assert (=> b!620846 m!596843))

(declare-fun m!596845 () Bool)

(assert (=> b!620831 m!596845))

(declare-fun m!596847 () Bool)

(assert (=> b!620833 m!596847))

(assert (=> b!620828 m!596779))

(assert (=> b!620828 m!596779))

(assert (=> b!620828 m!596833))

(check-sat (not b!620829) (not b!620838) (not b!620846) (not b!620845) (not b!620830) (not b!620843) (not b!620833) (not b!620828) (not b!620839) (not b!620837) (not b!620836) (not b!620824) (not b!620840) (not start!56162))
(check-sat)
