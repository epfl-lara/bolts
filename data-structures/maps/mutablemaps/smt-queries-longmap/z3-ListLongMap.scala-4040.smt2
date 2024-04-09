; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55124 () Bool)

(assert start!55124)

(declare-fun b!602968 () Bool)

(declare-fun res!387294 () Bool)

(declare-fun e!344924 () Bool)

(assert (=> b!602968 (=> (not res!387294) (not e!344924))))

(declare-datatypes ((array!37160 0))(
  ( (array!37161 (arr!17833 (Array (_ BitVec 32) (_ BitVec 64))) (size!18197 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37160)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!602968 (= res!387294 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun e!344921 () Bool)

(declare-fun lt!274791 () array!37160)

(declare-fun b!602969 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!602969 (= e!344921 (arrayContainsKey!0 lt!274791 (select (arr!17833 a!2986) j!136) index!984))))

(declare-fun b!602970 () Bool)

(declare-datatypes ((Unit!19108 0))(
  ( (Unit!19109) )
))
(declare-fun e!344927 () Unit!19108)

(declare-fun Unit!19110 () Unit!19108)

(assert (=> b!602970 (= e!344927 Unit!19110)))

(declare-fun b!602971 () Bool)

(declare-fun res!387301 () Bool)

(assert (=> b!602971 (=> (not res!387301) (not e!344924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!602971 (= res!387301 (validKeyInArray!0 (select (arr!17833 a!2986) j!136)))))

(declare-fun b!602972 () Bool)

(declare-fun e!344928 () Unit!19108)

(declare-fun Unit!19111 () Unit!19108)

(assert (=> b!602972 (= e!344928 Unit!19111)))

(declare-fun lt!274779 () Unit!19108)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37160 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19108)

(assert (=> b!602972 (= lt!274779 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274791 (select (arr!17833 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!602972 (arrayContainsKey!0 lt!274791 (select (arr!17833 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!274778 () Unit!19108)

(declare-datatypes ((List!11927 0))(
  ( (Nil!11924) (Cons!11923 (h!12968 (_ BitVec 64)) (t!18163 List!11927)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37160 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11927) Unit!19108)

(assert (=> b!602972 (= lt!274778 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11924))))

(declare-fun arrayNoDuplicates!0 (array!37160 (_ BitVec 32) List!11927) Bool)

(assert (=> b!602972 (arrayNoDuplicates!0 lt!274791 #b00000000000000000000000000000000 Nil!11924)))

(declare-fun lt!274784 () Unit!19108)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37160 (_ BitVec 32) (_ BitVec 32)) Unit!19108)

(assert (=> b!602972 (= lt!274784 (lemmaNoDuplicateFromThenFromBigger!0 lt!274791 #b00000000000000000000000000000000 j!136))))

(assert (=> b!602972 (arrayNoDuplicates!0 lt!274791 j!136 Nil!11924)))

(declare-fun lt!274789 () Unit!19108)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37160 (_ BitVec 64) (_ BitVec 32) List!11927) Unit!19108)

(assert (=> b!602972 (= lt!274789 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274791 (select (arr!17833 a!2986) j!136) j!136 Nil!11924))))

(assert (=> b!602972 false))

(declare-fun b!602973 () Bool)

(declare-fun Unit!19112 () Unit!19108)

(assert (=> b!602973 (= e!344927 Unit!19112)))

(assert (=> b!602973 false))

(declare-fun b!602975 () Bool)

(declare-fun res!387302 () Bool)

(declare-fun e!344916 () Bool)

(assert (=> b!602975 (=> (not res!387302) (not e!344916))))

(assert (=> b!602975 (= res!387302 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11924))))

(declare-fun b!602976 () Bool)

(declare-fun Unit!19113 () Unit!19108)

(assert (=> b!602976 (= e!344928 Unit!19113)))

(declare-fun b!602977 () Bool)

(declare-fun e!344925 () Bool)

(assert (=> b!602977 (= e!344916 e!344925)))

(declare-fun res!387292 () Bool)

(assert (=> b!602977 (=> (not res!387292) (not e!344925))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!602977 (= res!387292 (= (select (store (arr!17833 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!602977 (= lt!274791 (array!37161 (store (arr!17833 a!2986) i!1108 k0!1786) (size!18197 a!2986)))))

(declare-fun b!602978 () Bool)

(declare-fun e!344917 () Bool)

(declare-fun e!344919 () Bool)

(assert (=> b!602978 (= e!344917 e!344919)))

(declare-fun res!387284 () Bool)

(assert (=> b!602978 (=> res!387284 e!344919)))

(declare-fun lt!274785 () (_ BitVec 64))

(declare-fun lt!274790 () (_ BitVec 64))

(assert (=> b!602978 (= res!387284 (or (not (= (select (arr!17833 a!2986) j!136) lt!274790)) (not (= (select (arr!17833 a!2986) j!136) lt!274785)) (bvsge j!136 index!984)))))

(declare-fun b!602979 () Bool)

(declare-fun res!387287 () Bool)

(assert (=> b!602979 (=> (not res!387287) (not e!344924))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!602979 (= res!387287 (and (= (size!18197 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18197 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18197 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!602980 () Bool)

(declare-fun e!344922 () Bool)

(assert (=> b!602980 (= e!344925 e!344922)))

(declare-fun res!387290 () Bool)

(assert (=> b!602980 (=> (not res!387290) (not e!344922))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6280 0))(
  ( (MissingZero!6280 (index!27382 (_ BitVec 32))) (Found!6280 (index!27383 (_ BitVec 32))) (Intermediate!6280 (undefined!7092 Bool) (index!27384 (_ BitVec 32)) (x!56210 (_ BitVec 32))) (Undefined!6280) (MissingVacant!6280 (index!27385 (_ BitVec 32))) )
))
(declare-fun lt!274777 () SeekEntryResult!6280)

(assert (=> b!602980 (= res!387290 (and (= lt!274777 (Found!6280 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17833 a!2986) index!984) (select (arr!17833 a!2986) j!136))) (not (= (select (arr!17833 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37160 (_ BitVec 32)) SeekEntryResult!6280)

(assert (=> b!602980 (= lt!274777 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17833 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!602981 () Bool)

(declare-fun res!387299 () Bool)

(assert (=> b!602981 (=> (not res!387299) (not e!344916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37160 (_ BitVec 32)) Bool)

(assert (=> b!602981 (= res!387299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!602982 () Bool)

(assert (=> b!602982 (= e!344924 e!344916)))

(declare-fun res!387293 () Bool)

(assert (=> b!602982 (=> (not res!387293) (not e!344916))))

(declare-fun lt!274788 () SeekEntryResult!6280)

(assert (=> b!602982 (= res!387293 (or (= lt!274788 (MissingZero!6280 i!1108)) (= lt!274788 (MissingVacant!6280 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37160 (_ BitVec 32)) SeekEntryResult!6280)

(assert (=> b!602982 (= lt!274788 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!602983 () Bool)

(declare-fun e!344915 () Bool)

(assert (=> b!602983 (= e!344915 (arrayContainsKey!0 lt!274791 (select (arr!17833 a!2986) j!136) index!984))))

(declare-fun b!602984 () Bool)

(declare-fun e!344918 () Bool)

(declare-fun e!344926 () Bool)

(assert (=> b!602984 (= e!344918 e!344926)))

(declare-fun res!387297 () Bool)

(assert (=> b!602984 (=> res!387297 e!344926)))

(assert (=> b!602984 (= res!387297 (or (not (= (select (arr!17833 a!2986) j!136) lt!274790)) (not (= (select (arr!17833 a!2986) j!136) lt!274785))))))

(assert (=> b!602984 e!344917))

(declare-fun res!387285 () Bool)

(assert (=> b!602984 (=> (not res!387285) (not e!344917))))

(assert (=> b!602984 (= res!387285 (= lt!274785 (select (arr!17833 a!2986) j!136)))))

(assert (=> b!602984 (= lt!274785 (select (store (arr!17833 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!387288 () Bool)

(assert (=> start!55124 (=> (not res!387288) (not e!344924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55124 (= res!387288 (validMask!0 mask!3053))))

(assert (=> start!55124 e!344924))

(assert (=> start!55124 true))

(declare-fun array_inv!13607 (array!37160) Bool)

(assert (=> start!55124 (array_inv!13607 a!2986)))

(declare-fun b!602974 () Bool)

(declare-fun res!387289 () Bool)

(assert (=> b!602974 (=> (not res!387289) (not e!344916))))

(assert (=> b!602974 (= res!387289 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17833 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!602985 () Bool)

(declare-fun e!344929 () Bool)

(assert (=> b!602985 (= e!344929 true)))

(assert (=> b!602985 e!344921))

(declare-fun res!387295 () Bool)

(assert (=> b!602985 (=> (not res!387295) (not e!344921))))

(assert (=> b!602985 (= res!387295 (arrayContainsKey!0 lt!274791 (select (arr!17833 a!2986) j!136) j!136))))

(declare-fun b!602986 () Bool)

(declare-fun e!344920 () Bool)

(declare-fun lt!274780 () SeekEntryResult!6280)

(assert (=> b!602986 (= e!344920 (= lt!274777 lt!274780))))

(declare-fun b!602987 () Bool)

(assert (=> b!602987 (= e!344926 e!344929)))

(declare-fun res!387298 () Bool)

(assert (=> b!602987 (=> res!387298 e!344929)))

(assert (=> b!602987 (= res!387298 (bvsge index!984 j!136))))

(declare-fun lt!274782 () Unit!19108)

(assert (=> b!602987 (= lt!274782 e!344928)))

(declare-fun c!68210 () Bool)

(assert (=> b!602987 (= c!68210 (bvslt j!136 index!984))))

(declare-fun b!602988 () Bool)

(assert (=> b!602988 (= e!344922 (not e!344918))))

(declare-fun res!387291 () Bool)

(assert (=> b!602988 (=> res!387291 e!344918)))

(declare-fun lt!274787 () SeekEntryResult!6280)

(assert (=> b!602988 (= res!387291 (not (= lt!274787 (Found!6280 index!984))))))

(declare-fun lt!274786 () Unit!19108)

(assert (=> b!602988 (= lt!274786 e!344927)))

(declare-fun c!68209 () Bool)

(assert (=> b!602988 (= c!68209 (= lt!274787 Undefined!6280))))

(assert (=> b!602988 (= lt!274787 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274790 lt!274791 mask!3053))))

(assert (=> b!602988 e!344920))

(declare-fun res!387296 () Bool)

(assert (=> b!602988 (=> (not res!387296) (not e!344920))))

(declare-fun lt!274783 () (_ BitVec 32))

(assert (=> b!602988 (= res!387296 (= lt!274780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274783 vacantSpotIndex!68 lt!274790 lt!274791 mask!3053)))))

(assert (=> b!602988 (= lt!274780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274783 vacantSpotIndex!68 (select (arr!17833 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!602988 (= lt!274790 (select (store (arr!17833 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!274781 () Unit!19108)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37160 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19108)

(assert (=> b!602988 (= lt!274781 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274783 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!602988 (= lt!274783 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!602989 () Bool)

(declare-fun res!387286 () Bool)

(assert (=> b!602989 (=> (not res!387286) (not e!344924))))

(assert (=> b!602989 (= res!387286 (validKeyInArray!0 k0!1786))))

(declare-fun b!602990 () Bool)

(assert (=> b!602990 (= e!344919 e!344915)))

(declare-fun res!387300 () Bool)

(assert (=> b!602990 (=> (not res!387300) (not e!344915))))

(assert (=> b!602990 (= res!387300 (arrayContainsKey!0 lt!274791 (select (arr!17833 a!2986) j!136) j!136))))

(assert (= (and start!55124 res!387288) b!602979))

(assert (= (and b!602979 res!387287) b!602971))

(assert (= (and b!602971 res!387301) b!602989))

(assert (= (and b!602989 res!387286) b!602968))

(assert (= (and b!602968 res!387294) b!602982))

(assert (= (and b!602982 res!387293) b!602981))

(assert (= (and b!602981 res!387299) b!602975))

(assert (= (and b!602975 res!387302) b!602974))

(assert (= (and b!602974 res!387289) b!602977))

(assert (= (and b!602977 res!387292) b!602980))

(assert (= (and b!602980 res!387290) b!602988))

(assert (= (and b!602988 res!387296) b!602986))

(assert (= (and b!602988 c!68209) b!602973))

(assert (= (and b!602988 (not c!68209)) b!602970))

(assert (= (and b!602988 (not res!387291)) b!602984))

(assert (= (and b!602984 res!387285) b!602978))

(assert (= (and b!602978 (not res!387284)) b!602990))

(assert (= (and b!602990 res!387300) b!602983))

(assert (= (and b!602984 (not res!387297)) b!602987))

(assert (= (and b!602987 c!68210) b!602972))

(assert (= (and b!602987 (not c!68210)) b!602976))

(assert (= (and b!602987 (not res!387298)) b!602985))

(assert (= (and b!602985 res!387295) b!602969))

(declare-fun m!580071 () Bool)

(assert (=> b!602968 m!580071))

(declare-fun m!580073 () Bool)

(assert (=> b!602988 m!580073))

(declare-fun m!580075 () Bool)

(assert (=> b!602988 m!580075))

(declare-fun m!580077 () Bool)

(assert (=> b!602988 m!580077))

(declare-fun m!580079 () Bool)

(assert (=> b!602988 m!580079))

(assert (=> b!602988 m!580075))

(declare-fun m!580081 () Bool)

(assert (=> b!602988 m!580081))

(declare-fun m!580083 () Bool)

(assert (=> b!602988 m!580083))

(declare-fun m!580085 () Bool)

(assert (=> b!602988 m!580085))

(declare-fun m!580087 () Bool)

(assert (=> b!602988 m!580087))

(assert (=> b!602984 m!580075))

(assert (=> b!602984 m!580079))

(declare-fun m!580089 () Bool)

(assert (=> b!602984 m!580089))

(assert (=> b!602971 m!580075))

(assert (=> b!602971 m!580075))

(declare-fun m!580091 () Bool)

(assert (=> b!602971 m!580091))

(declare-fun m!580093 () Bool)

(assert (=> b!602975 m!580093))

(declare-fun m!580095 () Bool)

(assert (=> b!602989 m!580095))

(declare-fun m!580097 () Bool)

(assert (=> b!602981 m!580097))

(assert (=> b!602978 m!580075))

(assert (=> b!602985 m!580075))

(assert (=> b!602985 m!580075))

(declare-fun m!580099 () Bool)

(assert (=> b!602985 m!580099))

(declare-fun m!580101 () Bool)

(assert (=> b!602974 m!580101))

(assert (=> b!602977 m!580079))

(declare-fun m!580103 () Bool)

(assert (=> b!602977 m!580103))

(declare-fun m!580105 () Bool)

(assert (=> start!55124 m!580105))

(declare-fun m!580107 () Bool)

(assert (=> start!55124 m!580107))

(declare-fun m!580109 () Bool)

(assert (=> b!602982 m!580109))

(assert (=> b!602990 m!580075))

(assert (=> b!602990 m!580075))

(assert (=> b!602990 m!580099))

(assert (=> b!602983 m!580075))

(assert (=> b!602983 m!580075))

(declare-fun m!580111 () Bool)

(assert (=> b!602983 m!580111))

(declare-fun m!580113 () Bool)

(assert (=> b!602980 m!580113))

(assert (=> b!602980 m!580075))

(assert (=> b!602980 m!580075))

(declare-fun m!580115 () Bool)

(assert (=> b!602980 m!580115))

(assert (=> b!602969 m!580075))

(assert (=> b!602969 m!580075))

(assert (=> b!602969 m!580111))

(declare-fun m!580117 () Bool)

(assert (=> b!602972 m!580117))

(assert (=> b!602972 m!580075))

(assert (=> b!602972 m!580075))

(declare-fun m!580119 () Bool)

(assert (=> b!602972 m!580119))

(declare-fun m!580121 () Bool)

(assert (=> b!602972 m!580121))

(assert (=> b!602972 m!580075))

(declare-fun m!580123 () Bool)

(assert (=> b!602972 m!580123))

(declare-fun m!580125 () Bool)

(assert (=> b!602972 m!580125))

(assert (=> b!602972 m!580075))

(declare-fun m!580127 () Bool)

(assert (=> b!602972 m!580127))

(declare-fun m!580129 () Bool)

(assert (=> b!602972 m!580129))

(check-sat (not b!602971) (not b!602983) (not b!602968) (not start!55124) (not b!602985) (not b!602969) (not b!602981) (not b!602989) (not b!602975) (not b!602990) (not b!602980) (not b!602972) (not b!602982) (not b!602988))
(check-sat)
