; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55018 () Bool)

(assert start!55018)

(declare-fun b!601901 () Bool)

(declare-datatypes ((Unit!19042 0))(
  ( (Unit!19043) )
))
(declare-fun e!344219 () Unit!19042)

(declare-fun Unit!19044 () Unit!19042)

(assert (=> b!601901 (= e!344219 Unit!19044)))

(declare-fun b!601902 () Bool)

(declare-fun res!386562 () Bool)

(declare-fun e!344224 () Bool)

(assert (=> b!601902 (=> (not res!386562) (not e!344224))))

(declare-datatypes ((array!37135 0))(
  ( (array!37136 (arr!17822 (Array (_ BitVec 32) (_ BitVec 64))) (size!18186 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37135)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601902 (= res!386562 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601903 () Bool)

(declare-fun e!344226 () Bool)

(declare-datatypes ((SeekEntryResult!6269 0))(
  ( (MissingZero!6269 (index!27335 (_ BitVec 32))) (Found!6269 (index!27336 (_ BitVec 32))) (Intermediate!6269 (undefined!7081 Bool) (index!27337 (_ BitVec 32)) (x!56158 (_ BitVec 32))) (Undefined!6269) (MissingVacant!6269 (index!27338 (_ BitVec 32))) )
))
(declare-fun lt!274150 () SeekEntryResult!6269)

(declare-fun lt!274147 () SeekEntryResult!6269)

(assert (=> b!601903 (= e!344226 (= lt!274150 lt!274147))))

(declare-fun b!601904 () Bool)

(declare-fun e!344220 () Bool)

(declare-fun e!344223 () Bool)

(assert (=> b!601904 (= e!344220 e!344223)))

(declare-fun res!386571 () Bool)

(assert (=> b!601904 (=> res!386571 e!344223)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!274141 () (_ BitVec 64))

(declare-fun lt!274144 () (_ BitVec 64))

(assert (=> b!601904 (= res!386571 (or (not (= (select (arr!17822 a!2986) j!136) lt!274141)) (not (= (select (arr!17822 a!2986) j!136) lt!274144))))))

(declare-fun e!344222 () Bool)

(assert (=> b!601904 e!344222))

(declare-fun res!386573 () Bool)

(assert (=> b!601904 (=> (not res!386573) (not e!344222))))

(assert (=> b!601904 (= res!386573 (= lt!274144 (select (arr!17822 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!601904 (= lt!274144 (select (store (arr!17822 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601905 () Bool)

(declare-fun res!386565 () Bool)

(assert (=> b!601905 (=> (not res!386565) (not e!344224))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!601905 (= res!386565 (and (= (size!18186 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18186 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18186 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601906 () Bool)

(declare-fun res!386561 () Bool)

(assert (=> b!601906 (=> (not res!386561) (not e!344224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601906 (= res!386561 (validKeyInArray!0 (select (arr!17822 a!2986) j!136)))))

(declare-fun b!601907 () Bool)

(declare-fun res!386563 () Bool)

(declare-fun e!344217 () Bool)

(assert (=> b!601907 (=> (not res!386563) (not e!344217))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!601907 (= res!386563 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17822 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601909 () Bool)

(declare-fun Unit!19045 () Unit!19042)

(assert (=> b!601909 (= e!344219 Unit!19045)))

(declare-fun lt!274148 () array!37135)

(declare-fun lt!274146 () Unit!19042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37135 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19042)

(assert (=> b!601909 (= lt!274146 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274148 (select (arr!17822 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601909 (arrayContainsKey!0 lt!274148 (select (arr!17822 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274143 () Unit!19042)

(declare-datatypes ((List!11916 0))(
  ( (Nil!11913) (Cons!11912 (h!12957 (_ BitVec 64)) (t!18152 List!11916)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37135 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11916) Unit!19042)

(assert (=> b!601909 (= lt!274143 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11913))))

(declare-fun arrayNoDuplicates!0 (array!37135 (_ BitVec 32) List!11916) Bool)

(assert (=> b!601909 (arrayNoDuplicates!0 lt!274148 #b00000000000000000000000000000000 Nil!11913)))

(declare-fun lt!274140 () Unit!19042)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37135 (_ BitVec 32) (_ BitVec 32)) Unit!19042)

(assert (=> b!601909 (= lt!274140 (lemmaNoDuplicateFromThenFromBigger!0 lt!274148 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601909 (arrayNoDuplicates!0 lt!274148 j!136 Nil!11913)))

(declare-fun lt!274145 () Unit!19042)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37135 (_ BitVec 64) (_ BitVec 32) List!11916) Unit!19042)

(assert (=> b!601909 (= lt!274145 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274148 (select (arr!17822 a!2986) j!136) j!136 Nil!11913))))

(assert (=> b!601909 false))

(declare-fun b!601910 () Bool)

(declare-fun e!344221 () Bool)

(assert (=> b!601910 (= e!344222 e!344221)))

(declare-fun res!386576 () Bool)

(assert (=> b!601910 (=> res!386576 e!344221)))

(assert (=> b!601910 (= res!386576 (or (not (= (select (arr!17822 a!2986) j!136) lt!274141)) (not (= (select (arr!17822 a!2986) j!136) lt!274144)) (bvsge j!136 index!984)))))

(declare-fun b!601911 () Bool)

(declare-fun e!344218 () Bool)

(assert (=> b!601911 (= e!344218 (arrayContainsKey!0 lt!274148 (select (arr!17822 a!2986) j!136) index!984))))

(declare-fun b!601912 () Bool)

(declare-fun e!344225 () Bool)

(assert (=> b!601912 (= e!344223 e!344225)))

(declare-fun res!386575 () Bool)

(assert (=> b!601912 (=> res!386575 e!344225)))

(assert (=> b!601912 (= res!386575 (bvsge index!984 j!136))))

(declare-fun lt!274149 () Unit!19042)

(assert (=> b!601912 (= lt!274149 e!344219)))

(declare-fun c!68039 () Bool)

(assert (=> b!601912 (= c!68039 (bvslt j!136 index!984))))

(declare-fun b!601913 () Bool)

(declare-fun e!344228 () Unit!19042)

(declare-fun Unit!19046 () Unit!19042)

(assert (=> b!601913 (= e!344228 Unit!19046)))

(declare-fun b!601914 () Bool)

(declare-fun e!344229 () Bool)

(assert (=> b!601914 (= e!344229 (not e!344220))))

(declare-fun res!386560 () Bool)

(assert (=> b!601914 (=> res!386560 e!344220)))

(declare-fun lt!274152 () SeekEntryResult!6269)

(assert (=> b!601914 (= res!386560 (not (= lt!274152 (Found!6269 index!984))))))

(declare-fun lt!274151 () Unit!19042)

(assert (=> b!601914 (= lt!274151 e!344228)))

(declare-fun c!68038 () Bool)

(assert (=> b!601914 (= c!68038 (= lt!274152 Undefined!6269))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37135 (_ BitVec 32)) SeekEntryResult!6269)

(assert (=> b!601914 (= lt!274152 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274141 lt!274148 mask!3053))))

(assert (=> b!601914 e!344226))

(declare-fun res!386566 () Bool)

(assert (=> b!601914 (=> (not res!386566) (not e!344226))))

(declare-fun lt!274142 () (_ BitVec 32))

(assert (=> b!601914 (= res!386566 (= lt!274147 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274142 vacantSpotIndex!68 lt!274141 lt!274148 mask!3053)))))

(assert (=> b!601914 (= lt!274147 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274142 vacantSpotIndex!68 (select (arr!17822 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601914 (= lt!274141 (select (store (arr!17822 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274138 () Unit!19042)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37135 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19042)

(assert (=> b!601914 (= lt!274138 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274142 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601914 (= lt!274142 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601915 () Bool)

(declare-fun res!386570 () Bool)

(assert (=> b!601915 (=> (not res!386570) (not e!344217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37135 (_ BitVec 32)) Bool)

(assert (=> b!601915 (= res!386570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601916 () Bool)

(declare-fun res!386572 () Bool)

(assert (=> b!601916 (=> (not res!386572) (not e!344217))))

(assert (=> b!601916 (= res!386572 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11913))))

(declare-fun b!601917 () Bool)

(declare-fun e!344230 () Bool)

(assert (=> b!601917 (= e!344230 e!344229)))

(declare-fun res!386569 () Bool)

(assert (=> b!601917 (=> (not res!386569) (not e!344229))))

(assert (=> b!601917 (= res!386569 (and (= lt!274150 (Found!6269 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17822 a!2986) index!984) (select (arr!17822 a!2986) j!136))) (not (= (select (arr!17822 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!601917 (= lt!274150 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17822 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!386559 () Bool)

(assert (=> start!55018 (=> (not res!386559) (not e!344224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55018 (= res!386559 (validMask!0 mask!3053))))

(assert (=> start!55018 e!344224))

(assert (=> start!55018 true))

(declare-fun array_inv!13596 (array!37135) Bool)

(assert (=> start!55018 (array_inv!13596 a!2986)))

(declare-fun b!601908 () Bool)

(assert (=> b!601908 (= e!344221 e!344218)))

(declare-fun res!386574 () Bool)

(assert (=> b!601908 (=> (not res!386574) (not e!344218))))

(assert (=> b!601908 (= res!386574 (arrayContainsKey!0 lt!274148 (select (arr!17822 a!2986) j!136) j!136))))

(declare-fun b!601918 () Bool)

(assert (=> b!601918 (= e!344217 e!344230)))

(declare-fun res!386564 () Bool)

(assert (=> b!601918 (=> (not res!386564) (not e!344230))))

(assert (=> b!601918 (= res!386564 (= (select (store (arr!17822 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601918 (= lt!274148 (array!37136 (store (arr!17822 a!2986) i!1108 k!1786) (size!18186 a!2986)))))

(declare-fun b!601919 () Bool)

(assert (=> b!601919 (= e!344225 true)))

(assert (=> b!601919 (arrayContainsKey!0 lt!274148 (select (arr!17822 a!2986) j!136) j!136)))

(declare-fun b!601920 () Bool)

(declare-fun Unit!19047 () Unit!19042)

(assert (=> b!601920 (= e!344228 Unit!19047)))

(assert (=> b!601920 false))

(declare-fun b!601921 () Bool)

(assert (=> b!601921 (= e!344224 e!344217)))

(declare-fun res!386567 () Bool)

(assert (=> b!601921 (=> (not res!386567) (not e!344217))))

(declare-fun lt!274139 () SeekEntryResult!6269)

(assert (=> b!601921 (= res!386567 (or (= lt!274139 (MissingZero!6269 i!1108)) (= lt!274139 (MissingVacant!6269 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37135 (_ BitVec 32)) SeekEntryResult!6269)

(assert (=> b!601921 (= lt!274139 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601922 () Bool)

(declare-fun res!386568 () Bool)

(assert (=> b!601922 (=> (not res!386568) (not e!344224))))

(assert (=> b!601922 (= res!386568 (validKeyInArray!0 k!1786))))

(assert (= (and start!55018 res!386559) b!601905))

(assert (= (and b!601905 res!386565) b!601906))

(assert (= (and b!601906 res!386561) b!601922))

(assert (= (and b!601922 res!386568) b!601902))

(assert (= (and b!601902 res!386562) b!601921))

(assert (= (and b!601921 res!386567) b!601915))

(assert (= (and b!601915 res!386570) b!601916))

(assert (= (and b!601916 res!386572) b!601907))

(assert (= (and b!601907 res!386563) b!601918))

(assert (= (and b!601918 res!386564) b!601917))

(assert (= (and b!601917 res!386569) b!601914))

(assert (= (and b!601914 res!386566) b!601903))

(assert (= (and b!601914 c!68038) b!601920))

(assert (= (and b!601914 (not c!68038)) b!601913))

(assert (= (and b!601914 (not res!386560)) b!601904))

(assert (= (and b!601904 res!386573) b!601910))

(assert (= (and b!601910 (not res!386576)) b!601908))

(assert (= (and b!601908 res!386574) b!601911))

(assert (= (and b!601904 (not res!386571)) b!601912))

(assert (= (and b!601912 c!68039) b!601909))

(assert (= (and b!601912 (not c!68039)) b!601901))

(assert (= (and b!601912 (not res!386575)) b!601919))

(declare-fun m!579099 () Bool)

(assert (=> b!601902 m!579099))

(declare-fun m!579101 () Bool)

(assert (=> b!601921 m!579101))

(declare-fun m!579103 () Bool)

(assert (=> b!601915 m!579103))

(declare-fun m!579105 () Bool)

(assert (=> b!601909 m!579105))

(declare-fun m!579107 () Bool)

(assert (=> b!601909 m!579107))

(declare-fun m!579109 () Bool)

(assert (=> b!601909 m!579109))

(assert (=> b!601909 m!579107))

(assert (=> b!601909 m!579107))

(declare-fun m!579111 () Bool)

(assert (=> b!601909 m!579111))

(declare-fun m!579113 () Bool)

(assert (=> b!601909 m!579113))

(assert (=> b!601909 m!579107))

(declare-fun m!579115 () Bool)

(assert (=> b!601909 m!579115))

(declare-fun m!579117 () Bool)

(assert (=> b!601909 m!579117))

(declare-fun m!579119 () Bool)

(assert (=> b!601909 m!579119))

(declare-fun m!579121 () Bool)

(assert (=> b!601918 m!579121))

(declare-fun m!579123 () Bool)

(assert (=> b!601918 m!579123))

(declare-fun m!579125 () Bool)

(assert (=> b!601914 m!579125))

(declare-fun m!579127 () Bool)

(assert (=> b!601914 m!579127))

(assert (=> b!601914 m!579107))

(assert (=> b!601914 m!579121))

(assert (=> b!601914 m!579107))

(declare-fun m!579129 () Bool)

(assert (=> b!601914 m!579129))

(declare-fun m!579131 () Bool)

(assert (=> b!601914 m!579131))

(declare-fun m!579133 () Bool)

(assert (=> b!601914 m!579133))

(declare-fun m!579135 () Bool)

(assert (=> b!601914 m!579135))

(declare-fun m!579137 () Bool)

(assert (=> b!601907 m!579137))

(assert (=> b!601908 m!579107))

(assert (=> b!601908 m!579107))

(declare-fun m!579139 () Bool)

(assert (=> b!601908 m!579139))

(declare-fun m!579141 () Bool)

(assert (=> b!601922 m!579141))

(declare-fun m!579143 () Bool)

(assert (=> b!601917 m!579143))

(assert (=> b!601917 m!579107))

(assert (=> b!601917 m!579107))

(declare-fun m!579145 () Bool)

(assert (=> b!601917 m!579145))

(assert (=> b!601904 m!579107))

(assert (=> b!601904 m!579121))

(declare-fun m!579147 () Bool)

(assert (=> b!601904 m!579147))

(assert (=> b!601906 m!579107))

(assert (=> b!601906 m!579107))

(declare-fun m!579149 () Bool)

(assert (=> b!601906 m!579149))

(assert (=> b!601919 m!579107))

(assert (=> b!601919 m!579107))

(assert (=> b!601919 m!579139))

(assert (=> b!601911 m!579107))

(assert (=> b!601911 m!579107))

(declare-fun m!579151 () Bool)

(assert (=> b!601911 m!579151))

(assert (=> b!601910 m!579107))

(declare-fun m!579153 () Bool)

(assert (=> b!601916 m!579153))

(declare-fun m!579155 () Bool)

(assert (=> start!55018 m!579155))

(declare-fun m!579157 () Bool)

(assert (=> start!55018 m!579157))

(push 1)

