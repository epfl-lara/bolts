; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59572 () Bool)

(assert start!59572)

(declare-fun b!657036 () Bool)

(declare-datatypes ((Unit!22674 0))(
  ( (Unit!22675) )
))
(declare-fun e!377440 () Unit!22674)

(declare-fun Unit!22676 () Unit!22674)

(assert (=> b!657036 (= e!377440 Unit!22676)))

(declare-fun b!657037 () Bool)

(declare-fun e!377434 () Unit!22674)

(declare-fun Unit!22677 () Unit!22674)

(assert (=> b!657037 (= e!377434 Unit!22677)))

(declare-fun b!657038 () Bool)

(declare-fun Unit!22678 () Unit!22674)

(assert (=> b!657038 (= e!377440 Unit!22678)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun res!426161 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38686 0))(
  ( (array!38687 (arr!18536 (Array (_ BitVec 32) (_ BitVec 64))) (size!18900 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38686)

(assert (=> b!657038 (= res!426161 (= (select (store (arr!18536 a!2986) i!1108 k!1786) index!984) (select (arr!18536 a!2986) j!136)))))

(declare-fun e!377432 () Bool)

(assert (=> b!657038 (=> (not res!426161) (not e!377432))))

(assert (=> b!657038 e!377432))

(declare-fun c!75813 () Bool)

(assert (=> b!657038 (= c!75813 (bvslt j!136 index!984))))

(declare-fun lt!306864 () Unit!22674)

(declare-fun e!377436 () Unit!22674)

(assert (=> b!657038 (= lt!306864 e!377436)))

(declare-fun c!75815 () Bool)

(assert (=> b!657038 (= c!75815 (bvslt index!984 j!136))))

(declare-fun lt!306848 () Unit!22674)

(assert (=> b!657038 (= lt!306848 e!377434)))

(assert (=> b!657038 false))

(declare-fun b!657039 () Bool)

(declare-fun e!377433 () Unit!22674)

(declare-fun Unit!22679 () Unit!22674)

(assert (=> b!657039 (= e!377433 Unit!22679)))

(declare-fun b!657040 () Bool)

(declare-fun res!426158 () Bool)

(declare-fun e!377443 () Bool)

(assert (=> b!657040 (=> (not res!426158) (not e!377443))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!657040 (= res!426158 (and (= (size!18900 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18900 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18900 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657041 () Bool)

(declare-fun e!377439 () Bool)

(declare-fun e!377429 () Bool)

(assert (=> b!657041 (= e!377439 (not e!377429))))

(declare-fun res!426152 () Bool)

(assert (=> b!657041 (=> res!426152 e!377429)))

(declare-datatypes ((SeekEntryResult!6983 0))(
  ( (MissingZero!6983 (index!30296 (_ BitVec 32))) (Found!6983 (index!30297 (_ BitVec 32))) (Intermediate!6983 (undefined!7795 Bool) (index!30298 (_ BitVec 32)) (x!59115 (_ BitVec 32))) (Undefined!6983) (MissingVacant!6983 (index!30299 (_ BitVec 32))) )
))
(declare-fun lt!306850 () SeekEntryResult!6983)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657041 (= res!426152 (not (= lt!306850 (MissingVacant!6983 vacantSpotIndex!68))))))

(declare-fun lt!306865 () Unit!22674)

(assert (=> b!657041 (= lt!306865 e!377440)))

(declare-fun c!75814 () Bool)

(assert (=> b!657041 (= c!75814 (= lt!306850 (Found!6983 index!984)))))

(declare-fun lt!306863 () Unit!22674)

(assert (=> b!657041 (= lt!306863 e!377433)))

(declare-fun c!75812 () Bool)

(assert (=> b!657041 (= c!75812 (= lt!306850 Undefined!6983))))

(declare-fun lt!306849 () array!38686)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!306857 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38686 (_ BitVec 32)) SeekEntryResult!6983)

(assert (=> b!657041 (= lt!306850 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!306857 lt!306849 mask!3053))))

(declare-fun e!377431 () Bool)

(assert (=> b!657041 e!377431))

(declare-fun res!426150 () Bool)

(assert (=> b!657041 (=> (not res!426150) (not e!377431))))

(declare-fun lt!306860 () (_ BitVec 32))

(declare-fun lt!306853 () SeekEntryResult!6983)

(assert (=> b!657041 (= res!426150 (= lt!306853 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306860 vacantSpotIndex!68 lt!306857 lt!306849 mask!3053)))))

(assert (=> b!657041 (= lt!306853 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!306860 vacantSpotIndex!68 (select (arr!18536 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657041 (= lt!306857 (select (store (arr!18536 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!306862 () Unit!22674)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38686 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22674)

(assert (=> b!657041 (= lt!306862 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!306860 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657041 (= lt!306860 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657042 () Bool)

(assert (=> b!657042 false))

(declare-fun lt!306867 () Unit!22674)

(declare-datatypes ((List!12630 0))(
  ( (Nil!12627) (Cons!12626 (h!13671 (_ BitVec 64)) (t!18866 List!12630)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38686 (_ BitVec 64) (_ BitVec 32) List!12630) Unit!22674)

(assert (=> b!657042 (= lt!306867 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306849 (select (arr!18536 a!2986) j!136) index!984 Nil!12627))))

(declare-fun arrayNoDuplicates!0 (array!38686 (_ BitVec 32) List!12630) Bool)

(assert (=> b!657042 (arrayNoDuplicates!0 lt!306849 index!984 Nil!12627)))

(declare-fun lt!306866 () Unit!22674)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38686 (_ BitVec 32) (_ BitVec 32)) Unit!22674)

(assert (=> b!657042 (= lt!306866 (lemmaNoDuplicateFromThenFromBigger!0 lt!306849 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657042 (arrayNoDuplicates!0 lt!306849 #b00000000000000000000000000000000 Nil!12627)))

(declare-fun lt!306851 () Unit!22674)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12630) Unit!22674)

(assert (=> b!657042 (= lt!306851 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12627))))

(declare-fun arrayContainsKey!0 (array!38686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657042 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!306856 () Unit!22674)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38686 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22674)

(assert (=> b!657042 (= lt!306856 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306849 (select (arr!18536 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377438 () Bool)

(assert (=> b!657042 e!377438))

(declare-fun res!426157 () Bool)

(assert (=> b!657042 (=> (not res!426157) (not e!377438))))

(assert (=> b!657042 (= res!426157 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) j!136))))

(declare-fun Unit!22680 () Unit!22674)

(assert (=> b!657042 (= e!377434 Unit!22680)))

(declare-fun b!657043 () Bool)

(declare-fun res!426145 () Bool)

(assert (=> b!657043 (=> (not res!426145) (not e!377443))))

(assert (=> b!657043 (= res!426145 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657044 () Bool)

(declare-fun e!377437 () Bool)

(assert (=> b!657044 (= e!377443 e!377437)))

(declare-fun res!426151 () Bool)

(assert (=> b!657044 (=> (not res!426151) (not e!377437))))

(declare-fun lt!306859 () SeekEntryResult!6983)

(assert (=> b!657044 (= res!426151 (or (= lt!306859 (MissingZero!6983 i!1108)) (= lt!306859 (MissingVacant!6983 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38686 (_ BitVec 32)) SeekEntryResult!6983)

(assert (=> b!657044 (= lt!306859 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657045 () Bool)

(assert (=> b!657045 false))

(declare-fun lt!306852 () Unit!22674)

(assert (=> b!657045 (= lt!306852 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!306849 (select (arr!18536 a!2986) j!136) j!136 Nil!12627))))

(assert (=> b!657045 (arrayNoDuplicates!0 lt!306849 j!136 Nil!12627)))

(declare-fun lt!306855 () Unit!22674)

(assert (=> b!657045 (= lt!306855 (lemmaNoDuplicateFromThenFromBigger!0 lt!306849 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657045 (arrayNoDuplicates!0 lt!306849 #b00000000000000000000000000000000 Nil!12627)))

(declare-fun lt!306858 () Unit!22674)

(assert (=> b!657045 (= lt!306858 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12627))))

(assert (=> b!657045 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!306861 () Unit!22674)

(assert (=> b!657045 (= lt!306861 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!306849 (select (arr!18536 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22681 () Unit!22674)

(assert (=> b!657045 (= e!377436 Unit!22681)))

(declare-fun b!657046 () Bool)

(declare-fun e!377442 () Bool)

(assert (=> b!657046 (= e!377442 e!377439)))

(declare-fun res!426154 () Bool)

(assert (=> b!657046 (=> (not res!426154) (not e!377439))))

(declare-fun lt!306854 () SeekEntryResult!6983)

(assert (=> b!657046 (= res!426154 (and (= lt!306854 (Found!6983 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18536 a!2986) index!984) (select (arr!18536 a!2986) j!136))) (not (= (select (arr!18536 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657046 (= lt!306854 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18536 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!426148 () Bool)

(assert (=> start!59572 (=> (not res!426148) (not e!377443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59572 (= res!426148 (validMask!0 mask!3053))))

(assert (=> start!59572 e!377443))

(assert (=> start!59572 true))

(declare-fun array_inv!14310 (array!38686) Bool)

(assert (=> start!59572 (array_inv!14310 a!2986)))

(declare-fun b!657035 () Bool)

(assert (=> b!657035 (= e!377431 (= lt!306854 lt!306853))))

(declare-fun b!657047 () Bool)

(declare-fun Unit!22682 () Unit!22674)

(assert (=> b!657047 (= e!377433 Unit!22682)))

(assert (=> b!657047 false))

(declare-fun b!657048 () Bool)

(assert (=> b!657048 (= e!377429 true)))

(assert (=> b!657048 (= (select (store (arr!18536 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657049 () Bool)

(declare-fun res!426149 () Bool)

(assert (=> b!657049 (=> (not res!426149) (not e!377443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657049 (= res!426149 (validKeyInArray!0 k!1786))))

(declare-fun b!657050 () Bool)

(declare-fun res!426147 () Bool)

(assert (=> b!657050 (=> (not res!426147) (not e!377437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38686 (_ BitVec 32)) Bool)

(assert (=> b!657050 (= res!426147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657051 () Bool)

(declare-fun Unit!22683 () Unit!22674)

(assert (=> b!657051 (= e!377436 Unit!22683)))

(declare-fun b!657052 () Bool)

(assert (=> b!657052 (= e!377438 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) index!984))))

(declare-fun b!657053 () Bool)

(declare-fun res!426156 () Bool)

(assert (=> b!657053 (=> (not res!426156) (not e!377437))))

(assert (=> b!657053 (= res!426156 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12627))))

(declare-fun b!657054 () Bool)

(declare-fun res!426160 () Bool)

(assert (=> b!657054 (= res!426160 (bvsge j!136 index!984))))

(declare-fun e!377430 () Bool)

(assert (=> b!657054 (=> res!426160 e!377430)))

(assert (=> b!657054 (= e!377432 e!377430)))

(declare-fun e!377435 () Bool)

(declare-fun b!657055 () Bool)

(assert (=> b!657055 (= e!377435 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) index!984))))

(declare-fun res!426155 () Bool)

(declare-fun b!657056 () Bool)

(assert (=> b!657056 (= res!426155 (arrayContainsKey!0 lt!306849 (select (arr!18536 a!2986) j!136) j!136))))

(assert (=> b!657056 (=> (not res!426155) (not e!377435))))

(assert (=> b!657056 (= e!377430 e!377435)))

(declare-fun b!657057 () Bool)

(assert (=> b!657057 (= e!377437 e!377442)))

(declare-fun res!426159 () Bool)

(assert (=> b!657057 (=> (not res!426159) (not e!377442))))

(assert (=> b!657057 (= res!426159 (= (select (store (arr!18536 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657057 (= lt!306849 (array!38687 (store (arr!18536 a!2986) i!1108 k!1786) (size!18900 a!2986)))))

(declare-fun b!657058 () Bool)

(declare-fun res!426153 () Bool)

(assert (=> b!657058 (=> (not res!426153) (not e!377443))))

(assert (=> b!657058 (= res!426153 (validKeyInArray!0 (select (arr!18536 a!2986) j!136)))))

(declare-fun b!657059 () Bool)

(declare-fun res!426146 () Bool)

(assert (=> b!657059 (=> (not res!426146) (not e!377437))))

(assert (=> b!657059 (= res!426146 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18536 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59572 res!426148) b!657040))

(assert (= (and b!657040 res!426158) b!657058))

(assert (= (and b!657058 res!426153) b!657049))

(assert (= (and b!657049 res!426149) b!657043))

(assert (= (and b!657043 res!426145) b!657044))

(assert (= (and b!657044 res!426151) b!657050))

(assert (= (and b!657050 res!426147) b!657053))

(assert (= (and b!657053 res!426156) b!657059))

(assert (= (and b!657059 res!426146) b!657057))

(assert (= (and b!657057 res!426159) b!657046))

(assert (= (and b!657046 res!426154) b!657041))

(assert (= (and b!657041 res!426150) b!657035))

(assert (= (and b!657041 c!75812) b!657047))

(assert (= (and b!657041 (not c!75812)) b!657039))

(assert (= (and b!657041 c!75814) b!657038))

(assert (= (and b!657041 (not c!75814)) b!657036))

(assert (= (and b!657038 res!426161) b!657054))

(assert (= (and b!657054 (not res!426160)) b!657056))

(assert (= (and b!657056 res!426155) b!657055))

(assert (= (and b!657038 c!75813) b!657045))

(assert (= (and b!657038 (not c!75813)) b!657051))

(assert (= (and b!657038 c!75815) b!657042))

(assert (= (and b!657038 (not c!75815)) b!657037))

(assert (= (and b!657042 res!426157) b!657052))

(assert (= (and b!657041 (not res!426152)) b!657048))

(declare-fun m!630161 () Bool)

(assert (=> b!657043 m!630161))

(declare-fun m!630163 () Bool)

(assert (=> b!657046 m!630163))

(declare-fun m!630165 () Bool)

(assert (=> b!657046 m!630165))

(assert (=> b!657046 m!630165))

(declare-fun m!630167 () Bool)

(assert (=> b!657046 m!630167))

(declare-fun m!630169 () Bool)

(assert (=> b!657059 m!630169))

(assert (=> b!657058 m!630165))

(assert (=> b!657058 m!630165))

(declare-fun m!630171 () Bool)

(assert (=> b!657058 m!630171))

(declare-fun m!630173 () Bool)

(assert (=> b!657057 m!630173))

(declare-fun m!630175 () Bool)

(assert (=> b!657057 m!630175))

(declare-fun m!630177 () Bool)

(assert (=> start!59572 m!630177))

(declare-fun m!630179 () Bool)

(assert (=> start!59572 m!630179))

(declare-fun m!630181 () Bool)

(assert (=> b!657045 m!630181))

(declare-fun m!630183 () Bool)

(assert (=> b!657045 m!630183))

(assert (=> b!657045 m!630165))

(assert (=> b!657045 m!630165))

(declare-fun m!630185 () Bool)

(assert (=> b!657045 m!630185))

(assert (=> b!657045 m!630165))

(declare-fun m!630187 () Bool)

(assert (=> b!657045 m!630187))

(declare-fun m!630189 () Bool)

(assert (=> b!657045 m!630189))

(assert (=> b!657045 m!630165))

(declare-fun m!630191 () Bool)

(assert (=> b!657045 m!630191))

(declare-fun m!630193 () Bool)

(assert (=> b!657045 m!630193))

(assert (=> b!657038 m!630173))

(declare-fun m!630195 () Bool)

(assert (=> b!657038 m!630195))

(assert (=> b!657038 m!630165))

(assert (=> b!657056 m!630165))

(assert (=> b!657056 m!630165))

(declare-fun m!630197 () Bool)

(assert (=> b!657056 m!630197))

(declare-fun m!630199 () Bool)

(assert (=> b!657053 m!630199))

(declare-fun m!630201 () Bool)

(assert (=> b!657041 m!630201))

(declare-fun m!630203 () Bool)

(assert (=> b!657041 m!630203))

(declare-fun m!630205 () Bool)

(assert (=> b!657041 m!630205))

(assert (=> b!657041 m!630165))

(declare-fun m!630207 () Bool)

(assert (=> b!657041 m!630207))

(assert (=> b!657041 m!630173))

(declare-fun m!630209 () Bool)

(assert (=> b!657041 m!630209))

(assert (=> b!657041 m!630165))

(declare-fun m!630211 () Bool)

(assert (=> b!657041 m!630211))

(assert (=> b!657055 m!630165))

(assert (=> b!657055 m!630165))

(declare-fun m!630213 () Bool)

(assert (=> b!657055 m!630213))

(declare-fun m!630215 () Bool)

(assert (=> b!657049 m!630215))

(assert (=> b!657048 m!630173))

(assert (=> b!657048 m!630195))

(assert (=> b!657042 m!630181))

(assert (=> b!657042 m!630165))

(assert (=> b!657042 m!630165))

(declare-fun m!630217 () Bool)

(assert (=> b!657042 m!630217))

(declare-fun m!630219 () Bool)

(assert (=> b!657042 m!630219))

(declare-fun m!630221 () Bool)

(assert (=> b!657042 m!630221))

(assert (=> b!657042 m!630165))

(declare-fun m!630223 () Bool)

(assert (=> b!657042 m!630223))

(assert (=> b!657042 m!630165))

(declare-fun m!630225 () Bool)

(assert (=> b!657042 m!630225))

(assert (=> b!657042 m!630165))

(assert (=> b!657042 m!630197))

(assert (=> b!657042 m!630189))

(assert (=> b!657052 m!630165))

(assert (=> b!657052 m!630165))

(assert (=> b!657052 m!630213))

(declare-fun m!630227 () Bool)

(assert (=> b!657050 m!630227))

(declare-fun m!630229 () Bool)

(assert (=> b!657044 m!630229))

(push 1)

(assert (not b!657044))

(assert (not b!657050))

(assert (not b!657055))

(assert (not b!657058))

(assert (not b!657052))

(assert (not b!657056))

(assert (not b!657045))

(assert (not b!657053))

(assert (not b!657042))

(assert (not b!657043))

(assert (not b!657046))

(assert (not b!657041))

(assert (not b!657049))

(assert (not start!59572))

(check-sat)

(pop 1)

(push 1)

