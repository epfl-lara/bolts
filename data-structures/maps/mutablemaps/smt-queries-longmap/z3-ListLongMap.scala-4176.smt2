; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56924 () Bool)

(assert start!56924)

(declare-fun b!629929 () Bool)

(declare-fun res!407329 () Bool)

(declare-fun e!360207 () Bool)

(assert (=> b!629929 (=> (not res!407329) (not e!360207))))

(declare-datatypes ((array!38018 0))(
  ( (array!38019 (arr!18241 (Array (_ BitVec 32) (_ BitVec 64))) (size!18605 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38018)

(declare-datatypes ((List!12335 0))(
  ( (Nil!12332) (Cons!12331 (h!13376 (_ BitVec 64)) (t!18571 List!12335)) )
))
(declare-fun arrayNoDuplicates!0 (array!38018 (_ BitVec 32) List!12335) Bool)

(assert (=> b!629929 (= res!407329 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12332))))

(declare-fun b!629930 () Bool)

(declare-fun res!407327 () Bool)

(declare-fun e!360208 () Bool)

(assert (=> b!629930 (=> (not res!407327) (not e!360208))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629930 (= res!407327 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629931 () Bool)

(declare-fun res!407330 () Bool)

(assert (=> b!629931 (=> (not res!407330) (not e!360207))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629931 (= res!407330 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18241 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18241 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629932 () Bool)

(declare-fun res!407328 () Bool)

(assert (=> b!629932 (=> (not res!407328) (not e!360208))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!629932 (= res!407328 (and (= (size!18605 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18605 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18605 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!407324 () Bool)

(assert (=> start!56924 (=> (not res!407324) (not e!360208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56924 (= res!407324 (validMask!0 mask!3053))))

(assert (=> start!56924 e!360208))

(assert (=> start!56924 true))

(declare-fun array_inv!14015 (array!38018) Bool)

(assert (=> start!56924 (array_inv!14015 a!2986)))

(declare-fun b!629933 () Bool)

(declare-fun res!407326 () Bool)

(assert (=> b!629933 (=> (not res!407326) (not e!360208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629933 (= res!407326 (validKeyInArray!0 (select (arr!18241 a!2986) j!136)))))

(declare-fun b!629934 () Bool)

(declare-fun e!360209 () Bool)

(assert (=> b!629934 (= e!360209 (not true))))

(declare-fun e!360210 () Bool)

(assert (=> b!629934 e!360210))

(declare-fun res!407332 () Bool)

(assert (=> b!629934 (=> (not res!407332) (not e!360210))))

(declare-fun lt!290990 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6688 0))(
  ( (MissingZero!6688 (index!29038 (_ BitVec 32))) (Found!6688 (index!29039 (_ BitVec 32))) (Intermediate!6688 (undefined!7500 Bool) (index!29040 (_ BitVec 32)) (x!57802 (_ BitVec 32))) (Undefined!6688) (MissingVacant!6688 (index!29041 (_ BitVec 32))) )
))
(declare-fun lt!290989 () SeekEntryResult!6688)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38018 (_ BitVec 32)) SeekEntryResult!6688)

(assert (=> b!629934 (= res!407332 (= lt!290989 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290990 vacantSpotIndex!68 (select (store (arr!18241 a!2986) i!1108 k0!1786) j!136) (array!38019 (store (arr!18241 a!2986) i!1108 k0!1786) (size!18605 a!2986)) mask!3053)))))

(assert (=> b!629934 (= lt!290989 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290990 vacantSpotIndex!68 (select (arr!18241 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21120 0))(
  ( (Unit!21121) )
))
(declare-fun lt!290987 () Unit!21120)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38018 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21120)

(assert (=> b!629934 (= lt!290987 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290990 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629934 (= lt!290990 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629935 () Bool)

(assert (=> b!629935 (= e!360208 e!360207)))

(declare-fun res!407323 () Bool)

(assert (=> b!629935 (=> (not res!407323) (not e!360207))))

(declare-fun lt!290991 () SeekEntryResult!6688)

(assert (=> b!629935 (= res!407323 (or (= lt!290991 (MissingZero!6688 i!1108)) (= lt!290991 (MissingVacant!6688 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38018 (_ BitVec 32)) SeekEntryResult!6688)

(assert (=> b!629935 (= lt!290991 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629936 () Bool)

(declare-fun lt!290988 () SeekEntryResult!6688)

(assert (=> b!629936 (= e!360210 (= lt!290988 lt!290989))))

(declare-fun b!629937 () Bool)

(assert (=> b!629937 (= e!360207 e!360209)))

(declare-fun res!407333 () Bool)

(assert (=> b!629937 (=> (not res!407333) (not e!360209))))

(assert (=> b!629937 (= res!407333 (and (= lt!290988 (Found!6688 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18241 a!2986) index!984) (select (arr!18241 a!2986) j!136))) (not (= (select (arr!18241 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629937 (= lt!290988 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18241 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629938 () Bool)

(declare-fun res!407331 () Bool)

(assert (=> b!629938 (=> (not res!407331) (not e!360207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38018 (_ BitVec 32)) Bool)

(assert (=> b!629938 (= res!407331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629939 () Bool)

(declare-fun res!407325 () Bool)

(assert (=> b!629939 (=> (not res!407325) (not e!360208))))

(assert (=> b!629939 (= res!407325 (validKeyInArray!0 k0!1786))))

(assert (= (and start!56924 res!407324) b!629932))

(assert (= (and b!629932 res!407328) b!629933))

(assert (= (and b!629933 res!407326) b!629939))

(assert (= (and b!629939 res!407325) b!629930))

(assert (= (and b!629930 res!407327) b!629935))

(assert (= (and b!629935 res!407323) b!629938))

(assert (= (and b!629938 res!407331) b!629929))

(assert (= (and b!629929 res!407329) b!629931))

(assert (= (and b!629931 res!407330) b!629937))

(assert (= (and b!629937 res!407333) b!629934))

(assert (= (and b!629934 res!407332) b!629936))

(declare-fun m!605003 () Bool)

(assert (=> b!629930 m!605003))

(declare-fun m!605005 () Bool)

(assert (=> b!629938 m!605005))

(declare-fun m!605007 () Bool)

(assert (=> start!56924 m!605007))

(declare-fun m!605009 () Bool)

(assert (=> start!56924 m!605009))

(declare-fun m!605011 () Bool)

(assert (=> b!629931 m!605011))

(declare-fun m!605013 () Bool)

(assert (=> b!629931 m!605013))

(declare-fun m!605015 () Bool)

(assert (=> b!629931 m!605015))

(declare-fun m!605017 () Bool)

(assert (=> b!629934 m!605017))

(declare-fun m!605019 () Bool)

(assert (=> b!629934 m!605019))

(declare-fun m!605021 () Bool)

(assert (=> b!629934 m!605021))

(assert (=> b!629934 m!605013))

(assert (=> b!629934 m!605021))

(declare-fun m!605023 () Bool)

(assert (=> b!629934 m!605023))

(declare-fun m!605025 () Bool)

(assert (=> b!629934 m!605025))

(assert (=> b!629934 m!605017))

(declare-fun m!605027 () Bool)

(assert (=> b!629934 m!605027))

(assert (=> b!629933 m!605021))

(assert (=> b!629933 m!605021))

(declare-fun m!605029 () Bool)

(assert (=> b!629933 m!605029))

(declare-fun m!605031 () Bool)

(assert (=> b!629937 m!605031))

(assert (=> b!629937 m!605021))

(assert (=> b!629937 m!605021))

(declare-fun m!605033 () Bool)

(assert (=> b!629937 m!605033))

(declare-fun m!605035 () Bool)

(assert (=> b!629929 m!605035))

(declare-fun m!605037 () Bool)

(assert (=> b!629935 m!605037))

(declare-fun m!605039 () Bool)

(assert (=> b!629939 m!605039))

(check-sat (not b!629933) (not b!629930) (not b!629934) (not b!629939) (not start!56924) (not b!629929) (not b!629937) (not b!629935) (not b!629938))
(check-sat)
