; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56084 () Bool)

(assert start!56084)

(declare-fun b!617939 () Bool)

(declare-datatypes ((Unit!20300 0))(
  ( (Unit!20301) )
))
(declare-fun e!354362 () Unit!20300)

(declare-fun Unit!20302 () Unit!20300)

(assert (=> b!617939 (= e!354362 Unit!20302)))

(declare-fun b!617941 () Bool)

(assert (=> b!617941 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!284838 () Unit!20300)

(declare-datatypes ((array!37517 0))(
  ( (array!37518 (arr!18001 (Array (_ BitVec 32) (_ BitVec 64))) (size!18365 (_ BitVec 32))) )
))
(declare-fun lt!284855 () array!37517)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37517)

(declare-datatypes ((List!12095 0))(
  ( (Nil!12092) (Cons!12091 (h!13136 (_ BitVec 64)) (t!18331 List!12095)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37517 (_ BitVec 64) (_ BitVec 32) List!12095) Unit!20300)

(assert (=> b!617941 (= lt!284838 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284855 (select (arr!18001 a!2986) j!136) index!984 Nil!12092))))

(declare-fun arrayNoDuplicates!0 (array!37517 (_ BitVec 32) List!12095) Bool)

(assert (=> b!617941 (arrayNoDuplicates!0 lt!284855 index!984 Nil!12092)))

(declare-fun lt!284854 () Unit!20300)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37517 (_ BitVec 32) (_ BitVec 32)) Unit!20300)

(assert (=> b!617941 (= lt!284854 (lemmaNoDuplicateFromThenFromBigger!0 lt!284855 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617941 (arrayNoDuplicates!0 lt!284855 #b00000000000000000000000000000000 Nil!12092)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!284848 () Unit!20300)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37517 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12095) Unit!20300)

(assert (=> b!617941 (= lt!284848 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12092))))

(declare-fun arrayContainsKey!0 (array!37517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617941 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284842 () Unit!20300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37517 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20300)

(assert (=> b!617941 (= lt!284842 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284855 (select (arr!18001 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!354373 () Bool)

(assert (=> b!617941 e!354373))

(declare-fun res!398209 () Bool)

(assert (=> b!617941 (=> (not res!398209) (not e!354373))))

(assert (=> b!617941 (= res!398209 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) j!136))))

(declare-fun Unit!20303 () Unit!20300)

(assert (=> b!617941 (= e!354362 Unit!20303)))

(declare-fun b!617942 () Bool)

(assert (=> b!617942 (= e!354373 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) index!984))))

(declare-fun res!398212 () Bool)

(declare-fun b!617943 () Bool)

(assert (=> b!617943 (= res!398212 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) j!136))))

(declare-fun e!354371 () Bool)

(assert (=> b!617943 (=> (not res!398212) (not e!354371))))

(declare-fun e!354367 () Bool)

(assert (=> b!617943 (= e!354367 e!354371)))

(declare-fun b!617944 () Bool)

(declare-fun e!354370 () Bool)

(declare-fun e!354376 () Bool)

(assert (=> b!617944 (= e!354370 (not e!354376))))

(declare-fun res!398225 () Bool)

(assert (=> b!617944 (=> res!398225 e!354376)))

(declare-datatypes ((SeekEntryResult!6448 0))(
  ( (MissingZero!6448 (index!28075 (_ BitVec 32))) (Found!6448 (index!28076 (_ BitVec 32))) (Intermediate!6448 (undefined!7260 Bool) (index!28077 (_ BitVec 32)) (x!56889 (_ BitVec 32))) (Undefined!6448) (MissingVacant!6448 (index!28078 (_ BitVec 32))) )
))
(declare-fun lt!284853 () SeekEntryResult!6448)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617944 (= res!398225 (not (= lt!284853 (MissingVacant!6448 vacantSpotIndex!68))))))

(declare-fun lt!284841 () Unit!20300)

(declare-fun e!354375 () Unit!20300)

(assert (=> b!617944 (= lt!284841 e!354375)))

(declare-fun c!70234 () Bool)

(assert (=> b!617944 (= c!70234 (= lt!284853 (Found!6448 index!984)))))

(declare-fun lt!284839 () Unit!20300)

(declare-fun e!354369 () Unit!20300)

(assert (=> b!617944 (= lt!284839 e!354369)))

(declare-fun c!70232 () Bool)

(assert (=> b!617944 (= c!70232 (= lt!284853 Undefined!6448))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!284856 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37517 (_ BitVec 32)) SeekEntryResult!6448)

(assert (=> b!617944 (= lt!284853 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284856 lt!284855 mask!3053))))

(declare-fun e!354372 () Bool)

(assert (=> b!617944 e!354372))

(declare-fun res!398223 () Bool)

(assert (=> b!617944 (=> (not res!398223) (not e!354372))))

(declare-fun lt!284844 () SeekEntryResult!6448)

(declare-fun lt!284852 () (_ BitVec 32))

(assert (=> b!617944 (= res!398223 (= lt!284844 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284852 vacantSpotIndex!68 lt!284856 lt!284855 mask!3053)))))

(assert (=> b!617944 (= lt!284844 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284852 vacantSpotIndex!68 (select (arr!18001 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617944 (= lt!284856 (select (store (arr!18001 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!284850 () Unit!20300)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20300)

(assert (=> b!617944 (= lt!284850 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284852 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617944 (= lt!284852 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617945 () Bool)

(declare-fun res!398218 () Bool)

(declare-fun e!354363 () Bool)

(assert (=> b!617945 (=> (not res!398218) (not e!354363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37517 (_ BitVec 32)) Bool)

(assert (=> b!617945 (= res!398218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617946 () Bool)

(declare-fun e!354366 () Bool)

(assert (=> b!617946 (= e!354366 e!354370)))

(declare-fun res!398222 () Bool)

(assert (=> b!617946 (=> (not res!398222) (not e!354370))))

(declare-fun lt!284845 () SeekEntryResult!6448)

(assert (=> b!617946 (= res!398222 (and (= lt!284845 (Found!6448 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18001 a!2986) index!984) (select (arr!18001 a!2986) j!136))) (not (= (select (arr!18001 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617946 (= lt!284845 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18001 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617947 () Bool)

(assert (=> b!617947 (= e!354371 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) index!984))))

(declare-fun b!617948 () Bool)

(declare-fun Unit!20304 () Unit!20300)

(assert (=> b!617948 (= e!354375 Unit!20304)))

(declare-fun res!398215 () Bool)

(assert (=> b!617948 (= res!398215 (= (select (store (arr!18001 a!2986) i!1108 k0!1786) index!984) (select (arr!18001 a!2986) j!136)))))

(declare-fun e!354374 () Bool)

(assert (=> b!617948 (=> (not res!398215) (not e!354374))))

(assert (=> b!617948 e!354374))

(declare-fun c!70235 () Bool)

(assert (=> b!617948 (= c!70235 (bvslt j!136 index!984))))

(declare-fun lt!284849 () Unit!20300)

(declare-fun e!354364 () Unit!20300)

(assert (=> b!617948 (= lt!284849 e!354364)))

(declare-fun c!70233 () Bool)

(assert (=> b!617948 (= c!70233 (bvslt index!984 j!136))))

(declare-fun lt!284847 () Unit!20300)

(assert (=> b!617948 (= lt!284847 e!354362)))

(assert (=> b!617948 false))

(declare-fun b!617949 () Bool)

(declare-fun Unit!20305 () Unit!20300)

(assert (=> b!617949 (= e!354375 Unit!20305)))

(declare-fun b!617950 () Bool)

(assert (=> b!617950 (= e!354376 true)))

(assert (=> b!617950 (= (select (store (arr!18001 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617940 () Bool)

(declare-fun res!398220 () Bool)

(declare-fun e!354368 () Bool)

(assert (=> b!617940 (=> (not res!398220) (not e!354368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617940 (= res!398220 (validKeyInArray!0 k0!1786))))

(declare-fun res!398216 () Bool)

(assert (=> start!56084 (=> (not res!398216) (not e!354368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56084 (= res!398216 (validMask!0 mask!3053))))

(assert (=> start!56084 e!354368))

(assert (=> start!56084 true))

(declare-fun array_inv!13775 (array!37517) Bool)

(assert (=> start!56084 (array_inv!13775 a!2986)))

(declare-fun b!617951 () Bool)

(assert (=> b!617951 false))

(declare-fun lt!284843 () Unit!20300)

(assert (=> b!617951 (= lt!284843 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284855 (select (arr!18001 a!2986) j!136) j!136 Nil!12092))))

(assert (=> b!617951 (arrayNoDuplicates!0 lt!284855 j!136 Nil!12092)))

(declare-fun lt!284851 () Unit!20300)

(assert (=> b!617951 (= lt!284851 (lemmaNoDuplicateFromThenFromBigger!0 lt!284855 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617951 (arrayNoDuplicates!0 lt!284855 #b00000000000000000000000000000000 Nil!12092)))

(declare-fun lt!284837 () Unit!20300)

(assert (=> b!617951 (= lt!284837 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12092))))

(assert (=> b!617951 (arrayContainsKey!0 lt!284855 (select (arr!18001 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284840 () Unit!20300)

(assert (=> b!617951 (= lt!284840 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284855 (select (arr!18001 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20306 () Unit!20300)

(assert (=> b!617951 (= e!354364 Unit!20306)))

(declare-fun b!617952 () Bool)

(assert (=> b!617952 (= e!354363 e!354366)))

(declare-fun res!398213 () Bool)

(assert (=> b!617952 (=> (not res!398213) (not e!354366))))

(assert (=> b!617952 (= res!398213 (= (select (store (arr!18001 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617952 (= lt!284855 (array!37518 (store (arr!18001 a!2986) i!1108 k0!1786) (size!18365 a!2986)))))

(declare-fun b!617953 () Bool)

(declare-fun res!398221 () Bool)

(assert (=> b!617953 (=> (not res!398221) (not e!354368))))

(assert (=> b!617953 (= res!398221 (and (= (size!18365 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18365 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18365 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617954 () Bool)

(assert (=> b!617954 (= e!354372 (= lt!284845 lt!284844))))

(declare-fun b!617955 () Bool)

(declare-fun Unit!20307 () Unit!20300)

(assert (=> b!617955 (= e!354369 Unit!20307)))

(declare-fun b!617956 () Bool)

(declare-fun res!398211 () Bool)

(assert (=> b!617956 (=> (not res!398211) (not e!354368))))

(assert (=> b!617956 (= res!398211 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617957 () Bool)

(assert (=> b!617957 (= e!354368 e!354363)))

(declare-fun res!398219 () Bool)

(assert (=> b!617957 (=> (not res!398219) (not e!354363))))

(declare-fun lt!284846 () SeekEntryResult!6448)

(assert (=> b!617957 (= res!398219 (or (= lt!284846 (MissingZero!6448 i!1108)) (= lt!284846 (MissingVacant!6448 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37517 (_ BitVec 32)) SeekEntryResult!6448)

(assert (=> b!617957 (= lt!284846 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!617958 () Bool)

(declare-fun res!398217 () Bool)

(assert (=> b!617958 (=> (not res!398217) (not e!354368))))

(assert (=> b!617958 (= res!398217 (validKeyInArray!0 (select (arr!18001 a!2986) j!136)))))

(declare-fun b!617959 () Bool)

(declare-fun res!398210 () Bool)

(assert (=> b!617959 (= res!398210 (bvsge j!136 index!984))))

(assert (=> b!617959 (=> res!398210 e!354367)))

(assert (=> b!617959 (= e!354374 e!354367)))

(declare-fun b!617960 () Bool)

(declare-fun res!398214 () Bool)

(assert (=> b!617960 (=> (not res!398214) (not e!354363))))

(assert (=> b!617960 (= res!398214 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12092))))

(declare-fun b!617961 () Bool)

(declare-fun res!398224 () Bool)

(assert (=> b!617961 (=> (not res!398224) (not e!354363))))

(assert (=> b!617961 (= res!398224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18001 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617962 () Bool)

(declare-fun Unit!20308 () Unit!20300)

(assert (=> b!617962 (= e!354364 Unit!20308)))

(declare-fun b!617963 () Bool)

(declare-fun Unit!20309 () Unit!20300)

(assert (=> b!617963 (= e!354369 Unit!20309)))

(assert (=> b!617963 false))

(assert (= (and start!56084 res!398216) b!617953))

(assert (= (and b!617953 res!398221) b!617958))

(assert (= (and b!617958 res!398217) b!617940))

(assert (= (and b!617940 res!398220) b!617956))

(assert (= (and b!617956 res!398211) b!617957))

(assert (= (and b!617957 res!398219) b!617945))

(assert (= (and b!617945 res!398218) b!617960))

(assert (= (and b!617960 res!398214) b!617961))

(assert (= (and b!617961 res!398224) b!617952))

(assert (= (and b!617952 res!398213) b!617946))

(assert (= (and b!617946 res!398222) b!617944))

(assert (= (and b!617944 res!398223) b!617954))

(assert (= (and b!617944 c!70232) b!617963))

(assert (= (and b!617944 (not c!70232)) b!617955))

(assert (= (and b!617944 c!70234) b!617948))

(assert (= (and b!617944 (not c!70234)) b!617949))

(assert (= (and b!617948 res!398215) b!617959))

(assert (= (and b!617959 (not res!398210)) b!617943))

(assert (= (and b!617943 res!398212) b!617947))

(assert (= (and b!617948 c!70235) b!617951))

(assert (= (and b!617948 (not c!70235)) b!617962))

(assert (= (and b!617948 c!70233) b!617941))

(assert (= (and b!617948 (not c!70233)) b!617939))

(assert (= (and b!617941 res!398209) b!617942))

(assert (= (and b!617944 (not res!398225)) b!617950))

(declare-fun m!594049 () Bool)

(assert (=> b!617948 m!594049))

(declare-fun m!594051 () Bool)

(assert (=> b!617948 m!594051))

(declare-fun m!594053 () Bool)

(assert (=> b!617948 m!594053))

(declare-fun m!594055 () Bool)

(assert (=> b!617944 m!594055))

(declare-fun m!594057 () Bool)

(assert (=> b!617944 m!594057))

(assert (=> b!617944 m!594053))

(declare-fun m!594059 () Bool)

(assert (=> b!617944 m!594059))

(assert (=> b!617944 m!594049))

(declare-fun m!594061 () Bool)

(assert (=> b!617944 m!594061))

(declare-fun m!594063 () Bool)

(assert (=> b!617944 m!594063))

(assert (=> b!617944 m!594053))

(declare-fun m!594065 () Bool)

(assert (=> b!617944 m!594065))

(assert (=> b!617942 m!594053))

(assert (=> b!617942 m!594053))

(declare-fun m!594067 () Bool)

(assert (=> b!617942 m!594067))

(declare-fun m!594069 () Bool)

(assert (=> b!617946 m!594069))

(assert (=> b!617946 m!594053))

(assert (=> b!617946 m!594053))

(declare-fun m!594071 () Bool)

(assert (=> b!617946 m!594071))

(assert (=> b!617951 m!594053))

(declare-fun m!594073 () Bool)

(assert (=> b!617951 m!594073))

(declare-fun m!594075 () Bool)

(assert (=> b!617951 m!594075))

(declare-fun m!594077 () Bool)

(assert (=> b!617951 m!594077))

(declare-fun m!594079 () Bool)

(assert (=> b!617951 m!594079))

(assert (=> b!617951 m!594053))

(assert (=> b!617951 m!594053))

(declare-fun m!594081 () Bool)

(assert (=> b!617951 m!594081))

(declare-fun m!594083 () Bool)

(assert (=> b!617951 m!594083))

(assert (=> b!617951 m!594053))

(declare-fun m!594085 () Bool)

(assert (=> b!617951 m!594085))

(assert (=> b!617943 m!594053))

(assert (=> b!617943 m!594053))

(declare-fun m!594087 () Bool)

(assert (=> b!617943 m!594087))

(declare-fun m!594089 () Bool)

(assert (=> b!617956 m!594089))

(assert (=> b!617958 m!594053))

(assert (=> b!617958 m!594053))

(declare-fun m!594091 () Bool)

(assert (=> b!617958 m!594091))

(assert (=> b!617947 m!594053))

(assert (=> b!617947 m!594053))

(assert (=> b!617947 m!594067))

(assert (=> b!617950 m!594049))

(assert (=> b!617950 m!594051))

(assert (=> b!617952 m!594049))

(declare-fun m!594093 () Bool)

(assert (=> b!617952 m!594093))

(declare-fun m!594095 () Bool)

(assert (=> b!617957 m!594095))

(assert (=> b!617941 m!594053))

(assert (=> b!617941 m!594075))

(declare-fun m!594097 () Bool)

(assert (=> b!617941 m!594097))

(assert (=> b!617941 m!594053))

(assert (=> b!617941 m!594087))

(assert (=> b!617941 m!594053))

(declare-fun m!594099 () Bool)

(assert (=> b!617941 m!594099))

(assert (=> b!617941 m!594079))

(assert (=> b!617941 m!594053))

(declare-fun m!594101 () Bool)

(assert (=> b!617941 m!594101))

(declare-fun m!594103 () Bool)

(assert (=> b!617941 m!594103))

(assert (=> b!617941 m!594053))

(declare-fun m!594105 () Bool)

(assert (=> b!617941 m!594105))

(declare-fun m!594107 () Bool)

(assert (=> b!617961 m!594107))

(declare-fun m!594109 () Bool)

(assert (=> start!56084 m!594109))

(declare-fun m!594111 () Bool)

(assert (=> start!56084 m!594111))

(declare-fun m!594113 () Bool)

(assert (=> b!617960 m!594113))

(declare-fun m!594115 () Bool)

(assert (=> b!617940 m!594115))

(declare-fun m!594117 () Bool)

(assert (=> b!617945 m!594117))

(check-sat (not b!617947) (not b!617941) (not b!617946) (not b!617942) (not b!617957) (not b!617944) (not start!56084) (not b!617958) (not b!617945) (not b!617956) (not b!617951) (not b!617943) (not b!617940) (not b!617960))
(check-sat)
