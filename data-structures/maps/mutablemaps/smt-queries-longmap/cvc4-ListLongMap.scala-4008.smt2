; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54532 () Bool)

(assert start!54532)

(declare-fun b!595214 () Bool)

(declare-fun e!340079 () Bool)

(declare-fun e!340075 () Bool)

(assert (=> b!595214 (= e!340079 e!340075)))

(declare-fun res!381281 () Bool)

(assert (=> b!595214 (=> res!381281 e!340075)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270321 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36955 0))(
  ( (array!36956 (arr!17738 (Array (_ BitVec 32) (_ BitVec 64))) (size!18102 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36955)

(declare-fun lt!270315 () (_ BitVec 64))

(assert (=> b!595214 (= res!381281 (or (not (= (select (arr!17738 a!2986) j!136) lt!270321)) (not (= (select (arr!17738 a!2986) j!136) lt!270315)) (bvsge j!136 index!984)))))

(declare-fun e!340086 () Bool)

(assert (=> b!595214 e!340086))

(declare-fun res!381278 () Bool)

(assert (=> b!595214 (=> (not res!381278) (not e!340086))))

(assert (=> b!595214 (= res!381278 (= lt!270315 (select (arr!17738 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!595214 (= lt!270315 (select (store (arr!17738 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595215 () Bool)

(declare-fun res!381282 () Bool)

(declare-fun e!340083 () Bool)

(assert (=> b!595215 (=> (not res!381282) (not e!340083))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!595215 (= res!381282 (and (= (size!18102 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18102 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18102 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595216 () Bool)

(declare-fun e!340080 () Bool)

(assert (=> b!595216 (= e!340075 e!340080)))

(declare-fun res!381279 () Bool)

(assert (=> b!595216 (=> res!381279 e!340080)))

(assert (=> b!595216 (= res!381279 (or (bvsge (size!18102 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18102 a!2986))))))

(declare-fun lt!270322 () array!36955)

(declare-fun arrayContainsKey!0 (array!36955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595216 (arrayContainsKey!0 lt!270322 (select (arr!17738 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!18684 0))(
  ( (Unit!18685) )
))
(declare-fun lt!270317 () Unit!18684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36955 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18684)

(assert (=> b!595216 (= lt!270317 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270322 (select (arr!17738 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595217 () Bool)

(assert (=> b!595217 (= e!340080 true)))

(declare-fun lt!270316 () Bool)

(declare-datatypes ((List!11832 0))(
  ( (Nil!11829) (Cons!11828 (h!12873 (_ BitVec 64)) (t!18068 List!11832)) )
))
(declare-fun contains!2936 (List!11832 (_ BitVec 64)) Bool)

(assert (=> b!595217 (= lt!270316 (contains!2936 Nil!11829 k!1786))))

(declare-fun b!595218 () Bool)

(declare-fun res!381280 () Bool)

(declare-fun e!340082 () Bool)

(assert (=> b!595218 (=> (not res!381280) (not e!340082))))

(declare-fun arrayNoDuplicates!0 (array!36955 (_ BitVec 32) List!11832) Bool)

(assert (=> b!595218 (= res!381280 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11829))))

(declare-fun b!595219 () Bool)

(declare-fun res!381286 () Bool)

(assert (=> b!595219 (=> (not res!381286) (not e!340082))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!595219 (= res!381286 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17738 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595220 () Bool)

(declare-fun res!381270 () Bool)

(assert (=> b!595220 (=> res!381270 e!340080)))

(declare-fun noDuplicate!252 (List!11832) Bool)

(assert (=> b!595220 (= res!381270 (not (noDuplicate!252 Nil!11829)))))

(declare-fun b!595221 () Bool)

(declare-fun res!381276 () Bool)

(assert (=> b!595221 (=> (not res!381276) (not e!340083))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595221 (= res!381276 (validKeyInArray!0 k!1786))))

(declare-fun res!381272 () Bool)

(assert (=> start!54532 (=> (not res!381272) (not e!340083))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54532 (= res!381272 (validMask!0 mask!3053))))

(assert (=> start!54532 e!340083))

(assert (=> start!54532 true))

(declare-fun array_inv!13512 (array!36955) Bool)

(assert (=> start!54532 (array_inv!13512 a!2986)))

(declare-fun b!595213 () Bool)

(declare-fun res!381269 () Bool)

(assert (=> b!595213 (=> (not res!381269) (not e!340082))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36955 (_ BitVec 32)) Bool)

(assert (=> b!595213 (= res!381269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595222 () Bool)

(declare-fun e!340081 () Bool)

(assert (=> b!595222 (= e!340082 e!340081)))

(declare-fun res!381274 () Bool)

(assert (=> b!595222 (=> (not res!381274) (not e!340081))))

(assert (=> b!595222 (= res!381274 (= (select (store (arr!17738 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595222 (= lt!270322 (array!36956 (store (arr!17738 a!2986) i!1108 k!1786) (size!18102 a!2986)))))

(declare-fun b!595223 () Bool)

(declare-fun res!381275 () Bool)

(assert (=> b!595223 (=> (not res!381275) (not e!340083))))

(assert (=> b!595223 (= res!381275 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595224 () Bool)

(declare-fun res!381268 () Bool)

(assert (=> b!595224 (=> (not res!381268) (not e!340083))))

(assert (=> b!595224 (= res!381268 (validKeyInArray!0 (select (arr!17738 a!2986) j!136)))))

(declare-fun b!595225 () Bool)

(declare-fun e!340076 () Bool)

(assert (=> b!595225 (= e!340086 e!340076)))

(declare-fun res!381284 () Bool)

(assert (=> b!595225 (=> res!381284 e!340076)))

(assert (=> b!595225 (= res!381284 (or (not (= (select (arr!17738 a!2986) j!136) lt!270321)) (not (= (select (arr!17738 a!2986) j!136) lt!270315)) (bvsge j!136 index!984)))))

(declare-fun b!595226 () Bool)

(declare-fun e!340078 () Bool)

(assert (=> b!595226 (= e!340081 e!340078)))

(declare-fun res!381273 () Bool)

(assert (=> b!595226 (=> (not res!381273) (not e!340078))))

(declare-datatypes ((SeekEntryResult!6185 0))(
  ( (MissingZero!6185 (index!26987 (_ BitVec 32))) (Found!6185 (index!26988 (_ BitVec 32))) (Intermediate!6185 (undefined!6997 Bool) (index!26989 (_ BitVec 32)) (x!55814 (_ BitVec 32))) (Undefined!6185) (MissingVacant!6185 (index!26990 (_ BitVec 32))) )
))
(declare-fun lt!270320 () SeekEntryResult!6185)

(assert (=> b!595226 (= res!381273 (and (= lt!270320 (Found!6185 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17738 a!2986) index!984) (select (arr!17738 a!2986) j!136))) (not (= (select (arr!17738 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36955 (_ BitVec 32)) SeekEntryResult!6185)

(assert (=> b!595226 (= lt!270320 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17738 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595227 () Bool)

(declare-fun res!381285 () Bool)

(assert (=> b!595227 (=> res!381285 e!340080)))

(assert (=> b!595227 (= res!381285 (contains!2936 Nil!11829 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595228 () Bool)

(declare-fun e!340084 () Bool)

(declare-fun lt!270318 () SeekEntryResult!6185)

(assert (=> b!595228 (= e!340084 (= lt!270320 lt!270318))))

(declare-fun b!595229 () Bool)

(declare-fun e!340087 () Unit!18684)

(declare-fun Unit!18686 () Unit!18684)

(assert (=> b!595229 (= e!340087 Unit!18686)))

(assert (=> b!595229 false))

(declare-fun b!595230 () Bool)

(declare-fun Unit!18687 () Unit!18684)

(assert (=> b!595230 (= e!340087 Unit!18687)))

(declare-fun b!595231 () Bool)

(assert (=> b!595231 (= e!340078 (not e!340079))))

(declare-fun res!381287 () Bool)

(assert (=> b!595231 (=> res!381287 e!340079)))

(declare-fun lt!270314 () SeekEntryResult!6185)

(assert (=> b!595231 (= res!381287 (not (= lt!270314 (Found!6185 index!984))))))

(declare-fun lt!270324 () Unit!18684)

(assert (=> b!595231 (= lt!270324 e!340087)))

(declare-fun c!67340 () Bool)

(assert (=> b!595231 (= c!67340 (= lt!270314 Undefined!6185))))

(assert (=> b!595231 (= lt!270314 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270321 lt!270322 mask!3053))))

(assert (=> b!595231 e!340084))

(declare-fun res!381267 () Bool)

(assert (=> b!595231 (=> (not res!381267) (not e!340084))))

(declare-fun lt!270313 () (_ BitVec 32))

(assert (=> b!595231 (= res!381267 (= lt!270318 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270313 vacantSpotIndex!68 lt!270321 lt!270322 mask!3053)))))

(assert (=> b!595231 (= lt!270318 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270313 vacantSpotIndex!68 (select (arr!17738 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595231 (= lt!270321 (select (store (arr!17738 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270319 () Unit!18684)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18684)

(assert (=> b!595231 (= lt!270319 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270313 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595231 (= lt!270313 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595232 () Bool)

(declare-fun e!340085 () Bool)

(assert (=> b!595232 (= e!340076 e!340085)))

(declare-fun res!381277 () Bool)

(assert (=> b!595232 (=> (not res!381277) (not e!340085))))

(assert (=> b!595232 (= res!381277 (arrayContainsKey!0 lt!270322 (select (arr!17738 a!2986) j!136) j!136))))

(declare-fun b!595233 () Bool)

(declare-fun res!381271 () Bool)

(assert (=> b!595233 (=> res!381271 e!340080)))

(assert (=> b!595233 (= res!381271 (contains!2936 Nil!11829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595234 () Bool)

(assert (=> b!595234 (= e!340085 (arrayContainsKey!0 lt!270322 (select (arr!17738 a!2986) j!136) index!984))))

(declare-fun b!595235 () Bool)

(assert (=> b!595235 (= e!340083 e!340082)))

(declare-fun res!381283 () Bool)

(assert (=> b!595235 (=> (not res!381283) (not e!340082))))

(declare-fun lt!270323 () SeekEntryResult!6185)

(assert (=> b!595235 (= res!381283 (or (= lt!270323 (MissingZero!6185 i!1108)) (= lt!270323 (MissingVacant!6185 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36955 (_ BitVec 32)) SeekEntryResult!6185)

(assert (=> b!595235 (= lt!270323 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!54532 res!381272) b!595215))

(assert (= (and b!595215 res!381282) b!595224))

(assert (= (and b!595224 res!381268) b!595221))

(assert (= (and b!595221 res!381276) b!595223))

(assert (= (and b!595223 res!381275) b!595235))

(assert (= (and b!595235 res!381283) b!595213))

(assert (= (and b!595213 res!381269) b!595218))

(assert (= (and b!595218 res!381280) b!595219))

(assert (= (and b!595219 res!381286) b!595222))

(assert (= (and b!595222 res!381274) b!595226))

(assert (= (and b!595226 res!381273) b!595231))

(assert (= (and b!595231 res!381267) b!595228))

(assert (= (and b!595231 c!67340) b!595229))

(assert (= (and b!595231 (not c!67340)) b!595230))

(assert (= (and b!595231 (not res!381287)) b!595214))

(assert (= (and b!595214 res!381278) b!595225))

(assert (= (and b!595225 (not res!381284)) b!595232))

(assert (= (and b!595232 res!381277) b!595234))

(assert (= (and b!595214 (not res!381281)) b!595216))

(assert (= (and b!595216 (not res!381279)) b!595220))

(assert (= (and b!595220 (not res!381270)) b!595233))

(assert (= (and b!595233 (not res!381271)) b!595227))

(assert (= (and b!595227 (not res!381285)) b!595217))

(declare-fun m!572915 () Bool)

(assert (=> b!595216 m!572915))

(assert (=> b!595216 m!572915))

(declare-fun m!572917 () Bool)

(assert (=> b!595216 m!572917))

(assert (=> b!595216 m!572915))

(declare-fun m!572919 () Bool)

(assert (=> b!595216 m!572919))

(declare-fun m!572921 () Bool)

(assert (=> b!595217 m!572921))

(assert (=> b!595225 m!572915))

(assert (=> b!595234 m!572915))

(assert (=> b!595234 m!572915))

(declare-fun m!572923 () Bool)

(assert (=> b!595234 m!572923))

(declare-fun m!572925 () Bool)

(assert (=> b!595235 m!572925))

(declare-fun m!572927 () Bool)

(assert (=> start!54532 m!572927))

(declare-fun m!572929 () Bool)

(assert (=> start!54532 m!572929))

(declare-fun m!572931 () Bool)

(assert (=> b!595213 m!572931))

(declare-fun m!572933 () Bool)

(assert (=> b!595223 m!572933))

(assert (=> b!595224 m!572915))

(assert (=> b!595224 m!572915))

(declare-fun m!572935 () Bool)

(assert (=> b!595224 m!572935))

(assert (=> b!595214 m!572915))

(declare-fun m!572937 () Bool)

(assert (=> b!595214 m!572937))

(declare-fun m!572939 () Bool)

(assert (=> b!595214 m!572939))

(declare-fun m!572941 () Bool)

(assert (=> b!595219 m!572941))

(assert (=> b!595232 m!572915))

(assert (=> b!595232 m!572915))

(declare-fun m!572943 () Bool)

(assert (=> b!595232 m!572943))

(declare-fun m!572945 () Bool)

(assert (=> b!595220 m!572945))

(assert (=> b!595222 m!572937))

(declare-fun m!572947 () Bool)

(assert (=> b!595222 m!572947))

(declare-fun m!572949 () Bool)

(assert (=> b!595226 m!572949))

(assert (=> b!595226 m!572915))

(assert (=> b!595226 m!572915))

(declare-fun m!572951 () Bool)

(assert (=> b!595226 m!572951))

(declare-fun m!572953 () Bool)

(assert (=> b!595227 m!572953))

(declare-fun m!572955 () Bool)

(assert (=> b!595231 m!572955))

(declare-fun m!572957 () Bool)

(assert (=> b!595231 m!572957))

(assert (=> b!595231 m!572915))

(assert (=> b!595231 m!572937))

(declare-fun m!572959 () Bool)

(assert (=> b!595231 m!572959))

(declare-fun m!572961 () Bool)

(assert (=> b!595231 m!572961))

(assert (=> b!595231 m!572915))

(declare-fun m!572963 () Bool)

(assert (=> b!595231 m!572963))

(declare-fun m!572965 () Bool)

(assert (=> b!595231 m!572965))

(declare-fun m!572967 () Bool)

(assert (=> b!595233 m!572967))

(declare-fun m!572969 () Bool)

(assert (=> b!595218 m!572969))

(declare-fun m!572971 () Bool)

(assert (=> b!595221 m!572971))

(push 1)

