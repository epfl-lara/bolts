; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57724 () Bool)

(assert start!57724)

(declare-fun b!637936 () Bool)

(declare-fun res!412962 () Bool)

(declare-fun e!365044 () Bool)

(assert (=> b!637936 (=> (not res!412962) (not e!365044))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38251 0))(
  ( (array!38252 (arr!18344 (Array (_ BitVec 32) (_ BitVec 64))) (size!18708 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38251)

(assert (=> b!637936 (= res!412962 (and (= (size!18708 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18708 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18708 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637937 () Bool)

(declare-fun res!412976 () Bool)

(declare-fun e!365040 () Bool)

(assert (=> b!637937 (=> (not res!412976) (not e!365040))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!637937 (= res!412976 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18344 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!412969 () Bool)

(assert (=> start!57724 (=> (not res!412969) (not e!365044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57724 (= res!412969 (validMask!0 mask!3053))))

(assert (=> start!57724 e!365044))

(assert (=> start!57724 true))

(declare-fun array_inv!14118 (array!38251) Bool)

(assert (=> start!57724 (array_inv!14118 a!2986)))

(declare-fun b!637938 () Bool)

(declare-fun e!365038 () Bool)

(declare-fun e!365033 () Bool)

(assert (=> b!637938 (= e!365038 e!365033)))

(declare-fun res!412963 () Bool)

(assert (=> b!637938 (=> (not res!412963) (not e!365033))))

(declare-fun lt!295038 () array!38251)

(declare-fun arrayContainsKey!0 (array!38251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637938 (= res!412963 (arrayContainsKey!0 lt!295038 (select (arr!18344 a!2986) j!136) j!136))))

(declare-fun b!637939 () Bool)

(declare-fun res!412960 () Bool)

(assert (=> b!637939 (=> (not res!412960) (not e!365044))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637939 (= res!412960 (validKeyInArray!0 k!1786))))

(declare-fun b!637940 () Bool)

(declare-datatypes ((Unit!21522 0))(
  ( (Unit!21523) )
))
(declare-fun e!365039 () Unit!21522)

(declare-fun Unit!21524 () Unit!21522)

(assert (=> b!637940 (= e!365039 Unit!21524)))

(assert (=> b!637940 false))

(declare-fun b!637941 () Bool)

(declare-fun e!365035 () Bool)

(declare-fun e!365041 () Bool)

(assert (=> b!637941 (= e!365035 e!365041)))

(declare-fun res!412965 () Bool)

(assert (=> b!637941 (=> res!412965 e!365041)))

(declare-fun lt!295045 () (_ BitVec 64))

(declare-fun lt!295041 () (_ BitVec 64))

(assert (=> b!637941 (= res!412965 (or (not (= (select (arr!18344 a!2986) j!136) lt!295041)) (not (= (select (arr!18344 a!2986) j!136) lt!295045)) (bvsge j!136 index!984)))))

(declare-fun e!365042 () Bool)

(assert (=> b!637941 e!365042))

(declare-fun res!412975 () Bool)

(assert (=> b!637941 (=> (not res!412975) (not e!365042))))

(assert (=> b!637941 (= res!412975 (= lt!295045 (select (arr!18344 a!2986) j!136)))))

(assert (=> b!637941 (= lt!295045 (select (store (arr!18344 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637942 () Bool)

(declare-fun res!412956 () Bool)

(assert (=> b!637942 (=> (not res!412956) (not e!365040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38251 (_ BitVec 32)) Bool)

(assert (=> b!637942 (= res!412956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637943 () Bool)

(declare-fun e!365036 () Bool)

(declare-datatypes ((SeekEntryResult!6791 0))(
  ( (MissingZero!6791 (index!29477 (_ BitVec 32))) (Found!6791 (index!29478 (_ BitVec 32))) (Intermediate!6791 (undefined!7603 Bool) (index!29479 (_ BitVec 32)) (x!58258 (_ BitVec 32))) (Undefined!6791) (MissingVacant!6791 (index!29480 (_ BitVec 32))) )
))
(declare-fun lt!295047 () SeekEntryResult!6791)

(declare-fun lt!295043 () SeekEntryResult!6791)

(assert (=> b!637943 (= e!365036 (= lt!295047 lt!295043))))

(declare-fun b!637944 () Bool)

(declare-fun res!412964 () Bool)

(declare-fun e!365043 () Bool)

(assert (=> b!637944 (=> res!412964 e!365043)))

(declare-datatypes ((List!12438 0))(
  ( (Nil!12435) (Cons!12434 (h!13479 (_ BitVec 64)) (t!18674 List!12438)) )
))
(declare-fun contains!3121 (List!12438 (_ BitVec 64)) Bool)

(assert (=> b!637944 (= res!412964 (contains!3121 Nil!12435 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637945 () Bool)

(declare-fun e!365032 () Bool)

(assert (=> b!637945 (= e!365032 (not e!365035))))

(declare-fun res!412974 () Bool)

(assert (=> b!637945 (=> res!412974 e!365035)))

(declare-fun lt!295036 () SeekEntryResult!6791)

(assert (=> b!637945 (= res!412974 (not (= lt!295036 (Found!6791 index!984))))))

(declare-fun lt!295039 () Unit!21522)

(assert (=> b!637945 (= lt!295039 e!365039)))

(declare-fun c!72857 () Bool)

(assert (=> b!637945 (= c!72857 (= lt!295036 Undefined!6791))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38251 (_ BitVec 32)) SeekEntryResult!6791)

(assert (=> b!637945 (= lt!295036 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295041 lt!295038 mask!3053))))

(assert (=> b!637945 e!365036))

(declare-fun res!412961 () Bool)

(assert (=> b!637945 (=> (not res!412961) (not e!365036))))

(declare-fun lt!295037 () (_ BitVec 32))

(assert (=> b!637945 (= res!412961 (= lt!295043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295037 vacantSpotIndex!68 lt!295041 lt!295038 mask!3053)))))

(assert (=> b!637945 (= lt!295043 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295037 vacantSpotIndex!68 (select (arr!18344 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637945 (= lt!295041 (select (store (arr!18344 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295044 () Unit!21522)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38251 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21522)

(assert (=> b!637945 (= lt!295044 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295037 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637945 (= lt!295037 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637946 () Bool)

(declare-fun Unit!21525 () Unit!21522)

(assert (=> b!637946 (= e!365039 Unit!21525)))

(declare-fun b!637947 () Bool)

(assert (=> b!637947 (= e!365042 e!365038)))

(declare-fun res!412968 () Bool)

(assert (=> b!637947 (=> res!412968 e!365038)))

(assert (=> b!637947 (= res!412968 (or (not (= (select (arr!18344 a!2986) j!136) lt!295041)) (not (= (select (arr!18344 a!2986) j!136) lt!295045)) (bvsge j!136 index!984)))))

(declare-fun b!637948 () Bool)

(assert (=> b!637948 (= e!365033 (arrayContainsKey!0 lt!295038 (select (arr!18344 a!2986) j!136) index!984))))

(declare-fun b!637949 () Bool)

(assert (=> b!637949 (= e!365044 e!365040)))

(declare-fun res!412967 () Bool)

(assert (=> b!637949 (=> (not res!412967) (not e!365040))))

(declare-fun lt!295040 () SeekEntryResult!6791)

(assert (=> b!637949 (= res!412967 (or (= lt!295040 (MissingZero!6791 i!1108)) (= lt!295040 (MissingVacant!6791 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38251 (_ BitVec 32)) SeekEntryResult!6791)

(assert (=> b!637949 (= lt!295040 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637950 () Bool)

(declare-fun res!412970 () Bool)

(assert (=> b!637950 (=> res!412970 e!365043)))

(declare-fun noDuplicate!396 (List!12438) Bool)

(assert (=> b!637950 (= res!412970 (not (noDuplicate!396 Nil!12435)))))

(declare-fun b!637951 () Bool)

(assert (=> b!637951 (= e!365041 e!365043)))

(declare-fun res!412959 () Bool)

(assert (=> b!637951 (=> res!412959 e!365043)))

(assert (=> b!637951 (= res!412959 (or (bvsge (size!18708 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18708 a!2986))))))

(assert (=> b!637951 (arrayContainsKey!0 lt!295038 (select (arr!18344 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295042 () Unit!21522)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38251 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21522)

(assert (=> b!637951 (= lt!295042 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295038 (select (arr!18344 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637952 () Bool)

(declare-fun e!365034 () Bool)

(assert (=> b!637952 (= e!365034 e!365032)))

(declare-fun res!412973 () Bool)

(assert (=> b!637952 (=> (not res!412973) (not e!365032))))

(assert (=> b!637952 (= res!412973 (and (= lt!295047 (Found!6791 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18344 a!2986) index!984) (select (arr!18344 a!2986) j!136))) (not (= (select (arr!18344 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637952 (= lt!295047 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18344 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637953 () Bool)

(declare-fun res!412972 () Bool)

(assert (=> b!637953 (=> (not res!412972) (not e!365044))))

(assert (=> b!637953 (= res!412972 (validKeyInArray!0 (select (arr!18344 a!2986) j!136)))))

(declare-fun b!637954 () Bool)

(declare-fun res!412957 () Bool)

(assert (=> b!637954 (=> (not res!412957) (not e!365044))))

(assert (=> b!637954 (= res!412957 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637955 () Bool)

(assert (=> b!637955 (= e!365043 true)))

(declare-fun lt!295046 () Bool)

(assert (=> b!637955 (= lt!295046 (contains!3121 Nil!12435 k!1786))))

(declare-fun b!637956 () Bool)

(assert (=> b!637956 (= e!365040 e!365034)))

(declare-fun res!412971 () Bool)

(assert (=> b!637956 (=> (not res!412971) (not e!365034))))

(assert (=> b!637956 (= res!412971 (= (select (store (arr!18344 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637956 (= lt!295038 (array!38252 (store (arr!18344 a!2986) i!1108 k!1786) (size!18708 a!2986)))))

(declare-fun b!637957 () Bool)

(declare-fun res!412958 () Bool)

(assert (=> b!637957 (=> res!412958 e!365043)))

(assert (=> b!637957 (= res!412958 (contains!3121 Nil!12435 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637958 () Bool)

(declare-fun res!412966 () Bool)

(assert (=> b!637958 (=> (not res!412966) (not e!365040))))

(declare-fun arrayNoDuplicates!0 (array!38251 (_ BitVec 32) List!12438) Bool)

(assert (=> b!637958 (= res!412966 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12435))))

(assert (= (and start!57724 res!412969) b!637936))

(assert (= (and b!637936 res!412962) b!637953))

(assert (= (and b!637953 res!412972) b!637939))

(assert (= (and b!637939 res!412960) b!637954))

(assert (= (and b!637954 res!412957) b!637949))

(assert (= (and b!637949 res!412967) b!637942))

(assert (= (and b!637942 res!412956) b!637958))

(assert (= (and b!637958 res!412966) b!637937))

(assert (= (and b!637937 res!412976) b!637956))

(assert (= (and b!637956 res!412971) b!637952))

(assert (= (and b!637952 res!412973) b!637945))

(assert (= (and b!637945 res!412961) b!637943))

(assert (= (and b!637945 c!72857) b!637940))

(assert (= (and b!637945 (not c!72857)) b!637946))

(assert (= (and b!637945 (not res!412974)) b!637941))

(assert (= (and b!637941 res!412975) b!637947))

(assert (= (and b!637947 (not res!412968)) b!637938))

(assert (= (and b!637938 res!412963) b!637948))

(assert (= (and b!637941 (not res!412965)) b!637951))

(assert (= (and b!637951 (not res!412959)) b!637950))

(assert (= (and b!637950 (not res!412970)) b!637957))

(assert (= (and b!637957 (not res!412958)) b!637944))

(assert (= (and b!637944 (not res!412964)) b!637955))

(declare-fun m!611975 () Bool)

(assert (=> b!637955 m!611975))

(declare-fun m!611977 () Bool)

(assert (=> b!637947 m!611977))

(assert (=> b!637951 m!611977))

(assert (=> b!637951 m!611977))

(declare-fun m!611979 () Bool)

(assert (=> b!637951 m!611979))

(assert (=> b!637951 m!611977))

(declare-fun m!611981 () Bool)

(assert (=> b!637951 m!611981))

(declare-fun m!611983 () Bool)

(assert (=> b!637939 m!611983))

(declare-fun m!611985 () Bool)

(assert (=> b!637956 m!611985))

(declare-fun m!611987 () Bool)

(assert (=> b!637956 m!611987))

(assert (=> b!637948 m!611977))

(assert (=> b!637948 m!611977))

(declare-fun m!611989 () Bool)

(assert (=> b!637948 m!611989))

(declare-fun m!611991 () Bool)

(assert (=> start!57724 m!611991))

(declare-fun m!611993 () Bool)

(assert (=> start!57724 m!611993))

(declare-fun m!611995 () Bool)

(assert (=> b!637954 m!611995))

(declare-fun m!611997 () Bool)

(assert (=> b!637944 m!611997))

(declare-fun m!611999 () Bool)

(assert (=> b!637937 m!611999))

(declare-fun m!612001 () Bool)

(assert (=> b!637952 m!612001))

(assert (=> b!637952 m!611977))

(assert (=> b!637952 m!611977))

(declare-fun m!612003 () Bool)

(assert (=> b!637952 m!612003))

(assert (=> b!637941 m!611977))

(assert (=> b!637941 m!611985))

(declare-fun m!612005 () Bool)

(assert (=> b!637941 m!612005))

(declare-fun m!612007 () Bool)

(assert (=> b!637942 m!612007))

(declare-fun m!612009 () Bool)

(assert (=> b!637957 m!612009))

(declare-fun m!612011 () Bool)

(assert (=> b!637949 m!612011))

(declare-fun m!612013 () Bool)

(assert (=> b!637945 m!612013))

(declare-fun m!612015 () Bool)

(assert (=> b!637945 m!612015))

(declare-fun m!612017 () Bool)

(assert (=> b!637945 m!612017))

(assert (=> b!637945 m!611977))

(assert (=> b!637945 m!611985))

(assert (=> b!637945 m!611977))

(declare-fun m!612019 () Bool)

(assert (=> b!637945 m!612019))

(declare-fun m!612021 () Bool)

(assert (=> b!637945 m!612021))

(declare-fun m!612023 () Bool)

(assert (=> b!637945 m!612023))

(assert (=> b!637938 m!611977))

(assert (=> b!637938 m!611977))

(declare-fun m!612025 () Bool)

(assert (=> b!637938 m!612025))

(declare-fun m!612027 () Bool)

(assert (=> b!637958 m!612027))

(assert (=> b!637953 m!611977))

(assert (=> b!637953 m!611977))

(declare-fun m!612029 () Bool)

(assert (=> b!637953 m!612029))

(declare-fun m!612031 () Bool)

(assert (=> b!637950 m!612031))

(push 1)

