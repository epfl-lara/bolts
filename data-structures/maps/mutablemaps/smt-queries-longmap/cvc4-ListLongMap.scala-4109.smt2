; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56164 () Bool)

(assert start!56164)

(declare-fun b!620895 () Bool)

(declare-fun res!400214 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620895 (= res!400214 (bvsge j!136 index!984))))

(declare-fun e!356123 () Bool)

(assert (=> b!620895 (=> res!400214 e!356123)))

(declare-fun e!356125 () Bool)

(assert (=> b!620895 (= e!356125 e!356123)))

(declare-fun b!620896 () Bool)

(declare-fun res!400216 () Bool)

(declare-fun e!356127 () Bool)

(assert (=> b!620896 (=> (not res!400216) (not e!356127))))

(declare-datatypes ((array!37597 0))(
  ( (array!37598 (arr!18041 (Array (_ BitVec 32) (_ BitVec 64))) (size!18405 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37597)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37597 (_ BitVec 32)) Bool)

(assert (=> b!620896 (= res!400216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620897 () Bool)

(declare-datatypes ((Unit!20700 0))(
  ( (Unit!20701) )
))
(declare-fun e!356120 () Unit!20700)

(declare-fun Unit!20702 () Unit!20700)

(assert (=> b!620897 (= e!356120 Unit!20702)))

(assert (=> b!620897 false))

(declare-fun b!620898 () Bool)

(declare-fun e!356121 () Bool)

(declare-datatypes ((SeekEntryResult!6488 0))(
  ( (MissingZero!6488 (index!28235 (_ BitVec 32))) (Found!6488 (index!28236 (_ BitVec 32))) (Intermediate!6488 (undefined!7300 Bool) (index!28237 (_ BitVec 32)) (x!57033 (_ BitVec 32))) (Undefined!6488) (MissingVacant!6488 (index!28238 (_ BitVec 32))) )
))
(declare-fun lt!287251 () SeekEntryResult!6488)

(declare-fun lt!287254 () SeekEntryResult!6488)

(assert (=> b!620898 (= e!356121 (= lt!287251 lt!287254))))

(declare-fun b!620899 () Bool)

(assert (=> b!620899 false))

(declare-fun lt!287246 () Unit!20700)

(declare-fun lt!287241 () array!37597)

(declare-datatypes ((List!12135 0))(
  ( (Nil!12132) (Cons!12131 (h!13176 (_ BitVec 64)) (t!18371 List!12135)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37597 (_ BitVec 64) (_ BitVec 32) List!12135) Unit!20700)

(assert (=> b!620899 (= lt!287246 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287241 (select (arr!18041 a!2986) j!136) j!136 Nil!12132))))

(declare-fun arrayNoDuplicates!0 (array!37597 (_ BitVec 32) List!12135) Bool)

(assert (=> b!620899 (arrayNoDuplicates!0 lt!287241 j!136 Nil!12132)))

(declare-fun lt!287237 () Unit!20700)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37597 (_ BitVec 32) (_ BitVec 32)) Unit!20700)

(assert (=> b!620899 (= lt!287237 (lemmaNoDuplicateFromThenFromBigger!0 lt!287241 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620899 (arrayNoDuplicates!0 lt!287241 #b00000000000000000000000000000000 Nil!12132)))

(declare-fun lt!287238 () Unit!20700)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12135) Unit!20700)

(assert (=> b!620899 (= lt!287238 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12132))))

(declare-fun arrayContainsKey!0 (array!37597 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620899 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!287250 () Unit!20700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37597 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20700)

(assert (=> b!620899 (= lt!287250 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287241 (select (arr!18041 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!356126 () Unit!20700)

(declare-fun Unit!20703 () Unit!20700)

(assert (=> b!620899 (= e!356126 Unit!20703)))

(declare-fun b!620900 () Bool)

(declare-fun e!356118 () Bool)

(assert (=> b!620900 (= e!356118 e!356127)))

(declare-fun res!400219 () Bool)

(assert (=> b!620900 (=> (not res!400219) (not e!356127))))

(declare-fun lt!287245 () SeekEntryResult!6488)

(assert (=> b!620900 (= res!400219 (or (= lt!287245 (MissingZero!6488 i!1108)) (= lt!287245 (MissingVacant!6488 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37597 (_ BitVec 32)) SeekEntryResult!6488)

(assert (=> b!620900 (= lt!287245 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!620901 () Bool)

(declare-fun e!356119 () Bool)

(assert (=> b!620901 (= e!356127 e!356119)))

(declare-fun res!400212 () Bool)

(assert (=> b!620901 (=> (not res!400212) (not e!356119))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!620901 (= res!400212 (= (select (store (arr!18041 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!620901 (= lt!287241 (array!37598 (store (arr!18041 a!2986) i!1108 k!1786) (size!18405 a!2986)))))

(declare-fun b!620902 () Bool)

(assert (=> b!620902 false))

(declare-fun lt!287239 () Unit!20700)

(assert (=> b!620902 (= lt!287239 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!287241 (select (arr!18041 a!2986) j!136) index!984 Nil!12132))))

(assert (=> b!620902 (arrayNoDuplicates!0 lt!287241 index!984 Nil!12132)))

(declare-fun lt!287247 () Unit!20700)

(assert (=> b!620902 (= lt!287247 (lemmaNoDuplicateFromThenFromBigger!0 lt!287241 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620902 (arrayNoDuplicates!0 lt!287241 #b00000000000000000000000000000000 Nil!12132)))

(declare-fun lt!287252 () Unit!20700)

(assert (=> b!620902 (= lt!287252 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12132))))

(assert (=> b!620902 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!287242 () Unit!20700)

(assert (=> b!620902 (= lt!287242 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!287241 (select (arr!18041 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356128 () Bool)

(assert (=> b!620902 e!356128))

(declare-fun res!400218 () Bool)

(assert (=> b!620902 (=> (not res!400218) (not e!356128))))

(assert (=> b!620902 (= res!400218 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) j!136))))

(declare-fun e!356129 () Unit!20700)

(declare-fun Unit!20704 () Unit!20700)

(assert (=> b!620902 (= e!356129 Unit!20704)))

(declare-fun b!620903 () Bool)

(declare-fun Unit!20705 () Unit!20700)

(assert (=> b!620903 (= e!356126 Unit!20705)))

(declare-fun b!620904 () Bool)

(declare-fun res!400207 () Bool)

(assert (=> b!620904 (=> (not res!400207) (not e!356118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620904 (= res!400207 (validKeyInArray!0 (select (arr!18041 a!2986) j!136)))))

(declare-fun b!620905 () Bool)

(declare-fun res!400213 () Bool)

(assert (=> b!620905 (=> (not res!400213) (not e!356127))))

(assert (=> b!620905 (= res!400213 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12132))))

(declare-fun b!620906 () Bool)

(declare-fun res!400215 () Bool)

(assert (=> b!620906 (=> (not res!400215) (not e!356118))))

(assert (=> b!620906 (= res!400215 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620907 () Bool)

(declare-fun res!400220 () Bool)

(assert (=> b!620907 (= res!400220 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) j!136))))

(declare-fun e!356122 () Bool)

(assert (=> b!620907 (=> (not res!400220) (not e!356122))))

(assert (=> b!620907 (= e!356123 e!356122)))

(declare-fun b!620908 () Bool)

(declare-fun e!356130 () Bool)

(assert (=> b!620908 (= e!356130 (not true))))

(declare-fun lt!287249 () Unit!20700)

(declare-fun e!356124 () Unit!20700)

(assert (=> b!620908 (= lt!287249 e!356124)))

(declare-fun c!70712 () Bool)

(declare-fun lt!287243 () SeekEntryResult!6488)

(assert (=> b!620908 (= c!70712 (= lt!287243 (Found!6488 index!984)))))

(declare-fun lt!287248 () Unit!20700)

(assert (=> b!620908 (= lt!287248 e!356120)))

(declare-fun c!70713 () Bool)

(assert (=> b!620908 (= c!70713 (= lt!287243 Undefined!6488))))

(declare-fun lt!287244 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37597 (_ BitVec 32)) SeekEntryResult!6488)

(assert (=> b!620908 (= lt!287243 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!287244 lt!287241 mask!3053))))

(assert (=> b!620908 e!356121))

(declare-fun res!400205 () Bool)

(assert (=> b!620908 (=> (not res!400205) (not e!356121))))

(declare-fun lt!287253 () (_ BitVec 32))

(assert (=> b!620908 (= res!400205 (= lt!287254 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287253 vacantSpotIndex!68 lt!287244 lt!287241 mask!3053)))))

(assert (=> b!620908 (= lt!287254 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!287253 vacantSpotIndex!68 (select (arr!18041 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620908 (= lt!287244 (select (store (arr!18041 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!287256 () Unit!20700)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20700)

(assert (=> b!620908 (= lt!287256 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!287253 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620908 (= lt!287253 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620909 () Bool)

(declare-fun Unit!20706 () Unit!20700)

(assert (=> b!620909 (= e!356124 Unit!20706)))

(declare-fun res!400206 () Bool)

(assert (=> b!620909 (= res!400206 (= (select (store (arr!18041 a!2986) i!1108 k!1786) index!984) (select (arr!18041 a!2986) j!136)))))

(assert (=> b!620909 (=> (not res!400206) (not e!356125))))

(assert (=> b!620909 e!356125))

(declare-fun c!70714 () Bool)

(assert (=> b!620909 (= c!70714 (bvslt j!136 index!984))))

(declare-fun lt!287240 () Unit!20700)

(assert (=> b!620909 (= lt!287240 e!356126)))

(declare-fun c!70715 () Bool)

(assert (=> b!620909 (= c!70715 (bvslt index!984 j!136))))

(declare-fun lt!287255 () Unit!20700)

(assert (=> b!620909 (= lt!287255 e!356129)))

(assert (=> b!620909 false))

(declare-fun b!620910 () Bool)

(assert (=> b!620910 (= e!356122 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) index!984))))

(declare-fun b!620911 () Bool)

(declare-fun Unit!20707 () Unit!20700)

(assert (=> b!620911 (= e!356124 Unit!20707)))

(declare-fun b!620912 () Bool)

(declare-fun res!400210 () Bool)

(assert (=> b!620912 (=> (not res!400210) (not e!356127))))

(assert (=> b!620912 (= res!400210 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18041 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!400211 () Bool)

(assert (=> start!56164 (=> (not res!400211) (not e!356118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56164 (= res!400211 (validMask!0 mask!3053))))

(assert (=> start!56164 e!356118))

(assert (=> start!56164 true))

(declare-fun array_inv!13815 (array!37597) Bool)

(assert (=> start!56164 (array_inv!13815 a!2986)))

(declare-fun b!620913 () Bool)

(declare-fun res!400208 () Bool)

(assert (=> b!620913 (=> (not res!400208) (not e!356118))))

(assert (=> b!620913 (= res!400208 (validKeyInArray!0 k!1786))))

(declare-fun b!620914 () Bool)

(declare-fun Unit!20708 () Unit!20700)

(assert (=> b!620914 (= e!356120 Unit!20708)))

(declare-fun b!620915 () Bool)

(declare-fun Unit!20709 () Unit!20700)

(assert (=> b!620915 (= e!356129 Unit!20709)))

(declare-fun b!620916 () Bool)

(assert (=> b!620916 (= e!356119 e!356130)))

(declare-fun res!400217 () Bool)

(assert (=> b!620916 (=> (not res!400217) (not e!356130))))

(assert (=> b!620916 (= res!400217 (and (= lt!287251 (Found!6488 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18041 a!2986) index!984) (select (arr!18041 a!2986) j!136))) (not (= (select (arr!18041 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!620916 (= lt!287251 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18041 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620917 () Bool)

(assert (=> b!620917 (= e!356128 (arrayContainsKey!0 lt!287241 (select (arr!18041 a!2986) j!136) index!984))))

(declare-fun b!620918 () Bool)

(declare-fun res!400209 () Bool)

(assert (=> b!620918 (=> (not res!400209) (not e!356118))))

(assert (=> b!620918 (= res!400209 (and (= (size!18405 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18405 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18405 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!56164 res!400211) b!620918))

(assert (= (and b!620918 res!400209) b!620904))

(assert (= (and b!620904 res!400207) b!620913))

(assert (= (and b!620913 res!400208) b!620906))

(assert (= (and b!620906 res!400215) b!620900))

(assert (= (and b!620900 res!400219) b!620896))

(assert (= (and b!620896 res!400216) b!620905))

(assert (= (and b!620905 res!400213) b!620912))

(assert (= (and b!620912 res!400210) b!620901))

(assert (= (and b!620901 res!400212) b!620916))

(assert (= (and b!620916 res!400217) b!620908))

(assert (= (and b!620908 res!400205) b!620898))

(assert (= (and b!620908 c!70713) b!620897))

(assert (= (and b!620908 (not c!70713)) b!620914))

(assert (= (and b!620908 c!70712) b!620909))

(assert (= (and b!620908 (not c!70712)) b!620911))

(assert (= (and b!620909 res!400206) b!620895))

(assert (= (and b!620895 (not res!400214)) b!620907))

(assert (= (and b!620907 res!400220) b!620910))

(assert (= (and b!620909 c!70714) b!620899))

(assert (= (and b!620909 (not c!70714)) b!620903))

(assert (= (and b!620909 c!70715) b!620902))

(assert (= (and b!620909 (not c!70715)) b!620915))

(assert (= (and b!620902 res!400218) b!620917))

(declare-fun m!596849 () Bool)

(assert (=> b!620896 m!596849))

(declare-fun m!596851 () Bool)

(assert (=> b!620910 m!596851))

(assert (=> b!620910 m!596851))

(declare-fun m!596853 () Bool)

(assert (=> b!620910 m!596853))

(declare-fun m!596855 () Bool)

(assert (=> b!620916 m!596855))

(assert (=> b!620916 m!596851))

(assert (=> b!620916 m!596851))

(declare-fun m!596857 () Bool)

(assert (=> b!620916 m!596857))

(declare-fun m!596859 () Bool)

(assert (=> b!620905 m!596859))

(assert (=> b!620907 m!596851))

(assert (=> b!620907 m!596851))

(declare-fun m!596861 () Bool)

(assert (=> b!620907 m!596861))

(declare-fun m!596863 () Bool)

(assert (=> b!620906 m!596863))

(declare-fun m!596865 () Bool)

(assert (=> b!620901 m!596865))

(declare-fun m!596867 () Bool)

(assert (=> b!620901 m!596867))

(declare-fun m!596869 () Bool)

(assert (=> start!56164 m!596869))

(declare-fun m!596871 () Bool)

(assert (=> start!56164 m!596871))

(assert (=> b!620917 m!596851))

(assert (=> b!620917 m!596851))

(assert (=> b!620917 m!596853))

(declare-fun m!596873 () Bool)

(assert (=> b!620900 m!596873))

(declare-fun m!596875 () Bool)

(assert (=> b!620908 m!596875))

(declare-fun m!596877 () Bool)

(assert (=> b!620908 m!596877))

(declare-fun m!596879 () Bool)

(assert (=> b!620908 m!596879))

(assert (=> b!620908 m!596851))

(assert (=> b!620908 m!596865))

(declare-fun m!596881 () Bool)

(assert (=> b!620908 m!596881))

(assert (=> b!620908 m!596851))

(declare-fun m!596883 () Bool)

(assert (=> b!620908 m!596883))

(declare-fun m!596885 () Bool)

(assert (=> b!620908 m!596885))

(declare-fun m!596887 () Bool)

(assert (=> b!620899 m!596887))

(assert (=> b!620899 m!596851))

(assert (=> b!620899 m!596851))

(declare-fun m!596889 () Bool)

(assert (=> b!620899 m!596889))

(declare-fun m!596891 () Bool)

(assert (=> b!620899 m!596891))

(assert (=> b!620899 m!596851))

(declare-fun m!596893 () Bool)

(assert (=> b!620899 m!596893))

(declare-fun m!596895 () Bool)

(assert (=> b!620899 m!596895))

(assert (=> b!620899 m!596851))

(declare-fun m!596897 () Bool)

(assert (=> b!620899 m!596897))

(declare-fun m!596899 () Bool)

(assert (=> b!620899 m!596899))

(assert (=> b!620904 m!596851))

(assert (=> b!620904 m!596851))

(declare-fun m!596901 () Bool)

(assert (=> b!620904 m!596901))

(declare-fun m!596903 () Bool)

(assert (=> b!620912 m!596903))

(assert (=> b!620909 m!596865))

(declare-fun m!596905 () Bool)

(assert (=> b!620909 m!596905))

(assert (=> b!620909 m!596851))

(assert (=> b!620902 m!596851))

(declare-fun m!596907 () Bool)

(assert (=> b!620902 m!596907))

(assert (=> b!620902 m!596851))

(declare-fun m!596909 () Bool)

(assert (=> b!620902 m!596909))

(assert (=> b!620902 m!596899))

(assert (=> b!620902 m!596851))

(declare-fun m!596911 () Bool)

(assert (=> b!620902 m!596911))

(assert (=> b!620902 m!596851))

(assert (=> b!620902 m!596861))

(assert (=> b!620902 m!596851))

(declare-fun m!596913 () Bool)

(assert (=> b!620902 m!596913))

(declare-fun m!596915 () Bool)

(assert (=> b!620902 m!596915))

(assert (=> b!620902 m!596895))

(declare-fun m!596917 () Bool)

(assert (=> b!620913 m!596917))

(push 1)

