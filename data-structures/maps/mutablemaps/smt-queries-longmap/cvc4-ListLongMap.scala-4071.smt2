; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55936 () Bool)

(assert start!55936)

(declare-fun b!612373 () Bool)

(declare-fun e!351014 () Bool)

(declare-fun e!351019 () Bool)

(assert (=> b!612373 (= e!351014 e!351019)))

(declare-fun res!394096 () Bool)

(assert (=> b!612373 (=> (not res!394096) (not e!351019))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6374 0))(
  ( (MissingZero!6374 (index!27779 (_ BitVec 32))) (Found!6374 (index!27780 (_ BitVec 32))) (Intermediate!6374 (undefined!7186 Bool) (index!27781 (_ BitVec 32)) (x!56615 (_ BitVec 32))) (Undefined!6374) (MissingVacant!6374 (index!27782 (_ BitVec 32))) )
))
(declare-fun lt!280484 () SeekEntryResult!6374)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37369 0))(
  ( (array!37370 (arr!17927 (Array (_ BitVec 32) (_ BitVec 64))) (size!18291 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37369)

(assert (=> b!612373 (= res!394096 (and (= lt!280484 (Found!6374 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17927 a!2986) index!984) (select (arr!17927 a!2986) j!136))) (not (= (select (arr!17927 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37369 (_ BitVec 32)) SeekEntryResult!6374)

(assert (=> b!612373 (= lt!280484 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17927 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612374 () Bool)

(declare-fun e!351028 () Bool)

(declare-fun e!351020 () Bool)

(assert (=> b!612374 (= e!351028 e!351020)))

(declare-fun res!394105 () Bool)

(assert (=> b!612374 (=> res!394105 e!351020)))

(declare-fun lt!280485 () (_ BitVec 64))

(declare-fun lt!280491 () (_ BitVec 64))

(assert (=> b!612374 (= res!394105 (or (not (= (select (arr!17927 a!2986) j!136) lt!280491)) (not (= (select (arr!17927 a!2986) j!136) lt!280485)) (bvsge j!136 index!984)))))

(declare-fun b!612375 () Bool)

(declare-datatypes ((Unit!19672 0))(
  ( (Unit!19673) )
))
(declare-fun e!351017 () Unit!19672)

(declare-fun Unit!19674 () Unit!19672)

(assert (=> b!612375 (= e!351017 Unit!19674)))

(assert (=> b!612375 false))

(declare-fun b!612376 () Bool)

(declare-fun res!394098 () Bool)

(declare-fun e!351016 () Bool)

(assert (=> b!612376 (=> (not res!394098) (not e!351016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37369 (_ BitVec 32)) Bool)

(assert (=> b!612376 (= res!394098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612377 () Bool)

(assert (=> b!612377 (= e!351016 e!351014)))

(declare-fun res!394104 () Bool)

(assert (=> b!612377 (=> (not res!394104) (not e!351014))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!612377 (= res!394104 (= (select (store (arr!17927 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!280488 () array!37369)

(assert (=> b!612377 (= lt!280488 (array!37370 (store (arr!17927 a!2986) i!1108 k!1786) (size!18291 a!2986)))))

(declare-fun e!351021 () Bool)

(declare-fun b!612378 () Bool)

(declare-fun arrayContainsKey!0 (array!37369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612378 (= e!351021 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) index!984))))

(declare-fun b!612379 () Bool)

(declare-fun e!351025 () Bool)

(assert (=> b!612379 (= e!351020 e!351025)))

(declare-fun res!394092 () Bool)

(assert (=> b!612379 (=> (not res!394092) (not e!351025))))

(assert (=> b!612379 (= res!394092 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) j!136))))

(declare-fun res!394093 () Bool)

(declare-fun e!351018 () Bool)

(assert (=> start!55936 (=> (not res!394093) (not e!351018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55936 (= res!394093 (validMask!0 mask!3053))))

(assert (=> start!55936 e!351018))

(assert (=> start!55936 true))

(declare-fun array_inv!13701 (array!37369) Bool)

(assert (=> start!55936 (array_inv!13701 a!2986)))

(declare-fun b!612380 () Bool)

(declare-fun e!351024 () Bool)

(declare-fun e!351015 () Bool)

(assert (=> b!612380 (= e!351024 e!351015)))

(declare-fun res!394106 () Bool)

(assert (=> b!612380 (=> res!394106 e!351015)))

(assert (=> b!612380 (= res!394106 (bvsge index!984 j!136))))

(declare-fun lt!280497 () Unit!19672)

(declare-fun e!351023 () Unit!19672)

(assert (=> b!612380 (= lt!280497 e!351023)))

(declare-fun c!69509 () Bool)

(assert (=> b!612380 (= c!69509 (bvslt j!136 index!984))))

(declare-fun b!612381 () Bool)

(declare-fun res!394099 () Bool)

(assert (=> b!612381 (=> (not res!394099) (not e!351018))))

(assert (=> b!612381 (= res!394099 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612382 () Bool)

(declare-fun res!394100 () Bool)

(assert (=> b!612382 (=> (not res!394100) (not e!351016))))

(declare-datatypes ((List!12021 0))(
  ( (Nil!12018) (Cons!12017 (h!13062 (_ BitVec 64)) (t!18257 List!12021)) )
))
(declare-fun arrayNoDuplicates!0 (array!37369 (_ BitVec 32) List!12021) Bool)

(assert (=> b!612382 (= res!394100 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12018))))

(declare-fun b!612383 () Bool)

(declare-fun Unit!19675 () Unit!19672)

(assert (=> b!612383 (= e!351023 Unit!19675)))

(declare-fun lt!280492 () Unit!19672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19672)

(assert (=> b!612383 (= lt!280492 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280488 (select (arr!17927 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!612383 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280482 () Unit!19672)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37369 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12021) Unit!19672)

(assert (=> b!612383 (= lt!280482 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12018))))

(assert (=> b!612383 (arrayNoDuplicates!0 lt!280488 #b00000000000000000000000000000000 Nil!12018)))

(declare-fun lt!280486 () Unit!19672)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37369 (_ BitVec 32) (_ BitVec 32)) Unit!19672)

(assert (=> b!612383 (= lt!280486 (lemmaNoDuplicateFromThenFromBigger!0 lt!280488 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612383 (arrayNoDuplicates!0 lt!280488 j!136 Nil!12018)))

(declare-fun lt!280481 () Unit!19672)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37369 (_ BitVec 64) (_ BitVec 32) List!12021) Unit!19672)

(assert (=> b!612383 (= lt!280481 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280488 (select (arr!17927 a!2986) j!136) j!136 Nil!12018))))

(assert (=> b!612383 false))

(declare-fun b!612384 () Bool)

(declare-fun e!351022 () Bool)

(assert (=> b!612384 (= e!351019 (not e!351022))))

(declare-fun res!394097 () Bool)

(assert (=> b!612384 (=> res!394097 e!351022)))

(declare-fun lt!280493 () SeekEntryResult!6374)

(assert (=> b!612384 (= res!394097 (not (= lt!280493 (Found!6374 index!984))))))

(declare-fun lt!280487 () Unit!19672)

(assert (=> b!612384 (= lt!280487 e!351017)))

(declare-fun c!69508 () Bool)

(assert (=> b!612384 (= c!69508 (= lt!280493 Undefined!6374))))

(assert (=> b!612384 (= lt!280493 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280491 lt!280488 mask!3053))))

(declare-fun e!351026 () Bool)

(assert (=> b!612384 e!351026))

(declare-fun res!394107 () Bool)

(assert (=> b!612384 (=> (not res!394107) (not e!351026))))

(declare-fun lt!280490 () (_ BitVec 32))

(declare-fun lt!280494 () SeekEntryResult!6374)

(assert (=> b!612384 (= res!394107 (= lt!280494 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280490 vacantSpotIndex!68 lt!280491 lt!280488 mask!3053)))))

(assert (=> b!612384 (= lt!280494 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280490 vacantSpotIndex!68 (select (arr!17927 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612384 (= lt!280491 (select (store (arr!17927 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280496 () Unit!19672)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37369 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19672)

(assert (=> b!612384 (= lt!280496 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280490 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612384 (= lt!280490 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612385 () Bool)

(declare-fun res!394101 () Bool)

(assert (=> b!612385 (=> (not res!394101) (not e!351016))))

(assert (=> b!612385 (= res!394101 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17927 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612386 () Bool)

(assert (=> b!612386 (= e!351018 e!351016)))

(declare-fun res!394094 () Bool)

(assert (=> b!612386 (=> (not res!394094) (not e!351016))))

(declare-fun lt!280483 () SeekEntryResult!6374)

(assert (=> b!612386 (= res!394094 (or (= lt!280483 (MissingZero!6374 i!1108)) (= lt!280483 (MissingVacant!6374 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37369 (_ BitVec 32)) SeekEntryResult!6374)

(assert (=> b!612386 (= lt!280483 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!612387 () Bool)

(assert (=> b!612387 (= e!351022 e!351024)))

(declare-fun res!394103 () Bool)

(assert (=> b!612387 (=> res!394103 e!351024)))

(assert (=> b!612387 (= res!394103 (or (not (= (select (arr!17927 a!2986) j!136) lt!280491)) (not (= (select (arr!17927 a!2986) j!136) lt!280485))))))

(assert (=> b!612387 e!351028))

(declare-fun res!394095 () Bool)

(assert (=> b!612387 (=> (not res!394095) (not e!351028))))

(assert (=> b!612387 (= res!394095 (= lt!280485 (select (arr!17927 a!2986) j!136)))))

(assert (=> b!612387 (= lt!280485 (select (store (arr!17927 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!612388 () Bool)

(assert (=> b!612388 (= e!351025 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) index!984))))

(declare-fun b!612389 () Bool)

(declare-fun res!394091 () Bool)

(assert (=> b!612389 (=> (not res!394091) (not e!351018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612389 (= res!394091 (validKeyInArray!0 k!1786))))

(declare-fun b!612390 () Bool)

(declare-fun res!394108 () Bool)

(assert (=> b!612390 (=> (not res!394108) (not e!351018))))

(assert (=> b!612390 (= res!394108 (and (= (size!18291 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18291 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18291 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612391 () Bool)

(assert (=> b!612391 (= e!351015 true)))

(assert (=> b!612391 (arrayNoDuplicates!0 lt!280488 #b00000000000000000000000000000000 Nil!12018)))

(declare-fun lt!280495 () Unit!19672)

(assert (=> b!612391 (= lt!280495 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12018))))

(assert (=> b!612391 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280489 () Unit!19672)

(assert (=> b!612391 (= lt!280489 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280488 (select (arr!17927 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!612391 e!351021))

(declare-fun res!394102 () Bool)

(assert (=> b!612391 (=> (not res!394102) (not e!351021))))

(assert (=> b!612391 (= res!394102 (arrayContainsKey!0 lt!280488 (select (arr!17927 a!2986) j!136) j!136))))

(declare-fun b!612392 () Bool)

(declare-fun Unit!19676 () Unit!19672)

(assert (=> b!612392 (= e!351017 Unit!19676)))

(declare-fun b!612393 () Bool)

(declare-fun Unit!19677 () Unit!19672)

(assert (=> b!612393 (= e!351023 Unit!19677)))

(declare-fun b!612394 () Bool)

(declare-fun res!394109 () Bool)

(assert (=> b!612394 (=> (not res!394109) (not e!351018))))

(assert (=> b!612394 (= res!394109 (validKeyInArray!0 (select (arr!17927 a!2986) j!136)))))

(declare-fun b!612395 () Bool)

(assert (=> b!612395 (= e!351026 (= lt!280484 lt!280494))))

(assert (= (and start!55936 res!394093) b!612390))

(assert (= (and b!612390 res!394108) b!612394))

(assert (= (and b!612394 res!394109) b!612389))

(assert (= (and b!612389 res!394091) b!612381))

(assert (= (and b!612381 res!394099) b!612386))

(assert (= (and b!612386 res!394094) b!612376))

(assert (= (and b!612376 res!394098) b!612382))

(assert (= (and b!612382 res!394100) b!612385))

(assert (= (and b!612385 res!394101) b!612377))

(assert (= (and b!612377 res!394104) b!612373))

(assert (= (and b!612373 res!394096) b!612384))

(assert (= (and b!612384 res!394107) b!612395))

(assert (= (and b!612384 c!69508) b!612375))

(assert (= (and b!612384 (not c!69508)) b!612392))

(assert (= (and b!612384 (not res!394097)) b!612387))

(assert (= (and b!612387 res!394095) b!612374))

(assert (= (and b!612374 (not res!394105)) b!612379))

(assert (= (and b!612379 res!394092) b!612388))

(assert (= (and b!612387 (not res!394103)) b!612380))

(assert (= (and b!612380 c!69509) b!612383))

(assert (= (and b!612380 (not c!69509)) b!612393))

(assert (= (and b!612380 (not res!394106)) b!612391))

(assert (= (and b!612391 res!394102) b!612378))

(declare-fun m!588761 () Bool)

(assert (=> b!612388 m!588761))

(assert (=> b!612388 m!588761))

(declare-fun m!588763 () Bool)

(assert (=> b!612388 m!588763))

(assert (=> b!612378 m!588761))

(assert (=> b!612378 m!588761))

(assert (=> b!612378 m!588763))

(declare-fun m!588765 () Bool)

(assert (=> b!612376 m!588765))

(assert (=> b!612391 m!588761))

(declare-fun m!588767 () Bool)

(assert (=> b!612391 m!588767))

(assert (=> b!612391 m!588761))

(assert (=> b!612391 m!588761))

(declare-fun m!588769 () Bool)

(assert (=> b!612391 m!588769))

(declare-fun m!588771 () Bool)

(assert (=> b!612391 m!588771))

(assert (=> b!612391 m!588761))

(declare-fun m!588773 () Bool)

(assert (=> b!612391 m!588773))

(declare-fun m!588775 () Bool)

(assert (=> b!612391 m!588775))

(declare-fun m!588777 () Bool)

(assert (=> b!612385 m!588777))

(assert (=> b!612383 m!588761))

(assert (=> b!612383 m!588761))

(declare-fun m!588779 () Bool)

(assert (=> b!612383 m!588779))

(declare-fun m!588781 () Bool)

(assert (=> b!612383 m!588781))

(assert (=> b!612383 m!588761))

(declare-fun m!588783 () Bool)

(assert (=> b!612383 m!588783))

(assert (=> b!612383 m!588761))

(declare-fun m!588785 () Bool)

(assert (=> b!612383 m!588785))

(assert (=> b!612383 m!588775))

(declare-fun m!588787 () Bool)

(assert (=> b!612383 m!588787))

(assert (=> b!612383 m!588771))

(assert (=> b!612387 m!588761))

(declare-fun m!588789 () Bool)

(assert (=> b!612387 m!588789))

(declare-fun m!588791 () Bool)

(assert (=> b!612387 m!588791))

(assert (=> b!612377 m!588789))

(declare-fun m!588793 () Bool)

(assert (=> b!612377 m!588793))

(declare-fun m!588795 () Bool)

(assert (=> b!612384 m!588795))

(declare-fun m!588797 () Bool)

(assert (=> b!612384 m!588797))

(assert (=> b!612384 m!588789))

(assert (=> b!612384 m!588761))

(declare-fun m!588799 () Bool)

(assert (=> b!612384 m!588799))

(declare-fun m!588801 () Bool)

(assert (=> b!612384 m!588801))

(declare-fun m!588803 () Bool)

(assert (=> b!612384 m!588803))

(declare-fun m!588805 () Bool)

(assert (=> b!612384 m!588805))

(assert (=> b!612384 m!588761))

(assert (=> b!612374 m!588761))

(declare-fun m!588807 () Bool)

(assert (=> start!55936 m!588807))

(declare-fun m!588809 () Bool)

(assert (=> start!55936 m!588809))

(assert (=> b!612394 m!588761))

(assert (=> b!612394 m!588761))

(declare-fun m!588811 () Bool)

(assert (=> b!612394 m!588811))

(declare-fun m!588813 () Bool)

(assert (=> b!612373 m!588813))

(assert (=> b!612373 m!588761))

(assert (=> b!612373 m!588761))

(declare-fun m!588815 () Bool)

(assert (=> b!612373 m!588815))

(declare-fun m!588817 () Bool)

(assert (=> b!612381 m!588817))

(declare-fun m!588819 () Bool)

(assert (=> b!612386 m!588819))

(declare-fun m!588821 () Bool)

(assert (=> b!612389 m!588821))

(declare-fun m!588823 () Bool)

(assert (=> b!612382 m!588823))

(assert (=> b!612379 m!588761))

(assert (=> b!612379 m!588761))

(assert (=> b!612379 m!588773))

(push 1)

