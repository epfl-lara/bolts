; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55256 () Bool)

(assert start!55256)

(declare-fun b!604957 () Bool)

(declare-fun e!346224 () Bool)

(declare-fun e!346231 () Bool)

(assert (=> b!604957 (= e!346224 e!346231)))

(declare-fun res!388776 () Bool)

(assert (=> b!604957 (=> (not res!388776) (not e!346231))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37211 0))(
  ( (array!37212 (arr!17857 (Array (_ BitVec 32) (_ BitVec 64))) (size!18221 (_ BitVec 32))) )
))
(declare-fun lt!276041 () array!37211)

(declare-fun a!2986 () array!37211)

(declare-fun arrayContainsKey!0 (array!37211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604957 (= res!388776 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) j!136))))

(declare-fun b!604958 () Bool)

(declare-fun res!388791 () Bool)

(declare-fun e!346226 () Bool)

(assert (=> b!604958 (=> (not res!388791) (not e!346226))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604958 (= res!388791 (validKeyInArray!0 k0!1786))))

(declare-fun res!388792 () Bool)

(assert (=> start!55256 (=> (not res!388792) (not e!346226))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55256 (= res!388792 (validMask!0 mask!3053))))

(assert (=> start!55256 e!346226))

(assert (=> start!55256 true))

(declare-fun array_inv!13631 (array!37211) Bool)

(assert (=> start!55256 (array_inv!13631 a!2986)))

(declare-fun b!604959 () Bool)

(declare-fun res!388787 () Bool)

(declare-fun e!346229 () Bool)

(assert (=> b!604959 (=> (not res!388787) (not e!346229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37211 (_ BitVec 32)) Bool)

(assert (=> b!604959 (= res!388787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604960 () Bool)

(declare-fun e!346230 () Bool)

(declare-fun e!346233 () Bool)

(assert (=> b!604960 (= e!346230 e!346233)))

(declare-fun res!388778 () Bool)

(assert (=> b!604960 (=> (not res!388778) (not e!346233))))

(declare-datatypes ((SeekEntryResult!6304 0))(
  ( (MissingZero!6304 (index!27481 (_ BitVec 32))) (Found!6304 (index!27482 (_ BitVec 32))) (Intermediate!6304 (undefined!7116 Bool) (index!27483 (_ BitVec 32)) (x!56307 (_ BitVec 32))) (Undefined!6304) (MissingVacant!6304 (index!27484 (_ BitVec 32))) )
))
(declare-fun lt!276049 () SeekEntryResult!6304)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604960 (= res!388778 (and (= lt!276049 (Found!6304 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17857 a!2986) index!984) (select (arr!17857 a!2986) j!136))) (not (= (select (arr!17857 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37211 (_ BitVec 32)) SeekEntryResult!6304)

(assert (=> b!604960 (= lt!276049 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17857 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604961 () Bool)

(declare-fun res!388789 () Bool)

(assert (=> b!604961 (=> (not res!388789) (not e!346226))))

(assert (=> b!604961 (= res!388789 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604962 () Bool)

(assert (=> b!604962 (= e!346229 e!346230)))

(declare-fun res!388793 () Bool)

(assert (=> b!604962 (=> (not res!388793) (not e!346230))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!604962 (= res!388793 (= (select (store (arr!17857 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604962 (= lt!276041 (array!37212 (store (arr!17857 a!2986) i!1108 k0!1786) (size!18221 a!2986)))))

(declare-fun b!604963 () Bool)

(declare-fun e!346236 () Bool)

(declare-fun e!346232 () Bool)

(assert (=> b!604963 (= e!346236 e!346232)))

(declare-fun res!388775 () Bool)

(assert (=> b!604963 (=> res!388775 e!346232)))

(declare-fun lt!276040 () (_ BitVec 64))

(declare-fun lt!276042 () (_ BitVec 64))

(assert (=> b!604963 (= res!388775 (or (not (= (select (arr!17857 a!2986) j!136) lt!276042)) (not (= (select (arr!17857 a!2986) j!136) lt!276040))))))

(declare-fun e!346223 () Bool)

(assert (=> b!604963 e!346223))

(declare-fun res!388790 () Bool)

(assert (=> b!604963 (=> (not res!388790) (not e!346223))))

(assert (=> b!604963 (= res!388790 (= lt!276040 (select (arr!17857 a!2986) j!136)))))

(assert (=> b!604963 (= lt!276040 (select (store (arr!17857 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!604964 () Bool)

(declare-fun e!346225 () Bool)

(assert (=> b!604964 (= e!346225 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) index!984))))

(declare-fun b!604965 () Bool)

(declare-fun e!346235 () Bool)

(assert (=> b!604965 (= e!346235 (bvsle #b00000000000000000000000000000000 (size!18221 a!2986)))))

(assert (=> b!604965 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!19252 0))(
  ( (Unit!19253) )
))
(declare-fun lt!276039 () Unit!19252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37211 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19252)

(assert (=> b!604965 (= lt!276039 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276041 (select (arr!17857 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604965 e!346225))

(declare-fun res!388782 () Bool)

(assert (=> b!604965 (=> (not res!388782) (not e!346225))))

(assert (=> b!604965 (= res!388782 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) j!136))))

(declare-fun b!604966 () Bool)

(declare-fun res!388781 () Bool)

(assert (=> b!604966 (=> (not res!388781) (not e!346229))))

(assert (=> b!604966 (= res!388781 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17857 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604967 () Bool)

(declare-fun e!346227 () Unit!19252)

(declare-fun Unit!19254 () Unit!19252)

(assert (=> b!604967 (= e!346227 Unit!19254)))

(declare-fun lt!276046 () Unit!19252)

(assert (=> b!604967 (= lt!276046 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276041 (select (arr!17857 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604967 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276038 () Unit!19252)

(declare-datatypes ((List!11951 0))(
  ( (Nil!11948) (Cons!11947 (h!12992 (_ BitVec 64)) (t!18187 List!11951)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37211 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11951) Unit!19252)

(assert (=> b!604967 (= lt!276038 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11948))))

(declare-fun arrayNoDuplicates!0 (array!37211 (_ BitVec 32) List!11951) Bool)

(assert (=> b!604967 (arrayNoDuplicates!0 lt!276041 #b00000000000000000000000000000000 Nil!11948)))

(declare-fun lt!276051 () Unit!19252)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37211 (_ BitVec 32) (_ BitVec 32)) Unit!19252)

(assert (=> b!604967 (= lt!276051 (lemmaNoDuplicateFromThenFromBigger!0 lt!276041 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604967 (arrayNoDuplicates!0 lt!276041 j!136 Nil!11948)))

(declare-fun lt!276043 () Unit!19252)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37211 (_ BitVec 64) (_ BitVec 32) List!11951) Unit!19252)

(assert (=> b!604967 (= lt!276043 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276041 (select (arr!17857 a!2986) j!136) j!136 Nil!11948))))

(assert (=> b!604967 false))

(declare-fun b!604968 () Bool)

(declare-fun res!388784 () Bool)

(assert (=> b!604968 (=> (not res!388784) (not e!346229))))

(assert (=> b!604968 (= res!388784 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11948))))

(declare-fun b!604969 () Bool)

(assert (=> b!604969 (= e!346226 e!346229)))

(declare-fun res!388780 () Bool)

(assert (=> b!604969 (=> (not res!388780) (not e!346229))))

(declare-fun lt!276037 () SeekEntryResult!6304)

(assert (=> b!604969 (= res!388780 (or (= lt!276037 (MissingZero!6304 i!1108)) (= lt!276037 (MissingVacant!6304 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37211 (_ BitVec 32)) SeekEntryResult!6304)

(assert (=> b!604969 (= lt!276037 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!604970 () Bool)

(assert (=> b!604970 (= e!346232 e!346235)))

(declare-fun res!388783 () Bool)

(assert (=> b!604970 (=> res!388783 e!346235)))

(assert (=> b!604970 (= res!388783 (bvsge index!984 j!136))))

(declare-fun lt!276048 () Unit!19252)

(assert (=> b!604970 (= lt!276048 e!346227)))

(declare-fun c!68459 () Bool)

(assert (=> b!604970 (= c!68459 (bvslt j!136 index!984))))

(declare-fun b!604971 () Bool)

(assert (=> b!604971 (= e!346223 e!346224)))

(declare-fun res!388788 () Bool)

(assert (=> b!604971 (=> res!388788 e!346224)))

(assert (=> b!604971 (= res!388788 (or (not (= (select (arr!17857 a!2986) j!136) lt!276042)) (not (= (select (arr!17857 a!2986) j!136) lt!276040)) (bvsge j!136 index!984)))))

(declare-fun b!604972 () Bool)

(declare-fun e!346234 () Bool)

(declare-fun lt!276050 () SeekEntryResult!6304)

(assert (=> b!604972 (= e!346234 (= lt!276049 lt!276050))))

(declare-fun b!604973 () Bool)

(declare-fun e!346228 () Unit!19252)

(declare-fun Unit!19255 () Unit!19252)

(assert (=> b!604973 (= e!346228 Unit!19255)))

(declare-fun b!604974 () Bool)

(declare-fun Unit!19256 () Unit!19252)

(assert (=> b!604974 (= e!346227 Unit!19256)))

(declare-fun b!604975 () Bool)

(declare-fun res!388777 () Bool)

(assert (=> b!604975 (=> (not res!388777) (not e!346226))))

(assert (=> b!604975 (= res!388777 (validKeyInArray!0 (select (arr!17857 a!2986) j!136)))))

(declare-fun b!604976 () Bool)

(declare-fun res!388786 () Bool)

(assert (=> b!604976 (=> (not res!388786) (not e!346226))))

(assert (=> b!604976 (= res!388786 (and (= (size!18221 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18221 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18221 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604977 () Bool)

(assert (=> b!604977 (= e!346233 (not e!346236))))

(declare-fun res!388779 () Bool)

(assert (=> b!604977 (=> res!388779 e!346236)))

(declare-fun lt!276047 () SeekEntryResult!6304)

(assert (=> b!604977 (= res!388779 (not (= lt!276047 (Found!6304 index!984))))))

(declare-fun lt!276036 () Unit!19252)

(assert (=> b!604977 (= lt!276036 e!346228)))

(declare-fun c!68458 () Bool)

(assert (=> b!604977 (= c!68458 (= lt!276047 Undefined!6304))))

(assert (=> b!604977 (= lt!276047 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276042 lt!276041 mask!3053))))

(assert (=> b!604977 e!346234))

(declare-fun res!388785 () Bool)

(assert (=> b!604977 (=> (not res!388785) (not e!346234))))

(declare-fun lt!276044 () (_ BitVec 32))

(assert (=> b!604977 (= res!388785 (= lt!276050 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276044 vacantSpotIndex!68 lt!276042 lt!276041 mask!3053)))))

(assert (=> b!604977 (= lt!276050 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276044 vacantSpotIndex!68 (select (arr!17857 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604977 (= lt!276042 (select (store (arr!17857 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!276045 () Unit!19252)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37211 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19252)

(assert (=> b!604977 (= lt!276045 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276044 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604977 (= lt!276044 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604978 () Bool)

(assert (=> b!604978 (= e!346231 (arrayContainsKey!0 lt!276041 (select (arr!17857 a!2986) j!136) index!984))))

(declare-fun b!604979 () Bool)

(declare-fun Unit!19257 () Unit!19252)

(assert (=> b!604979 (= e!346228 Unit!19257)))

(assert (=> b!604979 false))

(assert (= (and start!55256 res!388792) b!604976))

(assert (= (and b!604976 res!388786) b!604975))

(assert (= (and b!604975 res!388777) b!604958))

(assert (= (and b!604958 res!388791) b!604961))

(assert (= (and b!604961 res!388789) b!604969))

(assert (= (and b!604969 res!388780) b!604959))

(assert (= (and b!604959 res!388787) b!604968))

(assert (= (and b!604968 res!388784) b!604966))

(assert (= (and b!604966 res!388781) b!604962))

(assert (= (and b!604962 res!388793) b!604960))

(assert (= (and b!604960 res!388778) b!604977))

(assert (= (and b!604977 res!388785) b!604972))

(assert (= (and b!604977 c!68458) b!604979))

(assert (= (and b!604977 (not c!68458)) b!604973))

(assert (= (and b!604977 (not res!388779)) b!604963))

(assert (= (and b!604963 res!388790) b!604971))

(assert (= (and b!604971 (not res!388788)) b!604957))

(assert (= (and b!604957 res!388776) b!604978))

(assert (= (and b!604963 (not res!388775)) b!604970))

(assert (= (and b!604970 c!68459) b!604967))

(assert (= (and b!604970 (not c!68459)) b!604974))

(assert (= (and b!604970 (not res!388783)) b!604965))

(assert (= (and b!604965 res!388782) b!604964))

(declare-fun m!581881 () Bool)

(assert (=> b!604966 m!581881))

(declare-fun m!581883 () Bool)

(assert (=> b!604959 m!581883))

(declare-fun m!581885 () Bool)

(assert (=> b!604963 m!581885))

(declare-fun m!581887 () Bool)

(assert (=> b!604963 m!581887))

(declare-fun m!581889 () Bool)

(assert (=> b!604963 m!581889))

(assert (=> b!604971 m!581885))

(assert (=> b!604975 m!581885))

(assert (=> b!604975 m!581885))

(declare-fun m!581891 () Bool)

(assert (=> b!604975 m!581891))

(assert (=> b!604967 m!581885))

(declare-fun m!581893 () Bool)

(assert (=> b!604967 m!581893))

(declare-fun m!581895 () Bool)

(assert (=> b!604967 m!581895))

(declare-fun m!581897 () Bool)

(assert (=> b!604967 m!581897))

(assert (=> b!604967 m!581885))

(declare-fun m!581899 () Bool)

(assert (=> b!604967 m!581899))

(declare-fun m!581901 () Bool)

(assert (=> b!604967 m!581901))

(assert (=> b!604967 m!581885))

(declare-fun m!581903 () Bool)

(assert (=> b!604967 m!581903))

(assert (=> b!604967 m!581885))

(declare-fun m!581905 () Bool)

(assert (=> b!604967 m!581905))

(declare-fun m!581907 () Bool)

(assert (=> b!604968 m!581907))

(assert (=> b!604962 m!581887))

(declare-fun m!581909 () Bool)

(assert (=> b!604962 m!581909))

(assert (=> b!604978 m!581885))

(assert (=> b!604978 m!581885))

(declare-fun m!581911 () Bool)

(assert (=> b!604978 m!581911))

(declare-fun m!581913 () Bool)

(assert (=> b!604977 m!581913))

(assert (=> b!604977 m!581885))

(assert (=> b!604977 m!581887))

(declare-fun m!581915 () Bool)

(assert (=> b!604977 m!581915))

(assert (=> b!604977 m!581885))

(declare-fun m!581917 () Bool)

(assert (=> b!604977 m!581917))

(declare-fun m!581919 () Bool)

(assert (=> b!604977 m!581919))

(declare-fun m!581921 () Bool)

(assert (=> b!604977 m!581921))

(declare-fun m!581923 () Bool)

(assert (=> b!604977 m!581923))

(assert (=> b!604965 m!581885))

(assert (=> b!604965 m!581885))

(declare-fun m!581925 () Bool)

(assert (=> b!604965 m!581925))

(assert (=> b!604965 m!581885))

(declare-fun m!581927 () Bool)

(assert (=> b!604965 m!581927))

(assert (=> b!604965 m!581885))

(declare-fun m!581929 () Bool)

(assert (=> b!604965 m!581929))

(declare-fun m!581931 () Bool)

(assert (=> start!55256 m!581931))

(declare-fun m!581933 () Bool)

(assert (=> start!55256 m!581933))

(assert (=> b!604964 m!581885))

(assert (=> b!604964 m!581885))

(assert (=> b!604964 m!581911))

(declare-fun m!581935 () Bool)

(assert (=> b!604958 m!581935))

(declare-fun m!581937 () Bool)

(assert (=> b!604961 m!581937))

(declare-fun m!581939 () Bool)

(assert (=> b!604969 m!581939))

(declare-fun m!581941 () Bool)

(assert (=> b!604960 m!581941))

(assert (=> b!604960 m!581885))

(assert (=> b!604960 m!581885))

(declare-fun m!581943 () Bool)

(assert (=> b!604960 m!581943))

(assert (=> b!604957 m!581885))

(assert (=> b!604957 m!581885))

(assert (=> b!604957 m!581929))

(check-sat (not b!604959) (not start!55256) (not b!604960) (not b!604977) (not b!604975) (not b!604965) (not b!604961) (not b!604978) (not b!604968) (not b!604964) (not b!604969) (not b!604958) (not b!604967) (not b!604957))
(check-sat)
