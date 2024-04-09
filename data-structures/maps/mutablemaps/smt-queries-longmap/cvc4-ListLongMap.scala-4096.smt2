; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56086 () Bool)

(assert start!56086)

(declare-fun b!618014 () Bool)

(declare-datatypes ((Unit!20310 0))(
  ( (Unit!20311) )
))
(declare-fun e!354419 () Unit!20310)

(declare-fun Unit!20312 () Unit!20310)

(assert (=> b!618014 (= e!354419 Unit!20312)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37519 0))(
  ( (array!37520 (arr!18002 (Array (_ BitVec 32) (_ BitVec 64))) (size!18366 (_ BitVec 32))) )
))
(declare-fun lt!284909 () array!37519)

(declare-fun e!354407 () Bool)

(declare-fun b!618015 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37519)

(declare-fun arrayContainsKey!0 (array!37519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!618015 (= e!354407 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) index!984))))

(declare-fun b!618016 () Bool)

(declare-fun e!354413 () Unit!20310)

(declare-fun Unit!20313 () Unit!20310)

(assert (=> b!618016 (= e!354413 Unit!20313)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!398276 () Bool)

(assert (=> b!618016 (= res!398276 (= (select (store (arr!18002 a!2986) i!1108 k!1786) index!984) (select (arr!18002 a!2986) j!136)))))

(declare-fun e!354421 () Bool)

(assert (=> b!618016 (=> (not res!398276) (not e!354421))))

(assert (=> b!618016 e!354421))

(declare-fun c!70246 () Bool)

(assert (=> b!618016 (= c!70246 (bvslt j!136 index!984))))

(declare-fun lt!284901 () Unit!20310)

(declare-fun e!354408 () Unit!20310)

(assert (=> b!618016 (= lt!284901 e!354408)))

(declare-fun c!70244 () Bool)

(assert (=> b!618016 (= c!70244 (bvslt index!984 j!136))))

(declare-fun lt!284904 () Unit!20310)

(assert (=> b!618016 (= lt!284904 e!354419)))

(assert (=> b!618016 false))

(declare-fun b!618017 () Bool)

(declare-fun e!354412 () Bool)

(declare-fun e!354409 () Bool)

(assert (=> b!618017 (= e!354412 e!354409)))

(declare-fun res!398265 () Bool)

(assert (=> b!618017 (=> (not res!398265) (not e!354409))))

(declare-datatypes ((SeekEntryResult!6449 0))(
  ( (MissingZero!6449 (index!28079 (_ BitVec 32))) (Found!6449 (index!28080 (_ BitVec 32))) (Intermediate!6449 (undefined!7261 Bool) (index!28081 (_ BitVec 32)) (x!56890 (_ BitVec 32))) (Undefined!6449) (MissingVacant!6449 (index!28082 (_ BitVec 32))) )
))
(declare-fun lt!284897 () SeekEntryResult!6449)

(assert (=> b!618017 (= res!398265 (or (= lt!284897 (MissingZero!6449 i!1108)) (= lt!284897 (MissingVacant!6449 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37519 (_ BitVec 32)) SeekEntryResult!6449)

(assert (=> b!618017 (= lt!284897 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!618018 () Bool)

(declare-fun e!354420 () Bool)

(declare-fun lt!284899 () SeekEntryResult!6449)

(declare-fun lt!284915 () SeekEntryResult!6449)

(assert (=> b!618018 (= e!354420 (= lt!284899 lt!284915))))

(declare-fun b!618019 () Bool)

(declare-fun res!398267 () Bool)

(assert (=> b!618019 (=> (not res!398267) (not e!354409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37519 (_ BitVec 32)) Bool)

(assert (=> b!618019 (= res!398267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!618020 () Bool)

(declare-fun res!398270 () Bool)

(assert (=> b!618020 (=> (not res!398270) (not e!354409))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!618020 (= res!398270 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18002 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!618021 () Bool)

(declare-fun e!354418 () Unit!20310)

(declare-fun Unit!20314 () Unit!20310)

(assert (=> b!618021 (= e!354418 Unit!20314)))

(declare-fun res!398269 () Bool)

(assert (=> start!56086 (=> (not res!398269) (not e!354412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56086 (= res!398269 (validMask!0 mask!3053))))

(assert (=> start!56086 e!354412))

(assert (=> start!56086 true))

(declare-fun array_inv!13776 (array!37519) Bool)

(assert (=> start!56086 (array_inv!13776 a!2986)))

(declare-fun b!618022 () Bool)

(declare-fun Unit!20315 () Unit!20310)

(assert (=> b!618022 (= e!354413 Unit!20315)))

(declare-fun b!618023 () Bool)

(declare-fun e!354411 () Bool)

(declare-fun e!354410 () Bool)

(assert (=> b!618023 (= e!354411 e!354410)))

(declare-fun res!398275 () Bool)

(assert (=> b!618023 (=> (not res!398275) (not e!354410))))

(assert (=> b!618023 (= res!398275 (and (= lt!284899 (Found!6449 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18002 a!2986) index!984) (select (arr!18002 a!2986) j!136))) (not (= (select (arr!18002 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37519 (_ BitVec 32)) SeekEntryResult!6449)

(assert (=> b!618023 (= lt!284899 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18002 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!618024 () Bool)

(declare-fun res!398260 () Bool)

(assert (=> b!618024 (=> (not res!398260) (not e!354412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!618024 (= res!398260 (validKeyInArray!0 (select (arr!18002 a!2986) j!136)))))

(declare-fun b!618025 () Bool)

(declare-fun res!398264 () Bool)

(assert (=> b!618025 (=> (not res!398264) (not e!354409))))

(declare-datatypes ((List!12096 0))(
  ( (Nil!12093) (Cons!12092 (h!13137 (_ BitVec 64)) (t!18332 List!12096)) )
))
(declare-fun arrayNoDuplicates!0 (array!37519 (_ BitVec 32) List!12096) Bool)

(assert (=> b!618025 (= res!398264 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12093))))

(declare-fun b!618026 () Bool)

(assert (=> b!618026 false))

(declare-fun lt!284903 () Unit!20310)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37519 (_ BitVec 64) (_ BitVec 32) List!12096) Unit!20310)

(assert (=> b!618026 (= lt!284903 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284909 (select (arr!18002 a!2986) j!136) j!136 Nil!12093))))

(assert (=> b!618026 (arrayNoDuplicates!0 lt!284909 j!136 Nil!12093)))

(declare-fun lt!284900 () Unit!20310)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37519 (_ BitVec 32) (_ BitVec 32)) Unit!20310)

(assert (=> b!618026 (= lt!284900 (lemmaNoDuplicateFromThenFromBigger!0 lt!284909 #b00000000000000000000000000000000 j!136))))

(assert (=> b!618026 (arrayNoDuplicates!0 lt!284909 #b00000000000000000000000000000000 Nil!12093)))

(declare-fun lt!284908 () Unit!20310)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37519 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12096) Unit!20310)

(assert (=> b!618026 (= lt!284908 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12093))))

(assert (=> b!618026 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284898 () Unit!20310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37519 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20310)

(assert (=> b!618026 (= lt!284898 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284909 (select (arr!18002 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20316 () Unit!20310)

(assert (=> b!618026 (= e!354408 Unit!20316)))

(declare-fun b!618027 () Bool)

(declare-fun res!398268 () Bool)

(assert (=> b!618027 (= res!398268 (bvsge j!136 index!984))))

(declare-fun e!354417 () Bool)

(assert (=> b!618027 (=> res!398268 e!354417)))

(assert (=> b!618027 (= e!354421 e!354417)))

(declare-fun b!618028 () Bool)

(declare-fun res!398271 () Bool)

(assert (=> b!618028 (=> (not res!398271) (not e!354412))))

(assert (=> b!618028 (= res!398271 (validKeyInArray!0 k!1786))))

(declare-fun e!354415 () Bool)

(declare-fun b!618029 () Bool)

(assert (=> b!618029 (= e!354415 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) index!984))))

(declare-fun b!618030 () Bool)

(declare-fun Unit!20317 () Unit!20310)

(assert (=> b!618030 (= e!354408 Unit!20317)))

(declare-fun b!618031 () Bool)

(assert (=> b!618031 false))

(declare-fun lt!284902 () Unit!20310)

(assert (=> b!618031 (= lt!284902 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284909 (select (arr!18002 a!2986) j!136) index!984 Nil!12093))))

(assert (=> b!618031 (arrayNoDuplicates!0 lt!284909 index!984 Nil!12093)))

(declare-fun lt!284906 () Unit!20310)

(assert (=> b!618031 (= lt!284906 (lemmaNoDuplicateFromThenFromBigger!0 lt!284909 #b00000000000000000000000000000000 index!984))))

(assert (=> b!618031 (arrayNoDuplicates!0 lt!284909 #b00000000000000000000000000000000 Nil!12093)))

(declare-fun lt!284914 () Unit!20310)

(assert (=> b!618031 (= lt!284914 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12093))))

(assert (=> b!618031 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284912 () Unit!20310)

(assert (=> b!618031 (= lt!284912 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284909 (select (arr!18002 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!618031 e!354415))

(declare-fun res!398263 () Bool)

(assert (=> b!618031 (=> (not res!398263) (not e!354415))))

(assert (=> b!618031 (= res!398263 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) j!136))))

(declare-fun Unit!20318 () Unit!20310)

(assert (=> b!618031 (= e!354419 Unit!20318)))

(declare-fun b!618032 () Bool)

(declare-fun Unit!20319 () Unit!20310)

(assert (=> b!618032 (= e!354418 Unit!20319)))

(assert (=> b!618032 false))

(declare-fun b!618033 () Bool)

(declare-fun res!398274 () Bool)

(assert (=> b!618033 (=> (not res!398274) (not e!354412))))

(assert (=> b!618033 (= res!398274 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!618034 () Bool)

(declare-fun res!398272 () Bool)

(assert (=> b!618034 (=> (not res!398272) (not e!354412))))

(assert (=> b!618034 (= res!398272 (and (= (size!18366 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18366 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18366 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!618035 () Bool)

(assert (=> b!618035 (= e!354409 e!354411)))

(declare-fun res!398273 () Bool)

(assert (=> b!618035 (=> (not res!398273) (not e!354411))))

(assert (=> b!618035 (= res!398273 (= (select (store (arr!18002 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!618035 (= lt!284909 (array!37520 (store (arr!18002 a!2986) i!1108 k!1786) (size!18366 a!2986)))))

(declare-fun b!618036 () Bool)

(declare-fun e!354414 () Bool)

(assert (=> b!618036 (= e!354410 (not e!354414))))

(declare-fun res!398261 () Bool)

(assert (=> b!618036 (=> res!398261 e!354414)))

(declare-fun lt!284907 () SeekEntryResult!6449)

(assert (=> b!618036 (= res!398261 (not (= lt!284907 (MissingVacant!6449 vacantSpotIndex!68))))))

(declare-fun lt!284916 () Unit!20310)

(assert (=> b!618036 (= lt!284916 e!354413)))

(declare-fun c!70247 () Bool)

(assert (=> b!618036 (= c!70247 (= lt!284907 (Found!6449 index!984)))))

(declare-fun lt!284905 () Unit!20310)

(assert (=> b!618036 (= lt!284905 e!354418)))

(declare-fun c!70245 () Bool)

(assert (=> b!618036 (= c!70245 (= lt!284907 Undefined!6449))))

(declare-fun lt!284913 () (_ BitVec 64))

(assert (=> b!618036 (= lt!284907 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284913 lt!284909 mask!3053))))

(assert (=> b!618036 e!354420))

(declare-fun res!398266 () Bool)

(assert (=> b!618036 (=> (not res!398266) (not e!354420))))

(declare-fun lt!284910 () (_ BitVec 32))

(assert (=> b!618036 (= res!398266 (= lt!284915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284910 vacantSpotIndex!68 lt!284913 lt!284909 mask!3053)))))

(assert (=> b!618036 (= lt!284915 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284910 vacantSpotIndex!68 (select (arr!18002 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!618036 (= lt!284913 (select (store (arr!18002 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284911 () Unit!20310)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37519 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20310)

(assert (=> b!618036 (= lt!284911 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284910 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!618036 (= lt!284910 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!618037 () Bool)

(assert (=> b!618037 (= e!354414 true)))

(assert (=> b!618037 (= (select (store (arr!18002 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!618038 () Bool)

(declare-fun res!398262 () Bool)

(assert (=> b!618038 (= res!398262 (arrayContainsKey!0 lt!284909 (select (arr!18002 a!2986) j!136) j!136))))

(assert (=> b!618038 (=> (not res!398262) (not e!354407))))

(assert (=> b!618038 (= e!354417 e!354407)))

(assert (= (and start!56086 res!398269) b!618034))

(assert (= (and b!618034 res!398272) b!618024))

(assert (= (and b!618024 res!398260) b!618028))

(assert (= (and b!618028 res!398271) b!618033))

(assert (= (and b!618033 res!398274) b!618017))

(assert (= (and b!618017 res!398265) b!618019))

(assert (= (and b!618019 res!398267) b!618025))

(assert (= (and b!618025 res!398264) b!618020))

(assert (= (and b!618020 res!398270) b!618035))

(assert (= (and b!618035 res!398273) b!618023))

(assert (= (and b!618023 res!398275) b!618036))

(assert (= (and b!618036 res!398266) b!618018))

(assert (= (and b!618036 c!70245) b!618032))

(assert (= (and b!618036 (not c!70245)) b!618021))

(assert (= (and b!618036 c!70247) b!618016))

(assert (= (and b!618036 (not c!70247)) b!618022))

(assert (= (and b!618016 res!398276) b!618027))

(assert (= (and b!618027 (not res!398268)) b!618038))

(assert (= (and b!618038 res!398262) b!618015))

(assert (= (and b!618016 c!70246) b!618026))

(assert (= (and b!618016 (not c!70246)) b!618030))

(assert (= (and b!618016 c!70244) b!618031))

(assert (= (and b!618016 (not c!70244)) b!618014))

(assert (= (and b!618031 res!398263) b!618029))

(assert (= (and b!618036 (not res!398261)) b!618037))

(declare-fun m!594119 () Bool)

(assert (=> b!618025 m!594119))

(declare-fun m!594121 () Bool)

(assert (=> b!618015 m!594121))

(assert (=> b!618015 m!594121))

(declare-fun m!594123 () Bool)

(assert (=> b!618015 m!594123))

(declare-fun m!594125 () Bool)

(assert (=> start!56086 m!594125))

(declare-fun m!594127 () Bool)

(assert (=> start!56086 m!594127))

(assert (=> b!618026 m!594121))

(assert (=> b!618026 m!594121))

(declare-fun m!594129 () Bool)

(assert (=> b!618026 m!594129))

(assert (=> b!618026 m!594121))

(declare-fun m!594131 () Bool)

(assert (=> b!618026 m!594131))

(declare-fun m!594133 () Bool)

(assert (=> b!618026 m!594133))

(declare-fun m!594135 () Bool)

(assert (=> b!618026 m!594135))

(declare-fun m!594137 () Bool)

(assert (=> b!618026 m!594137))

(declare-fun m!594139 () Bool)

(assert (=> b!618026 m!594139))

(assert (=> b!618026 m!594121))

(declare-fun m!594141 () Bool)

(assert (=> b!618026 m!594141))

(declare-fun m!594143 () Bool)

(assert (=> b!618019 m!594143))

(declare-fun m!594145 () Bool)

(assert (=> b!618016 m!594145))

(declare-fun m!594147 () Bool)

(assert (=> b!618016 m!594147))

(assert (=> b!618016 m!594121))

(declare-fun m!594149 () Bool)

(assert (=> b!618036 m!594149))

(declare-fun m!594151 () Bool)

(assert (=> b!618036 m!594151))

(assert (=> b!618036 m!594121))

(assert (=> b!618036 m!594121))

(declare-fun m!594153 () Bool)

(assert (=> b!618036 m!594153))

(declare-fun m!594155 () Bool)

(assert (=> b!618036 m!594155))

(declare-fun m!594157 () Bool)

(assert (=> b!618036 m!594157))

(declare-fun m!594159 () Bool)

(assert (=> b!618036 m!594159))

(assert (=> b!618036 m!594145))

(assert (=> b!618037 m!594145))

(assert (=> b!618037 m!594147))

(assert (=> b!618031 m!594121))

(declare-fun m!594161 () Bool)

(assert (=> b!618031 m!594161))

(assert (=> b!618031 m!594121))

(declare-fun m!594163 () Bool)

(assert (=> b!618031 m!594163))

(declare-fun m!594165 () Bool)

(assert (=> b!618031 m!594165))

(assert (=> b!618031 m!594121))

(declare-fun m!594167 () Bool)

(assert (=> b!618031 m!594167))

(assert (=> b!618031 m!594121))

(assert (=> b!618031 m!594135))

(declare-fun m!594169 () Bool)

(assert (=> b!618031 m!594169))

(assert (=> b!618031 m!594121))

(declare-fun m!594171 () Bool)

(assert (=> b!618031 m!594171))

(assert (=> b!618031 m!594137))

(assert (=> b!618029 m!594121))

(assert (=> b!618029 m!594121))

(assert (=> b!618029 m!594123))

(declare-fun m!594173 () Bool)

(assert (=> b!618033 m!594173))

(assert (=> b!618035 m!594145))

(declare-fun m!594175 () Bool)

(assert (=> b!618035 m!594175))

(declare-fun m!594177 () Bool)

(assert (=> b!618028 m!594177))

(declare-fun m!594179 () Bool)

(assert (=> b!618017 m!594179))

(assert (=> b!618024 m!594121))

(assert (=> b!618024 m!594121))

(declare-fun m!594181 () Bool)

(assert (=> b!618024 m!594181))

(assert (=> b!618038 m!594121))

(assert (=> b!618038 m!594121))

(assert (=> b!618038 m!594167))

(declare-fun m!594183 () Bool)

(assert (=> b!618020 m!594183))

(declare-fun m!594185 () Bool)

(assert (=> b!618023 m!594185))

(assert (=> b!618023 m!594121))

(assert (=> b!618023 m!594121))

(declare-fun m!594187 () Bool)

(assert (=> b!618023 m!594187))

(push 1)

