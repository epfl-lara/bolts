; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56082 () Bool)

(assert start!56082)

(declare-fun b!617864 () Bool)

(declare-fun res!398165 () Bool)

(declare-fun e!354322 () Bool)

(assert (=> b!617864 (=> (not res!398165) (not e!354322))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37515 0))(
  ( (array!37516 (arr!18000 (Array (_ BitVec 32) (_ BitVec 64))) (size!18364 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37515)

(assert (=> b!617864 (= res!398165 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18000 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617865 () Bool)

(declare-fun res!398169 () Bool)

(declare-fun e!354323 () Bool)

(assert (=> b!617865 (=> (not res!398169) (not e!354323))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617865 (= res!398169 (and (= (size!18364 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18364 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18364 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!284786 () array!37515)

(declare-fun res!398171 () Bool)

(declare-fun b!617866 () Bool)

(declare-fun arrayContainsKey!0 (array!37515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617866 (= res!398171 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) j!136))))

(declare-fun e!354326 () Bool)

(assert (=> b!617866 (=> (not res!398171) (not e!354326))))

(declare-fun e!354321 () Bool)

(assert (=> b!617866 (= e!354321 e!354326)))

(declare-fun b!617867 () Bool)

(declare-datatypes ((Unit!20290 0))(
  ( (Unit!20291) )
))
(declare-fun e!354329 () Unit!20290)

(declare-fun Unit!20292 () Unit!20290)

(assert (=> b!617867 (= e!354329 Unit!20292)))

(declare-fun b!617868 () Bool)

(declare-fun e!354330 () Unit!20290)

(declare-fun Unit!20293 () Unit!20290)

(assert (=> b!617868 (= e!354330 Unit!20293)))

(assert (=> b!617868 false))

(declare-fun b!617869 () Bool)

(declare-fun Unit!20294 () Unit!20290)

(assert (=> b!617869 (= e!354330 Unit!20294)))

(declare-fun b!617870 () Bool)

(declare-fun res!398158 () Bool)

(assert (=> b!617870 (= res!398158 (bvsge j!136 index!984))))

(assert (=> b!617870 (=> res!398158 e!354321)))

(declare-fun e!354327 () Bool)

(assert (=> b!617870 (= e!354327 e!354321)))

(declare-fun b!617871 () Bool)

(declare-fun e!354328 () Unit!20290)

(declare-fun Unit!20295 () Unit!20290)

(assert (=> b!617871 (= e!354328 Unit!20295)))

(declare-fun res!398161 () Bool)

(assert (=> start!56082 (=> (not res!398161) (not e!354323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56082 (= res!398161 (validMask!0 mask!3053))))

(assert (=> start!56082 e!354323))

(assert (=> start!56082 true))

(declare-fun array_inv!13774 (array!37515) Bool)

(assert (=> start!56082 (array_inv!13774 a!2986)))

(declare-fun b!617872 () Bool)

(declare-fun e!354319 () Bool)

(assert (=> b!617872 (= e!354319 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) index!984))))

(declare-fun b!617873 () Bool)

(declare-fun e!354324 () Bool)

(declare-fun e!354320 () Bool)

(assert (=> b!617873 (= e!354324 e!354320)))

(declare-fun res!398162 () Bool)

(assert (=> b!617873 (=> (not res!398162) (not e!354320))))

(declare-datatypes ((SeekEntryResult!6447 0))(
  ( (MissingZero!6447 (index!28071 (_ BitVec 32))) (Found!6447 (index!28072 (_ BitVec 32))) (Intermediate!6447 (undefined!7259 Bool) (index!28073 (_ BitVec 32)) (x!56888 (_ BitVec 32))) (Undefined!6447) (MissingVacant!6447 (index!28074 (_ BitVec 32))) )
))
(declare-fun lt!284793 () SeekEntryResult!6447)

(assert (=> b!617873 (= res!398162 (and (= lt!284793 (Found!6447 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18000 a!2986) index!984) (select (arr!18000 a!2986) j!136))) (not (= (select (arr!18000 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37515 (_ BitVec 32)) SeekEntryResult!6447)

(assert (=> b!617873 (= lt!284793 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18000 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617874 () Bool)

(declare-fun res!398164 () Bool)

(assert (=> b!617874 (=> (not res!398164) (not e!354323))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!617874 (= res!398164 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617875 () Bool)

(assert (=> b!617875 false))

(declare-fun lt!284788 () Unit!20290)

(declare-datatypes ((List!12094 0))(
  ( (Nil!12091) (Cons!12090 (h!13135 (_ BitVec 64)) (t!18330 List!12094)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37515 (_ BitVec 64) (_ BitVec 32) List!12094) Unit!20290)

(assert (=> b!617875 (= lt!284788 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284786 (select (arr!18000 a!2986) j!136) index!984 Nil!12091))))

(declare-fun arrayNoDuplicates!0 (array!37515 (_ BitVec 32) List!12094) Bool)

(assert (=> b!617875 (arrayNoDuplicates!0 lt!284786 index!984 Nil!12091)))

(declare-fun lt!284792 () Unit!20290)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37515 (_ BitVec 32) (_ BitVec 32)) Unit!20290)

(assert (=> b!617875 (= lt!284792 (lemmaNoDuplicateFromThenFromBigger!0 lt!284786 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617875 (arrayNoDuplicates!0 lt!284786 #b00000000000000000000000000000000 Nil!12091)))

(declare-fun lt!284794 () Unit!20290)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37515 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12094) Unit!20290)

(assert (=> b!617875 (= lt!284794 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12091))))

(assert (=> b!617875 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284791 () Unit!20290)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37515 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20290)

(assert (=> b!617875 (= lt!284791 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284786 (select (arr!18000 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!617875 e!354319))

(declare-fun res!398170 () Bool)

(assert (=> b!617875 (=> (not res!398170) (not e!354319))))

(assert (=> b!617875 (= res!398170 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) j!136))))

(declare-fun Unit!20296 () Unit!20290)

(assert (=> b!617875 (= e!354329 Unit!20296)))

(declare-fun b!617876 () Bool)

(declare-fun e!354318 () Bool)

(assert (=> b!617876 (= e!354318 true)))

(assert (=> b!617876 (= (select (store (arr!18000 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617877 () Bool)

(assert (=> b!617877 (= e!354326 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) index!984))))

(declare-fun b!617878 () Bool)

(declare-fun res!398168 () Bool)

(assert (=> b!617878 (=> (not res!398168) (not e!354322))))

(assert (=> b!617878 (= res!398168 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12091))))

(declare-fun b!617879 () Bool)

(declare-fun e!354317 () Unit!20290)

(declare-fun Unit!20297 () Unit!20290)

(assert (=> b!617879 (= e!354317 Unit!20297)))

(declare-fun res!398166 () Bool)

(assert (=> b!617879 (= res!398166 (= (select (store (arr!18000 a!2986) i!1108 k!1786) index!984) (select (arr!18000 a!2986) j!136)))))

(assert (=> b!617879 (=> (not res!398166) (not e!354327))))

(assert (=> b!617879 e!354327))

(declare-fun c!70221 () Bool)

(assert (=> b!617879 (= c!70221 (bvslt j!136 index!984))))

(declare-fun lt!284782 () Unit!20290)

(assert (=> b!617879 (= lt!284782 e!354328)))

(declare-fun c!70223 () Bool)

(assert (=> b!617879 (= c!70223 (bvslt index!984 j!136))))

(declare-fun lt!284787 () Unit!20290)

(assert (=> b!617879 (= lt!284787 e!354329)))

(assert (=> b!617879 false))

(declare-fun b!617880 () Bool)

(assert (=> b!617880 false))

(declare-fun lt!284785 () Unit!20290)

(assert (=> b!617880 (= lt!284785 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284786 (select (arr!18000 a!2986) j!136) j!136 Nil!12091))))

(assert (=> b!617880 (arrayNoDuplicates!0 lt!284786 j!136 Nil!12091)))

(declare-fun lt!284783 () Unit!20290)

(assert (=> b!617880 (= lt!284783 (lemmaNoDuplicateFromThenFromBigger!0 lt!284786 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617880 (arrayNoDuplicates!0 lt!284786 #b00000000000000000000000000000000 Nil!12091)))

(declare-fun lt!284779 () Unit!20290)

(assert (=> b!617880 (= lt!284779 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12091))))

(assert (=> b!617880 (arrayContainsKey!0 lt!284786 (select (arr!18000 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284777 () Unit!20290)

(assert (=> b!617880 (= lt!284777 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284786 (select (arr!18000 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20298 () Unit!20290)

(assert (=> b!617880 (= e!354328 Unit!20298)))

(declare-fun b!617881 () Bool)

(assert (=> b!617881 (= e!354320 (not e!354318))))

(declare-fun res!398174 () Bool)

(assert (=> b!617881 (=> res!398174 e!354318)))

(declare-fun lt!284780 () SeekEntryResult!6447)

(assert (=> b!617881 (= res!398174 (not (= lt!284780 (MissingVacant!6447 vacantSpotIndex!68))))))

(declare-fun lt!284796 () Unit!20290)

(assert (=> b!617881 (= lt!284796 e!354317)))

(declare-fun c!70222 () Bool)

(assert (=> b!617881 (= c!70222 (= lt!284780 (Found!6447 index!984)))))

(declare-fun lt!284795 () Unit!20290)

(assert (=> b!617881 (= lt!284795 e!354330)))

(declare-fun c!70220 () Bool)

(assert (=> b!617881 (= c!70220 (= lt!284780 Undefined!6447))))

(declare-fun lt!284778 () (_ BitVec 64))

(assert (=> b!617881 (= lt!284780 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284778 lt!284786 mask!3053))))

(declare-fun e!354325 () Bool)

(assert (=> b!617881 e!354325))

(declare-fun res!398173 () Bool)

(assert (=> b!617881 (=> (not res!398173) (not e!354325))))

(declare-fun lt!284789 () SeekEntryResult!6447)

(declare-fun lt!284781 () (_ BitVec 32))

(assert (=> b!617881 (= res!398173 (= lt!284789 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284781 vacantSpotIndex!68 lt!284778 lt!284786 mask!3053)))))

(assert (=> b!617881 (= lt!284789 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284781 vacantSpotIndex!68 (select (arr!18000 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617881 (= lt!284778 (select (store (arr!18000 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284790 () Unit!20290)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20290)

(assert (=> b!617881 (= lt!284790 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284781 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617881 (= lt!284781 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617882 () Bool)

(assert (=> b!617882 (= e!354325 (= lt!284793 lt!284789))))

(declare-fun b!617883 () Bool)

(declare-fun Unit!20299 () Unit!20290)

(assert (=> b!617883 (= e!354317 Unit!20299)))

(declare-fun b!617884 () Bool)

(declare-fun res!398163 () Bool)

(assert (=> b!617884 (=> (not res!398163) (not e!354322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37515 (_ BitVec 32)) Bool)

(assert (=> b!617884 (= res!398163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617885 () Bool)

(assert (=> b!617885 (= e!354323 e!354322)))

(declare-fun res!398160 () Bool)

(assert (=> b!617885 (=> (not res!398160) (not e!354322))))

(declare-fun lt!284784 () SeekEntryResult!6447)

(assert (=> b!617885 (= res!398160 (or (= lt!284784 (MissingZero!6447 i!1108)) (= lt!284784 (MissingVacant!6447 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37515 (_ BitVec 32)) SeekEntryResult!6447)

(assert (=> b!617885 (= lt!284784 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617886 () Bool)

(declare-fun res!398172 () Bool)

(assert (=> b!617886 (=> (not res!398172) (not e!354323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617886 (= res!398172 (validKeyInArray!0 k!1786))))

(declare-fun b!617887 () Bool)

(assert (=> b!617887 (= e!354322 e!354324)))

(declare-fun res!398167 () Bool)

(assert (=> b!617887 (=> (not res!398167) (not e!354324))))

(assert (=> b!617887 (= res!398167 (= (select (store (arr!18000 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617887 (= lt!284786 (array!37516 (store (arr!18000 a!2986) i!1108 k!1786) (size!18364 a!2986)))))

(declare-fun b!617888 () Bool)

(declare-fun res!398159 () Bool)

(assert (=> b!617888 (=> (not res!398159) (not e!354323))))

(assert (=> b!617888 (= res!398159 (validKeyInArray!0 (select (arr!18000 a!2986) j!136)))))

(assert (= (and start!56082 res!398161) b!617865))

(assert (= (and b!617865 res!398169) b!617888))

(assert (= (and b!617888 res!398159) b!617886))

(assert (= (and b!617886 res!398172) b!617874))

(assert (= (and b!617874 res!398164) b!617885))

(assert (= (and b!617885 res!398160) b!617884))

(assert (= (and b!617884 res!398163) b!617878))

(assert (= (and b!617878 res!398168) b!617864))

(assert (= (and b!617864 res!398165) b!617887))

(assert (= (and b!617887 res!398167) b!617873))

(assert (= (and b!617873 res!398162) b!617881))

(assert (= (and b!617881 res!398173) b!617882))

(assert (= (and b!617881 c!70220) b!617868))

(assert (= (and b!617881 (not c!70220)) b!617869))

(assert (= (and b!617881 c!70222) b!617879))

(assert (= (and b!617881 (not c!70222)) b!617883))

(assert (= (and b!617879 res!398166) b!617870))

(assert (= (and b!617870 (not res!398158)) b!617866))

(assert (= (and b!617866 res!398171) b!617877))

(assert (= (and b!617879 c!70221) b!617880))

(assert (= (and b!617879 (not c!70221)) b!617871))

(assert (= (and b!617879 c!70223) b!617875))

(assert (= (and b!617879 (not c!70223)) b!617867))

(assert (= (and b!617875 res!398170) b!617872))

(assert (= (and b!617881 (not res!398174)) b!617876))

(declare-fun m!593979 () Bool)

(assert (=> b!617885 m!593979))

(declare-fun m!593981 () Bool)

(assert (=> b!617887 m!593981))

(declare-fun m!593983 () Bool)

(assert (=> b!617887 m!593983))

(assert (=> b!617876 m!593981))

(declare-fun m!593985 () Bool)

(assert (=> b!617876 m!593985))

(declare-fun m!593987 () Bool)

(assert (=> b!617888 m!593987))

(assert (=> b!617888 m!593987))

(declare-fun m!593989 () Bool)

(assert (=> b!617888 m!593989))

(assert (=> b!617877 m!593987))

(assert (=> b!617877 m!593987))

(declare-fun m!593991 () Bool)

(assert (=> b!617877 m!593991))

(declare-fun m!593993 () Bool)

(assert (=> b!617874 m!593993))

(assert (=> b!617872 m!593987))

(assert (=> b!617872 m!593987))

(assert (=> b!617872 m!593991))

(assert (=> b!617875 m!593987))

(declare-fun m!593995 () Bool)

(assert (=> b!617875 m!593995))

(assert (=> b!617875 m!593987))

(declare-fun m!593997 () Bool)

(assert (=> b!617875 m!593997))

(declare-fun m!593999 () Bool)

(assert (=> b!617875 m!593999))

(declare-fun m!594001 () Bool)

(assert (=> b!617875 m!594001))

(assert (=> b!617875 m!593987))

(declare-fun m!594003 () Bool)

(assert (=> b!617875 m!594003))

(assert (=> b!617875 m!593987))

(declare-fun m!594005 () Bool)

(assert (=> b!617875 m!594005))

(assert (=> b!617875 m!593987))

(declare-fun m!594007 () Bool)

(assert (=> b!617875 m!594007))

(declare-fun m!594009 () Bool)

(assert (=> b!617875 m!594009))

(declare-fun m!594011 () Bool)

(assert (=> b!617873 m!594011))

(assert (=> b!617873 m!593987))

(assert (=> b!617873 m!593987))

(declare-fun m!594013 () Bool)

(assert (=> b!617873 m!594013))

(declare-fun m!594015 () Bool)

(assert (=> b!617886 m!594015))

(declare-fun m!594017 () Bool)

(assert (=> start!56082 m!594017))

(declare-fun m!594019 () Bool)

(assert (=> start!56082 m!594019))

(declare-fun m!594021 () Bool)

(assert (=> b!617880 m!594021))

(assert (=> b!617880 m!593987))

(declare-fun m!594023 () Bool)

(assert (=> b!617880 m!594023))

(assert (=> b!617880 m!593987))

(declare-fun m!594025 () Bool)

(assert (=> b!617880 m!594025))

(assert (=> b!617880 m!593999))

(declare-fun m!594027 () Bool)

(assert (=> b!617880 m!594027))

(assert (=> b!617880 m!594009))

(assert (=> b!617880 m!593987))

(assert (=> b!617880 m!593987))

(declare-fun m!594029 () Bool)

(assert (=> b!617880 m!594029))

(declare-fun m!594031 () Bool)

(assert (=> b!617878 m!594031))

(declare-fun m!594033 () Bool)

(assert (=> b!617884 m!594033))

(assert (=> b!617879 m!593981))

(assert (=> b!617879 m!593985))

(assert (=> b!617879 m!593987))

(declare-fun m!594035 () Bool)

(assert (=> b!617881 m!594035))

(declare-fun m!594037 () Bool)

(assert (=> b!617881 m!594037))

(assert (=> b!617881 m!593987))

(assert (=> b!617881 m!593981))

(declare-fun m!594039 () Bool)

(assert (=> b!617881 m!594039))

(assert (=> b!617881 m!593987))

(declare-fun m!594041 () Bool)

(assert (=> b!617881 m!594041))

(declare-fun m!594043 () Bool)

(assert (=> b!617881 m!594043))

(declare-fun m!594045 () Bool)

(assert (=> b!617881 m!594045))

(assert (=> b!617866 m!593987))

(assert (=> b!617866 m!593987))

(assert (=> b!617866 m!594005))

(declare-fun m!594047 () Bool)

(assert (=> b!617864 m!594047))

(push 1)

