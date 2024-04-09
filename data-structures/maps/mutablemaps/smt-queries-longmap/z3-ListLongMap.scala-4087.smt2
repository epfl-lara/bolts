; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56030 () Bool)

(assert start!56030)

(declare-fun e!353157 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37463 0))(
  ( (array!37464 (arr!17974 (Array (_ BitVec 32) (_ BitVec 64))) (size!18338 (_ BitVec 32))) )
))
(declare-fun lt!283236 () array!37463)

(declare-fun b!615918 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37463)

(declare-fun arrayContainsKey!0 (array!37463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615918 (= e!353157 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) index!984))))

(declare-fun b!615919 () Bool)

(declare-datatypes ((Unit!20030 0))(
  ( (Unit!20031) )
))
(declare-fun e!353160 () Unit!20030)

(declare-fun Unit!20032 () Unit!20030)

(assert (=> b!615919 (= e!353160 Unit!20032)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun res!396841 () Bool)

(assert (=> b!615919 (= res!396841 (= (select (store (arr!17974 a!2986) i!1108 k0!1786) index!984) (select (arr!17974 a!2986) j!136)))))

(declare-fun e!353155 () Bool)

(assert (=> b!615919 (=> (not res!396841) (not e!353155))))

(assert (=> b!615919 e!353155))

(declare-fun c!69910 () Bool)

(assert (=> b!615919 (= c!69910 (bvslt j!136 index!984))))

(declare-fun lt!283222 () Unit!20030)

(declare-fun e!353154 () Unit!20030)

(assert (=> b!615919 (= lt!283222 e!353154)))

(declare-fun c!69909 () Bool)

(assert (=> b!615919 (= c!69909 (bvslt index!984 j!136))))

(declare-fun lt!283227 () Unit!20030)

(declare-fun e!353151 () Unit!20030)

(assert (=> b!615919 (= lt!283227 e!353151)))

(assert (=> b!615919 false))

(declare-fun b!615920 () Bool)

(declare-fun res!396850 () Bool)

(declare-fun e!353156 () Bool)

(assert (=> b!615920 (=> (not res!396850) (not e!353156))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615920 (= res!396850 (validKeyInArray!0 (select (arr!17974 a!2986) j!136)))))

(declare-fun b!615921 () Bool)

(declare-fun e!353153 () Bool)

(declare-fun e!353152 () Bool)

(assert (=> b!615921 (= e!353153 e!353152)))

(declare-fun res!396840 () Bool)

(assert (=> b!615921 (=> (not res!396840) (not e!353152))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615921 (= res!396840 (= (select (store (arr!17974 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615921 (= lt!283236 (array!37464 (store (arr!17974 a!2986) i!1108 k0!1786) (size!18338 a!2986)))))

(declare-fun b!615922 () Bool)

(declare-fun Unit!20033 () Unit!20030)

(assert (=> b!615922 (= e!353160 Unit!20033)))

(declare-fun b!615923 () Bool)

(declare-fun e!353158 () Bool)

(assert (=> b!615923 (= e!353158 (not true))))

(declare-fun lt!283229 () Unit!20030)

(assert (=> b!615923 (= lt!283229 e!353160)))

(declare-fun c!69908 () Bool)

(declare-datatypes ((SeekEntryResult!6421 0))(
  ( (MissingZero!6421 (index!27967 (_ BitVec 32))) (Found!6421 (index!27968 (_ BitVec 32))) (Intermediate!6421 (undefined!7233 Bool) (index!27969 (_ BitVec 32)) (x!56790 (_ BitVec 32))) (Undefined!6421) (MissingVacant!6421 (index!27970 (_ BitVec 32))) )
))
(declare-fun lt!283228 () SeekEntryResult!6421)

(assert (=> b!615923 (= c!69908 (= lt!283228 (Found!6421 index!984)))))

(declare-fun lt!283225 () Unit!20030)

(declare-fun e!353164 () Unit!20030)

(assert (=> b!615923 (= lt!283225 e!353164)))

(declare-fun c!69911 () Bool)

(assert (=> b!615923 (= c!69911 (= lt!283228 Undefined!6421))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!283220 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37463 (_ BitVec 32)) SeekEntryResult!6421)

(assert (=> b!615923 (= lt!283228 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283220 lt!283236 mask!3053))))

(declare-fun e!353162 () Bool)

(assert (=> b!615923 e!353162))

(declare-fun res!396844 () Bool)

(assert (=> b!615923 (=> (not res!396844) (not e!353162))))

(declare-fun lt!283223 () SeekEntryResult!6421)

(declare-fun lt!283234 () (_ BitVec 32))

(assert (=> b!615923 (= res!396844 (= lt!283223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283234 vacantSpotIndex!68 lt!283220 lt!283236 mask!3053)))))

(assert (=> b!615923 (= lt!283223 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283234 vacantSpotIndex!68 (select (arr!17974 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615923 (= lt!283220 (select (store (arr!17974 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283219 () Unit!20030)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37463 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20030)

(assert (=> b!615923 (= lt!283219 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283234 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615923 (= lt!283234 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615924 () Bool)

(declare-fun res!396851 () Bool)

(assert (=> b!615924 (=> (not res!396851) (not e!353153))))

(declare-datatypes ((List!12068 0))(
  ( (Nil!12065) (Cons!12064 (h!13109 (_ BitVec 64)) (t!18304 List!12068)) )
))
(declare-fun arrayNoDuplicates!0 (array!37463 (_ BitVec 32) List!12068) Bool)

(assert (=> b!615924 (= res!396851 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12065))))

(declare-fun b!615925 () Bool)

(declare-fun res!396845 () Bool)

(assert (=> b!615925 (=> (not res!396845) (not e!353156))))

(assert (=> b!615925 (= res!396845 (and (= (size!18338 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18338 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18338 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615927 () Bool)

(declare-fun e!353163 () Bool)

(assert (=> b!615927 (= e!353163 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) index!984))))

(declare-fun b!615928 () Bool)

(assert (=> b!615928 false))

(declare-fun lt!283221 () Unit!20030)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37463 (_ BitVec 64) (_ BitVec 32) List!12068) Unit!20030)

(assert (=> b!615928 (= lt!283221 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283236 (select (arr!17974 a!2986) j!136) j!136 Nil!12065))))

(assert (=> b!615928 (arrayNoDuplicates!0 lt!283236 j!136 Nil!12065)))

(declare-fun lt!283232 () Unit!20030)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37463 (_ BitVec 32) (_ BitVec 32)) Unit!20030)

(assert (=> b!615928 (= lt!283232 (lemmaNoDuplicateFromThenFromBigger!0 lt!283236 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615928 (arrayNoDuplicates!0 lt!283236 #b00000000000000000000000000000000 Nil!12065)))

(declare-fun lt!283217 () Unit!20030)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37463 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12068) Unit!20030)

(assert (=> b!615928 (= lt!283217 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12065))))

(assert (=> b!615928 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283226 () Unit!20030)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37463 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20030)

(assert (=> b!615928 (= lt!283226 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283236 (select (arr!17974 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20034 () Unit!20030)

(assert (=> b!615928 (= e!353154 Unit!20034)))

(declare-fun b!615929 () Bool)

(declare-fun Unit!20035 () Unit!20030)

(assert (=> b!615929 (= e!353151 Unit!20035)))

(declare-fun b!615930 () Bool)

(declare-fun Unit!20036 () Unit!20030)

(assert (=> b!615930 (= e!353164 Unit!20036)))

(declare-fun b!615931 () Bool)

(assert (=> b!615931 (= e!353156 e!353153)))

(declare-fun res!396849 () Bool)

(assert (=> b!615931 (=> (not res!396849) (not e!353153))))

(declare-fun lt!283231 () SeekEntryResult!6421)

(assert (=> b!615931 (= res!396849 (or (= lt!283231 (MissingZero!6421 i!1108)) (= lt!283231 (MissingVacant!6421 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37463 (_ BitVec 32)) SeekEntryResult!6421)

(assert (=> b!615931 (= lt!283231 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!615932 () Bool)

(assert (=> b!615932 (= e!353152 e!353158)))

(declare-fun res!396838 () Bool)

(assert (=> b!615932 (=> (not res!396838) (not e!353158))))

(declare-fun lt!283230 () SeekEntryResult!6421)

(assert (=> b!615932 (= res!396838 (and (= lt!283230 (Found!6421 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17974 a!2986) index!984) (select (arr!17974 a!2986) j!136))) (not (= (select (arr!17974 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!615932 (= lt!283230 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17974 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615933 () Bool)

(declare-fun res!396847 () Bool)

(assert (=> b!615933 (= res!396847 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) j!136))))

(assert (=> b!615933 (=> (not res!396847) (not e!353157))))

(declare-fun e!353161 () Bool)

(assert (=> b!615933 (= e!353161 e!353157)))

(declare-fun b!615934 () Bool)

(declare-fun res!396848 () Bool)

(assert (=> b!615934 (=> (not res!396848) (not e!353153))))

(assert (=> b!615934 (= res!396848 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17974 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!615926 () Bool)

(declare-fun res!396843 () Bool)

(assert (=> b!615926 (= res!396843 (bvsge j!136 index!984))))

(assert (=> b!615926 (=> res!396843 e!353161)))

(assert (=> b!615926 (= e!353155 e!353161)))

(declare-fun res!396837 () Bool)

(assert (=> start!56030 (=> (not res!396837) (not e!353156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56030 (= res!396837 (validMask!0 mask!3053))))

(assert (=> start!56030 e!353156))

(assert (=> start!56030 true))

(declare-fun array_inv!13748 (array!37463) Bool)

(assert (=> start!56030 (array_inv!13748 a!2986)))

(declare-fun b!615935 () Bool)

(declare-fun Unit!20037 () Unit!20030)

(assert (=> b!615935 (= e!353164 Unit!20037)))

(assert (=> b!615935 false))

(declare-fun b!615936 () Bool)

(declare-fun res!396836 () Bool)

(assert (=> b!615936 (=> (not res!396836) (not e!353153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37463 (_ BitVec 32)) Bool)

(assert (=> b!615936 (= res!396836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!615937 () Bool)

(assert (=> b!615937 (= e!353162 (= lt!283230 lt!283223))))

(declare-fun b!615938 () Bool)

(declare-fun res!396846 () Bool)

(assert (=> b!615938 (=> (not res!396846) (not e!353156))))

(assert (=> b!615938 (= res!396846 (validKeyInArray!0 k0!1786))))

(declare-fun b!615939 () Bool)

(declare-fun Unit!20038 () Unit!20030)

(assert (=> b!615939 (= e!353154 Unit!20038)))

(declare-fun b!615940 () Bool)

(declare-fun res!396842 () Bool)

(assert (=> b!615940 (=> (not res!396842) (not e!353156))))

(assert (=> b!615940 (= res!396842 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615941 () Bool)

(assert (=> b!615941 false))

(declare-fun lt!283218 () Unit!20030)

(assert (=> b!615941 (= lt!283218 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283236 (select (arr!17974 a!2986) j!136) index!984 Nil!12065))))

(assert (=> b!615941 (arrayNoDuplicates!0 lt!283236 index!984 Nil!12065)))

(declare-fun lt!283233 () Unit!20030)

(assert (=> b!615941 (= lt!283233 (lemmaNoDuplicateFromThenFromBigger!0 lt!283236 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615941 (arrayNoDuplicates!0 lt!283236 #b00000000000000000000000000000000 Nil!12065)))

(declare-fun lt!283224 () Unit!20030)

(assert (=> b!615941 (= lt!283224 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12065))))

(assert (=> b!615941 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283235 () Unit!20030)

(assert (=> b!615941 (= lt!283235 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283236 (select (arr!17974 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615941 e!353163))

(declare-fun res!396839 () Bool)

(assert (=> b!615941 (=> (not res!396839) (not e!353163))))

(assert (=> b!615941 (= res!396839 (arrayContainsKey!0 lt!283236 (select (arr!17974 a!2986) j!136) j!136))))

(declare-fun Unit!20039 () Unit!20030)

(assert (=> b!615941 (= e!353151 Unit!20039)))

(assert (= (and start!56030 res!396837) b!615925))

(assert (= (and b!615925 res!396845) b!615920))

(assert (= (and b!615920 res!396850) b!615938))

(assert (= (and b!615938 res!396846) b!615940))

(assert (= (and b!615940 res!396842) b!615931))

(assert (= (and b!615931 res!396849) b!615936))

(assert (= (and b!615936 res!396836) b!615924))

(assert (= (and b!615924 res!396851) b!615934))

(assert (= (and b!615934 res!396848) b!615921))

(assert (= (and b!615921 res!396840) b!615932))

(assert (= (and b!615932 res!396838) b!615923))

(assert (= (and b!615923 res!396844) b!615937))

(assert (= (and b!615923 c!69911) b!615935))

(assert (= (and b!615923 (not c!69911)) b!615930))

(assert (= (and b!615923 c!69908) b!615919))

(assert (= (and b!615923 (not c!69908)) b!615922))

(assert (= (and b!615919 res!396841) b!615926))

(assert (= (and b!615926 (not res!396843)) b!615933))

(assert (= (and b!615933 res!396847) b!615918))

(assert (= (and b!615919 c!69910) b!615928))

(assert (= (and b!615919 (not c!69910)) b!615939))

(assert (= (and b!615919 c!69909) b!615941))

(assert (= (and b!615919 (not c!69909)) b!615929))

(assert (= (and b!615941 res!396839) b!615927))

(declare-fun m!592153 () Bool)

(assert (=> b!615919 m!592153))

(declare-fun m!592155 () Bool)

(assert (=> b!615919 m!592155))

(declare-fun m!592157 () Bool)

(assert (=> b!615919 m!592157))

(assert (=> b!615928 m!592157))

(declare-fun m!592159 () Bool)

(assert (=> b!615928 m!592159))

(declare-fun m!592161 () Bool)

(assert (=> b!615928 m!592161))

(assert (=> b!615928 m!592157))

(declare-fun m!592163 () Bool)

(assert (=> b!615928 m!592163))

(assert (=> b!615928 m!592157))

(declare-fun m!592165 () Bool)

(assert (=> b!615928 m!592165))

(declare-fun m!592167 () Bool)

(assert (=> b!615928 m!592167))

(assert (=> b!615928 m!592157))

(declare-fun m!592169 () Bool)

(assert (=> b!615928 m!592169))

(declare-fun m!592171 () Bool)

(assert (=> b!615928 m!592171))

(assert (=> b!615918 m!592157))

(assert (=> b!615918 m!592157))

(declare-fun m!592173 () Bool)

(assert (=> b!615918 m!592173))

(declare-fun m!592175 () Bool)

(assert (=> b!615934 m!592175))

(declare-fun m!592177 () Bool)

(assert (=> b!615938 m!592177))

(assert (=> b!615927 m!592157))

(assert (=> b!615927 m!592157))

(assert (=> b!615927 m!592173))

(declare-fun m!592179 () Bool)

(assert (=> b!615923 m!592179))

(declare-fun m!592181 () Bool)

(assert (=> b!615923 m!592181))

(assert (=> b!615923 m!592157))

(declare-fun m!592183 () Bool)

(assert (=> b!615923 m!592183))

(assert (=> b!615923 m!592157))

(declare-fun m!592185 () Bool)

(assert (=> b!615923 m!592185))

(declare-fun m!592187 () Bool)

(assert (=> b!615923 m!592187))

(declare-fun m!592189 () Bool)

(assert (=> b!615923 m!592189))

(assert (=> b!615923 m!592153))

(declare-fun m!592191 () Bool)

(assert (=> start!56030 m!592191))

(declare-fun m!592193 () Bool)

(assert (=> start!56030 m!592193))

(assert (=> b!615933 m!592157))

(assert (=> b!615933 m!592157))

(declare-fun m!592195 () Bool)

(assert (=> b!615933 m!592195))

(declare-fun m!592197 () Bool)

(assert (=> b!615936 m!592197))

(assert (=> b!615921 m!592153))

(declare-fun m!592199 () Bool)

(assert (=> b!615921 m!592199))

(declare-fun m!592201 () Bool)

(assert (=> b!615931 m!592201))

(declare-fun m!592203 () Bool)

(assert (=> b!615924 m!592203))

(assert (=> b!615941 m!592157))

(declare-fun m!592205 () Bool)

(assert (=> b!615941 m!592205))

(assert (=> b!615941 m!592157))

(declare-fun m!592207 () Bool)

(assert (=> b!615941 m!592207))

(assert (=> b!615941 m!592163))

(assert (=> b!615941 m!592157))

(assert (=> b!615941 m!592195))

(assert (=> b!615941 m!592157))

(declare-fun m!592209 () Bool)

(assert (=> b!615941 m!592209))

(declare-fun m!592211 () Bool)

(assert (=> b!615941 m!592211))

(assert (=> b!615941 m!592171))

(assert (=> b!615941 m!592157))

(declare-fun m!592213 () Bool)

(assert (=> b!615941 m!592213))

(declare-fun m!592215 () Bool)

(assert (=> b!615932 m!592215))

(assert (=> b!615932 m!592157))

(assert (=> b!615932 m!592157))

(declare-fun m!592217 () Bool)

(assert (=> b!615932 m!592217))

(declare-fun m!592219 () Bool)

(assert (=> b!615940 m!592219))

(assert (=> b!615920 m!592157))

(assert (=> b!615920 m!592157))

(declare-fun m!592221 () Bool)

(assert (=> b!615920 m!592221))

(check-sat (not b!615940) (not b!615924) (not b!615923) (not b!615927) (not b!615931) (not b!615933) (not b!615941) (not b!615936) (not b!615928) (not b!615920) (not b!615932) (not b!615938) (not start!56030) (not b!615918))
(check-sat)
