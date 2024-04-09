; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54884 () Bool)

(assert start!54884)

(declare-fun b!599951 () Bool)

(declare-fun res!385045 () Bool)

(declare-fun e!343021 () Bool)

(assert (=> b!599951 (=> (not res!385045) (not e!343021))))

(declare-datatypes ((array!37082 0))(
  ( (array!37083 (arr!17797 (Array (_ BitVec 32) (_ BitVec 64))) (size!18161 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37082)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37082 (_ BitVec 32)) Bool)

(assert (=> b!599951 (= res!385045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599952 () Bool)

(declare-datatypes ((Unit!18920 0))(
  ( (Unit!18921) )
))
(declare-fun e!343015 () Unit!18920)

(declare-fun Unit!18922 () Unit!18920)

(assert (=> b!599952 (= e!343015 Unit!18922)))

(assert (=> b!599952 false))

(declare-fun b!599953 () Bool)

(declare-fun res!385055 () Bool)

(declare-fun e!343016 () Bool)

(assert (=> b!599953 (=> res!385055 e!343016)))

(declare-datatypes ((List!11891 0))(
  ( (Nil!11888) (Cons!11887 (h!12932 (_ BitVec 64)) (t!18127 List!11891)) )
))
(declare-fun contains!2976 (List!11891 (_ BitVec 64)) Bool)

(assert (=> b!599953 (= res!385055 (contains!2976 Nil!11888 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599954 () Bool)

(declare-fun res!385057 () Bool)

(declare-fun e!343013 () Bool)

(assert (=> b!599954 (=> (not res!385057) (not e!343013))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599954 (= res!385057 (and (= (size!18161 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18161 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18161 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599955 () Bool)

(declare-fun res!385047 () Bool)

(assert (=> b!599955 (=> (not res!385047) (not e!343013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599955 (= res!385047 (validKeyInArray!0 (select (arr!17797 a!2986) j!136)))))

(declare-fun b!599956 () Bool)

(declare-fun res!385046 () Bool)

(assert (=> b!599956 (=> (not res!385046) (not e!343013))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599956 (= res!385046 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!385041 () Bool)

(assert (=> start!54884 (=> (not res!385041) (not e!343013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54884 (= res!385041 (validMask!0 mask!3053))))

(assert (=> start!54884 e!343013))

(assert (=> start!54884 true))

(declare-fun array_inv!13571 (array!37082) Bool)

(assert (=> start!54884 (array_inv!13571 a!2986)))

(declare-fun b!599957 () Bool)

(assert (=> b!599957 (= e!343013 e!343021)))

(declare-fun res!385042 () Bool)

(assert (=> b!599957 (=> (not res!385042) (not e!343021))))

(declare-datatypes ((SeekEntryResult!6244 0))(
  ( (MissingZero!6244 (index!27232 (_ BitVec 32))) (Found!6244 (index!27233 (_ BitVec 32))) (Intermediate!6244 (undefined!7056 Bool) (index!27234 (_ BitVec 32)) (x!56060 (_ BitVec 32))) (Undefined!6244) (MissingVacant!6244 (index!27235 (_ BitVec 32))) )
))
(declare-fun lt!272920 () SeekEntryResult!6244)

(assert (=> b!599957 (= res!385042 (or (= lt!272920 (MissingZero!6244 i!1108)) (= lt!272920 (MissingVacant!6244 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37082 (_ BitVec 32)) SeekEntryResult!6244)

(assert (=> b!599957 (= lt!272920 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!599958 () Bool)

(declare-fun e!343022 () Bool)

(declare-fun e!343020 () Bool)

(assert (=> b!599958 (= e!343022 (not e!343020))))

(declare-fun res!385056 () Bool)

(assert (=> b!599958 (=> res!385056 e!343020)))

(declare-fun lt!272911 () SeekEntryResult!6244)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599958 (= res!385056 (not (= lt!272911 (Found!6244 index!984))))))

(declare-fun lt!272913 () Unit!18920)

(assert (=> b!599958 (= lt!272913 e!343015)))

(declare-fun c!67823 () Bool)

(assert (=> b!599958 (= c!67823 (= lt!272911 Undefined!6244))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!272917 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!272915 () array!37082)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37082 (_ BitVec 32)) SeekEntryResult!6244)

(assert (=> b!599958 (= lt!272911 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272917 lt!272915 mask!3053))))

(declare-fun e!343018 () Bool)

(assert (=> b!599958 e!343018))

(declare-fun res!385043 () Bool)

(assert (=> b!599958 (=> (not res!385043) (not e!343018))))

(declare-fun lt!272909 () (_ BitVec 32))

(declare-fun lt!272914 () SeekEntryResult!6244)

(assert (=> b!599958 (= res!385043 (= lt!272914 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272909 vacantSpotIndex!68 lt!272917 lt!272915 mask!3053)))))

(assert (=> b!599958 (= lt!272914 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272909 vacantSpotIndex!68 (select (arr!17797 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599958 (= lt!272917 (select (store (arr!17797 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272921 () Unit!18920)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37082 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18920)

(assert (=> b!599958 (= lt!272921 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272909 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599958 (= lt!272909 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599959 () Bool)

(declare-fun res!385040 () Bool)

(assert (=> b!599959 (=> res!385040 e!343016)))

(declare-fun noDuplicate!290 (List!11891) Bool)

(assert (=> b!599959 (= res!385040 (not (noDuplicate!290 Nil!11888)))))

(declare-fun b!599960 () Bool)

(assert (=> b!599960 (= e!343016 true)))

(declare-fun lt!272919 () Bool)

(assert (=> b!599960 (= lt!272919 (contains!2976 Nil!11888 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599961 () Bool)

(declare-fun e!343014 () Bool)

(assert (=> b!599961 (= e!343020 e!343014)))

(declare-fun res!385050 () Bool)

(assert (=> b!599961 (=> res!385050 e!343014)))

(declare-fun lt!272910 () (_ BitVec 64))

(assert (=> b!599961 (= res!385050 (or (not (= (select (arr!17797 a!2986) j!136) lt!272917)) (not (= (select (arr!17797 a!2986) j!136) lt!272910)) (bvsge j!136 index!984)))))

(declare-fun e!343019 () Bool)

(assert (=> b!599961 e!343019))

(declare-fun res!385058 () Bool)

(assert (=> b!599961 (=> (not res!385058) (not e!343019))))

(assert (=> b!599961 (= res!385058 (= lt!272910 (select (arr!17797 a!2986) j!136)))))

(assert (=> b!599961 (= lt!272910 (select (store (arr!17797 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!599962 () Bool)

(declare-fun lt!272916 () SeekEntryResult!6244)

(assert (=> b!599962 (= e!343018 (= lt!272916 lt!272914))))

(declare-fun b!599963 () Bool)

(declare-fun e!343023 () Bool)

(assert (=> b!599963 (= e!343023 (arrayContainsKey!0 lt!272915 (select (arr!17797 a!2986) j!136) index!984))))

(declare-fun b!599964 () Bool)

(declare-fun e!343012 () Bool)

(assert (=> b!599964 (= e!343012 e!343022)))

(declare-fun res!385044 () Bool)

(assert (=> b!599964 (=> (not res!385044) (not e!343022))))

(assert (=> b!599964 (= res!385044 (and (= lt!272916 (Found!6244 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17797 a!2986) index!984) (select (arr!17797 a!2986) j!136))) (not (= (select (arr!17797 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599964 (= lt!272916 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17797 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599965 () Bool)

(declare-fun e!343024 () Bool)

(assert (=> b!599965 (= e!343019 e!343024)))

(declare-fun res!385054 () Bool)

(assert (=> b!599965 (=> res!385054 e!343024)))

(assert (=> b!599965 (= res!385054 (or (not (= (select (arr!17797 a!2986) j!136) lt!272917)) (not (= (select (arr!17797 a!2986) j!136) lt!272910)) (bvsge j!136 index!984)))))

(declare-fun b!599966 () Bool)

(declare-fun Unit!18923 () Unit!18920)

(assert (=> b!599966 (= e!343015 Unit!18923)))

(declare-fun b!599967 () Bool)

(declare-fun res!385048 () Bool)

(assert (=> b!599967 (=> (not res!385048) (not e!343013))))

(assert (=> b!599967 (= res!385048 (validKeyInArray!0 k0!1786))))

(declare-fun b!599968 () Bool)

(declare-fun res!385051 () Bool)

(assert (=> b!599968 (=> (not res!385051) (not e!343021))))

(declare-fun arrayNoDuplicates!0 (array!37082 (_ BitVec 32) List!11891) Bool)

(assert (=> b!599968 (= res!385051 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11888))))

(declare-fun b!599969 () Bool)

(assert (=> b!599969 (= e!343014 e!343016)))

(declare-fun res!385039 () Bool)

(assert (=> b!599969 (=> res!385039 e!343016)))

(assert (=> b!599969 (= res!385039 (or (bvsge (size!18161 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18161 a!2986))))))

(assert (=> b!599969 (arrayNoDuplicates!0 lt!272915 j!136 Nil!11888)))

(declare-fun lt!272912 () Unit!18920)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37082 (_ BitVec 32) (_ BitVec 32)) Unit!18920)

(assert (=> b!599969 (= lt!272912 (lemmaNoDuplicateFromThenFromBigger!0 lt!272915 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599969 (arrayNoDuplicates!0 lt!272915 #b00000000000000000000000000000000 Nil!11888)))

(declare-fun lt!272922 () Unit!18920)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37082 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11891) Unit!18920)

(assert (=> b!599969 (= lt!272922 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11888))))

(assert (=> b!599969 (arrayContainsKey!0 lt!272915 (select (arr!17797 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272918 () Unit!18920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37082 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18920)

(assert (=> b!599969 (= lt!272918 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272915 (select (arr!17797 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599970 () Bool)

(declare-fun res!385053 () Bool)

(assert (=> b!599970 (=> (not res!385053) (not e!343021))))

(assert (=> b!599970 (= res!385053 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17797 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599971 () Bool)

(assert (=> b!599971 (= e!343024 e!343023)))

(declare-fun res!385049 () Bool)

(assert (=> b!599971 (=> (not res!385049) (not e!343023))))

(assert (=> b!599971 (= res!385049 (arrayContainsKey!0 lt!272915 (select (arr!17797 a!2986) j!136) j!136))))

(declare-fun b!599972 () Bool)

(assert (=> b!599972 (= e!343021 e!343012)))

(declare-fun res!385052 () Bool)

(assert (=> b!599972 (=> (not res!385052) (not e!343012))))

(assert (=> b!599972 (= res!385052 (= (select (store (arr!17797 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599972 (= lt!272915 (array!37083 (store (arr!17797 a!2986) i!1108 k0!1786) (size!18161 a!2986)))))

(assert (= (and start!54884 res!385041) b!599954))

(assert (= (and b!599954 res!385057) b!599955))

(assert (= (and b!599955 res!385047) b!599967))

(assert (= (and b!599967 res!385048) b!599956))

(assert (= (and b!599956 res!385046) b!599957))

(assert (= (and b!599957 res!385042) b!599951))

(assert (= (and b!599951 res!385045) b!599968))

(assert (= (and b!599968 res!385051) b!599970))

(assert (= (and b!599970 res!385053) b!599972))

(assert (= (and b!599972 res!385052) b!599964))

(assert (= (and b!599964 res!385044) b!599958))

(assert (= (and b!599958 res!385043) b!599962))

(assert (= (and b!599958 c!67823) b!599952))

(assert (= (and b!599958 (not c!67823)) b!599966))

(assert (= (and b!599958 (not res!385056)) b!599961))

(assert (= (and b!599961 res!385058) b!599965))

(assert (= (and b!599965 (not res!385054)) b!599971))

(assert (= (and b!599971 res!385049) b!599963))

(assert (= (and b!599961 (not res!385050)) b!599969))

(assert (= (and b!599969 (not res!385039)) b!599959))

(assert (= (and b!599959 (not res!385040)) b!599953))

(assert (= (and b!599953 (not res!385055)) b!599960))

(declare-fun m!577231 () Bool)

(assert (=> b!599957 m!577231))

(declare-fun m!577233 () Bool)

(assert (=> b!599959 m!577233))

(declare-fun m!577235 () Bool)

(assert (=> b!599968 m!577235))

(declare-fun m!577237 () Bool)

(assert (=> b!599965 m!577237))

(assert (=> b!599963 m!577237))

(assert (=> b!599963 m!577237))

(declare-fun m!577239 () Bool)

(assert (=> b!599963 m!577239))

(declare-fun m!577241 () Bool)

(assert (=> b!599956 m!577241))

(declare-fun m!577243 () Bool)

(assert (=> b!599953 m!577243))

(assert (=> b!599971 m!577237))

(assert (=> b!599971 m!577237))

(declare-fun m!577245 () Bool)

(assert (=> b!599971 m!577245))

(declare-fun m!577247 () Bool)

(assert (=> b!599972 m!577247))

(declare-fun m!577249 () Bool)

(assert (=> b!599972 m!577249))

(declare-fun m!577251 () Bool)

(assert (=> b!599967 m!577251))

(declare-fun m!577253 () Bool)

(assert (=> b!599964 m!577253))

(assert (=> b!599964 m!577237))

(assert (=> b!599964 m!577237))

(declare-fun m!577255 () Bool)

(assert (=> b!599964 m!577255))

(declare-fun m!577257 () Bool)

(assert (=> start!54884 m!577257))

(declare-fun m!577259 () Bool)

(assert (=> start!54884 m!577259))

(assert (=> b!599961 m!577237))

(assert (=> b!599961 m!577247))

(declare-fun m!577261 () Bool)

(assert (=> b!599961 m!577261))

(assert (=> b!599955 m!577237))

(assert (=> b!599955 m!577237))

(declare-fun m!577263 () Bool)

(assert (=> b!599955 m!577263))

(declare-fun m!577265 () Bool)

(assert (=> b!599970 m!577265))

(declare-fun m!577267 () Bool)

(assert (=> b!599951 m!577267))

(declare-fun m!577269 () Bool)

(assert (=> b!599969 m!577269))

(declare-fun m!577271 () Bool)

(assert (=> b!599969 m!577271))

(assert (=> b!599969 m!577237))

(declare-fun m!577273 () Bool)

(assert (=> b!599969 m!577273))

(assert (=> b!599969 m!577237))

(declare-fun m!577275 () Bool)

(assert (=> b!599969 m!577275))

(assert (=> b!599969 m!577237))

(declare-fun m!577277 () Bool)

(assert (=> b!599969 m!577277))

(declare-fun m!577279 () Bool)

(assert (=> b!599969 m!577279))

(declare-fun m!577281 () Bool)

(assert (=> b!599960 m!577281))

(declare-fun m!577283 () Bool)

(assert (=> b!599958 m!577283))

(assert (=> b!599958 m!577237))

(assert (=> b!599958 m!577237))

(declare-fun m!577285 () Bool)

(assert (=> b!599958 m!577285))

(assert (=> b!599958 m!577247))

(declare-fun m!577287 () Bool)

(assert (=> b!599958 m!577287))

(declare-fun m!577289 () Bool)

(assert (=> b!599958 m!577289))

(declare-fun m!577291 () Bool)

(assert (=> b!599958 m!577291))

(declare-fun m!577293 () Bool)

(assert (=> b!599958 m!577293))

(check-sat (not b!599963) (not b!599960) (not b!599959) (not b!599953) (not b!599957) (not start!54884) (not b!599964) (not b!599967) (not b!599956) (not b!599969) (not b!599951) (not b!599958) (not b!599971) (not b!599968) (not b!599955))
(check-sat)
