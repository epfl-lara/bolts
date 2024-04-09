; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59014 () Bool)

(assert start!59014)

(declare-fun b!650899 () Bool)

(declare-fun e!373485 () Bool)

(declare-datatypes ((SeekEntryResult!6923 0))(
  ( (MissingZero!6923 (index!30041 (_ BitVec 32))) (Found!6923 (index!30042 (_ BitVec 32))) (Intermediate!6923 (undefined!7735 Bool) (index!30043 (_ BitVec 32)) (x!58850 (_ BitVec 32))) (Undefined!6923) (MissingVacant!6923 (index!30044 (_ BitVec 32))) )
))
(declare-fun lt!302641 () SeekEntryResult!6923)

(declare-fun lt!302652 () SeekEntryResult!6923)

(assert (=> b!650899 (= e!373485 (= lt!302641 lt!302652))))

(declare-fun b!650900 () Bool)

(declare-fun e!373483 () Bool)

(declare-fun e!373481 () Bool)

(assert (=> b!650900 (= e!373483 e!373481)))

(declare-fun res!422130 () Bool)

(assert (=> b!650900 (=> (not res!422130) (not e!373481))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38551 0))(
  ( (array!38552 (arr!18476 (Array (_ BitVec 32) (_ BitVec 64))) (size!18840 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38551)

(assert (=> b!650900 (= res!422130 (= (select (store (arr!18476 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!302651 () array!38551)

(assert (=> b!650900 (= lt!302651 (array!38552 (store (arr!18476 a!2986) i!1108 k!1786) (size!18840 a!2986)))))

(declare-fun b!650901 () Bool)

(declare-datatypes ((Unit!22210 0))(
  ( (Unit!22211) )
))
(declare-fun e!373489 () Unit!22210)

(declare-fun Unit!22212 () Unit!22210)

(assert (=> b!650901 (= e!373489 Unit!22212)))

(declare-fun b!650902 () Bool)

(declare-fun e!373484 () Bool)

(declare-fun e!373482 () Bool)

(assert (=> b!650902 (= e!373484 e!373482)))

(declare-fun res!422136 () Bool)

(assert (=> b!650902 (=> res!422136 e!373482)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!302644 () (_ BitVec 64))

(declare-fun lt!302645 () (_ BitVec 64))

(assert (=> b!650902 (= res!422136 (or (not (= (select (arr!18476 a!2986) j!136) lt!302645)) (not (= (select (arr!18476 a!2986) j!136) lt!302644))))))

(declare-fun e!373490 () Bool)

(assert (=> b!650902 e!373490))

(declare-fun res!422138 () Bool)

(assert (=> b!650902 (=> (not res!422138) (not e!373490))))

(assert (=> b!650902 (= res!422138 (= lt!302644 (select (arr!18476 a!2986) j!136)))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!650902 (= lt!302644 (select (store (arr!18476 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650903 () Bool)

(declare-fun res!422145 () Bool)

(declare-fun e!373486 () Bool)

(assert (=> b!650903 (=> (not res!422145) (not e!373486))))

(declare-fun arrayContainsKey!0 (array!38551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650903 (= res!422145 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650904 () Bool)

(declare-fun res!422141 () Bool)

(assert (=> b!650904 (=> (not res!422141) (not e!373486))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!650904 (= res!422141 (and (= (size!18840 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18840 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18840 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650906 () Bool)

(declare-fun e!373480 () Bool)

(assert (=> b!650906 (= e!373490 e!373480)))

(declare-fun res!422131 () Bool)

(assert (=> b!650906 (=> res!422131 e!373480)))

(assert (=> b!650906 (= res!422131 (or (not (= (select (arr!18476 a!2986) j!136) lt!302645)) (not (= (select (arr!18476 a!2986) j!136) lt!302644)) (bvsge j!136 index!984)))))

(declare-fun b!650907 () Bool)

(declare-fun Unit!22213 () Unit!22210)

(assert (=> b!650907 (= e!373489 Unit!22213)))

(assert (=> b!650907 false))

(declare-fun b!650908 () Bool)

(declare-fun res!422147 () Bool)

(assert (=> b!650908 (=> (not res!422147) (not e!373483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38551 (_ BitVec 32)) Bool)

(assert (=> b!650908 (= res!422147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650909 () Bool)

(declare-fun e!373492 () Unit!22210)

(declare-fun Unit!22214 () Unit!22210)

(assert (=> b!650909 (= e!373492 Unit!22214)))

(declare-fun b!650910 () Bool)

(declare-fun e!373488 () Bool)

(assert (=> b!650910 (= e!373488 (not e!373484))))

(declare-fun res!422144 () Bool)

(assert (=> b!650910 (=> res!422144 e!373484)))

(declare-fun lt!302639 () SeekEntryResult!6923)

(assert (=> b!650910 (= res!422144 (not (= lt!302639 (Found!6923 index!984))))))

(declare-fun lt!302643 () Unit!22210)

(assert (=> b!650910 (= lt!302643 e!373489)))

(declare-fun c!74752 () Bool)

(assert (=> b!650910 (= c!74752 (= lt!302639 Undefined!6923))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38551 (_ BitVec 32)) SeekEntryResult!6923)

(assert (=> b!650910 (= lt!302639 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302645 lt!302651 mask!3053))))

(assert (=> b!650910 e!373485))

(declare-fun res!422139 () Bool)

(assert (=> b!650910 (=> (not res!422139) (not e!373485))))

(declare-fun lt!302647 () (_ BitVec 32))

(assert (=> b!650910 (= res!422139 (= lt!302652 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302647 vacantSpotIndex!68 lt!302645 lt!302651 mask!3053)))))

(assert (=> b!650910 (= lt!302652 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302647 vacantSpotIndex!68 (select (arr!18476 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650910 (= lt!302645 (select (store (arr!18476 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302638 () Unit!22210)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38551 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22210)

(assert (=> b!650910 (= lt!302638 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302647 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650910 (= lt!302647 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650911 () Bool)

(declare-fun res!422146 () Bool)

(assert (=> b!650911 (=> (not res!422146) (not e!373486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650911 (= res!422146 (validKeyInArray!0 k!1786))))

(declare-fun b!650912 () Bool)

(declare-fun Unit!22215 () Unit!22210)

(assert (=> b!650912 (= e!373492 Unit!22215)))

(declare-fun lt!302649 () Unit!22210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38551 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22210)

(assert (=> b!650912 (= lt!302649 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302651 (select (arr!18476 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650912 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302636 () Unit!22210)

(declare-datatypes ((List!12570 0))(
  ( (Nil!12567) (Cons!12566 (h!13611 (_ BitVec 64)) (t!18806 List!12570)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38551 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12570) Unit!22210)

(assert (=> b!650912 (= lt!302636 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12567))))

(declare-fun arrayNoDuplicates!0 (array!38551 (_ BitVec 32) List!12570) Bool)

(assert (=> b!650912 (arrayNoDuplicates!0 lt!302651 #b00000000000000000000000000000000 Nil!12567)))

(declare-fun lt!302637 () Unit!22210)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38551 (_ BitVec 32) (_ BitVec 32)) Unit!22210)

(assert (=> b!650912 (= lt!302637 (lemmaNoDuplicateFromThenFromBigger!0 lt!302651 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650912 (arrayNoDuplicates!0 lt!302651 j!136 Nil!12567)))

(declare-fun lt!302650 () Unit!22210)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38551 (_ BitVec 64) (_ BitVec 32) List!12570) Unit!22210)

(assert (=> b!650912 (= lt!302650 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302651 (select (arr!18476 a!2986) j!136) j!136 Nil!12567))))

(assert (=> b!650912 false))

(declare-fun b!650913 () Bool)

(declare-fun res!422134 () Bool)

(assert (=> b!650913 (=> (not res!422134) (not e!373486))))

(assert (=> b!650913 (= res!422134 (validKeyInArray!0 (select (arr!18476 a!2986) j!136)))))

(declare-fun b!650914 () Bool)

(declare-fun e!373491 () Bool)

(assert (=> b!650914 (= e!373480 e!373491)))

(declare-fun res!422140 () Bool)

(assert (=> b!650914 (=> (not res!422140) (not e!373491))))

(assert (=> b!650914 (= res!422140 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) j!136))))

(declare-fun b!650915 () Bool)

(declare-fun res!422142 () Bool)

(assert (=> b!650915 (=> (not res!422142) (not e!373483))))

(assert (=> b!650915 (= res!422142 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18476 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650916 () Bool)

(assert (=> b!650916 (= e!373486 e!373483)))

(declare-fun res!422137 () Bool)

(assert (=> b!650916 (=> (not res!422137) (not e!373483))))

(declare-fun lt!302648 () SeekEntryResult!6923)

(assert (=> b!650916 (= res!422137 (or (= lt!302648 (MissingZero!6923 i!1108)) (= lt!302648 (MissingVacant!6923 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38551 (_ BitVec 32)) SeekEntryResult!6923)

(assert (=> b!650916 (= lt!302648 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650917 () Bool)

(declare-fun e!373478 () Bool)

(assert (=> b!650917 (= e!373482 e!373478)))

(declare-fun res!422132 () Bool)

(assert (=> b!650917 (=> res!422132 e!373478)))

(assert (=> b!650917 (= res!422132 (bvsge index!984 j!136))))

(declare-fun lt!302640 () Unit!22210)

(assert (=> b!650917 (= lt!302640 e!373492)))

(declare-fun c!74753 () Bool)

(assert (=> b!650917 (= c!74753 (bvslt j!136 index!984))))

(declare-fun b!650918 () Bool)

(assert (=> b!650918 (= e!373481 e!373488)))

(declare-fun res!422133 () Bool)

(assert (=> b!650918 (=> (not res!422133) (not e!373488))))

(assert (=> b!650918 (= res!422133 (and (= lt!302641 (Found!6923 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18476 a!2986) index!984) (select (arr!18476 a!2986) j!136))) (not (= (select (arr!18476 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650918 (= lt!302641 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18476 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650919 () Bool)

(declare-fun e!373487 () Bool)

(assert (=> b!650919 (= e!373487 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) index!984))))

(declare-fun b!650920 () Bool)

(assert (=> b!650920 (= e!373491 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) index!984))))

(declare-fun b!650921 () Bool)

(assert (=> b!650921 (= e!373478 true)))

(assert (=> b!650921 (arrayNoDuplicates!0 lt!302651 #b00000000000000000000000000000000 Nil!12567)))

(declare-fun lt!302646 () Unit!22210)

(assert (=> b!650921 (= lt!302646 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12567))))

(assert (=> b!650921 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302642 () Unit!22210)

(assert (=> b!650921 (= lt!302642 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302651 (select (arr!18476 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650921 e!373487))

(declare-fun res!422129 () Bool)

(assert (=> b!650921 (=> (not res!422129) (not e!373487))))

(assert (=> b!650921 (= res!422129 (arrayContainsKey!0 lt!302651 (select (arr!18476 a!2986) j!136) j!136))))

(declare-fun b!650905 () Bool)

(declare-fun res!422135 () Bool)

(assert (=> b!650905 (=> (not res!422135) (not e!373483))))

(assert (=> b!650905 (= res!422135 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12567))))

(declare-fun res!422143 () Bool)

(assert (=> start!59014 (=> (not res!422143) (not e!373486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59014 (= res!422143 (validMask!0 mask!3053))))

(assert (=> start!59014 e!373486))

(assert (=> start!59014 true))

(declare-fun array_inv!14250 (array!38551) Bool)

(assert (=> start!59014 (array_inv!14250 a!2986)))

(assert (= (and start!59014 res!422143) b!650904))

(assert (= (and b!650904 res!422141) b!650913))

(assert (= (and b!650913 res!422134) b!650911))

(assert (= (and b!650911 res!422146) b!650903))

(assert (= (and b!650903 res!422145) b!650916))

(assert (= (and b!650916 res!422137) b!650908))

(assert (= (and b!650908 res!422147) b!650905))

(assert (= (and b!650905 res!422135) b!650915))

(assert (= (and b!650915 res!422142) b!650900))

(assert (= (and b!650900 res!422130) b!650918))

(assert (= (and b!650918 res!422133) b!650910))

(assert (= (and b!650910 res!422139) b!650899))

(assert (= (and b!650910 c!74752) b!650907))

(assert (= (and b!650910 (not c!74752)) b!650901))

(assert (= (and b!650910 (not res!422144)) b!650902))

(assert (= (and b!650902 res!422138) b!650906))

(assert (= (and b!650906 (not res!422131)) b!650914))

(assert (= (and b!650914 res!422140) b!650920))

(assert (= (and b!650902 (not res!422136)) b!650917))

(assert (= (and b!650917 c!74753) b!650912))

(assert (= (and b!650917 (not c!74753)) b!650909))

(assert (= (and b!650917 (not res!422132)) b!650921))

(assert (= (and b!650921 res!422129) b!650919))

(declare-fun m!624125 () Bool)

(assert (=> b!650900 m!624125))

(declare-fun m!624127 () Bool)

(assert (=> b!650900 m!624127))

(declare-fun m!624129 () Bool)

(assert (=> b!650919 m!624129))

(assert (=> b!650919 m!624129))

(declare-fun m!624131 () Bool)

(assert (=> b!650919 m!624131))

(declare-fun m!624133 () Bool)

(assert (=> b!650903 m!624133))

(assert (=> b!650920 m!624129))

(assert (=> b!650920 m!624129))

(assert (=> b!650920 m!624131))

(assert (=> b!650906 m!624129))

(declare-fun m!624135 () Bool)

(assert (=> b!650915 m!624135))

(assert (=> b!650913 m!624129))

(assert (=> b!650913 m!624129))

(declare-fun m!624137 () Bool)

(assert (=> b!650913 m!624137))

(declare-fun m!624139 () Bool)

(assert (=> b!650908 m!624139))

(declare-fun m!624141 () Bool)

(assert (=> b!650910 m!624141))

(declare-fun m!624143 () Bool)

(assert (=> b!650910 m!624143))

(assert (=> b!650910 m!624129))

(assert (=> b!650910 m!624129))

(declare-fun m!624145 () Bool)

(assert (=> b!650910 m!624145))

(declare-fun m!624147 () Bool)

(assert (=> b!650910 m!624147))

(declare-fun m!624149 () Bool)

(assert (=> b!650910 m!624149))

(declare-fun m!624151 () Bool)

(assert (=> b!650910 m!624151))

(assert (=> b!650910 m!624125))

(assert (=> b!650912 m!624129))

(declare-fun m!624153 () Bool)

(assert (=> b!650912 m!624153))

(declare-fun m!624155 () Bool)

(assert (=> b!650912 m!624155))

(declare-fun m!624157 () Bool)

(assert (=> b!650912 m!624157))

(assert (=> b!650912 m!624129))

(declare-fun m!624159 () Bool)

(assert (=> b!650912 m!624159))

(assert (=> b!650912 m!624129))

(declare-fun m!624161 () Bool)

(assert (=> b!650912 m!624161))

(assert (=> b!650912 m!624129))

(declare-fun m!624163 () Bool)

(assert (=> b!650912 m!624163))

(declare-fun m!624165 () Bool)

(assert (=> b!650912 m!624165))

(declare-fun m!624167 () Bool)

(assert (=> b!650918 m!624167))

(assert (=> b!650918 m!624129))

(assert (=> b!650918 m!624129))

(declare-fun m!624169 () Bool)

(assert (=> b!650918 m!624169))

(declare-fun m!624171 () Bool)

(assert (=> b!650911 m!624171))

(declare-fun m!624173 () Bool)

(assert (=> start!59014 m!624173))

(declare-fun m!624175 () Bool)

(assert (=> start!59014 m!624175))

(assert (=> b!650921 m!624129))

(declare-fun m!624177 () Bool)

(assert (=> b!650921 m!624177))

(assert (=> b!650921 m!624129))

(declare-fun m!624179 () Bool)

(assert (=> b!650921 m!624179))

(assert (=> b!650921 m!624129))

(declare-fun m!624181 () Bool)

(assert (=> b!650921 m!624181))

(assert (=> b!650921 m!624165))

(assert (=> b!650921 m!624129))

(assert (=> b!650921 m!624161))

(declare-fun m!624183 () Bool)

(assert (=> b!650916 m!624183))

(declare-fun m!624185 () Bool)

(assert (=> b!650905 m!624185))

(assert (=> b!650914 m!624129))

(assert (=> b!650914 m!624129))

(assert (=> b!650914 m!624177))

(assert (=> b!650902 m!624129))

(assert (=> b!650902 m!624125))

(declare-fun m!624187 () Bool)

(assert (=> b!650902 m!624187))

(push 1)

