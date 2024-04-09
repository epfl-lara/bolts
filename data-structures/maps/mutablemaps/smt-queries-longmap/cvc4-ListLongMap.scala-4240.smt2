; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58564 () Bool)

(assert start!58564)

(declare-fun b!646309 () Bool)

(declare-fun e!370499 () Bool)

(declare-fun e!370495 () Bool)

(assert (=> b!646309 (= e!370499 e!370495)))

(declare-fun res!418887 () Bool)

(assert (=> b!646309 (=> res!418887 e!370495)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!299921 () (_ BitVec 64))

(declare-fun lt!299907 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38455 0))(
  ( (array!38456 (arr!18434 (Array (_ BitVec 32) (_ BitVec 64))) (size!18798 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38455)

(assert (=> b!646309 (= res!418887 (or (not (= (select (arr!18434 a!2986) j!136) lt!299921)) (not (= (select (arr!18434 a!2986) j!136) lt!299907)) (bvsge j!136 index!984)))))

(declare-fun b!646310 () Bool)

(declare-fun e!370501 () Bool)

(declare-fun e!370490 () Bool)

(assert (=> b!646310 (= e!370501 e!370490)))

(declare-fun res!418889 () Bool)

(assert (=> b!646310 (=> (not res!418889) (not e!370490))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!646310 (= res!418889 (= (select (store (arr!18434 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!299916 () array!38455)

(assert (=> b!646310 (= lt!299916 (array!38456 (store (arr!18434 a!2986) i!1108 k!1786) (size!18798 a!2986)))))

(declare-fun b!646311 () Bool)

(declare-fun e!370492 () Bool)

(declare-fun e!370496 () Bool)

(assert (=> b!646311 (= e!370492 (not e!370496))))

(declare-fun res!418892 () Bool)

(assert (=> b!646311 (=> res!418892 e!370496)))

(declare-datatypes ((SeekEntryResult!6881 0))(
  ( (MissingZero!6881 (index!29861 (_ BitVec 32))) (Found!6881 (index!29862 (_ BitVec 32))) (Intermediate!6881 (undefined!7693 Bool) (index!29863 (_ BitVec 32)) (x!58660 (_ BitVec 32))) (Undefined!6881) (MissingVacant!6881 (index!29864 (_ BitVec 32))) )
))
(declare-fun lt!299913 () SeekEntryResult!6881)

(assert (=> b!646311 (= res!418892 (not (= lt!299913 (Found!6881 index!984))))))

(declare-datatypes ((Unit!21958 0))(
  ( (Unit!21959) )
))
(declare-fun lt!299920 () Unit!21958)

(declare-fun e!370491 () Unit!21958)

(assert (=> b!646311 (= lt!299920 e!370491)))

(declare-fun c!74081 () Bool)

(assert (=> b!646311 (= c!74081 (= lt!299913 Undefined!6881))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38455 (_ BitVec 32)) SeekEntryResult!6881)

(assert (=> b!646311 (= lt!299913 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299921 lt!299916 mask!3053))))

(declare-fun e!370498 () Bool)

(assert (=> b!646311 e!370498))

(declare-fun res!418886 () Bool)

(assert (=> b!646311 (=> (not res!418886) (not e!370498))))

(declare-fun lt!299922 () (_ BitVec 32))

(declare-fun lt!299914 () SeekEntryResult!6881)

(assert (=> b!646311 (= res!418886 (= lt!299914 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299922 vacantSpotIndex!68 lt!299921 lt!299916 mask!3053)))))

(assert (=> b!646311 (= lt!299914 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299922 vacantSpotIndex!68 (select (arr!18434 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646311 (= lt!299921 (select (store (arr!18434 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299908 () Unit!21958)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38455 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21958)

(assert (=> b!646311 (= lt!299908 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299922 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646311 (= lt!299922 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646312 () Bool)

(declare-fun res!418897 () Bool)

(assert (=> b!646312 (=> (not res!418897) (not e!370501))))

(declare-datatypes ((List!12528 0))(
  ( (Nil!12525) (Cons!12524 (h!13569 (_ BitVec 64)) (t!18764 List!12528)) )
))
(declare-fun arrayNoDuplicates!0 (array!38455 (_ BitVec 32) List!12528) Bool)

(assert (=> b!646312 (= res!418897 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12525))))

(declare-fun b!646313 () Bool)

(declare-fun res!418894 () Bool)

(assert (=> b!646313 (=> (not res!418894) (not e!370501))))

(assert (=> b!646313 (= res!418894 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18434 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646314 () Bool)

(declare-fun res!418898 () Bool)

(assert (=> b!646314 (=> (not res!418898) (not e!370501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38455 (_ BitVec 32)) Bool)

(assert (=> b!646314 (= res!418898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646315 () Bool)

(declare-fun res!418891 () Bool)

(declare-fun e!370489 () Bool)

(assert (=> b!646315 (=> (not res!418891) (not e!370489))))

(assert (=> b!646315 (= res!418891 (and (= (size!18798 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18798 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18798 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646316 () Bool)

(declare-fun e!370497 () Bool)

(assert (=> b!646316 (= e!370496 e!370497)))

(declare-fun res!418884 () Bool)

(assert (=> b!646316 (=> res!418884 e!370497)))

(assert (=> b!646316 (= res!418884 (or (not (= (select (arr!18434 a!2986) j!136) lt!299921)) (not (= (select (arr!18434 a!2986) j!136) lt!299907))))))

(assert (=> b!646316 e!370499))

(declare-fun res!418893 () Bool)

(assert (=> b!646316 (=> (not res!418893) (not e!370499))))

(assert (=> b!646316 (= res!418893 (= lt!299907 (select (arr!18434 a!2986) j!136)))))

(assert (=> b!646316 (= lt!299907 (select (store (arr!18434 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!418885 () Bool)

(assert (=> start!58564 (=> (not res!418885) (not e!370489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58564 (= res!418885 (validMask!0 mask!3053))))

(assert (=> start!58564 e!370489))

(assert (=> start!58564 true))

(declare-fun array_inv!14208 (array!38455) Bool)

(assert (=> start!58564 (array_inv!14208 a!2986)))

(declare-fun b!646317 () Bool)

(declare-fun res!418883 () Bool)

(assert (=> b!646317 (=> (not res!418883) (not e!370489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646317 (= res!418883 (validKeyInArray!0 k!1786))))

(declare-fun b!646318 () Bool)

(declare-fun Unit!21960 () Unit!21958)

(assert (=> b!646318 (= e!370491 Unit!21960)))

(assert (=> b!646318 false))

(declare-fun b!646319 () Bool)

(assert (=> b!646319 (= e!370489 e!370501)))

(declare-fun res!418900 () Bool)

(assert (=> b!646319 (=> (not res!418900) (not e!370501))))

(declare-fun lt!299918 () SeekEntryResult!6881)

(assert (=> b!646319 (= res!418900 (or (= lt!299918 (MissingZero!6881 i!1108)) (= lt!299918 (MissingVacant!6881 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38455 (_ BitVec 32)) SeekEntryResult!6881)

(assert (=> b!646319 (= lt!299918 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646320 () Bool)

(declare-fun lt!299917 () SeekEntryResult!6881)

(assert (=> b!646320 (= e!370498 (= lt!299917 lt!299914))))

(declare-fun b!646321 () Bool)

(declare-fun e!370488 () Bool)

(declare-fun arrayContainsKey!0 (array!38455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646321 (= e!370488 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) index!984))))

(declare-fun e!370493 () Bool)

(declare-fun b!646322 () Bool)

(assert (=> b!646322 (= e!370493 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) index!984))))

(declare-fun b!646323 () Bool)

(declare-fun res!418888 () Bool)

(assert (=> b!646323 (=> (not res!418888) (not e!370489))))

(assert (=> b!646323 (= res!418888 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646324 () Bool)

(assert (=> b!646324 (= e!370495 e!370488)))

(declare-fun res!418901 () Bool)

(assert (=> b!646324 (=> (not res!418901) (not e!370488))))

(assert (=> b!646324 (= res!418901 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) j!136))))

(declare-fun b!646325 () Bool)

(declare-fun e!370494 () Bool)

(assert (=> b!646325 (= e!370494 (or (bvsge (size!18798 a!2986) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!18798 a!2986))))))

(assert (=> b!646325 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299915 () Unit!21958)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38455 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21958)

(assert (=> b!646325 (= lt!299915 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299916 (select (arr!18434 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!646325 e!370493))

(declare-fun res!418895 () Bool)

(assert (=> b!646325 (=> (not res!418895) (not e!370493))))

(assert (=> b!646325 (= res!418895 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) j!136))))

(declare-fun b!646326 () Bool)

(declare-fun Unit!21961 () Unit!21958)

(assert (=> b!646326 (= e!370491 Unit!21961)))

(declare-fun b!646327 () Bool)

(declare-fun e!370487 () Unit!21958)

(declare-fun Unit!21962 () Unit!21958)

(assert (=> b!646327 (= e!370487 Unit!21962)))

(declare-fun lt!299911 () Unit!21958)

(assert (=> b!646327 (= lt!299911 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299916 (select (arr!18434 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646327 (arrayContainsKey!0 lt!299916 (select (arr!18434 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299912 () Unit!21958)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38455 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12528) Unit!21958)

(assert (=> b!646327 (= lt!299912 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12525))))

(assert (=> b!646327 (arrayNoDuplicates!0 lt!299916 #b00000000000000000000000000000000 Nil!12525)))

(declare-fun lt!299919 () Unit!21958)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38455 (_ BitVec 32) (_ BitVec 32)) Unit!21958)

(assert (=> b!646327 (= lt!299919 (lemmaNoDuplicateFromThenFromBigger!0 lt!299916 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646327 (arrayNoDuplicates!0 lt!299916 j!136 Nil!12525)))

(declare-fun lt!299910 () Unit!21958)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38455 (_ BitVec 64) (_ BitVec 32) List!12528) Unit!21958)

(assert (=> b!646327 (= lt!299910 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299916 (select (arr!18434 a!2986) j!136) j!136 Nil!12525))))

(assert (=> b!646327 false))

(declare-fun b!646328 () Bool)

(assert (=> b!646328 (= e!370490 e!370492)))

(declare-fun res!418896 () Bool)

(assert (=> b!646328 (=> (not res!418896) (not e!370492))))

(assert (=> b!646328 (= res!418896 (and (= lt!299917 (Found!6881 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18434 a!2986) index!984) (select (arr!18434 a!2986) j!136))) (not (= (select (arr!18434 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646328 (= lt!299917 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18434 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646329 () Bool)

(assert (=> b!646329 (= e!370497 e!370494)))

(declare-fun res!418899 () Bool)

(assert (=> b!646329 (=> res!418899 e!370494)))

(assert (=> b!646329 (= res!418899 (bvsge index!984 j!136))))

(declare-fun lt!299909 () Unit!21958)

(assert (=> b!646329 (= lt!299909 e!370487)))

(declare-fun c!74080 () Bool)

(assert (=> b!646329 (= c!74080 (bvslt j!136 index!984))))

(declare-fun b!646330 () Bool)

(declare-fun Unit!21963 () Unit!21958)

(assert (=> b!646330 (= e!370487 Unit!21963)))

(declare-fun b!646331 () Bool)

(declare-fun res!418890 () Bool)

(assert (=> b!646331 (=> (not res!418890) (not e!370489))))

(assert (=> b!646331 (= res!418890 (validKeyInArray!0 (select (arr!18434 a!2986) j!136)))))

(assert (= (and start!58564 res!418885) b!646315))

(assert (= (and b!646315 res!418891) b!646331))

(assert (= (and b!646331 res!418890) b!646317))

(assert (= (and b!646317 res!418883) b!646323))

(assert (= (and b!646323 res!418888) b!646319))

(assert (= (and b!646319 res!418900) b!646314))

(assert (= (and b!646314 res!418898) b!646312))

(assert (= (and b!646312 res!418897) b!646313))

(assert (= (and b!646313 res!418894) b!646310))

(assert (= (and b!646310 res!418889) b!646328))

(assert (= (and b!646328 res!418896) b!646311))

(assert (= (and b!646311 res!418886) b!646320))

(assert (= (and b!646311 c!74081) b!646318))

(assert (= (and b!646311 (not c!74081)) b!646326))

(assert (= (and b!646311 (not res!418892)) b!646316))

(assert (= (and b!646316 res!418893) b!646309))

(assert (= (and b!646309 (not res!418887)) b!646324))

(assert (= (and b!646324 res!418901) b!646321))

(assert (= (and b!646316 (not res!418884)) b!646329))

(assert (= (and b!646329 c!74080) b!646327))

(assert (= (and b!646329 (not c!74080)) b!646330))

(assert (= (and b!646329 (not res!418899)) b!646325))

(assert (= (and b!646325 res!418895) b!646322))

(declare-fun m!619841 () Bool)

(assert (=> b!646311 m!619841))

(declare-fun m!619843 () Bool)

(assert (=> b!646311 m!619843))

(declare-fun m!619845 () Bool)

(assert (=> b!646311 m!619845))

(declare-fun m!619847 () Bool)

(assert (=> b!646311 m!619847))

(assert (=> b!646311 m!619845))

(declare-fun m!619849 () Bool)

(assert (=> b!646311 m!619849))

(declare-fun m!619851 () Bool)

(assert (=> b!646311 m!619851))

(declare-fun m!619853 () Bool)

(assert (=> b!646311 m!619853))

(declare-fun m!619855 () Bool)

(assert (=> b!646311 m!619855))

(assert (=> b!646327 m!619845))

(declare-fun m!619857 () Bool)

(assert (=> b!646327 m!619857))

(assert (=> b!646327 m!619845))

(assert (=> b!646327 m!619845))

(declare-fun m!619859 () Bool)

(assert (=> b!646327 m!619859))

(declare-fun m!619861 () Bool)

(assert (=> b!646327 m!619861))

(declare-fun m!619863 () Bool)

(assert (=> b!646327 m!619863))

(declare-fun m!619865 () Bool)

(assert (=> b!646327 m!619865))

(assert (=> b!646327 m!619845))

(declare-fun m!619867 () Bool)

(assert (=> b!646327 m!619867))

(declare-fun m!619869 () Bool)

(assert (=> b!646327 m!619869))

(declare-fun m!619871 () Bool)

(assert (=> b!646313 m!619871))

(assert (=> b!646322 m!619845))

(assert (=> b!646322 m!619845))

(declare-fun m!619873 () Bool)

(assert (=> b!646322 m!619873))

(assert (=> b!646321 m!619845))

(assert (=> b!646321 m!619845))

(assert (=> b!646321 m!619873))

(declare-fun m!619875 () Bool)

(assert (=> start!58564 m!619875))

(declare-fun m!619877 () Bool)

(assert (=> start!58564 m!619877))

(declare-fun m!619879 () Bool)

(assert (=> b!646314 m!619879))

(assert (=> b!646331 m!619845))

(assert (=> b!646331 m!619845))

(declare-fun m!619881 () Bool)

(assert (=> b!646331 m!619881))

(declare-fun m!619883 () Bool)

(assert (=> b!646319 m!619883))

(declare-fun m!619885 () Bool)

(assert (=> b!646323 m!619885))

(declare-fun m!619887 () Bool)

(assert (=> b!646328 m!619887))

(assert (=> b!646328 m!619845))

(assert (=> b!646328 m!619845))

(declare-fun m!619889 () Bool)

(assert (=> b!646328 m!619889))

(assert (=> b!646324 m!619845))

(assert (=> b!646324 m!619845))

(declare-fun m!619891 () Bool)

(assert (=> b!646324 m!619891))

(assert (=> b!646310 m!619851))

(declare-fun m!619893 () Bool)

(assert (=> b!646310 m!619893))

(assert (=> b!646316 m!619845))

(assert (=> b!646316 m!619851))

(declare-fun m!619895 () Bool)

(assert (=> b!646316 m!619895))

(declare-fun m!619897 () Bool)

(assert (=> b!646317 m!619897))

(assert (=> b!646309 m!619845))

(assert (=> b!646325 m!619845))

(assert (=> b!646325 m!619845))

(declare-fun m!619899 () Bool)

(assert (=> b!646325 m!619899))

(assert (=> b!646325 m!619845))

(declare-fun m!619901 () Bool)

(assert (=> b!646325 m!619901))

(assert (=> b!646325 m!619845))

(assert (=> b!646325 m!619891))

(declare-fun m!619903 () Bool)

(assert (=> b!646312 m!619903))

(push 1)

