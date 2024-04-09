; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55624 () Bool)

(assert start!55624)

(declare-fun b!609829 () Bool)

(declare-fun e!349308 () Bool)

(declare-fun e!349306 () Bool)

(assert (=> b!609829 (= e!349308 e!349306)))

(declare-fun res!392443 () Bool)

(assert (=> b!609829 (=> (not res!392443) (not e!349306))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37318 0))(
  ( (array!37319 (arr!17906 (Array (_ BitVec 32) (_ BitVec 64))) (size!18270 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37318)

(assert (=> b!609829 (= res!392443 (= (select (store (arr!17906 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!278961 () array!37318)

(assert (=> b!609829 (= lt!278961 (array!37319 (store (arr!17906 a!2986) i!1108 k!1786) (size!18270 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!349309 () Bool)

(declare-fun b!609830 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609830 (= e!349309 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) index!984))))

(declare-fun b!609831 () Bool)

(declare-fun res!392431 () Bool)

(declare-fun e!349311 () Bool)

(assert (=> b!609831 (=> (not res!392431) (not e!349311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609831 (= res!392431 (validKeyInArray!0 k!1786))))

(declare-fun b!609832 () Bool)

(declare-fun e!349300 () Bool)

(assert (=> b!609832 (= e!349300 (or (bvsgt #b00000000000000000000000000000000 (size!18270 a!2986)) (bvslt (size!18270 a!2986) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!12000 0))(
  ( (Nil!11997) (Cons!11996 (h!13041 (_ BitVec 64)) (t!18236 List!12000)) )
))
(declare-fun arrayNoDuplicates!0 (array!37318 (_ BitVec 32) List!12000) Bool)

(assert (=> b!609832 (arrayNoDuplicates!0 lt!278961 #b00000000000000000000000000000000 Nil!11997)))

(declare-datatypes ((Unit!19546 0))(
  ( (Unit!19547) )
))
(declare-fun lt!278966 () Unit!19546)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12000) Unit!19546)

(assert (=> b!609832 (= lt!278966 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11997))))

(assert (=> b!609832 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278968 () Unit!19546)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19546)

(assert (=> b!609832 (= lt!278968 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349302 () Bool)

(assert (=> b!609832 e!349302))

(declare-fun res!392429 () Bool)

(assert (=> b!609832 (=> (not res!392429) (not e!349302))))

(assert (=> b!609832 (= res!392429 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136))))

(declare-fun b!609833 () Bool)

(declare-fun e!349304 () Bool)

(assert (=> b!609833 (= e!349304 e!349309)))

(declare-fun res!392435 () Bool)

(assert (=> b!609833 (=> (not res!392435) (not e!349309))))

(assert (=> b!609833 (= res!392435 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136))))

(declare-fun b!609834 () Bool)

(assert (=> b!609834 (= e!349311 e!349308)))

(declare-fun res!392439 () Bool)

(assert (=> b!609834 (=> (not res!392439) (not e!349308))))

(declare-datatypes ((SeekEntryResult!6353 0))(
  ( (MissingZero!6353 (index!27686 (_ BitVec 32))) (Found!6353 (index!27687 (_ BitVec 32))) (Intermediate!6353 (undefined!7165 Bool) (index!27688 (_ BitVec 32)) (x!56511 (_ BitVec 32))) (Undefined!6353) (MissingVacant!6353 (index!27689 (_ BitVec 32))) )
))
(declare-fun lt!278960 () SeekEntryResult!6353)

(assert (=> b!609834 (= res!392439 (or (= lt!278960 (MissingZero!6353 i!1108)) (= lt!278960 (MissingVacant!6353 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37318 (_ BitVec 32)) SeekEntryResult!6353)

(assert (=> b!609834 (= lt!278960 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609835 () Bool)

(declare-fun e!349305 () Bool)

(declare-fun lt!278972 () SeekEntryResult!6353)

(declare-fun lt!278967 () SeekEntryResult!6353)

(assert (=> b!609835 (= e!349305 (= lt!278972 lt!278967))))

(declare-fun b!609836 () Bool)

(declare-fun e!349310 () Unit!19546)

(declare-fun Unit!19548 () Unit!19546)

(assert (=> b!609836 (= e!349310 Unit!19548)))

(assert (=> b!609836 false))

(declare-fun b!609837 () Bool)

(declare-fun e!349301 () Bool)

(assert (=> b!609837 (= e!349301 e!349304)))

(declare-fun res!392447 () Bool)

(assert (=> b!609837 (=> res!392447 e!349304)))

(declare-fun lt!278963 () (_ BitVec 64))

(declare-fun lt!278970 () (_ BitVec 64))

(assert (=> b!609837 (= res!392447 (or (not (= (select (arr!17906 a!2986) j!136) lt!278963)) (not (= (select (arr!17906 a!2986) j!136) lt!278970)) (bvsge j!136 index!984)))))

(declare-fun b!609838 () Bool)

(declare-fun res!392445 () Bool)

(assert (=> b!609838 (=> (not res!392445) (not e!349311))))

(assert (=> b!609838 (= res!392445 (validKeyInArray!0 (select (arr!17906 a!2986) j!136)))))

(declare-fun b!609840 () Bool)

(declare-fun e!349298 () Bool)

(declare-fun e!349303 () Bool)

(assert (=> b!609840 (= e!349298 (not e!349303))))

(declare-fun res!392432 () Bool)

(assert (=> b!609840 (=> res!392432 e!349303)))

(declare-fun lt!278971 () SeekEntryResult!6353)

(assert (=> b!609840 (= res!392432 (not (= lt!278971 (Found!6353 index!984))))))

(declare-fun lt!278964 () Unit!19546)

(assert (=> b!609840 (= lt!278964 e!349310)))

(declare-fun c!69067 () Bool)

(assert (=> b!609840 (= c!69067 (= lt!278971 Undefined!6353))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37318 (_ BitVec 32)) SeekEntryResult!6353)

(assert (=> b!609840 (= lt!278971 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278963 lt!278961 mask!3053))))

(assert (=> b!609840 e!349305))

(declare-fun res!392433 () Bool)

(assert (=> b!609840 (=> (not res!392433) (not e!349305))))

(declare-fun lt!278973 () (_ BitVec 32))

(assert (=> b!609840 (= res!392433 (= lt!278967 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278973 vacantSpotIndex!68 lt!278963 lt!278961 mask!3053)))))

(assert (=> b!609840 (= lt!278967 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278973 vacantSpotIndex!68 (select (arr!17906 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!609840 (= lt!278963 (select (store (arr!17906 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278965 () Unit!19546)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37318 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19546)

(assert (=> b!609840 (= lt!278965 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278973 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609840 (= lt!278973 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609841 () Bool)

(declare-fun res!392441 () Bool)

(assert (=> b!609841 (=> (not res!392441) (not e!349308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37318 (_ BitVec 32)) Bool)

(assert (=> b!609841 (= res!392441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609842 () Bool)

(declare-fun res!392430 () Bool)

(assert (=> b!609842 (=> (not res!392430) (not e!349308))))

(assert (=> b!609842 (= res!392430 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11997))))

(declare-fun b!609843 () Bool)

(assert (=> b!609843 (= e!349302 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) index!984))))

(declare-fun b!609844 () Bool)

(declare-fun Unit!19549 () Unit!19546)

(assert (=> b!609844 (= e!349310 Unit!19549)))

(declare-fun b!609845 () Bool)

(declare-fun e!349299 () Unit!19546)

(declare-fun Unit!19550 () Unit!19546)

(assert (=> b!609845 (= e!349299 Unit!19550)))

(declare-fun b!609846 () Bool)

(declare-fun res!392442 () Bool)

(assert (=> b!609846 (=> (not res!392442) (not e!349311))))

(assert (=> b!609846 (= res!392442 (and (= (size!18270 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18270 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18270 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609847 () Bool)

(declare-fun Unit!19551 () Unit!19546)

(assert (=> b!609847 (= e!349299 Unit!19551)))

(declare-fun lt!278959 () Unit!19546)

(assert (=> b!609847 (= lt!278959 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278961 (select (arr!17906 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609847 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278962 () Unit!19546)

(assert (=> b!609847 (= lt!278962 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11997))))

(assert (=> b!609847 (arrayNoDuplicates!0 lt!278961 #b00000000000000000000000000000000 Nil!11997)))

(declare-fun lt!278969 () Unit!19546)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37318 (_ BitVec 32) (_ BitVec 32)) Unit!19546)

(assert (=> b!609847 (= lt!278969 (lemmaNoDuplicateFromThenFromBigger!0 lt!278961 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609847 (arrayNoDuplicates!0 lt!278961 j!136 Nil!11997)))

(declare-fun lt!278958 () Unit!19546)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37318 (_ BitVec 64) (_ BitVec 32) List!12000) Unit!19546)

(assert (=> b!609847 (= lt!278958 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136 Nil!11997))))

(assert (=> b!609847 false))

(declare-fun b!609848 () Bool)

(declare-fun res!392444 () Bool)

(assert (=> b!609848 (=> (not res!392444) (not e!349308))))

(assert (=> b!609848 (= res!392444 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17906 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609849 () Bool)

(assert (=> b!609849 (= e!349306 e!349298)))

(declare-fun res!392436 () Bool)

(assert (=> b!609849 (=> (not res!392436) (not e!349298))))

(assert (=> b!609849 (= res!392436 (and (= lt!278972 (Found!6353 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17906 a!2986) index!984) (select (arr!17906 a!2986) j!136))) (not (= (select (arr!17906 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609849 (= lt!278972 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17906 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609850 () Bool)

(declare-fun e!349312 () Bool)

(assert (=> b!609850 (= e!349303 e!349312)))

(declare-fun res!392438 () Bool)

(assert (=> b!609850 (=> res!392438 e!349312)))

(assert (=> b!609850 (= res!392438 (or (not (= (select (arr!17906 a!2986) j!136) lt!278963)) (not (= (select (arr!17906 a!2986) j!136) lt!278970))))))

(assert (=> b!609850 e!349301))

(declare-fun res!392437 () Bool)

(assert (=> b!609850 (=> (not res!392437) (not e!349301))))

(assert (=> b!609850 (= res!392437 (= lt!278970 (select (arr!17906 a!2986) j!136)))))

(assert (=> b!609850 (= lt!278970 (select (store (arr!17906 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609851 () Bool)

(assert (=> b!609851 (= e!349312 e!349300)))

(declare-fun res!392440 () Bool)

(assert (=> b!609851 (=> res!392440 e!349300)))

(assert (=> b!609851 (= res!392440 (bvsge index!984 j!136))))

(declare-fun lt!278957 () Unit!19546)

(assert (=> b!609851 (= lt!278957 e!349299)))

(declare-fun c!69068 () Bool)

(assert (=> b!609851 (= c!69068 (bvslt j!136 index!984))))

(declare-fun res!392434 () Bool)

(assert (=> start!55624 (=> (not res!392434) (not e!349311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55624 (= res!392434 (validMask!0 mask!3053))))

(assert (=> start!55624 e!349311))

(assert (=> start!55624 true))

(declare-fun array_inv!13680 (array!37318) Bool)

(assert (=> start!55624 (array_inv!13680 a!2986)))

(declare-fun b!609839 () Bool)

(declare-fun res!392446 () Bool)

(assert (=> b!609839 (=> (not res!392446) (not e!349311))))

(assert (=> b!609839 (= res!392446 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!55624 res!392434) b!609846))

(assert (= (and b!609846 res!392442) b!609838))

(assert (= (and b!609838 res!392445) b!609831))

(assert (= (and b!609831 res!392431) b!609839))

(assert (= (and b!609839 res!392446) b!609834))

(assert (= (and b!609834 res!392439) b!609841))

(assert (= (and b!609841 res!392441) b!609842))

(assert (= (and b!609842 res!392430) b!609848))

(assert (= (and b!609848 res!392444) b!609829))

(assert (= (and b!609829 res!392443) b!609849))

(assert (= (and b!609849 res!392436) b!609840))

(assert (= (and b!609840 res!392433) b!609835))

(assert (= (and b!609840 c!69067) b!609836))

(assert (= (and b!609840 (not c!69067)) b!609844))

(assert (= (and b!609840 (not res!392432)) b!609850))

(assert (= (and b!609850 res!392437) b!609837))

(assert (= (and b!609837 (not res!392447)) b!609833))

(assert (= (and b!609833 res!392435) b!609830))

(assert (= (and b!609850 (not res!392438)) b!609851))

(assert (= (and b!609851 c!69068) b!609847))

(assert (= (and b!609851 (not c!69068)) b!609845))

(assert (= (and b!609851 (not res!392440)) b!609832))

(assert (= (and b!609832 res!392429) b!609843))

(declare-fun m!586349 () Bool)

(assert (=> b!609849 m!586349))

(declare-fun m!586351 () Bool)

(assert (=> b!609849 m!586351))

(assert (=> b!609849 m!586351))

(declare-fun m!586353 () Bool)

(assert (=> b!609849 m!586353))

(declare-fun m!586355 () Bool)

(assert (=> b!609839 m!586355))

(declare-fun m!586357 () Bool)

(assert (=> b!609840 m!586357))

(declare-fun m!586359 () Bool)

(assert (=> b!609840 m!586359))

(declare-fun m!586361 () Bool)

(assert (=> b!609840 m!586361))

(assert (=> b!609840 m!586351))

(declare-fun m!586363 () Bool)

(assert (=> b!609840 m!586363))

(assert (=> b!609840 m!586351))

(declare-fun m!586365 () Bool)

(assert (=> b!609840 m!586365))

(declare-fun m!586367 () Bool)

(assert (=> b!609840 m!586367))

(declare-fun m!586369 () Bool)

(assert (=> b!609840 m!586369))

(assert (=> b!609843 m!586351))

(assert (=> b!609843 m!586351))

(declare-fun m!586371 () Bool)

(assert (=> b!609843 m!586371))

(declare-fun m!586373 () Bool)

(assert (=> b!609842 m!586373))

(assert (=> b!609837 m!586351))

(assert (=> b!609838 m!586351))

(assert (=> b!609838 m!586351))

(declare-fun m!586375 () Bool)

(assert (=> b!609838 m!586375))

(assert (=> b!609829 m!586363))

(declare-fun m!586377 () Bool)

(assert (=> b!609829 m!586377))

(assert (=> b!609832 m!586351))

(declare-fun m!586379 () Bool)

(assert (=> b!609832 m!586379))

(assert (=> b!609832 m!586351))

(declare-fun m!586381 () Bool)

(assert (=> b!609832 m!586381))

(declare-fun m!586383 () Bool)

(assert (=> b!609832 m!586383))

(assert (=> b!609832 m!586351))

(declare-fun m!586385 () Bool)

(assert (=> b!609832 m!586385))

(assert (=> b!609832 m!586351))

(declare-fun m!586387 () Bool)

(assert (=> b!609832 m!586387))

(assert (=> b!609830 m!586351))

(assert (=> b!609830 m!586351))

(assert (=> b!609830 m!586371))

(declare-fun m!586389 () Bool)

(assert (=> b!609848 m!586389))

(declare-fun m!586391 () Bool)

(assert (=> b!609847 m!586391))

(assert (=> b!609847 m!586351))

(assert (=> b!609847 m!586351))

(declare-fun m!586393 () Bool)

(assert (=> b!609847 m!586393))

(assert (=> b!609847 m!586351))

(declare-fun m!586395 () Bool)

(assert (=> b!609847 m!586395))

(assert (=> b!609847 m!586379))

(declare-fun m!586397 () Bool)

(assert (=> b!609847 m!586397))

(assert (=> b!609847 m!586351))

(declare-fun m!586399 () Bool)

(assert (=> b!609847 m!586399))

(assert (=> b!609847 m!586383))

(assert (=> b!609850 m!586351))

(assert (=> b!609850 m!586363))

(declare-fun m!586401 () Bool)

(assert (=> b!609850 m!586401))

(declare-fun m!586403 () Bool)

(assert (=> b!609831 m!586403))

(declare-fun m!586405 () Bool)

(assert (=> b!609841 m!586405))

(declare-fun m!586407 () Bool)

(assert (=> start!55624 m!586407))

(declare-fun m!586409 () Bool)

(assert (=> start!55624 m!586409))

(declare-fun m!586411 () Bool)

(assert (=> b!609834 m!586411))

(assert (=> b!609833 m!586351))

(assert (=> b!609833 m!586351))

(assert (=> b!609833 m!586387))

(push 1)

(assert (not b!609843))

(assert (not b!609849))

(assert (not b!609833))

(assert (not b!609842))

(assert (not b!609847))

(assert (not b!609831))

(assert (not b!609841))

(assert (not b!609838))

(assert (not b!609832))

(assert (not b!609840))

(assert (not b!609830))

(assert (not start!55624))

(assert (not b!609839))

(assert (not b!609834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!87969 () Bool)

(declare-fun res!392461 () Bool)

(declare-fun e!349338 () Bool)

(assert (=> d!87969 (=> res!392461 e!349338)))

(assert (=> d!87969 (= res!392461 (= (select (arr!17906 lt!278961) index!984) (select (arr!17906 a!2986) j!136)))))

(assert (=> d!87969 (= (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) index!984) e!349338)))

(declare-fun b!609889 () Bool)

(declare-fun e!349339 () Bool)

(assert (=> b!609889 (= e!349338 e!349339)))

(declare-fun res!392462 () Bool)

(assert (=> b!609889 (=> (not res!392462) (not e!349339))))

(assert (=> b!609889 (= res!392462 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18270 lt!278961)))))

(declare-fun b!609890 () Bool)

(assert (=> b!609890 (= e!349339 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87969 (not res!392461)) b!609889))

(assert (= (and b!609889 res!392462) b!609890))

(declare-fun m!586435 () Bool)

(assert (=> d!87969 m!586435))

(assert (=> b!609890 m!586351))

(declare-fun m!586437 () Bool)

(assert (=> b!609890 m!586437))

(assert (=> b!609843 d!87969))

(declare-fun d!87971 () Bool)

(declare-fun res!392463 () Bool)

(declare-fun e!349340 () Bool)

(assert (=> d!87971 (=> res!392463 e!349340)))

(assert (=> d!87971 (= res!392463 (= (select (arr!17906 lt!278961) j!136) (select (arr!17906 a!2986) j!136)))))

(assert (=> d!87971 (= (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136) e!349340)))

(declare-fun b!609891 () Bool)

(declare-fun e!349341 () Bool)

(assert (=> b!609891 (= e!349340 e!349341)))

(declare-fun res!392464 () Bool)

(assert (=> b!609891 (=> (not res!392464) (not e!349341))))

(assert (=> b!609891 (= res!392464 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18270 lt!278961)))))

(declare-fun b!609892 () Bool)

(assert (=> b!609892 (= e!349341 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87971 (not res!392463)) b!609891))

(assert (= (and b!609891 res!392464) b!609892))

(declare-fun m!586439 () Bool)

(assert (=> d!87971 m!586439))

(assert (=> b!609892 m!586351))

(declare-fun m!586441 () Bool)

(assert (=> b!609892 m!586441))

(assert (=> b!609833 d!87971))

(declare-fun e!349357 () SeekEntryResult!6353)

(declare-fun lt!279000 () SeekEntryResult!6353)

(declare-fun b!609923 () Bool)

(assert (=> b!609923 (= e!349357 (seekKeyOrZeroReturnVacant!0 (x!56511 lt!279000) (index!27688 lt!279000) (index!27688 lt!279000) k!1786 a!2986 mask!3053))))

(declare-fun b!609924 () Bool)

(declare-fun e!349358 () SeekEntryResult!6353)

(assert (=> b!609924 (= e!349358 (Found!6353 (index!27688 lt!279000)))))

(declare-fun b!609925 () Bool)

(assert (=> b!609925 (= e!349357 (MissingZero!6353 (index!27688 lt!279000)))))

(declare-fun d!87973 () Bool)

(declare-fun lt!278999 () SeekEntryResult!6353)

(assert (=> d!87973 (and (or (is-Undefined!6353 lt!278999) (not (is-Found!6353 lt!278999)) (and (bvsge (index!27687 lt!278999) #b00000000000000000000000000000000) (bvslt (index!27687 lt!278999) (size!18270 a!2986)))) (or (is-Undefined!6353 lt!278999) (is-Found!6353 lt!278999) (not (is-MissingZero!6353 lt!278999)) (and (bvsge (index!27686 lt!278999) #b00000000000000000000000000000000) (bvslt (index!27686 lt!278999) (size!18270 a!2986)))) (or (is-Undefined!6353 lt!278999) (is-Found!6353 lt!278999) (is-MissingZero!6353 lt!278999) (not (is-MissingVacant!6353 lt!278999)) (and (bvsge (index!27689 lt!278999) #b00000000000000000000000000000000) (bvslt (index!27689 lt!278999) (size!18270 a!2986)))) (or (is-Undefined!6353 lt!278999) (ite (is-Found!6353 lt!278999) (= (select (arr!17906 a!2986) (index!27687 lt!278999)) k!1786) (ite (is-MissingZero!6353 lt!278999) (= (select (arr!17906 a!2986) (index!27686 lt!278999)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6353 lt!278999) (= (select (arr!17906 a!2986) (index!27689 lt!278999)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!349359 () SeekEntryResult!6353)

(assert (=> d!87973 (= lt!278999 e!349359)))

(declare-fun c!69097 () Bool)

(assert (=> d!87973 (= c!69097 (and (is-Intermediate!6353 lt!279000) (undefined!7165 lt!279000)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37318 (_ BitVec 32)) SeekEntryResult!6353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87973 (= lt!279000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87973 (validMask!0 mask!3053)))

(assert (=> d!87973 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!278999)))

(declare-fun b!609926 () Bool)

(assert (=> b!609926 (= e!349359 Undefined!6353)))

(declare-fun b!609927 () Bool)

(assert (=> b!609927 (= e!349359 e!349358)))

(declare-fun lt!278998 () (_ BitVec 64))

(assert (=> b!609927 (= lt!278998 (select (arr!17906 a!2986) (index!27688 lt!279000)))))

(declare-fun c!69096 () Bool)

(assert (=> b!609927 (= c!69096 (= lt!278998 k!1786))))

(declare-fun b!609928 () Bool)

(declare-fun c!69098 () Bool)

(assert (=> b!609928 (= c!69098 (= lt!278998 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609928 (= e!349358 e!349357)))

(assert (= (and d!87973 c!69097) b!609926))

(assert (= (and d!87973 (not c!69097)) b!609927))

(assert (= (and b!609927 c!69096) b!609924))

(assert (= (and b!609927 (not c!69096)) b!609928))

(assert (= (and b!609928 c!69098) b!609925))

(assert (= (and b!609928 (not c!69098)) b!609923))

(declare-fun m!586453 () Bool)

(assert (=> b!609923 m!586453))

(declare-fun m!586455 () Bool)

(assert (=> d!87973 m!586455))

(declare-fun m!586457 () Bool)

(assert (=> d!87973 m!586457))

(assert (=> d!87973 m!586407))

(declare-fun m!586459 () Bool)

(assert (=> d!87973 m!586459))

(declare-fun m!586461 () Bool)

(assert (=> d!87973 m!586461))

(assert (=> d!87973 m!586455))

(declare-fun m!586463 () Bool)

(assert (=> d!87973 m!586463))

(declare-fun m!586465 () Bool)

(assert (=> b!609927 m!586465))

(assert (=> b!609834 d!87973))

(declare-fun bm!33107 () Bool)

(declare-fun call!33110 () Bool)

(declare-fun c!69101 () Bool)

(assert (=> bm!33107 (= call!33110 (arrayNoDuplicates!0 lt!278961 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69101 (Cons!11996 (select (arr!17906 lt!278961) #b00000000000000000000000000000000) Nil!11997) Nil!11997)))))

(declare-fun b!609945 () Bool)

(declare-fun e!349377 () Bool)

(assert (=> b!609945 (= e!349377 call!33110)))

(declare-fun b!609947 () Bool)

(declare-fun e!349374 () Bool)

(assert (=> b!609947 (= e!349374 e!349377)))

(assert (=> b!609947 (= c!69101 (validKeyInArray!0 (select (arr!17906 lt!278961) #b00000000000000000000000000000000)))))

(declare-fun b!609948 () Bool)

(declare-fun e!349376 () Bool)

(assert (=> b!609948 (= e!349376 e!349374)))

(declare-fun res!392479 () Bool)

(assert (=> b!609948 (=> (not res!392479) (not e!349374))))

(declare-fun e!349375 () Bool)

(assert (=> b!609948 (= res!392479 (not e!349375))))

(declare-fun res!392477 () Bool)

(assert (=> b!609948 (=> (not res!392477) (not e!349375))))

(assert (=> b!609948 (= res!392477 (validKeyInArray!0 (select (arr!17906 lt!278961) #b00000000000000000000000000000000)))))

(declare-fun b!609949 () Bool)

(declare-fun contains!3042 (List!12000 (_ BitVec 64)) Bool)

(assert (=> b!609949 (= e!349375 (contains!3042 Nil!11997 (select (arr!17906 lt!278961) #b00000000000000000000000000000000)))))

(declare-fun d!87985 () Bool)

(declare-fun res!392478 () Bool)

(assert (=> d!87985 (=> res!392478 e!349376)))

(assert (=> d!87985 (= res!392478 (bvsge #b00000000000000000000000000000000 (size!18270 lt!278961)))))

(assert (=> d!87985 (= (arrayNoDuplicates!0 lt!278961 #b00000000000000000000000000000000 Nil!11997) e!349376)))

(declare-fun b!609946 () Bool)

(assert (=> b!609946 (= e!349377 call!33110)))

(assert (= (and d!87985 (not res!392478)) b!609948))

(assert (= (and b!609948 res!392477) b!609949))

(assert (= (and b!609948 res!392479) b!609947))

(assert (= (and b!609947 c!69101) b!609946))

(assert (= (and b!609947 (not c!69101)) b!609945))

(assert (= (or b!609946 b!609945) bm!33107))

(declare-fun m!586475 () Bool)

(assert (=> bm!33107 m!586475))

(declare-fun m!586477 () Bool)

(assert (=> bm!33107 m!586477))

(assert (=> b!609947 m!586475))

(assert (=> b!609947 m!586475))

(declare-fun m!586479 () Bool)

(assert (=> b!609947 m!586479))

(assert (=> b!609948 m!586475))

(assert (=> b!609948 m!586475))

(assert (=> b!609948 m!586479))

(assert (=> b!609949 m!586475))

(assert (=> b!609949 m!586475))

(declare-fun m!586485 () Bool)

(assert (=> b!609949 m!586485))

(assert (=> b!609847 d!87985))

(declare-fun d!87993 () Bool)

(assert (=> d!87993 (arrayNoDuplicates!0 lt!278961 j!136 Nil!11997)))

(declare-fun lt!279015 () Unit!19546)

(declare-fun choose!39 (array!37318 (_ BitVec 32) (_ BitVec 32)) Unit!19546)

(assert (=> d!87993 (= lt!279015 (choose!39 lt!278961 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87993 (bvslt (size!18270 lt!278961) #b01111111111111111111111111111111)))

(assert (=> d!87993 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!278961 #b00000000000000000000000000000000 j!136) lt!279015)))

(declare-fun bs!18608 () Bool)

(assert (= bs!18608 d!87993))

(assert (=> bs!18608 m!586397))

(declare-fun m!586497 () Bool)

(assert (=> bs!18608 m!586497))

(assert (=> b!609847 d!87993))

(declare-fun d!87999 () Bool)

(declare-fun res!392486 () Bool)

(declare-fun e!349392 () Bool)

(assert (=> d!87999 (=> res!392486 e!349392)))

(assert (=> d!87999 (= res!392486 (= (select (arr!17906 lt!278961) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17906 a!2986) j!136)))))

(assert (=> d!87999 (= (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!349392)))

(declare-fun b!609972 () Bool)

(declare-fun e!349393 () Bool)

(assert (=> b!609972 (= e!349392 e!349393)))

(declare-fun res!392487 () Bool)

(assert (=> b!609972 (=> (not res!392487) (not e!349393))))

(assert (=> b!609972 (= res!392487 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18270 lt!278961)))))

(declare-fun b!609973 () Bool)

(assert (=> b!609973 (= e!349393 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87999 (not res!392486)) b!609972))

(assert (= (and b!609972 res!392487) b!609973))

(declare-fun m!586499 () Bool)

(assert (=> d!87999 m!586499))

(assert (=> b!609973 m!586351))

(declare-fun m!586501 () Bool)

(assert (=> b!609973 m!586501))

(assert (=> b!609847 d!87999))

(declare-fun d!88001 () Bool)

(declare-fun e!349408 () Bool)

(assert (=> d!88001 e!349408))

(declare-fun res!392499 () Bool)

(assert (=> d!88001 (=> (not res!392499) (not e!349408))))

(assert (=> d!88001 (= res!392499 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18270 a!2986))))))

(declare-fun lt!279025 () Unit!19546)

(declare-fun choose!41 (array!37318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12000) Unit!19546)

(assert (=> d!88001 (= lt!279025 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11997))))

(assert (=> d!88001 (bvslt (size!18270 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!88001 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11997) lt!279025)))

(declare-fun b!609991 () Bool)

(assert (=> b!609991 (= e!349408 (arrayNoDuplicates!0 (array!37319 (store (arr!17906 a!2986) i!1108 k!1786) (size!18270 a!2986)) #b00000000000000000000000000000000 Nil!11997))))

(assert (= (and d!88001 res!392499) b!609991))

(declare-fun m!586531 () Bool)

(assert (=> d!88001 m!586531))

(assert (=> b!609991 m!586363))

(declare-fun m!586533 () Bool)

(assert (=> b!609991 m!586533))

(assert (=> b!609847 d!88001))

(declare-fun d!88017 () Bool)

(assert (=> d!88017 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18270 lt!278961)) (not (= (select (arr!17906 lt!278961) j!136) (select (arr!17906 a!2986) j!136))))))

(declare-fun lt!279028 () Unit!19546)

(declare-fun choose!21 (array!37318 (_ BitVec 64) (_ BitVec 32) List!12000) Unit!19546)

(assert (=> d!88017 (= lt!279028 (choose!21 lt!278961 (select (arr!17906 a!2986) j!136) j!136 Nil!11997))))

(assert (=> d!88017 (bvslt (size!18270 lt!278961) #b01111111111111111111111111111111)))

(assert (=> d!88017 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278961 (select (arr!17906 a!2986) j!136) j!136 Nil!11997) lt!279028)))

(declare-fun bs!18610 () Bool)

(assert (= bs!18610 d!88017))

(assert (=> bs!18610 m!586439))

(assert (=> bs!18610 m!586351))

(declare-fun m!586535 () Bool)

(assert (=> bs!18610 m!586535))

(assert (=> b!609847 d!88017))

(declare-fun d!88019 () Bool)

(assert (=> d!88019 (arrayContainsKey!0 lt!278961 (select (arr!17906 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279031 () Unit!19546)

(declare-fun choose!114 (array!37318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19546)

(assert (=> d!88019 (= lt!279031 (choose!114 lt!278961 (select (arr!17906 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!88019 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!88019 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278961 (select (arr!17906 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279031)))

(declare-fun bs!18611 () Bool)

(assert (= bs!18611 d!88019))

(assert (=> bs!18611 m!586351))

(assert (=> bs!18611 m!586395))

(assert (=> bs!18611 m!586351))

(declare-fun m!586537 () Bool)

(assert (=> bs!18611 m!586537))

(assert (=> b!609847 d!88019))

(declare-fun bm!33110 () Bool)

(declare-fun c!69115 () Bool)

(declare-fun call!33113 () Bool)

(assert (=> bm!33110 (= call!33113 (arrayNoDuplicates!0 lt!278961 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69115 (Cons!11996 (select (arr!17906 lt!278961) j!136) Nil!11997) Nil!11997)))))

(declare-fun b!610000 () Bool)

(declare-fun e!349418 () Bool)

(assert (=> b!610000 (= e!349418 call!33113)))

(declare-fun b!610002 () Bool)

(declare-fun e!349415 () Bool)

(assert (=> b!610002 (= e!349415 e!349418)))

(assert (=> b!610002 (= c!69115 (validKeyInArray!0 (select (arr!17906 lt!278961) j!136)))))

(declare-fun b!610003 () Bool)

(declare-fun e!349417 () Bool)

(assert (=> b!610003 (= e!349417 e!349415)))

(declare-fun res!392506 () Bool)

(assert (=> b!610003 (=> (not res!392506) (not e!349415))))

(declare-fun e!349416 () Bool)

(assert (=> b!610003 (= res!392506 (not e!349416))))

(declare-fun res!392504 () Bool)

(assert (=> b!610003 (=> (not res!392504) (not e!349416))))

(assert (=> b!610003 (= res!392504 (validKeyInArray!0 (select (arr!17906 lt!278961) j!136)))))

(declare-fun b!610004 () Bool)

(assert (=> b!610004 (= e!349416 (contains!3042 Nil!11997 (select (arr!17906 lt!278961) j!136)))))

(declare-fun d!88021 () Bool)

(declare-fun res!392505 () Bool)

(assert (=> d!88021 (=> res!392505 e!349417)))

(assert (=> d!88021 (= res!392505 (bvsge j!136 (size!18270 lt!278961)))))

(assert (=> d!88021 (= (arrayNoDuplicates!0 lt!278961 j!136 Nil!11997) e!349417)))

(declare-fun b!610001 () Bool)

(assert (=> b!610001 (= e!349418 call!33113)))

(assert (= (and d!88021 (not res!392505)) b!610003))

(assert (= (and b!610003 res!392504) b!610004))

(assert (= (and b!610003 res!392506) b!610002))

(assert (= (and b!610002 c!69115) b!610001))

(assert (= (and b!610002 (not c!69115)) b!610000))

(assert (= (or b!610001 b!610000) bm!33110))

(assert (=> bm!33110 m!586439))

(declare-fun m!586539 () Bool)

(assert (=> bm!33110 m!586539))

(assert (=> b!610002 m!586439))

(assert (=> b!610002 m!586439))

(declare-fun m!586541 () Bool)

(assert (=> b!610002 m!586541))

(assert (=> b!610003 m!586439))

(assert (=> b!610003 m!586439))

(assert (=> b!610003 m!586541))

(assert (=> b!610004 m!586439))

(assert (=> b!610004 m!586439))

(declare-fun m!586543 () Bool)

(assert (=> b!610004 m!586543))

(assert (=> b!609847 d!88021))

(declare-fun d!88023 () Bool)

(assert (=> d!88023 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55624 d!88023))

(declare-fun d!88035 () Bool)

(assert (=> d!88035 (= (array_inv!13680 a!2986) (bvsge (size!18270 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55624 d!88035))

(declare-fun d!88037 () Bool)

(assert (=> d!88037 (= (validKeyInArray!0 (select (arr!17906 a!2986) j!136)) (and (not (= (select (arr!17906 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17906 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!609838 d!88037))

(declare-fun b!610074 () Bool)

(declare-fun e!349457 () SeekEntryResult!6353)

(assert (=> b!610074 (= e!349457 Undefined!6353)))

(declare-fun b!610076 () Bool)

(declare-fun e!349458 () SeekEntryResult!6353)

(assert (=> b!610076 (= e!349457 e!349458)))

(declare-fun c!69148 () Bool)

(declare-fun lt!279070 () (_ BitVec 64))

(assert (=> b!610076 (= c!69148 (= lt!279070 (select (arr!17906 a!2986) j!136)))))

(declare-fun b!610077 () Bool)

(declare-fun c!69149 () Bool)

(assert (=> b!610077 (= c!69149 (= lt!279070 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349459 () SeekEntryResult!6353)

(assert (=> b!610077 (= e!349458 e!349459)))

(declare-fun b!610078 () Bool)

(assert (=> b!610078 (= e!349458 (Found!6353 index!984))))

(declare-fun b!610079 () Bool)

(assert (=> b!610079 (= e!349459 (MissingVacant!6353 vacantSpotIndex!68))))

(declare-fun b!610075 () Bool)

(assert (=> b!610075 (= e!349459 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17906 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!279071 () SeekEntryResult!6353)

(declare-fun d!88039 () Bool)

(assert (=> d!88039 (and (or (is-Undefined!6353 lt!279071) (not (is-Found!6353 lt!279071)) (and (bvsge (index!27687 lt!279071) #b00000000000000000000000000000000) (bvslt (index!27687 lt!279071) (size!18270 a!2986)))) (or (is-Undefined!6353 lt!279071) (is-Found!6353 lt!279071) (not (is-MissingVacant!6353 lt!279071)) (not (= (index!27689 lt!279071) vacantSpotIndex!68)) (and (bvsge (index!27689 lt!279071) #b00000000000000000000000000000000) (bvslt (index!27689 lt!279071) (size!18270 a!2986)))) (or (is-Undefined!6353 lt!279071) (ite (is-Found!6353 lt!279071) (= (select (arr!17906 a!2986) (index!27687 lt!279071)) (select (arr!17906 a!2986) j!136)) (and (is-MissingVacant!6353 lt!279071) (= (index!27689 lt!279071) vacantSpotIndex!68) (= (select (arr!17906 a!2986) (index!27689 lt!279071)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88039 (= lt!279071 e!349457)))

(declare-fun c!69147 () Bool)

(assert (=> d!88039 (= c!69147 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88039 (= lt!279070 (select (arr!17906 a!2986) index!984))))

(assert (=> d!88039 (validMask!0 mask!3053)))

(assert (=> d!88039 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17906 a!2986) j!136) a!2986 mask!3053) lt!279071)))

(assert (= (and d!88039 c!69147) b!610074))

(assert (= (and d!88039 (not c!69147)) b!610076))

(assert (= (and b!610076 c!69148) b!610078))

(assert (= (and b!610076 (not c!69148)) b!610077))

(assert (= (and b!610077 c!69149) b!610079))

(assert (= (and b!610077 (not c!69149)) b!610075))

(assert (=> b!610075 m!586359))

(assert (=> b!610075 m!586359))

(assert (=> b!610075 m!586351))

(declare-fun m!586615 () Bool)

(assert (=> b!610075 m!586615))

