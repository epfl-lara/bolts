; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54886 () Bool)

(assert start!54886)

(declare-fun b!600017 () Bool)

(declare-datatypes ((Unit!18924 0))(
  ( (Unit!18925) )
))
(declare-fun e!343060 () Unit!18924)

(declare-fun Unit!18926 () Unit!18924)

(assert (=> b!600017 (= e!343060 Unit!18926)))

(declare-fun b!600018 () Bool)

(declare-fun e!343051 () Bool)

(declare-fun e!343059 () Bool)

(assert (=> b!600018 (= e!343051 e!343059)))

(declare-fun res!385100 () Bool)

(assert (=> b!600018 (=> (not res!385100) (not e!343059))))

(declare-datatypes ((array!37084 0))(
  ( (array!37085 (arr!17798 (Array (_ BitVec 32) (_ BitVec 64))) (size!18162 (_ BitVec 32))) )
))
(declare-fun lt!272962 () array!37084)

(declare-fun a!2986 () array!37084)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600018 (= res!385100 (arrayContainsKey!0 lt!272962 (select (arr!17798 a!2986) j!136) j!136))))

(declare-fun b!600020 () Bool)

(declare-fun e!343056 () Bool)

(declare-fun e!343062 () Bool)

(assert (=> b!600020 (= e!343056 e!343062)))

(declare-fun res!385101 () Bool)

(assert (=> b!600020 (=> (not res!385101) (not e!343062))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!600020 (= res!385101 (= (select (store (arr!17798 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!600020 (= lt!272962 (array!37085 (store (arr!17798 a!2986) i!1108 k!1786) (size!18162 a!2986)))))

(declare-fun b!600021 () Bool)

(declare-fun res!385102 () Bool)

(declare-fun e!343053 () Bool)

(assert (=> b!600021 (=> (not res!385102) (not e!343053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600021 (= res!385102 (validKeyInArray!0 (select (arr!17798 a!2986) j!136)))))

(declare-fun b!600022 () Bool)

(declare-fun res!385106 () Bool)

(assert (=> b!600022 (=> (not res!385106) (not e!343053))))

(assert (=> b!600022 (= res!385106 (validKeyInArray!0 k!1786))))

(declare-fun b!600023 () Bool)

(declare-fun e!343054 () Bool)

(declare-fun e!343055 () Bool)

(assert (=> b!600023 (= e!343054 e!343055)))

(declare-fun res!385108 () Bool)

(assert (=> b!600023 (=> res!385108 e!343055)))

(declare-fun lt!272958 () (_ BitVec 64))

(declare-fun lt!272963 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600023 (= res!385108 (or (not (= (select (arr!17798 a!2986) j!136) lt!272958)) (not (= (select (arr!17798 a!2986) j!136) lt!272963)) (bvsge j!136 index!984)))))

(declare-fun e!343063 () Bool)

(assert (=> b!600023 e!343063))

(declare-fun res!385107 () Bool)

(assert (=> b!600023 (=> (not res!385107) (not e!343063))))

(assert (=> b!600023 (= res!385107 (= lt!272963 (select (arr!17798 a!2986) j!136)))))

(assert (=> b!600023 (= lt!272963 (select (store (arr!17798 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600024 () Bool)

(assert (=> b!600024 (= e!343053 e!343056)))

(declare-fun res!385111 () Bool)

(assert (=> b!600024 (=> (not res!385111) (not e!343056))))

(declare-datatypes ((SeekEntryResult!6245 0))(
  ( (MissingZero!6245 (index!27236 (_ BitVec 32))) (Found!6245 (index!27237 (_ BitVec 32))) (Intermediate!6245 (undefined!7057 Bool) (index!27238 (_ BitVec 32)) (x!56061 (_ BitVec 32))) (Undefined!6245) (MissingVacant!6245 (index!27239 (_ BitVec 32))) )
))
(declare-fun lt!272953 () SeekEntryResult!6245)

(assert (=> b!600024 (= res!385111 (or (= lt!272953 (MissingZero!6245 i!1108)) (= lt!272953 (MissingVacant!6245 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37084 (_ BitVec 32)) SeekEntryResult!6245)

(assert (=> b!600024 (= lt!272953 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600025 () Bool)

(declare-fun e!343058 () Bool)

(assert (=> b!600025 (= e!343055 e!343058)))

(declare-fun res!385117 () Bool)

(assert (=> b!600025 (=> res!385117 e!343058)))

(assert (=> b!600025 (= res!385117 (or (bvsge (size!18162 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18162 a!2986))))))

(declare-datatypes ((List!11892 0))(
  ( (Nil!11889) (Cons!11888 (h!12933 (_ BitVec 64)) (t!18128 List!11892)) )
))
(declare-fun arrayNoDuplicates!0 (array!37084 (_ BitVec 32) List!11892) Bool)

(assert (=> b!600025 (arrayNoDuplicates!0 lt!272962 j!136 Nil!11889)))

(declare-fun lt!272957 () Unit!18924)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37084 (_ BitVec 32) (_ BitVec 32)) Unit!18924)

(assert (=> b!600025 (= lt!272957 (lemmaNoDuplicateFromThenFromBigger!0 lt!272962 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600025 (arrayNoDuplicates!0 lt!272962 #b00000000000000000000000000000000 Nil!11889)))

(declare-fun lt!272959 () Unit!18924)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37084 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11892) Unit!18924)

(assert (=> b!600025 (= lt!272959 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11889))))

(assert (=> b!600025 (arrayContainsKey!0 lt!272962 (select (arr!17798 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272954 () Unit!18924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37084 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18924)

(assert (=> b!600025 (= lt!272954 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272962 (select (arr!17798 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600026 () Bool)

(assert (=> b!600026 (= e!343058 true)))

(declare-fun lt!272951 () Bool)

(declare-fun contains!2977 (List!11892 (_ BitVec 64)) Bool)

(assert (=> b!600026 (= lt!272951 (contains!2977 Nil!11889 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600027 () Bool)

(declare-fun e!343052 () Bool)

(assert (=> b!600027 (= e!343062 e!343052)))

(declare-fun res!385118 () Bool)

(assert (=> b!600027 (=> (not res!385118) (not e!343052))))

(declare-fun lt!272956 () SeekEntryResult!6245)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600027 (= res!385118 (and (= lt!272956 (Found!6245 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17798 a!2986) index!984) (select (arr!17798 a!2986) j!136))) (not (= (select (arr!17798 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37084 (_ BitVec 32)) SeekEntryResult!6245)

(assert (=> b!600027 (= lt!272956 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17798 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!600028 () Bool)

(declare-fun res!385104 () Bool)

(assert (=> b!600028 (=> (not res!385104) (not e!343053))))

(assert (=> b!600028 (= res!385104 (and (= (size!18162 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18162 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18162 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!600019 () Bool)

(declare-fun res!385113 () Bool)

(assert (=> b!600019 (=> (not res!385113) (not e!343056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37084 (_ BitVec 32)) Bool)

(assert (=> b!600019 (= res!385113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!385114 () Bool)

(assert (=> start!54886 (=> (not res!385114) (not e!343053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54886 (= res!385114 (validMask!0 mask!3053))))

(assert (=> start!54886 e!343053))

(assert (=> start!54886 true))

(declare-fun array_inv!13572 (array!37084) Bool)

(assert (=> start!54886 (array_inv!13572 a!2986)))

(declare-fun b!600029 () Bool)

(declare-fun res!385110 () Bool)

(assert (=> b!600029 (=> res!385110 e!343058)))

(assert (=> b!600029 (= res!385110 (contains!2977 Nil!11889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600030 () Bool)

(declare-fun e!343061 () Bool)

(declare-fun lt!272960 () SeekEntryResult!6245)

(assert (=> b!600030 (= e!343061 (= lt!272956 lt!272960))))

(declare-fun b!600031 () Bool)

(declare-fun Unit!18927 () Unit!18924)

(assert (=> b!600031 (= e!343060 Unit!18927)))

(assert (=> b!600031 false))

(declare-fun b!600032 () Bool)

(assert (=> b!600032 (= e!343059 (arrayContainsKey!0 lt!272962 (select (arr!17798 a!2986) j!136) index!984))))

(declare-fun b!600033 () Bool)

(declare-fun res!385116 () Bool)

(assert (=> b!600033 (=> (not res!385116) (not e!343056))))

(assert (=> b!600033 (= res!385116 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11889))))

(declare-fun b!600034 () Bool)

(assert (=> b!600034 (= e!343063 e!343051)))

(declare-fun res!385105 () Bool)

(assert (=> b!600034 (=> res!385105 e!343051)))

(assert (=> b!600034 (= res!385105 (or (not (= (select (arr!17798 a!2986) j!136) lt!272958)) (not (= (select (arr!17798 a!2986) j!136) lt!272963)) (bvsge j!136 index!984)))))

(declare-fun b!600035 () Bool)

(declare-fun res!385115 () Bool)

(assert (=> b!600035 (=> res!385115 e!343058)))

(declare-fun noDuplicate!291 (List!11892) Bool)

(assert (=> b!600035 (= res!385115 (not (noDuplicate!291 Nil!11889)))))

(declare-fun b!600036 () Bool)

(assert (=> b!600036 (= e!343052 (not e!343054))))

(declare-fun res!385109 () Bool)

(assert (=> b!600036 (=> res!385109 e!343054)))

(declare-fun lt!272952 () SeekEntryResult!6245)

(assert (=> b!600036 (= res!385109 (not (= lt!272952 (Found!6245 index!984))))))

(declare-fun lt!272955 () Unit!18924)

(assert (=> b!600036 (= lt!272955 e!343060)))

(declare-fun c!67826 () Bool)

(assert (=> b!600036 (= c!67826 (= lt!272952 Undefined!6245))))

(assert (=> b!600036 (= lt!272952 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272958 lt!272962 mask!3053))))

(assert (=> b!600036 e!343061))

(declare-fun res!385112 () Bool)

(assert (=> b!600036 (=> (not res!385112) (not e!343061))))

(declare-fun lt!272961 () (_ BitVec 32))

(assert (=> b!600036 (= res!385112 (= lt!272960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272961 vacantSpotIndex!68 lt!272958 lt!272962 mask!3053)))))

(assert (=> b!600036 (= lt!272960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272961 vacantSpotIndex!68 (select (arr!17798 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600036 (= lt!272958 (select (store (arr!17798 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272964 () Unit!18924)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37084 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18924)

(assert (=> b!600036 (= lt!272964 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272961 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600036 (= lt!272961 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600037 () Bool)

(declare-fun res!385099 () Bool)

(assert (=> b!600037 (=> (not res!385099) (not e!343056))))

(assert (=> b!600037 (= res!385099 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17798 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600038 () Bool)

(declare-fun res!385103 () Bool)

(assert (=> b!600038 (=> (not res!385103) (not e!343053))))

(assert (=> b!600038 (= res!385103 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54886 res!385114) b!600028))

(assert (= (and b!600028 res!385104) b!600021))

(assert (= (and b!600021 res!385102) b!600022))

(assert (= (and b!600022 res!385106) b!600038))

(assert (= (and b!600038 res!385103) b!600024))

(assert (= (and b!600024 res!385111) b!600019))

(assert (= (and b!600019 res!385113) b!600033))

(assert (= (and b!600033 res!385116) b!600037))

(assert (= (and b!600037 res!385099) b!600020))

(assert (= (and b!600020 res!385101) b!600027))

(assert (= (and b!600027 res!385118) b!600036))

(assert (= (and b!600036 res!385112) b!600030))

(assert (= (and b!600036 c!67826) b!600031))

(assert (= (and b!600036 (not c!67826)) b!600017))

(assert (= (and b!600036 (not res!385109)) b!600023))

(assert (= (and b!600023 res!385107) b!600034))

(assert (= (and b!600034 (not res!385105)) b!600018))

(assert (= (and b!600018 res!385100) b!600032))

(assert (= (and b!600023 (not res!385108)) b!600025))

(assert (= (and b!600025 (not res!385117)) b!600035))

(assert (= (and b!600035 (not res!385115)) b!600029))

(assert (= (and b!600029 (not res!385110)) b!600026))

(declare-fun m!577295 () Bool)

(assert (=> b!600020 m!577295))

(declare-fun m!577297 () Bool)

(assert (=> b!600020 m!577297))

(declare-fun m!577299 () Bool)

(assert (=> b!600032 m!577299))

(assert (=> b!600032 m!577299))

(declare-fun m!577301 () Bool)

(assert (=> b!600032 m!577301))

(declare-fun m!577303 () Bool)

(assert (=> start!54886 m!577303))

(declare-fun m!577305 () Bool)

(assert (=> start!54886 m!577305))

(assert (=> b!600018 m!577299))

(assert (=> b!600018 m!577299))

(declare-fun m!577307 () Bool)

(assert (=> b!600018 m!577307))

(assert (=> b!600023 m!577299))

(assert (=> b!600023 m!577295))

(declare-fun m!577309 () Bool)

(assert (=> b!600023 m!577309))

(declare-fun m!577311 () Bool)

(assert (=> b!600038 m!577311))

(declare-fun m!577313 () Bool)

(assert (=> b!600037 m!577313))

(declare-fun m!577315 () Bool)

(assert (=> b!600029 m!577315))

(declare-fun m!577317 () Bool)

(assert (=> b!600035 m!577317))

(assert (=> b!600034 m!577299))

(declare-fun m!577319 () Bool)

(assert (=> b!600027 m!577319))

(assert (=> b!600027 m!577299))

(assert (=> b!600027 m!577299))

(declare-fun m!577321 () Bool)

(assert (=> b!600027 m!577321))

(assert (=> b!600021 m!577299))

(assert (=> b!600021 m!577299))

(declare-fun m!577323 () Bool)

(assert (=> b!600021 m!577323))

(declare-fun m!577325 () Bool)

(assert (=> b!600024 m!577325))

(declare-fun m!577327 () Bool)

(assert (=> b!600022 m!577327))

(declare-fun m!577329 () Bool)

(assert (=> b!600019 m!577329))

(declare-fun m!577331 () Bool)

(assert (=> b!600033 m!577331))

(declare-fun m!577333 () Bool)

(assert (=> b!600026 m!577333))

(declare-fun m!577335 () Bool)

(assert (=> b!600036 m!577335))

(declare-fun m!577337 () Bool)

(assert (=> b!600036 m!577337))

(assert (=> b!600036 m!577299))

(assert (=> b!600036 m!577299))

(declare-fun m!577339 () Bool)

(assert (=> b!600036 m!577339))

(assert (=> b!600036 m!577295))

(declare-fun m!577341 () Bool)

(assert (=> b!600036 m!577341))

(declare-fun m!577343 () Bool)

(assert (=> b!600036 m!577343))

(declare-fun m!577345 () Bool)

(assert (=> b!600036 m!577345))

(declare-fun m!577347 () Bool)

(assert (=> b!600025 m!577347))

(assert (=> b!600025 m!577299))

(declare-fun m!577349 () Bool)

(assert (=> b!600025 m!577349))

(assert (=> b!600025 m!577299))

(declare-fun m!577351 () Bool)

(assert (=> b!600025 m!577351))

(assert (=> b!600025 m!577299))

(declare-fun m!577353 () Bool)

(assert (=> b!600025 m!577353))

(declare-fun m!577355 () Bool)

(assert (=> b!600025 m!577355))

(declare-fun m!577357 () Bool)

(assert (=> b!600025 m!577357))

(push 1)

