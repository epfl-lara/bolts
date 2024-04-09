; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55022 () Bool)

(assert start!55022)

(declare-fun b!602033 () Bool)

(declare-fun e!344310 () Bool)

(declare-fun e!344312 () Bool)

(assert (=> b!602033 (= e!344310 e!344312)))

(declare-fun res!386680 () Bool)

(assert (=> b!602033 (=> (not res!386680) (not e!344312))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37139 0))(
  ( (array!37140 (arr!17824 (Array (_ BitVec 32) (_ BitVec 64))) (size!18188 (_ BitVec 32))) )
))
(declare-fun lt!274236 () array!37139)

(declare-fun a!2986 () array!37139)

(declare-fun arrayContainsKey!0 (array!37139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602033 (= res!386680 (arrayContainsKey!0 lt!274236 (select (arr!17824 a!2986) j!136) j!136))))

(declare-fun b!602034 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602034 (= e!344312 (arrayContainsKey!0 lt!274236 (select (arr!17824 a!2986) j!136) index!984))))

(declare-fun res!386668 () Bool)

(declare-fun e!344313 () Bool)

(assert (=> start!55022 (=> (not res!386668) (not e!344313))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55022 (= res!386668 (validMask!0 mask!3053))))

(assert (=> start!55022 e!344313))

(assert (=> start!55022 true))

(declare-fun array_inv!13598 (array!37139) Bool)

(assert (=> start!55022 (array_inv!13598 a!2986)))

(declare-fun b!602035 () Bool)

(declare-fun res!386676 () Bool)

(assert (=> b!602035 (=> (not res!386676) (not e!344313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602035 (= res!386676 (validKeyInArray!0 (select (arr!17824 a!2986) j!136)))))

(declare-fun b!602036 () Bool)

(declare-fun res!386671 () Bool)

(declare-fun e!344307 () Bool)

(assert (=> b!602036 (=> (not res!386671) (not e!344307))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!602036 (= res!386671 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17824 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602037 () Bool)

(declare-datatypes ((Unit!19054 0))(
  ( (Unit!19055) )
))
(declare-fun e!344301 () Unit!19054)

(declare-fun Unit!19056 () Unit!19054)

(assert (=> b!602037 (= e!344301 Unit!19056)))

(declare-fun b!602038 () Bool)

(declare-fun e!344305 () Bool)

(assert (=> b!602038 (= e!344305 (bvslt index!984 (size!18188 a!2986)))))

(assert (=> b!602038 (arrayContainsKey!0 lt!274236 (select (arr!17824 a!2986) j!136) j!136)))

(declare-fun b!602039 () Bool)

(declare-fun e!344302 () Bool)

(assert (=> b!602039 (= e!344302 e!344305)))

(declare-fun res!386675 () Bool)

(assert (=> b!602039 (=> res!386675 e!344305)))

(assert (=> b!602039 (= res!386675 (bvsge index!984 j!136))))

(declare-fun lt!274234 () Unit!19054)

(declare-fun e!344309 () Unit!19054)

(assert (=> b!602039 (= lt!274234 e!344309)))

(declare-fun c!68051 () Bool)

(assert (=> b!602039 (= c!68051 (bvslt j!136 index!984))))

(declare-fun b!602040 () Bool)

(declare-fun Unit!19057 () Unit!19054)

(assert (=> b!602040 (= e!344309 Unit!19057)))

(declare-fun b!602041 () Bool)

(declare-fun Unit!19058 () Unit!19054)

(assert (=> b!602041 (= e!344309 Unit!19058)))

(declare-fun lt!274241 () Unit!19054)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37139 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19054)

(assert (=> b!602041 (= lt!274241 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274236 (select (arr!17824 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602041 (arrayContainsKey!0 lt!274236 (select (arr!17824 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274240 () Unit!19054)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((List!11918 0))(
  ( (Nil!11915) (Cons!11914 (h!12959 (_ BitVec 64)) (t!18154 List!11918)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37139 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11918) Unit!19054)

(assert (=> b!602041 (= lt!274240 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11915))))

(declare-fun arrayNoDuplicates!0 (array!37139 (_ BitVec 32) List!11918) Bool)

(assert (=> b!602041 (arrayNoDuplicates!0 lt!274236 #b00000000000000000000000000000000 Nil!11915)))

(declare-fun lt!274230 () Unit!19054)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37139 (_ BitVec 32) (_ BitVec 32)) Unit!19054)

(assert (=> b!602041 (= lt!274230 (lemmaNoDuplicateFromThenFromBigger!0 lt!274236 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602041 (arrayNoDuplicates!0 lt!274236 j!136 Nil!11915)))

(declare-fun lt!274232 () Unit!19054)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37139 (_ BitVec 64) (_ BitVec 32) List!11918) Unit!19054)

(assert (=> b!602041 (= lt!274232 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274236 (select (arr!17824 a!2986) j!136) j!136 Nil!11915))))

(assert (=> b!602041 false))

(declare-fun b!602042 () Bool)

(declare-fun e!344303 () Bool)

(assert (=> b!602042 (= e!344307 e!344303)))

(declare-fun res!386672 () Bool)

(assert (=> b!602042 (=> (not res!386672) (not e!344303))))

(assert (=> b!602042 (= res!386672 (= (select (store (arr!17824 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602042 (= lt!274236 (array!37140 (store (arr!17824 a!2986) i!1108 k0!1786) (size!18188 a!2986)))))

(declare-fun b!602043 () Bool)

(declare-fun res!386669 () Bool)

(assert (=> b!602043 (=> (not res!386669) (not e!344307))))

(assert (=> b!602043 (= res!386669 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11915))))

(declare-fun b!602044 () Bool)

(declare-fun e!344306 () Bool)

(assert (=> b!602044 (= e!344303 e!344306)))

(declare-fun res!386674 () Bool)

(assert (=> b!602044 (=> (not res!386674) (not e!344306))))

(declare-datatypes ((SeekEntryResult!6271 0))(
  ( (MissingZero!6271 (index!27343 (_ BitVec 32))) (Found!6271 (index!27344 (_ BitVec 32))) (Intermediate!6271 (undefined!7083 Bool) (index!27345 (_ BitVec 32)) (x!56168 (_ BitVec 32))) (Undefined!6271) (MissingVacant!6271 (index!27346 (_ BitVec 32))) )
))
(declare-fun lt!274228 () SeekEntryResult!6271)

(assert (=> b!602044 (= res!386674 (and (= lt!274228 (Found!6271 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17824 a!2986) index!984) (select (arr!17824 a!2986) j!136))) (not (= (select (arr!17824 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37139 (_ BitVec 32)) SeekEntryResult!6271)

(assert (=> b!602044 (= lt!274228 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17824 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602045 () Bool)

(declare-fun res!386682 () Bool)

(assert (=> b!602045 (=> (not res!386682) (not e!344313))))

(assert (=> b!602045 (= res!386682 (validKeyInArray!0 k0!1786))))

(declare-fun b!602046 () Bool)

(declare-fun e!344314 () Bool)

(declare-fun lt!274229 () SeekEntryResult!6271)

(assert (=> b!602046 (= e!344314 (= lt!274228 lt!274229))))

(declare-fun b!602047 () Bool)

(declare-fun e!344308 () Bool)

(assert (=> b!602047 (= e!344308 e!344302)))

(declare-fun res!386684 () Bool)

(assert (=> b!602047 (=> res!386684 e!344302)))

(declare-fun lt!274233 () (_ BitVec 64))

(declare-fun lt!274238 () (_ BitVec 64))

(assert (=> b!602047 (= res!386684 (or (not (= (select (arr!17824 a!2986) j!136) lt!274238)) (not (= (select (arr!17824 a!2986) j!136) lt!274233))))))

(declare-fun e!344311 () Bool)

(assert (=> b!602047 e!344311))

(declare-fun res!386670 () Bool)

(assert (=> b!602047 (=> (not res!386670) (not e!344311))))

(assert (=> b!602047 (= res!386670 (= lt!274233 (select (arr!17824 a!2986) j!136)))))

(assert (=> b!602047 (= lt!274233 (select (store (arr!17824 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!602048 () Bool)

(declare-fun res!386678 () Bool)

(assert (=> b!602048 (=> (not res!386678) (not e!344313))))

(assert (=> b!602048 (= res!386678 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!602049 () Bool)

(declare-fun res!386681 () Bool)

(assert (=> b!602049 (=> (not res!386681) (not e!344307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37139 (_ BitVec 32)) Bool)

(assert (=> b!602049 (= res!386681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602050 () Bool)

(assert (=> b!602050 (= e!344311 e!344310)))

(declare-fun res!386683 () Bool)

(assert (=> b!602050 (=> res!386683 e!344310)))

(assert (=> b!602050 (= res!386683 (or (not (= (select (arr!17824 a!2986) j!136) lt!274238)) (not (= (select (arr!17824 a!2986) j!136) lt!274233)) (bvsge j!136 index!984)))))

(declare-fun b!602051 () Bool)

(assert (=> b!602051 (= e!344306 (not e!344308))))

(declare-fun res!386667 () Bool)

(assert (=> b!602051 (=> res!386667 e!344308)))

(declare-fun lt!274237 () SeekEntryResult!6271)

(assert (=> b!602051 (= res!386667 (not (= lt!274237 (Found!6271 index!984))))))

(declare-fun lt!274235 () Unit!19054)

(assert (=> b!602051 (= lt!274235 e!344301)))

(declare-fun c!68050 () Bool)

(assert (=> b!602051 (= c!68050 (= lt!274237 Undefined!6271))))

(assert (=> b!602051 (= lt!274237 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274238 lt!274236 mask!3053))))

(assert (=> b!602051 e!344314))

(declare-fun res!386673 () Bool)

(assert (=> b!602051 (=> (not res!386673) (not e!344314))))

(declare-fun lt!274242 () (_ BitVec 32))

(assert (=> b!602051 (= res!386673 (= lt!274229 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274242 vacantSpotIndex!68 lt!274238 lt!274236 mask!3053)))))

(assert (=> b!602051 (= lt!274229 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274242 vacantSpotIndex!68 (select (arr!17824 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602051 (= lt!274238 (select (store (arr!17824 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274231 () Unit!19054)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37139 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19054)

(assert (=> b!602051 (= lt!274231 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274242 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602051 (= lt!274242 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602052 () Bool)

(assert (=> b!602052 (= e!344313 e!344307)))

(declare-fun res!386679 () Bool)

(assert (=> b!602052 (=> (not res!386679) (not e!344307))))

(declare-fun lt!274239 () SeekEntryResult!6271)

(assert (=> b!602052 (= res!386679 (or (= lt!274239 (MissingZero!6271 i!1108)) (= lt!274239 (MissingVacant!6271 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37139 (_ BitVec 32)) SeekEntryResult!6271)

(assert (=> b!602052 (= lt!274239 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!602053 () Bool)

(declare-fun Unit!19059 () Unit!19054)

(assert (=> b!602053 (= e!344301 Unit!19059)))

(assert (=> b!602053 false))

(declare-fun b!602054 () Bool)

(declare-fun res!386677 () Bool)

(assert (=> b!602054 (=> (not res!386677) (not e!344313))))

(assert (=> b!602054 (= res!386677 (and (= (size!18188 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18188 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18188 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55022 res!386668) b!602054))

(assert (= (and b!602054 res!386677) b!602035))

(assert (= (and b!602035 res!386676) b!602045))

(assert (= (and b!602045 res!386682) b!602048))

(assert (= (and b!602048 res!386678) b!602052))

(assert (= (and b!602052 res!386679) b!602049))

(assert (= (and b!602049 res!386681) b!602043))

(assert (= (and b!602043 res!386669) b!602036))

(assert (= (and b!602036 res!386671) b!602042))

(assert (= (and b!602042 res!386672) b!602044))

(assert (= (and b!602044 res!386674) b!602051))

(assert (= (and b!602051 res!386673) b!602046))

(assert (= (and b!602051 c!68050) b!602053))

(assert (= (and b!602051 (not c!68050)) b!602037))

(assert (= (and b!602051 (not res!386667)) b!602047))

(assert (= (and b!602047 res!386670) b!602050))

(assert (= (and b!602050 (not res!386683)) b!602033))

(assert (= (and b!602033 res!386680) b!602034))

(assert (= (and b!602047 (not res!386684)) b!602039))

(assert (= (and b!602039 c!68051) b!602041))

(assert (= (and b!602039 (not c!68051)) b!602040))

(assert (= (and b!602039 (not res!386675)) b!602038))

(declare-fun m!579219 () Bool)

(assert (=> b!602051 m!579219))

(declare-fun m!579221 () Bool)

(assert (=> b!602051 m!579221))

(declare-fun m!579223 () Bool)

(assert (=> b!602051 m!579223))

(assert (=> b!602051 m!579221))

(declare-fun m!579225 () Bool)

(assert (=> b!602051 m!579225))

(declare-fun m!579227 () Bool)

(assert (=> b!602051 m!579227))

(declare-fun m!579229 () Bool)

(assert (=> b!602051 m!579229))

(declare-fun m!579231 () Bool)

(assert (=> b!602051 m!579231))

(declare-fun m!579233 () Bool)

(assert (=> b!602051 m!579233))

(declare-fun m!579235 () Bool)

(assert (=> b!602044 m!579235))

(assert (=> b!602044 m!579221))

(assert (=> b!602044 m!579221))

(declare-fun m!579237 () Bool)

(assert (=> b!602044 m!579237))

(assert (=> b!602047 m!579221))

(assert (=> b!602047 m!579225))

(declare-fun m!579239 () Bool)

(assert (=> b!602047 m!579239))

(assert (=> b!602038 m!579221))

(assert (=> b!602038 m!579221))

(declare-fun m!579241 () Bool)

(assert (=> b!602038 m!579241))

(declare-fun m!579243 () Bool)

(assert (=> b!602045 m!579243))

(assert (=> b!602041 m!579221))

(declare-fun m!579245 () Bool)

(assert (=> b!602041 m!579245))

(assert (=> b!602041 m!579221))

(declare-fun m!579247 () Bool)

(assert (=> b!602041 m!579247))

(declare-fun m!579249 () Bool)

(assert (=> b!602041 m!579249))

(assert (=> b!602041 m!579221))

(declare-fun m!579251 () Bool)

(assert (=> b!602041 m!579251))

(assert (=> b!602041 m!579221))

(declare-fun m!579253 () Bool)

(assert (=> b!602041 m!579253))

(declare-fun m!579255 () Bool)

(assert (=> b!602041 m!579255))

(declare-fun m!579257 () Bool)

(assert (=> b!602041 m!579257))

(assert (=> b!602035 m!579221))

(assert (=> b!602035 m!579221))

(declare-fun m!579259 () Bool)

(assert (=> b!602035 m!579259))

(declare-fun m!579261 () Bool)

(assert (=> b!602036 m!579261))

(assert (=> b!602034 m!579221))

(assert (=> b!602034 m!579221))

(declare-fun m!579263 () Bool)

(assert (=> b!602034 m!579263))

(declare-fun m!579265 () Bool)

(assert (=> start!55022 m!579265))

(declare-fun m!579267 () Bool)

(assert (=> start!55022 m!579267))

(assert (=> b!602042 m!579225))

(declare-fun m!579269 () Bool)

(assert (=> b!602042 m!579269))

(declare-fun m!579271 () Bool)

(assert (=> b!602043 m!579271))

(declare-fun m!579273 () Bool)

(assert (=> b!602048 m!579273))

(declare-fun m!579275 () Bool)

(assert (=> b!602049 m!579275))

(assert (=> b!602033 m!579221))

(assert (=> b!602033 m!579221))

(assert (=> b!602033 m!579241))

(assert (=> b!602050 m!579221))

(declare-fun m!579277 () Bool)

(assert (=> b!602052 m!579277))

(check-sat (not b!602035) (not start!55022) (not b!602038) (not b!602043) (not b!602051) (not b!602034) (not b!602044) (not b!602041) (not b!602052) (not b!602045) (not b!602033) (not b!602049) (not b!602048))
(check-sat)
