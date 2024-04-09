; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56194 () Bool)

(assert start!56194)

(declare-fun b!621975 () Bool)

(declare-fun res!400934 () Bool)

(declare-fun e!356754 () Bool)

(assert (=> b!621975 (=> (not res!400934) (not e!356754))))

(declare-datatypes ((array!37627 0))(
  ( (array!37628 (arr!18056 (Array (_ BitVec 32) (_ BitVec 64))) (size!18420 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37627)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!621975 (= res!400934 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!400930 () Bool)

(assert (=> start!56194 (=> (not res!400930) (not e!356754))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56194 (= res!400930 (validMask!0 mask!3053))))

(assert (=> start!56194 e!356754))

(assert (=> start!56194 true))

(declare-fun array_inv!13830 (array!37627) Bool)

(assert (=> start!56194 (array_inv!13830 a!2986)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!621976 () Bool)

(declare-fun res!400929 () Bool)

(declare-fun lt!288137 () array!37627)

(assert (=> b!621976 (= res!400929 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) j!136))))

(declare-fun e!356751 () Bool)

(assert (=> b!621976 (=> (not res!400929) (not e!356751))))

(declare-fun e!356761 () Bool)

(assert (=> b!621976 (= e!356761 e!356751)))

(declare-fun b!621977 () Bool)

(declare-datatypes ((Unit!20850 0))(
  ( (Unit!20851) )
))
(declare-fun e!356752 () Unit!20850)

(declare-fun Unit!20852 () Unit!20850)

(assert (=> b!621977 (= e!356752 Unit!20852)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!400932 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!621977 (= res!400932 (= (select (store (arr!18056 a!2986) i!1108 k!1786) index!984) (select (arr!18056 a!2986) j!136)))))

(declare-fun e!356760 () Bool)

(assert (=> b!621977 (=> (not res!400932) (not e!356760))))

(assert (=> b!621977 e!356760))

(declare-fun c!70892 () Bool)

(assert (=> b!621977 (= c!70892 (bvslt j!136 index!984))))

(declare-fun lt!288149 () Unit!20850)

(declare-fun e!356757 () Unit!20850)

(assert (=> b!621977 (= lt!288149 e!356757)))

(declare-fun c!70894 () Bool)

(assert (=> b!621977 (= c!70894 (bvslt index!984 j!136))))

(declare-fun lt!288147 () Unit!20850)

(declare-fun e!356750 () Unit!20850)

(assert (=> b!621977 (= lt!288147 e!356750)))

(assert (=> b!621977 false))

(declare-fun b!621978 () Bool)

(assert (=> b!621978 false))

(declare-fun lt!288154 () Unit!20850)

(declare-datatypes ((List!12150 0))(
  ( (Nil!12147) (Cons!12146 (h!13191 (_ BitVec 64)) (t!18386 List!12150)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37627 (_ BitVec 64) (_ BitVec 32) List!12150) Unit!20850)

(assert (=> b!621978 (= lt!288154 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288137 (select (arr!18056 a!2986) j!136) j!136 Nil!12147))))

(declare-fun arrayNoDuplicates!0 (array!37627 (_ BitVec 32) List!12150) Bool)

(assert (=> b!621978 (arrayNoDuplicates!0 lt!288137 j!136 Nil!12147)))

(declare-fun lt!288138 () Unit!20850)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37627 (_ BitVec 32) (_ BitVec 32)) Unit!20850)

(assert (=> b!621978 (= lt!288138 (lemmaNoDuplicateFromThenFromBigger!0 lt!288137 #b00000000000000000000000000000000 j!136))))

(assert (=> b!621978 (arrayNoDuplicates!0 lt!288137 #b00000000000000000000000000000000 Nil!12147)))

(declare-fun lt!288144 () Unit!20850)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37627 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12150) Unit!20850)

(assert (=> b!621978 (= lt!288144 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12147))))

(assert (=> b!621978 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288148 () Unit!20850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37627 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20850)

(assert (=> b!621978 (= lt!288148 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288137 (select (arr!18056 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20853 () Unit!20850)

(assert (=> b!621978 (= e!356757 Unit!20853)))

(declare-fun b!621979 () Bool)

(declare-fun e!356755 () Unit!20850)

(declare-fun Unit!20854 () Unit!20850)

(assert (=> b!621979 (= e!356755 Unit!20854)))

(assert (=> b!621979 false))

(declare-fun b!621980 () Bool)

(assert (=> b!621980 (= e!356751 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) index!984))))

(declare-fun b!621981 () Bool)

(declare-fun res!400933 () Bool)

(assert (=> b!621981 (= res!400933 (bvsge j!136 index!984))))

(assert (=> b!621981 (=> res!400933 e!356761)))

(assert (=> b!621981 (= e!356760 e!356761)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun b!621982 () Bool)

(declare-datatypes ((SeekEntryResult!6503 0))(
  ( (MissingZero!6503 (index!28295 (_ BitVec 32))) (Found!6503 (index!28296 (_ BitVec 32))) (Intermediate!6503 (undefined!7315 Bool) (index!28297 (_ BitVec 32)) (x!57088 (_ BitVec 32))) (Undefined!6503) (MissingVacant!6503 (index!28298 (_ BitVec 32))) )
))
(declare-fun lt!288156 () SeekEntryResult!6503)

(declare-fun e!356758 () Bool)

(assert (=> b!621982 (= e!356758 (not (or (= lt!288156 (MissingVacant!6503 vacantSpotIndex!68)) (bvsge mask!3053 #b00000000000000000000000000000000))))))

(declare-fun lt!288145 () Unit!20850)

(assert (=> b!621982 (= lt!288145 e!356752)))

(declare-fun c!70895 () Bool)

(assert (=> b!621982 (= c!70895 (= lt!288156 (Found!6503 index!984)))))

(declare-fun lt!288155 () Unit!20850)

(assert (=> b!621982 (= lt!288155 e!356755)))

(declare-fun c!70893 () Bool)

(assert (=> b!621982 (= c!70893 (= lt!288156 Undefined!6503))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!288139 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37627 (_ BitVec 32)) SeekEntryResult!6503)

(assert (=> b!621982 (= lt!288156 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288139 lt!288137 mask!3053))))

(declare-fun e!356753 () Bool)

(assert (=> b!621982 e!356753))

(declare-fun res!400938 () Bool)

(assert (=> b!621982 (=> (not res!400938) (not e!356753))))

(declare-fun lt!288150 () (_ BitVec 32))

(declare-fun lt!288141 () SeekEntryResult!6503)

(assert (=> b!621982 (= res!400938 (= lt!288141 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288150 vacantSpotIndex!68 lt!288139 lt!288137 mask!3053)))))

(assert (=> b!621982 (= lt!288141 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288150 vacantSpotIndex!68 (select (arr!18056 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!621982 (= lt!288139 (select (store (arr!18056 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288142 () Unit!20850)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20850)

(assert (=> b!621982 (= lt!288142 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288150 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!621982 (= lt!288150 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!621983 () Bool)

(declare-fun res!400928 () Bool)

(declare-fun e!356756 () Bool)

(assert (=> b!621983 (=> (not res!400928) (not e!356756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37627 (_ BitVec 32)) Bool)

(assert (=> b!621983 (= res!400928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!621984 () Bool)

(assert (=> b!621984 false))

(declare-fun lt!288152 () Unit!20850)

(assert (=> b!621984 (= lt!288152 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288137 (select (arr!18056 a!2986) j!136) index!984 Nil!12147))))

(assert (=> b!621984 (arrayNoDuplicates!0 lt!288137 index!984 Nil!12147)))

(declare-fun lt!288143 () Unit!20850)

(assert (=> b!621984 (= lt!288143 (lemmaNoDuplicateFromThenFromBigger!0 lt!288137 #b00000000000000000000000000000000 index!984))))

(assert (=> b!621984 (arrayNoDuplicates!0 lt!288137 #b00000000000000000000000000000000 Nil!12147)))

(declare-fun lt!288140 () Unit!20850)

(assert (=> b!621984 (= lt!288140 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12147))))

(assert (=> b!621984 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288153 () Unit!20850)

(assert (=> b!621984 (= lt!288153 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288137 (select (arr!18056 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!356748 () Bool)

(assert (=> b!621984 e!356748))

(declare-fun res!400926 () Bool)

(assert (=> b!621984 (=> (not res!400926) (not e!356748))))

(assert (=> b!621984 (= res!400926 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) j!136))))

(declare-fun Unit!20855 () Unit!20850)

(assert (=> b!621984 (= e!356750 Unit!20855)))

(declare-fun b!621985 () Bool)

(declare-fun Unit!20856 () Unit!20850)

(assert (=> b!621985 (= e!356750 Unit!20856)))

(declare-fun b!621986 () Bool)

(declare-fun res!400939 () Bool)

(assert (=> b!621986 (=> (not res!400939) (not e!356754))))

(assert (=> b!621986 (= res!400939 (and (= (size!18420 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18420 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18420 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!621987 () Bool)

(declare-fun res!400931 () Bool)

(assert (=> b!621987 (=> (not res!400931) (not e!356756))))

(assert (=> b!621987 (= res!400931 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12147))))

(declare-fun b!621988 () Bool)

(declare-fun e!356749 () Bool)

(assert (=> b!621988 (= e!356756 e!356749)))

(declare-fun res!400937 () Bool)

(assert (=> b!621988 (=> (not res!400937) (not e!356749))))

(assert (=> b!621988 (= res!400937 (= (select (store (arr!18056 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!621988 (= lt!288137 (array!37628 (store (arr!18056 a!2986) i!1108 k!1786) (size!18420 a!2986)))))

(declare-fun b!621989 () Bool)

(declare-fun Unit!20857 () Unit!20850)

(assert (=> b!621989 (= e!356757 Unit!20857)))

(declare-fun b!621990 () Bool)

(declare-fun res!400927 () Bool)

(assert (=> b!621990 (=> (not res!400927) (not e!356756))))

(assert (=> b!621990 (= res!400927 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18056 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!621991 () Bool)

(declare-fun res!400940 () Bool)

(assert (=> b!621991 (=> (not res!400940) (not e!356754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!621991 (= res!400940 (validKeyInArray!0 (select (arr!18056 a!2986) j!136)))))

(declare-fun b!621992 () Bool)

(assert (=> b!621992 (= e!356754 e!356756)))

(declare-fun res!400935 () Bool)

(assert (=> b!621992 (=> (not res!400935) (not e!356756))))

(declare-fun lt!288146 () SeekEntryResult!6503)

(assert (=> b!621992 (= res!400935 (or (= lt!288146 (MissingZero!6503 i!1108)) (= lt!288146 (MissingVacant!6503 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37627 (_ BitVec 32)) SeekEntryResult!6503)

(assert (=> b!621992 (= lt!288146 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!621993 () Bool)

(declare-fun res!400925 () Bool)

(assert (=> b!621993 (=> (not res!400925) (not e!356754))))

(assert (=> b!621993 (= res!400925 (validKeyInArray!0 k!1786))))

(declare-fun b!621994 () Bool)

(assert (=> b!621994 (= e!356749 e!356758)))

(declare-fun res!400936 () Bool)

(assert (=> b!621994 (=> (not res!400936) (not e!356758))))

(declare-fun lt!288151 () SeekEntryResult!6503)

(assert (=> b!621994 (= res!400936 (and (= lt!288151 (Found!6503 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18056 a!2986) index!984) (select (arr!18056 a!2986) j!136))) (not (= (select (arr!18056 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!621994 (= lt!288151 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18056 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!621995 () Bool)

(assert (=> b!621995 (= e!356753 (= lt!288151 lt!288141))))

(declare-fun b!621996 () Bool)

(declare-fun Unit!20858 () Unit!20850)

(assert (=> b!621996 (= e!356755 Unit!20858)))

(declare-fun b!621997 () Bool)

(declare-fun Unit!20859 () Unit!20850)

(assert (=> b!621997 (= e!356752 Unit!20859)))

(declare-fun b!621998 () Bool)

(assert (=> b!621998 (= e!356748 (arrayContainsKey!0 lt!288137 (select (arr!18056 a!2986) j!136) index!984))))

(assert (= (and start!56194 res!400930) b!621986))

(assert (= (and b!621986 res!400939) b!621991))

(assert (= (and b!621991 res!400940) b!621993))

(assert (= (and b!621993 res!400925) b!621975))

(assert (= (and b!621975 res!400934) b!621992))

(assert (= (and b!621992 res!400935) b!621983))

(assert (= (and b!621983 res!400928) b!621987))

(assert (= (and b!621987 res!400931) b!621990))

(assert (= (and b!621990 res!400927) b!621988))

(assert (= (and b!621988 res!400937) b!621994))

(assert (= (and b!621994 res!400936) b!621982))

(assert (= (and b!621982 res!400938) b!621995))

(assert (= (and b!621982 c!70893) b!621979))

(assert (= (and b!621982 (not c!70893)) b!621996))

(assert (= (and b!621982 c!70895) b!621977))

(assert (= (and b!621982 (not c!70895)) b!621997))

(assert (= (and b!621977 res!400932) b!621981))

(assert (= (and b!621981 (not res!400933)) b!621976))

(assert (= (and b!621976 res!400929) b!621980))

(assert (= (and b!621977 c!70892) b!621978))

(assert (= (and b!621977 (not c!70892)) b!621989))

(assert (= (and b!621977 c!70894) b!621984))

(assert (= (and b!621977 (not c!70894)) b!621985))

(assert (= (and b!621984 res!400926) b!621998))

(declare-fun m!597899 () Bool)

(assert (=> b!621990 m!597899))

(declare-fun m!597901 () Bool)

(assert (=> b!621992 m!597901))

(declare-fun m!597903 () Bool)

(assert (=> b!621987 m!597903))

(declare-fun m!597905 () Bool)

(assert (=> b!621980 m!597905))

(assert (=> b!621980 m!597905))

(declare-fun m!597907 () Bool)

(assert (=> b!621980 m!597907))

(declare-fun m!597909 () Bool)

(assert (=> b!621977 m!597909))

(declare-fun m!597911 () Bool)

(assert (=> b!621977 m!597911))

(assert (=> b!621977 m!597905))

(declare-fun m!597913 () Bool)

(assert (=> b!621978 m!597913))

(assert (=> b!621978 m!597905))

(assert (=> b!621978 m!597905))

(declare-fun m!597915 () Bool)

(assert (=> b!621978 m!597915))

(assert (=> b!621978 m!597905))

(declare-fun m!597917 () Bool)

(assert (=> b!621978 m!597917))

(declare-fun m!597919 () Bool)

(assert (=> b!621978 m!597919))

(declare-fun m!597921 () Bool)

(assert (=> b!621978 m!597921))

(assert (=> b!621978 m!597905))

(declare-fun m!597923 () Bool)

(assert (=> b!621978 m!597923))

(declare-fun m!597925 () Bool)

(assert (=> b!621978 m!597925))

(declare-fun m!597927 () Bool)

(assert (=> b!621983 m!597927))

(assert (=> b!621991 m!597905))

(assert (=> b!621991 m!597905))

(declare-fun m!597929 () Bool)

(assert (=> b!621991 m!597929))

(declare-fun m!597931 () Bool)

(assert (=> b!621982 m!597931))

(declare-fun m!597933 () Bool)

(assert (=> b!621982 m!597933))

(assert (=> b!621982 m!597905))

(assert (=> b!621982 m!597909))

(declare-fun m!597935 () Bool)

(assert (=> b!621982 m!597935))

(declare-fun m!597937 () Bool)

(assert (=> b!621982 m!597937))

(declare-fun m!597939 () Bool)

(assert (=> b!621982 m!597939))

(assert (=> b!621982 m!597905))

(declare-fun m!597941 () Bool)

(assert (=> b!621982 m!597941))

(declare-fun m!597943 () Bool)

(assert (=> b!621993 m!597943))

(declare-fun m!597945 () Bool)

(assert (=> start!56194 m!597945))

(declare-fun m!597947 () Bool)

(assert (=> start!56194 m!597947))

(declare-fun m!597949 () Bool)

(assert (=> b!621994 m!597949))

(assert (=> b!621994 m!597905))

(assert (=> b!621994 m!597905))

(declare-fun m!597951 () Bool)

(assert (=> b!621994 m!597951))

(assert (=> b!621984 m!597905))

(declare-fun m!597953 () Bool)

(assert (=> b!621984 m!597953))

(declare-fun m!597955 () Bool)

(assert (=> b!621984 m!597955))

(assert (=> b!621984 m!597921))

(declare-fun m!597957 () Bool)

(assert (=> b!621984 m!597957))

(assert (=> b!621984 m!597925))

(assert (=> b!621984 m!597905))

(assert (=> b!621984 m!597905))

(declare-fun m!597959 () Bool)

(assert (=> b!621984 m!597959))

(assert (=> b!621984 m!597905))

(declare-fun m!597961 () Bool)

(assert (=> b!621984 m!597961))

(assert (=> b!621984 m!597905))

(declare-fun m!597963 () Bool)

(assert (=> b!621984 m!597963))

(assert (=> b!621998 m!597905))

(assert (=> b!621998 m!597905))

(assert (=> b!621998 m!597907))

(assert (=> b!621976 m!597905))

(assert (=> b!621976 m!597905))

(assert (=> b!621976 m!597953))

(assert (=> b!621988 m!597909))

(declare-fun m!597965 () Bool)

(assert (=> b!621988 m!597965))

(declare-fun m!597967 () Bool)

(assert (=> b!621975 m!597967))

(push 1)

