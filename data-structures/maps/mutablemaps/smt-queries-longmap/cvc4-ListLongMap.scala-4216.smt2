; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57832 () Bool)

(assert start!57832)

(declare-fun b!639314 () Bool)

(declare-fun e!365903 () Bool)

(declare-fun e!365909 () Bool)

(assert (=> b!639314 (= e!365903 e!365909)))

(declare-fun res!414036 () Bool)

(assert (=> b!639314 (=> res!414036 e!365909)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295821 () (_ BitVec 64))

(declare-fun lt!295816 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38290 0))(
  ( (array!38291 (arr!18362 (Array (_ BitVec 32) (_ BitVec 64))) (size!18726 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38290)

(assert (=> b!639314 (= res!414036 (or (not (= (select (arr!18362 a!2986) j!136) lt!295816)) (not (= (select (arr!18362 a!2986) j!136) lt!295821)) (bvsge j!136 index!984)))))

(declare-fun e!365907 () Bool)

(assert (=> b!639314 e!365907))

(declare-fun res!414031 () Bool)

(assert (=> b!639314 (=> (not res!414031) (not e!365907))))

(assert (=> b!639314 (= res!414031 (= lt!295821 (select (arr!18362 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!639314 (= lt!295821 (select (store (arr!18362 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639315 () Bool)

(declare-fun res!414029 () Bool)

(declare-fun e!365902 () Bool)

(assert (=> b!639315 (=> (not res!414029) (not e!365902))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!639315 (= res!414029 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18362 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639316 () Bool)

(declare-fun res!414037 () Bool)

(assert (=> b!639316 (=> (not res!414037) (not e!365902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38290 (_ BitVec 32)) Bool)

(assert (=> b!639316 (= res!414037 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639317 () Bool)

(declare-fun e!365906 () Bool)

(assert (=> b!639317 (= e!365907 e!365906)))

(declare-fun res!414026 () Bool)

(assert (=> b!639317 (=> res!414026 e!365906)))

(assert (=> b!639317 (= res!414026 (or (not (= (select (arr!18362 a!2986) j!136) lt!295816)) (not (= (select (arr!18362 a!2986) j!136) lt!295821)) (bvsge j!136 index!984)))))

(declare-fun res!414022 () Bool)

(declare-fun e!365905 () Bool)

(assert (=> start!57832 (=> (not res!414022) (not e!365905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57832 (= res!414022 (validMask!0 mask!3053))))

(assert (=> start!57832 e!365905))

(assert (=> start!57832 true))

(declare-fun array_inv!14136 (array!38290) Bool)

(assert (=> start!57832 (array_inv!14136 a!2986)))

(declare-fun b!639318 () Bool)

(declare-fun e!365910 () Bool)

(declare-datatypes ((SeekEntryResult!6809 0))(
  ( (MissingZero!6809 (index!29552 (_ BitVec 32))) (Found!6809 (index!29553 (_ BitVec 32))) (Intermediate!6809 (undefined!7621 Bool) (index!29554 (_ BitVec 32)) (x!58333 (_ BitVec 32))) (Undefined!6809) (MissingVacant!6809 (index!29555 (_ BitVec 32))) )
))
(declare-fun lt!295820 () SeekEntryResult!6809)

(declare-fun lt!295814 () SeekEntryResult!6809)

(assert (=> b!639318 (= e!365910 (= lt!295820 lt!295814))))

(declare-fun b!639319 () Bool)

(declare-datatypes ((Unit!21594 0))(
  ( (Unit!21595) )
))
(declare-fun e!365911 () Unit!21594)

(declare-fun Unit!21596 () Unit!21594)

(assert (=> b!639319 (= e!365911 Unit!21596)))

(assert (=> b!639319 false))

(declare-fun b!639320 () Bool)

(declare-fun e!365901 () Bool)

(declare-fun e!365904 () Bool)

(assert (=> b!639320 (= e!365901 e!365904)))

(declare-fun res!414032 () Bool)

(assert (=> b!639320 (=> (not res!414032) (not e!365904))))

(assert (=> b!639320 (= res!414032 (and (= lt!295820 (Found!6809 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18362 a!2986) index!984) (select (arr!18362 a!2986) j!136))) (not (= (select (arr!18362 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38290 (_ BitVec 32)) SeekEntryResult!6809)

(assert (=> b!639320 (= lt!295820 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18362 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639321 () Bool)

(declare-fun Unit!21597 () Unit!21594)

(assert (=> b!639321 (= e!365911 Unit!21597)))

(declare-fun b!639322 () Bool)

(assert (=> b!639322 (= e!365904 (not e!365903))))

(declare-fun res!414034 () Bool)

(assert (=> b!639322 (=> res!414034 e!365903)))

(declare-fun lt!295813 () SeekEntryResult!6809)

(assert (=> b!639322 (= res!414034 (not (= lt!295813 (Found!6809 index!984))))))

(declare-fun lt!295819 () Unit!21594)

(assert (=> b!639322 (= lt!295819 e!365911)))

(declare-fun c!73013 () Bool)

(assert (=> b!639322 (= c!73013 (= lt!295813 Undefined!6809))))

(declare-fun lt!295811 () array!38290)

(assert (=> b!639322 (= lt!295813 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295816 lt!295811 mask!3053))))

(assert (=> b!639322 e!365910))

(declare-fun res!414038 () Bool)

(assert (=> b!639322 (=> (not res!414038) (not e!365910))))

(declare-fun lt!295817 () (_ BitVec 32))

(assert (=> b!639322 (= res!414038 (= lt!295814 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295817 vacantSpotIndex!68 lt!295816 lt!295811 mask!3053)))))

(assert (=> b!639322 (= lt!295814 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295817 vacantSpotIndex!68 (select (arr!18362 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639322 (= lt!295816 (select (store (arr!18362 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295815 () Unit!21594)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38290 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21594)

(assert (=> b!639322 (= lt!295815 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295817 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639322 (= lt!295817 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639323 () Bool)

(assert (=> b!639323 (= e!365905 e!365902)))

(declare-fun res!414023 () Bool)

(assert (=> b!639323 (=> (not res!414023) (not e!365902))))

(declare-fun lt!295818 () SeekEntryResult!6809)

(assert (=> b!639323 (= res!414023 (or (= lt!295818 (MissingZero!6809 i!1108)) (= lt!295818 (MissingVacant!6809 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38290 (_ BitVec 32)) SeekEntryResult!6809)

(assert (=> b!639323 (= lt!295818 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639324 () Bool)

(declare-fun e!365908 () Bool)

(declare-fun arrayContainsKey!0 (array!38290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639324 (= e!365908 (arrayContainsKey!0 lt!295811 (select (arr!18362 a!2986) j!136) index!984))))

(declare-fun b!639325 () Bool)

(assert (=> b!639325 (= e!365902 e!365901)))

(declare-fun res!414035 () Bool)

(assert (=> b!639325 (=> (not res!414035) (not e!365901))))

(assert (=> b!639325 (= res!414035 (= (select (store (arr!18362 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639325 (= lt!295811 (array!38291 (store (arr!18362 a!2986) i!1108 k!1786) (size!18726 a!2986)))))

(declare-fun b!639326 () Bool)

(declare-fun res!414030 () Bool)

(assert (=> b!639326 (=> (not res!414030) (not e!365902))))

(declare-datatypes ((List!12456 0))(
  ( (Nil!12453) (Cons!12452 (h!13497 (_ BitVec 64)) (t!18692 List!12456)) )
))
(declare-fun arrayNoDuplicates!0 (array!38290 (_ BitVec 32) List!12456) Bool)

(assert (=> b!639326 (= res!414030 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12453))))

(declare-fun b!639327 () Bool)

(assert (=> b!639327 (= e!365909 (or (bvsge (size!18726 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18726 a!2986)) (bvsle j!136 (size!18726 a!2986))))))

(assert (=> b!639327 (arrayNoDuplicates!0 lt!295811 #b00000000000000000000000000000000 Nil!12453)))

(declare-fun lt!295810 () Unit!21594)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38290 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12456) Unit!21594)

(assert (=> b!639327 (= lt!295810 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12453))))

(assert (=> b!639327 (arrayContainsKey!0 lt!295811 (select (arr!18362 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295812 () Unit!21594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38290 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21594)

(assert (=> b!639327 (= lt!295812 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295811 (select (arr!18362 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639328 () Bool)

(declare-fun res!414027 () Bool)

(assert (=> b!639328 (=> (not res!414027) (not e!365905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639328 (= res!414027 (validKeyInArray!0 k!1786))))

(declare-fun b!639329 () Bool)

(declare-fun res!414028 () Bool)

(assert (=> b!639329 (=> (not res!414028) (not e!365905))))

(assert (=> b!639329 (= res!414028 (validKeyInArray!0 (select (arr!18362 a!2986) j!136)))))

(declare-fun b!639330 () Bool)

(declare-fun res!414025 () Bool)

(assert (=> b!639330 (=> (not res!414025) (not e!365905))))

(assert (=> b!639330 (= res!414025 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639331 () Bool)

(assert (=> b!639331 (= e!365906 e!365908)))

(declare-fun res!414024 () Bool)

(assert (=> b!639331 (=> (not res!414024) (not e!365908))))

(assert (=> b!639331 (= res!414024 (arrayContainsKey!0 lt!295811 (select (arr!18362 a!2986) j!136) j!136))))

(declare-fun b!639332 () Bool)

(declare-fun res!414033 () Bool)

(assert (=> b!639332 (=> (not res!414033) (not e!365905))))

(assert (=> b!639332 (= res!414033 (and (= (size!18726 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18726 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18726 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57832 res!414022) b!639332))

(assert (= (and b!639332 res!414033) b!639329))

(assert (= (and b!639329 res!414028) b!639328))

(assert (= (and b!639328 res!414027) b!639330))

(assert (= (and b!639330 res!414025) b!639323))

(assert (= (and b!639323 res!414023) b!639316))

(assert (= (and b!639316 res!414037) b!639326))

(assert (= (and b!639326 res!414030) b!639315))

(assert (= (and b!639315 res!414029) b!639325))

(assert (= (and b!639325 res!414035) b!639320))

(assert (= (and b!639320 res!414032) b!639322))

(assert (= (and b!639322 res!414038) b!639318))

(assert (= (and b!639322 c!73013) b!639319))

(assert (= (and b!639322 (not c!73013)) b!639321))

(assert (= (and b!639322 (not res!414034)) b!639314))

(assert (= (and b!639314 res!414031) b!639317))

(assert (= (and b!639317 (not res!414026)) b!639331))

(assert (= (and b!639331 res!414024) b!639324))

(assert (= (and b!639314 (not res!414036)) b!639327))

(declare-fun m!613245 () Bool)

(assert (=> b!639326 m!613245))

(declare-fun m!613247 () Bool)

(assert (=> b!639320 m!613247))

(declare-fun m!613249 () Bool)

(assert (=> b!639320 m!613249))

(assert (=> b!639320 m!613249))

(declare-fun m!613251 () Bool)

(assert (=> b!639320 m!613251))

(assert (=> b!639314 m!613249))

(declare-fun m!613253 () Bool)

(assert (=> b!639314 m!613253))

(declare-fun m!613255 () Bool)

(assert (=> b!639314 m!613255))

(assert (=> b!639324 m!613249))

(assert (=> b!639324 m!613249))

(declare-fun m!613257 () Bool)

(assert (=> b!639324 m!613257))

(declare-fun m!613259 () Bool)

(assert (=> b!639330 m!613259))

(declare-fun m!613261 () Bool)

(assert (=> b!639316 m!613261))

(declare-fun m!613263 () Bool)

(assert (=> b!639328 m!613263))

(declare-fun m!613265 () Bool)

(assert (=> b!639315 m!613265))

(declare-fun m!613267 () Bool)

(assert (=> start!57832 m!613267))

(declare-fun m!613269 () Bool)

(assert (=> start!57832 m!613269))

(assert (=> b!639329 m!613249))

(assert (=> b!639329 m!613249))

(declare-fun m!613271 () Bool)

(assert (=> b!639329 m!613271))

(assert (=> b!639331 m!613249))

(assert (=> b!639331 m!613249))

(declare-fun m!613273 () Bool)

(assert (=> b!639331 m!613273))

(assert (=> b!639325 m!613253))

(declare-fun m!613275 () Bool)

(assert (=> b!639325 m!613275))

(assert (=> b!639317 m!613249))

(declare-fun m!613277 () Bool)

(assert (=> b!639322 m!613277))

(declare-fun m!613279 () Bool)

(assert (=> b!639322 m!613279))

(declare-fun m!613281 () Bool)

(assert (=> b!639322 m!613281))

(assert (=> b!639322 m!613249))

(declare-fun m!613283 () Bool)

(assert (=> b!639322 m!613283))

(assert (=> b!639322 m!613253))

(declare-fun m!613285 () Bool)

(assert (=> b!639322 m!613285))

(assert (=> b!639322 m!613249))

(declare-fun m!613287 () Bool)

(assert (=> b!639322 m!613287))

(assert (=> b!639327 m!613249))

(declare-fun m!613289 () Bool)

(assert (=> b!639327 m!613289))

(assert (=> b!639327 m!613249))

(declare-fun m!613291 () Bool)

(assert (=> b!639327 m!613291))

(assert (=> b!639327 m!613249))

(declare-fun m!613293 () Bool)

(assert (=> b!639327 m!613293))

(declare-fun m!613295 () Bool)

(assert (=> b!639327 m!613295))

(declare-fun m!613297 () Bool)

(assert (=> b!639323 m!613297))

(push 1)

(assert (not b!639329))

(assert (not b!639326))

(assert (not b!639331))

(assert (not b!639328))

(assert (not b!639324))

(assert (not start!57832))

(assert (not b!639320))

(assert (not b!639316))

(assert (not b!639330))

(assert (not b!639327))

(assert (not b!639323))

(assert (not b!639322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

