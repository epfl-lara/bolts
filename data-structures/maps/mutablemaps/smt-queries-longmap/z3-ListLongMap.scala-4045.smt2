; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55154 () Bool)

(assert start!55154)

(declare-fun b!604003 () Bool)

(declare-fun res!388157 () Bool)

(declare-fun e!345599 () Bool)

(assert (=> b!604003 (=> (not res!388157) (not e!345599))))

(declare-datatypes ((array!37190 0))(
  ( (array!37191 (arr!17848 (Array (_ BitVec 32) (_ BitVec 64))) (size!18212 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37190)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37190 (_ BitVec 32)) Bool)

(assert (=> b!604003 (= res!388157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604005 () Bool)

(declare-fun e!345602 () Bool)

(declare-datatypes ((SeekEntryResult!6295 0))(
  ( (MissingZero!6295 (index!27442 (_ BitVec 32))) (Found!6295 (index!27443 (_ BitVec 32))) (Intermediate!6295 (undefined!7107 Bool) (index!27444 (_ BitVec 32)) (x!56265 (_ BitVec 32))) (Undefined!6295) (MissingVacant!6295 (index!27445 (_ BitVec 32))) )
))
(declare-fun lt!275463 () SeekEntryResult!6295)

(declare-fun lt!275459 () SeekEntryResult!6295)

(assert (=> b!604005 (= e!345602 (= lt!275463 lt!275459))))

(declare-fun b!604006 () Bool)

(declare-datatypes ((Unit!19198 0))(
  ( (Unit!19199) )
))
(declare-fun e!345603 () Unit!19198)

(declare-fun Unit!19200 () Unit!19198)

(assert (=> b!604006 (= e!345603 Unit!19200)))

(assert (=> b!604006 false))

(declare-fun b!604007 () Bool)

(declare-fun e!345598 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604007 (= e!345598 (bvsge (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275472 () array!37190)

(declare-fun arrayContainsKey!0 (array!37190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604007 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275471 () Unit!19198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37190 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19198)

(assert (=> b!604007 (= lt!275471 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275472 (select (arr!17848 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!345593 () Bool)

(assert (=> b!604007 e!345593))

(declare-fun res!388139 () Bool)

(assert (=> b!604007 (=> (not res!388139) (not e!345593))))

(assert (=> b!604007 (= res!388139 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) j!136))))

(declare-fun b!604008 () Bool)

(declare-fun e!345597 () Bool)

(assert (=> b!604008 (= e!345599 e!345597)))

(declare-fun res!388148 () Bool)

(assert (=> b!604008 (=> (not res!388148) (not e!345597))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!604008 (= res!388148 (= (select (store (arr!17848 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604008 (= lt!275472 (array!37191 (store (arr!17848 a!2986) i!1108 k0!1786) (size!18212 a!2986)))))

(declare-fun b!604009 () Bool)

(declare-fun e!345591 () Bool)

(assert (=> b!604009 (= e!345591 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) index!984))))

(declare-fun b!604010 () Bool)

(declare-fun e!345604 () Unit!19198)

(declare-fun Unit!19201 () Unit!19198)

(assert (=> b!604010 (= e!345604 Unit!19201)))

(declare-fun b!604011 () Bool)

(declare-fun res!388149 () Bool)

(assert (=> b!604011 (=> (not res!388149) (not e!345599))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!604011 (= res!388149 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17848 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604012 () Bool)

(declare-fun e!345594 () Bool)

(assert (=> b!604012 (= e!345597 e!345594)))

(declare-fun res!388150 () Bool)

(assert (=> b!604012 (=> (not res!388150) (not e!345594))))

(assert (=> b!604012 (= res!388150 (and (= lt!275463 (Found!6295 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17848 a!2986) index!984) (select (arr!17848 a!2986) j!136))) (not (= (select (arr!17848 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37190 (_ BitVec 32)) SeekEntryResult!6295)

(assert (=> b!604012 (= lt!275463 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17848 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604013 () Bool)

(declare-fun e!345590 () Bool)

(assert (=> b!604013 (= e!345594 (not e!345590))))

(declare-fun res!388152 () Bool)

(assert (=> b!604013 (=> res!388152 e!345590)))

(declare-fun lt!275464 () SeekEntryResult!6295)

(assert (=> b!604013 (= res!388152 (not (= lt!275464 (Found!6295 index!984))))))

(declare-fun lt!275466 () Unit!19198)

(assert (=> b!604013 (= lt!275466 e!345603)))

(declare-fun c!68299 () Bool)

(assert (=> b!604013 (= c!68299 (= lt!275464 Undefined!6295))))

(declare-fun lt!275469 () (_ BitVec 64))

(assert (=> b!604013 (= lt!275464 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275469 lt!275472 mask!3053))))

(assert (=> b!604013 e!345602))

(declare-fun res!388145 () Bool)

(assert (=> b!604013 (=> (not res!388145) (not e!345602))))

(declare-fun lt!275458 () (_ BitVec 32))

(assert (=> b!604013 (= res!388145 (= lt!275459 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275458 vacantSpotIndex!68 lt!275469 lt!275472 mask!3053)))))

(assert (=> b!604013 (= lt!275459 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275458 vacantSpotIndex!68 (select (arr!17848 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604013 (= lt!275469 (select (store (arr!17848 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275462 () Unit!19198)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37190 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19198)

(assert (=> b!604013 (= lt!275462 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275458 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604013 (= lt!275458 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604014 () Bool)

(assert (=> b!604014 (= e!345593 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) index!984))))

(declare-fun b!604015 () Bool)

(declare-fun e!345595 () Bool)

(assert (=> b!604015 (= e!345595 e!345598)))

(declare-fun res!388156 () Bool)

(assert (=> b!604015 (=> res!388156 e!345598)))

(assert (=> b!604015 (= res!388156 (bvsge index!984 j!136))))

(declare-fun lt!275468 () Unit!19198)

(assert (=> b!604015 (= lt!275468 e!345604)))

(declare-fun c!68300 () Bool)

(assert (=> b!604015 (= c!68300 (bvslt j!136 index!984))))

(declare-fun b!604016 () Bool)

(declare-fun res!388146 () Bool)

(declare-fun e!345596 () Bool)

(assert (=> b!604016 (=> (not res!388146) (not e!345596))))

(assert (=> b!604016 (= res!388146 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604017 () Bool)

(declare-fun Unit!19202 () Unit!19198)

(assert (=> b!604017 (= e!345603 Unit!19202)))

(declare-fun b!604018 () Bool)

(assert (=> b!604018 (= e!345590 e!345595)))

(declare-fun res!388151 () Bool)

(assert (=> b!604018 (=> res!388151 e!345595)))

(declare-fun lt!275460 () (_ BitVec 64))

(assert (=> b!604018 (= res!388151 (or (not (= (select (arr!17848 a!2986) j!136) lt!275469)) (not (= (select (arr!17848 a!2986) j!136) lt!275460))))))

(declare-fun e!345600 () Bool)

(assert (=> b!604018 e!345600))

(declare-fun res!388142 () Bool)

(assert (=> b!604018 (=> (not res!388142) (not e!345600))))

(assert (=> b!604018 (= res!388142 (= lt!275460 (select (arr!17848 a!2986) j!136)))))

(assert (=> b!604018 (= lt!275460 (select (store (arr!17848 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!604019 () Bool)

(declare-fun e!345601 () Bool)

(assert (=> b!604019 (= e!345600 e!345601)))

(declare-fun res!388153 () Bool)

(assert (=> b!604019 (=> res!388153 e!345601)))

(assert (=> b!604019 (= res!388153 (or (not (= (select (arr!17848 a!2986) j!136) lt!275469)) (not (= (select (arr!17848 a!2986) j!136) lt!275460)) (bvsge j!136 index!984)))))

(declare-fun b!604004 () Bool)

(declare-fun res!388141 () Bool)

(assert (=> b!604004 (=> (not res!388141) (not e!345596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604004 (= res!388141 (validKeyInArray!0 (select (arr!17848 a!2986) j!136)))))

(declare-fun res!388147 () Bool)

(assert (=> start!55154 (=> (not res!388147) (not e!345596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55154 (= res!388147 (validMask!0 mask!3053))))

(assert (=> start!55154 e!345596))

(assert (=> start!55154 true))

(declare-fun array_inv!13622 (array!37190) Bool)

(assert (=> start!55154 (array_inv!13622 a!2986)))

(declare-fun b!604020 () Bool)

(declare-fun res!388155 () Bool)

(assert (=> b!604020 (=> (not res!388155) (not e!345599))))

(declare-datatypes ((List!11942 0))(
  ( (Nil!11939) (Cons!11938 (h!12983 (_ BitVec 64)) (t!18178 List!11942)) )
))
(declare-fun arrayNoDuplicates!0 (array!37190 (_ BitVec 32) List!11942) Bool)

(assert (=> b!604020 (= res!388155 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11939))))

(declare-fun b!604021 () Bool)

(declare-fun res!388140 () Bool)

(assert (=> b!604021 (=> (not res!388140) (not e!345596))))

(assert (=> b!604021 (= res!388140 (validKeyInArray!0 k0!1786))))

(declare-fun b!604022 () Bool)

(assert (=> b!604022 (= e!345601 e!345591)))

(declare-fun res!388144 () Bool)

(assert (=> b!604022 (=> (not res!388144) (not e!345591))))

(assert (=> b!604022 (= res!388144 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) j!136))))

(declare-fun b!604023 () Bool)

(declare-fun Unit!19203 () Unit!19198)

(assert (=> b!604023 (= e!345604 Unit!19203)))

(declare-fun lt!275461 () Unit!19198)

(assert (=> b!604023 (= lt!275461 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275472 (select (arr!17848 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604023 (arrayContainsKey!0 lt!275472 (select (arr!17848 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275465 () Unit!19198)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37190 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11942) Unit!19198)

(assert (=> b!604023 (= lt!275465 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11939))))

(assert (=> b!604023 (arrayNoDuplicates!0 lt!275472 #b00000000000000000000000000000000 Nil!11939)))

(declare-fun lt!275457 () Unit!19198)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37190 (_ BitVec 32) (_ BitVec 32)) Unit!19198)

(assert (=> b!604023 (= lt!275457 (lemmaNoDuplicateFromThenFromBigger!0 lt!275472 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604023 (arrayNoDuplicates!0 lt!275472 j!136 Nil!11939)))

(declare-fun lt!275470 () Unit!19198)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37190 (_ BitVec 64) (_ BitVec 32) List!11942) Unit!19198)

(assert (=> b!604023 (= lt!275470 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275472 (select (arr!17848 a!2986) j!136) j!136 Nil!11939))))

(assert (=> b!604023 false))

(declare-fun b!604024 () Bool)

(declare-fun res!388154 () Bool)

(assert (=> b!604024 (=> (not res!388154) (not e!345596))))

(assert (=> b!604024 (= res!388154 (and (= (size!18212 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18212 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18212 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604025 () Bool)

(assert (=> b!604025 (= e!345596 e!345599)))

(declare-fun res!388143 () Bool)

(assert (=> b!604025 (=> (not res!388143) (not e!345599))))

(declare-fun lt!275467 () SeekEntryResult!6295)

(assert (=> b!604025 (= res!388143 (or (= lt!275467 (MissingZero!6295 i!1108)) (= lt!275467 (MissingVacant!6295 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37190 (_ BitVec 32)) SeekEntryResult!6295)

(assert (=> b!604025 (= lt!275467 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!55154 res!388147) b!604024))

(assert (= (and b!604024 res!388154) b!604004))

(assert (= (and b!604004 res!388141) b!604021))

(assert (= (and b!604021 res!388140) b!604016))

(assert (= (and b!604016 res!388146) b!604025))

(assert (= (and b!604025 res!388143) b!604003))

(assert (= (and b!604003 res!388157) b!604020))

(assert (= (and b!604020 res!388155) b!604011))

(assert (= (and b!604011 res!388149) b!604008))

(assert (= (and b!604008 res!388148) b!604012))

(assert (= (and b!604012 res!388150) b!604013))

(assert (= (and b!604013 res!388145) b!604005))

(assert (= (and b!604013 c!68299) b!604006))

(assert (= (and b!604013 (not c!68299)) b!604017))

(assert (= (and b!604013 (not res!388152)) b!604018))

(assert (= (and b!604018 res!388142) b!604019))

(assert (= (and b!604019 (not res!388153)) b!604022))

(assert (= (and b!604022 res!388144) b!604009))

(assert (= (and b!604018 (not res!388151)) b!604015))

(assert (= (and b!604015 c!68300) b!604023))

(assert (= (and b!604015 (not c!68300)) b!604010))

(assert (= (and b!604015 (not res!388156)) b!604007))

(assert (= (and b!604007 res!388139) b!604014))

(declare-fun m!580975 () Bool)

(assert (=> b!604016 m!580975))

(declare-fun m!580977 () Bool)

(assert (=> b!604022 m!580977))

(assert (=> b!604022 m!580977))

(declare-fun m!580979 () Bool)

(assert (=> b!604022 m!580979))

(assert (=> b!604007 m!580977))

(assert (=> b!604007 m!580977))

(declare-fun m!580981 () Bool)

(assert (=> b!604007 m!580981))

(assert (=> b!604007 m!580977))

(declare-fun m!580983 () Bool)

(assert (=> b!604007 m!580983))

(assert (=> b!604007 m!580977))

(assert (=> b!604007 m!580979))

(declare-fun m!580985 () Bool)

(assert (=> b!604025 m!580985))

(assert (=> b!604019 m!580977))

(declare-fun m!580987 () Bool)

(assert (=> b!604003 m!580987))

(declare-fun m!580989 () Bool)

(assert (=> b!604020 m!580989))

(declare-fun m!580991 () Bool)

(assert (=> b!604011 m!580991))

(declare-fun m!580993 () Bool)

(assert (=> b!604021 m!580993))

(declare-fun m!580995 () Bool)

(assert (=> b!604013 m!580995))

(declare-fun m!580997 () Bool)

(assert (=> b!604013 m!580997))

(declare-fun m!580999 () Bool)

(assert (=> b!604013 m!580999))

(declare-fun m!581001 () Bool)

(assert (=> b!604013 m!581001))

(declare-fun m!581003 () Bool)

(assert (=> b!604013 m!581003))

(assert (=> b!604013 m!580977))

(declare-fun m!581005 () Bool)

(assert (=> b!604013 m!581005))

(declare-fun m!581007 () Bool)

(assert (=> b!604013 m!581007))

(assert (=> b!604013 m!580977))

(declare-fun m!581009 () Bool)

(assert (=> start!55154 m!581009))

(declare-fun m!581011 () Bool)

(assert (=> start!55154 m!581011))

(assert (=> b!604018 m!580977))

(assert (=> b!604018 m!580997))

(declare-fun m!581013 () Bool)

(assert (=> b!604018 m!581013))

(declare-fun m!581015 () Bool)

(assert (=> b!604012 m!581015))

(assert (=> b!604012 m!580977))

(assert (=> b!604012 m!580977))

(declare-fun m!581017 () Bool)

(assert (=> b!604012 m!581017))

(assert (=> b!604009 m!580977))

(assert (=> b!604009 m!580977))

(declare-fun m!581019 () Bool)

(assert (=> b!604009 m!581019))

(assert (=> b!604014 m!580977))

(assert (=> b!604014 m!580977))

(assert (=> b!604014 m!581019))

(assert (=> b!604008 m!580997))

(declare-fun m!581021 () Bool)

(assert (=> b!604008 m!581021))

(assert (=> b!604004 m!580977))

(assert (=> b!604004 m!580977))

(declare-fun m!581023 () Bool)

(assert (=> b!604004 m!581023))

(assert (=> b!604023 m!580977))

(declare-fun m!581025 () Bool)

(assert (=> b!604023 m!581025))

(assert (=> b!604023 m!580977))

(declare-fun m!581027 () Bool)

(assert (=> b!604023 m!581027))

(declare-fun m!581029 () Bool)

(assert (=> b!604023 m!581029))

(assert (=> b!604023 m!580977))

(declare-fun m!581031 () Bool)

(assert (=> b!604023 m!581031))

(declare-fun m!581033 () Bool)

(assert (=> b!604023 m!581033))

(assert (=> b!604023 m!580977))

(declare-fun m!581035 () Bool)

(assert (=> b!604023 m!581035))

(declare-fun m!581037 () Bool)

(assert (=> b!604023 m!581037))

(check-sat (not b!604003) (not b!604021) (not b!604013) (not b!604016) (not b!604025) (not b!604009) (not b!604020) (not start!55154) (not b!604023) (not b!604007) (not b!604012) (not b!604014) (not b!604004) (not b!604022))
(check-sat)
