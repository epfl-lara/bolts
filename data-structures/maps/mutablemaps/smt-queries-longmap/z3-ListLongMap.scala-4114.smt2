; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56192 () Bool)

(assert start!56192)

(declare-fun b!621903 () Bool)

(assert (=> b!621903 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37625 0))(
  ( (array!37626 (arr!18055 (Array (_ BitVec 32) (_ BitVec 64))) (size!18419 (_ BitVec 32))) )
))
(declare-fun lt!288083 () array!37625)

(declare-datatypes ((Unit!20840 0))(
  ( (Unit!20841) )
))
(declare-fun lt!288096 () Unit!20840)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37625)

(declare-datatypes ((List!12149 0))(
  ( (Nil!12146) (Cons!12145 (h!13190 (_ BitVec 64)) (t!18385 List!12149)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37625 (_ BitVec 64) (_ BitVec 32) List!12149) Unit!20840)

(assert (=> b!621903 (= lt!288096 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288083 (select (arr!18055 a!2986) j!136) index!984 Nil!12146))))

(declare-fun arrayNoDuplicates!0 (array!37625 (_ BitVec 32) List!12149) Bool)

(assert (=> b!621903 (arrayNoDuplicates!0 lt!288083 index!984 Nil!12146)))

(declare-fun lt!288081 () Unit!20840)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37625 (_ BitVec 32) (_ BitVec 32)) Unit!20840)

(assert (=> b!621903 (= lt!288081 (lemmaNoDuplicateFromThenFromBigger!0 lt!288083 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621903 (arrayNoDuplicates!0 lt!288083 #b00000000000000000000000000000000 Nil!12146)))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!288084 () Unit!20840)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37625 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12149) Unit!20840)

(assert (=> b!621903 (= lt!288084 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12146))))

(declare-fun arrayContainsKey!0 (array!37625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621903 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288095 () Unit!20840)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37625 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20840)

(assert (=> b!621903 (= lt!288095 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288083 (select (arr!18055 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356707 () Bool)

(assert (=> b!621903 e!356707))

(declare-fun res!400877 () Bool)

(assert (=> b!621903 (=> (not res!400877) (not e!356707))))

(assert (=> b!621903 (= res!400877 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) j!136))))

(declare-fun e!356710 () Unit!20840)

(declare-fun Unit!20842 () Unit!20840)

(assert (=> b!621903 (= e!356710 Unit!20842)))

(declare-fun b!621904 () Bool)

(assert (=> b!621904 (= e!356707 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) index!984))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun b!621905 () Bool)

(declare-datatypes ((SeekEntryResult!6502 0))(
  ( (MissingZero!6502 (index!28291 (_ BitVec 32))) (Found!6502 (index!28292 (_ BitVec 32))) (Intermediate!6502 (undefined!7314 Bool) (index!28293 (_ BitVec 32)) (x!57087 (_ BitVec 32))) (Undefined!6502) (MissingVacant!6502 (index!28294 (_ BitVec 32))) )
))
(declare-fun lt!288088 () SeekEntryResult!6502)

(declare-fun e!356719 () Bool)

(assert (=> b!621905 (= e!356719 (not (or (= lt!288088 (MissingVacant!6502 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!288079 () Unit!20840)

(declare-fun e!356716 () Unit!20840)

(assert (=> b!621905 (= lt!288079 e!356716)))

(declare-fun c!70883 () Bool)

(assert (=> b!621905 (= c!70883 (= lt!288088 (Found!6502 index!984)))))

(declare-fun lt!288089 () Unit!20840)

(declare-fun e!356713 () Unit!20840)

(assert (=> b!621905 (= lt!288089 e!356713)))

(declare-fun c!70881 () Bool)

(assert (=> b!621905 (= c!70881 (= lt!288088 Undefined!6502))))

(declare-fun lt!288091 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37625 (_ BitVec 32)) SeekEntryResult!6502)

(assert (=> b!621905 (= lt!288088 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288091 lt!288083 mask!3053))))

(declare-fun e!356711 () Bool)

(assert (=> b!621905 e!356711))

(declare-fun res!400880 () Bool)

(assert (=> b!621905 (=> (not res!400880) (not e!356711))))

(declare-fun lt!288087 () (_ BitVec 32))

(declare-fun lt!288077 () SeekEntryResult!6502)

(assert (=> b!621905 (= res!400880 (= lt!288077 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288087 vacantSpotIndex!68 lt!288091 lt!288083 mask!3053)))))

(assert (=> b!621905 (= lt!288077 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288087 vacantSpotIndex!68 (select (arr!18055 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621905 (= lt!288091 (select (store (arr!18055 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!288090 () Unit!20840)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37625 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20840)

(assert (=> b!621905 (= lt!288090 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288087 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621905 (= lt!288087 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621906 () Bool)

(declare-fun res!400891 () Bool)

(declare-fun e!356712 () Bool)

(assert (=> b!621906 (=> (not res!400891) (not e!356712))))

(assert (=> b!621906 (= res!400891 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12146))))

(declare-fun b!621907 () Bool)

(declare-fun Unit!20843 () Unit!20840)

(assert (=> b!621907 (= e!356710 Unit!20843)))

(declare-fun b!621908 () Bool)

(declare-fun e!356708 () Bool)

(assert (=> b!621908 (= e!356712 e!356708)))

(declare-fun res!400886 () Bool)

(assert (=> b!621908 (=> (not res!400886) (not e!356708))))

(assert (=> b!621908 (= res!400886 (= (select (store (arr!18055 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621908 (= lt!288083 (array!37626 (store (arr!18055 a!2986) i!1108 k0!1786) (size!18419 a!2986)))))

(declare-fun b!621909 () Bool)

(declare-fun res!400887 () Bool)

(declare-fun e!356715 () Bool)

(assert (=> b!621909 (=> (not res!400887) (not e!356715))))

(assert (=> b!621909 (= res!400887 (and (= (size!18419 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18419 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18419 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621910 () Bool)

(declare-fun res!400878 () Bool)

(assert (=> b!621910 (=> (not res!400878) (not e!356715))))

(assert (=> b!621910 (= res!400878 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!621912 () Bool)

(declare-fun res!400885 () Bool)

(assert (=> b!621912 (=> (not res!400885) (not e!356715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621912 (= res!400885 (validKeyInArray!0 (select (arr!18055 a!2986) j!136)))))

(declare-fun b!621913 () Bool)

(declare-fun Unit!20844 () Unit!20840)

(assert (=> b!621913 (= e!356713 Unit!20844)))

(declare-fun b!621914 () Bool)

(declare-fun res!400883 () Bool)

(assert (=> b!621914 (=> (not res!400883) (not e!356712))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37625 (_ BitVec 32)) Bool)

(assert (=> b!621914 (= res!400883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621915 () Bool)

(assert (=> b!621915 (= e!356708 e!356719)))

(declare-fun res!400884 () Bool)

(assert (=> b!621915 (=> (not res!400884) (not e!356719))))

(declare-fun lt!288082 () SeekEntryResult!6502)

(assert (=> b!621915 (= res!400884 (and (= lt!288082 (Found!6502 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18055 a!2986) index!984) (select (arr!18055 a!2986) j!136))) (not (= (select (arr!18055 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621915 (= lt!288082 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18055 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621916 () Bool)

(declare-fun Unit!20845 () Unit!20840)

(assert (=> b!621916 (= e!356716 Unit!20845)))

(declare-fun res!400892 () Bool)

(declare-fun b!621917 () Bool)

(assert (=> b!621917 (= res!400892 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) j!136))))

(declare-fun e!356717 () Bool)

(assert (=> b!621917 (=> (not res!400892) (not e!356717))))

(declare-fun e!356718 () Bool)

(assert (=> b!621917 (= e!356718 e!356717)))

(declare-fun b!621918 () Bool)

(assert (=> b!621918 (= e!356711 (= lt!288082 lt!288077))))

(declare-fun b!621919 () Bool)

(declare-fun Unit!20846 () Unit!20840)

(assert (=> b!621919 (= e!356716 Unit!20846)))

(declare-fun res!400881 () Bool)

(assert (=> b!621919 (= res!400881 (= (select (store (arr!18055 a!2986) i!1108 k0!1786) index!984) (select (arr!18055 a!2986) j!136)))))

(declare-fun e!356714 () Bool)

(assert (=> b!621919 (=> (not res!400881) (not e!356714))))

(assert (=> b!621919 e!356714))

(declare-fun c!70882 () Bool)

(assert (=> b!621919 (= c!70882 (bvslt j!136 index!984))))

(declare-fun lt!288094 () Unit!20840)

(declare-fun e!356706 () Unit!20840)

(assert (=> b!621919 (= lt!288094 e!356706)))

(declare-fun c!70880 () Bool)

(assert (=> b!621919 (= c!70880 (bvslt index!984 j!136))))

(declare-fun lt!288092 () Unit!20840)

(assert (=> b!621919 (= lt!288092 e!356710)))

(assert (=> b!621919 false))

(declare-fun b!621920 () Bool)

(declare-fun res!400882 () Bool)

(assert (=> b!621920 (=> (not res!400882) (not e!356712))))

(assert (=> b!621920 (= res!400882 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18055 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621921 () Bool)

(declare-fun Unit!20847 () Unit!20840)

(assert (=> b!621921 (= e!356713 Unit!20847)))

(assert (=> b!621921 false))

(declare-fun b!621922 () Bool)

(declare-fun res!400879 () Bool)

(assert (=> b!621922 (= res!400879 (bvsge j!136 index!984))))

(assert (=> b!621922 (=> res!400879 e!356718)))

(assert (=> b!621922 (= e!356714 e!356718)))

(declare-fun b!621923 () Bool)

(declare-fun res!400889 () Bool)

(assert (=> b!621923 (=> (not res!400889) (not e!356715))))

(assert (=> b!621923 (= res!400889 (validKeyInArray!0 k0!1786))))

(declare-fun b!621924 () Bool)

(assert (=> b!621924 (= e!356717 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) index!984))))

(declare-fun b!621925 () Bool)

(declare-fun Unit!20848 () Unit!20840)

(assert (=> b!621925 (= e!356706 Unit!20848)))

(declare-fun b!621926 () Bool)

(assert (=> b!621926 (= e!356715 e!356712)))

(declare-fun res!400890 () Bool)

(assert (=> b!621926 (=> (not res!400890) (not e!356712))))

(declare-fun lt!288093 () SeekEntryResult!6502)

(assert (=> b!621926 (= res!400890 (or (= lt!288093 (MissingZero!6502 i!1108)) (= lt!288093 (MissingVacant!6502 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37625 (_ BitVec 32)) SeekEntryResult!6502)

(assert (=> b!621926 (= lt!288093 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!400888 () Bool)

(assert (=> start!56192 (=> (not res!400888) (not e!356715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56192 (= res!400888 (validMask!0 mask!3053))))

(assert (=> start!56192 e!356715))

(assert (=> start!56192 true))

(declare-fun array_inv!13829 (array!37625) Bool)

(assert (=> start!56192 (array_inv!13829 a!2986)))

(declare-fun b!621911 () Bool)

(assert (=> b!621911 false))

(declare-fun lt!288086 () Unit!20840)

(assert (=> b!621911 (= lt!288086 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288083 (select (arr!18055 a!2986) j!136) j!136 Nil!12146))))

(assert (=> b!621911 (arrayNoDuplicates!0 lt!288083 j!136 Nil!12146)))

(declare-fun lt!288085 () Unit!20840)

(assert (=> b!621911 (= lt!288085 (lemmaNoDuplicateFromThenFromBigger!0 lt!288083 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621911 (arrayNoDuplicates!0 lt!288083 #b00000000000000000000000000000000 Nil!12146)))

(declare-fun lt!288078 () Unit!20840)

(assert (=> b!621911 (= lt!288078 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12146))))

(assert (=> b!621911 (arrayContainsKey!0 lt!288083 (select (arr!18055 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288080 () Unit!20840)

(assert (=> b!621911 (= lt!288080 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288083 (select (arr!18055 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20849 () Unit!20840)

(assert (=> b!621911 (= e!356706 Unit!20849)))

(assert (= (and start!56192 res!400888) b!621909))

(assert (= (and b!621909 res!400887) b!621912))

(assert (= (and b!621912 res!400885) b!621923))

(assert (= (and b!621923 res!400889) b!621910))

(assert (= (and b!621910 res!400878) b!621926))

(assert (= (and b!621926 res!400890) b!621914))

(assert (= (and b!621914 res!400883) b!621906))

(assert (= (and b!621906 res!400891) b!621920))

(assert (= (and b!621920 res!400882) b!621908))

(assert (= (and b!621908 res!400886) b!621915))

(assert (= (and b!621915 res!400884) b!621905))

(assert (= (and b!621905 res!400880) b!621918))

(assert (= (and b!621905 c!70881) b!621921))

(assert (= (and b!621905 (not c!70881)) b!621913))

(assert (= (and b!621905 c!70883) b!621919))

(assert (= (and b!621905 (not c!70883)) b!621916))

(assert (= (and b!621919 res!400881) b!621922))

(assert (= (and b!621922 (not res!400879)) b!621917))

(assert (= (and b!621917 res!400892) b!621924))

(assert (= (and b!621919 c!70882) b!621911))

(assert (= (and b!621919 (not c!70882)) b!621925))

(assert (= (and b!621919 c!70880) b!621903))

(assert (= (and b!621919 (not c!70880)) b!621907))

(assert (= (and b!621903 res!400877) b!621904))

(declare-fun m!597829 () Bool)

(assert (=> b!621920 m!597829))

(declare-fun m!597831 () Bool)

(assert (=> b!621904 m!597831))

(assert (=> b!621904 m!597831))

(declare-fun m!597833 () Bool)

(assert (=> b!621904 m!597833))

(assert (=> b!621912 m!597831))

(assert (=> b!621912 m!597831))

(declare-fun m!597835 () Bool)

(assert (=> b!621912 m!597835))

(declare-fun m!597837 () Bool)

(assert (=> start!56192 m!597837))

(declare-fun m!597839 () Bool)

(assert (=> start!56192 m!597839))

(assert (=> b!621911 m!597831))

(declare-fun m!597841 () Bool)

(assert (=> b!621911 m!597841))

(assert (=> b!621911 m!597831))

(declare-fun m!597843 () Bool)

(assert (=> b!621911 m!597843))

(declare-fun m!597845 () Bool)

(assert (=> b!621911 m!597845))

(assert (=> b!621911 m!597831))

(assert (=> b!621911 m!597831))

(declare-fun m!597847 () Bool)

(assert (=> b!621911 m!597847))

(declare-fun m!597849 () Bool)

(assert (=> b!621911 m!597849))

(declare-fun m!597851 () Bool)

(assert (=> b!621911 m!597851))

(declare-fun m!597853 () Bool)

(assert (=> b!621911 m!597853))

(declare-fun m!597855 () Bool)

(assert (=> b!621926 m!597855))

(declare-fun m!597857 () Bool)

(assert (=> b!621906 m!597857))

(declare-fun m!597859 () Bool)

(assert (=> b!621919 m!597859))

(declare-fun m!597861 () Bool)

(assert (=> b!621919 m!597861))

(assert (=> b!621919 m!597831))

(assert (=> b!621917 m!597831))

(assert (=> b!621917 m!597831))

(declare-fun m!597863 () Bool)

(assert (=> b!621917 m!597863))

(assert (=> b!621924 m!597831))

(assert (=> b!621924 m!597831))

(assert (=> b!621924 m!597833))

(declare-fun m!597865 () Bool)

(assert (=> b!621905 m!597865))

(declare-fun m!597867 () Bool)

(assert (=> b!621905 m!597867))

(assert (=> b!621905 m!597831))

(assert (=> b!621905 m!597859))

(declare-fun m!597869 () Bool)

(assert (=> b!621905 m!597869))

(declare-fun m!597871 () Bool)

(assert (=> b!621905 m!597871))

(declare-fun m!597873 () Bool)

(assert (=> b!621905 m!597873))

(assert (=> b!621905 m!597831))

(declare-fun m!597875 () Bool)

(assert (=> b!621905 m!597875))

(declare-fun m!597877 () Bool)

(assert (=> b!621923 m!597877))

(declare-fun m!597879 () Bool)

(assert (=> b!621910 m!597879))

(declare-fun m!597881 () Bool)

(assert (=> b!621914 m!597881))

(assert (=> b!621903 m!597831))

(assert (=> b!621903 m!597863))

(assert (=> b!621903 m!597831))

(declare-fun m!597883 () Bool)

(assert (=> b!621903 m!597883))

(assert (=> b!621903 m!597831))

(assert (=> b!621903 m!597831))

(declare-fun m!597885 () Bool)

(assert (=> b!621903 m!597885))

(assert (=> b!621903 m!597851))

(declare-fun m!597887 () Bool)

(assert (=> b!621903 m!597887))

(declare-fun m!597889 () Bool)

(assert (=> b!621903 m!597889))

(assert (=> b!621903 m!597831))

(declare-fun m!597891 () Bool)

(assert (=> b!621903 m!597891))

(assert (=> b!621903 m!597849))

(declare-fun m!597893 () Bool)

(assert (=> b!621915 m!597893))

(assert (=> b!621915 m!597831))

(assert (=> b!621915 m!597831))

(declare-fun m!597895 () Bool)

(assert (=> b!621915 m!597895))

(assert (=> b!621908 m!597859))

(declare-fun m!597897 () Bool)

(assert (=> b!621908 m!597897))

(check-sat (not b!621911) (not b!621923) (not b!621926) (not b!621914) (not b!621912) (not b!621904) (not b!621910) (not b!621903) (not b!621915) (not b!621917) (not b!621905) (not b!621924) (not start!56192) (not b!621906))
(check-sat)
