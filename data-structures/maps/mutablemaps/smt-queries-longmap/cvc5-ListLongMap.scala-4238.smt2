; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58464 () Bool)

(assert start!58464)

(declare-fun b!645424 () Bool)

(declare-datatypes ((Unit!21910 0))(
  ( (Unit!21911) )
))
(declare-fun e!369910 () Unit!21910)

(declare-fun Unit!21912 () Unit!21910)

(assert (=> b!645424 (= e!369910 Unit!21912)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38436 0))(
  ( (array!38437 (arr!18426 (Array (_ BitVec 32) (_ BitVec 64))) (size!18790 (_ BitVec 32))) )
))
(declare-fun lt!299381 () array!38436)

(declare-fun lt!299380 () Unit!21910)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> b!645424 (= lt!299380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299381 (select (arr!18426 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645424 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!299384 () Unit!21910)

(declare-datatypes ((List!12520 0))(
  ( (Nil!12517) (Cons!12516 (h!13561 (_ BitVec 64)) (t!18756 List!12520)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12520) Unit!21910)

(assert (=> b!645424 (= lt!299384 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12517))))

(declare-fun arrayNoDuplicates!0 (array!38436 (_ BitVec 32) List!12520) Bool)

(assert (=> b!645424 (arrayNoDuplicates!0 lt!299381 #b00000000000000000000000000000000 Nil!12517)))

(declare-fun lt!299382 () Unit!21910)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38436 (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> b!645424 (= lt!299382 (lemmaNoDuplicateFromThenFromBigger!0 lt!299381 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645424 (arrayNoDuplicates!0 lt!299381 j!136 Nil!12517)))

(declare-fun lt!299387 () Unit!21910)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38436 (_ BitVec 64) (_ BitVec 32) List!12520) Unit!21910)

(assert (=> b!645424 (= lt!299387 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136 Nil!12517))))

(assert (=> b!645424 false))

(declare-fun b!645425 () Bool)

(declare-fun e!369903 () Bool)

(declare-fun e!369913 () Bool)

(assert (=> b!645425 (= e!369903 e!369913)))

(declare-fun res!418321 () Bool)

(assert (=> b!645425 (=> (not res!418321) (not e!369913))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6873 0))(
  ( (MissingZero!6873 (index!29826 (_ BitVec 32))) (Found!6873 (index!29827 (_ BitVec 32))) (Intermediate!6873 (undefined!7685 Bool) (index!29828 (_ BitVec 32)) (x!58627 (_ BitVec 32))) (Undefined!6873) (MissingVacant!6873 (index!29829 (_ BitVec 32))) )
))
(declare-fun lt!299378 () SeekEntryResult!6873)

(assert (=> b!645425 (= res!418321 (and (= lt!299378 (Found!6873 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18426 a!2986) index!984) (select (arr!18426 a!2986) j!136))) (not (= (select (arr!18426 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38436 (_ BitVec 32)) SeekEntryResult!6873)

(assert (=> b!645425 (= lt!299378 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18426 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!645427 () Bool)

(declare-fun res!418306 () Bool)

(declare-fun e!369911 () Bool)

(assert (=> b!645427 (=> (not res!418306) (not e!369911))))

(assert (=> b!645427 (= res!418306 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645428 () Bool)

(declare-fun e!369907 () Unit!21910)

(declare-fun Unit!21913 () Unit!21910)

(assert (=> b!645428 (= e!369907 Unit!21913)))

(assert (=> b!645428 false))

(declare-fun b!645429 () Bool)

(declare-fun res!418308 () Bool)

(assert (=> b!645429 (=> (not res!418308) (not e!369911))))

(assert (=> b!645429 (= res!418308 (and (= (size!18790 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18790 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18790 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645430 () Bool)

(declare-fun e!369908 () Bool)

(assert (=> b!645430 (= e!369911 e!369908)))

(declare-fun res!418304 () Bool)

(assert (=> b!645430 (=> (not res!418304) (not e!369908))))

(declare-fun lt!299376 () SeekEntryResult!6873)

(assert (=> b!645430 (= res!418304 (or (= lt!299376 (MissingZero!6873 i!1108)) (= lt!299376 (MissingVacant!6873 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38436 (_ BitVec 32)) SeekEntryResult!6873)

(assert (=> b!645430 (= lt!299376 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645431 () Bool)

(declare-fun e!369905 () Bool)

(declare-fun lt!299383 () SeekEntryResult!6873)

(assert (=> b!645431 (= e!369905 (= lt!299378 lt!299383))))

(declare-fun b!645432 () Bool)

(declare-fun res!418305 () Bool)

(assert (=> b!645432 (=> (not res!418305) (not e!369911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645432 (= res!418305 (validKeyInArray!0 (select (arr!18426 a!2986) j!136)))))

(declare-fun b!645433 () Bool)

(declare-fun e!369909 () Bool)

(declare-fun e!369912 () Bool)

(assert (=> b!645433 (= e!369909 e!369912)))

(declare-fun res!418312 () Bool)

(assert (=> b!645433 (=> res!418312 e!369912)))

(assert (=> b!645433 (= res!418312 (bvsge index!984 j!136))))

(declare-fun lt!299385 () Unit!21910)

(assert (=> b!645433 (= lt!299385 e!369910)))

(declare-fun c!73928 () Bool)

(assert (=> b!645433 (= c!73928 (bvslt j!136 index!984))))

(declare-fun b!645434 () Bool)

(declare-fun e!369904 () Bool)

(declare-fun e!369902 () Bool)

(assert (=> b!645434 (= e!369904 e!369902)))

(declare-fun res!418307 () Bool)

(assert (=> b!645434 (=> (not res!418307) (not e!369902))))

(assert (=> b!645434 (= res!418307 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136))))

(declare-fun b!645435 () Bool)

(declare-fun res!418310 () Bool)

(assert (=> b!645435 (=> (not res!418310) (not e!369908))))

(assert (=> b!645435 (= res!418310 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12517))))

(declare-fun b!645436 () Bool)

(declare-fun res!418313 () Bool)

(assert (=> b!645436 (=> (not res!418313) (not e!369911))))

(assert (=> b!645436 (= res!418313 (validKeyInArray!0 k!1786))))

(declare-fun b!645437 () Bool)

(assert (=> b!645437 (= e!369912 (bvslt (size!18790 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!645437 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299390 () Unit!21910)

(assert (=> b!645437 (= lt!299390 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!369899 () Bool)

(assert (=> b!645437 e!369899))

(declare-fun res!418320 () Bool)

(assert (=> b!645437 (=> (not res!418320) (not e!369899))))

(assert (=> b!645437 (= res!418320 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136))))

(declare-fun b!645438 () Bool)

(assert (=> b!645438 (= e!369908 e!369903)))

(declare-fun res!418322 () Bool)

(assert (=> b!645438 (=> (not res!418322) (not e!369903))))

(assert (=> b!645438 (= res!418322 (= (select (store (arr!18426 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!645438 (= lt!299381 (array!38437 (store (arr!18426 a!2986) i!1108 k!1786) (size!18790 a!2986)))))

(declare-fun res!418311 () Bool)

(assert (=> start!58464 (=> (not res!418311) (not e!369911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58464 (= res!418311 (validMask!0 mask!3053))))

(assert (=> start!58464 e!369911))

(assert (=> start!58464 true))

(declare-fun array_inv!14200 (array!38436) Bool)

(assert (=> start!58464 (array_inv!14200 a!2986)))

(declare-fun b!645426 () Bool)

(declare-fun res!418315 () Bool)

(assert (=> b!645426 (=> (not res!418315) (not e!369908))))

(assert (=> b!645426 (= res!418315 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18426 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645439 () Bool)

(declare-fun res!418317 () Bool)

(assert (=> b!645439 (=> (not res!418317) (not e!369908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38436 (_ BitVec 32)) Bool)

(assert (=> b!645439 (= res!418317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645440 () Bool)

(declare-fun e!369906 () Bool)

(assert (=> b!645440 (= e!369906 e!369909)))

(declare-fun res!418309 () Bool)

(assert (=> b!645440 (=> res!418309 e!369909)))

(declare-fun lt!299391 () (_ BitVec 64))

(declare-fun lt!299388 () (_ BitVec 64))

(assert (=> b!645440 (= res!418309 (or (not (= (select (arr!18426 a!2986) j!136) lt!299388)) (not (= (select (arr!18426 a!2986) j!136) lt!299391))))))

(declare-fun e!369901 () Bool)

(assert (=> b!645440 e!369901))

(declare-fun res!418316 () Bool)

(assert (=> b!645440 (=> (not res!418316) (not e!369901))))

(assert (=> b!645440 (= res!418316 (= lt!299391 (select (arr!18426 a!2986) j!136)))))

(assert (=> b!645440 (= lt!299391 (select (store (arr!18426 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645441 () Bool)

(declare-fun Unit!21914 () Unit!21910)

(assert (=> b!645441 (= e!369907 Unit!21914)))

(declare-fun b!645442 () Bool)

(assert (=> b!645442 (= e!369902 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) index!984))))

(declare-fun b!645443 () Bool)

(assert (=> b!645443 (= e!369901 e!369904)))

(declare-fun res!418319 () Bool)

(assert (=> b!645443 (=> res!418319 e!369904)))

(assert (=> b!645443 (= res!418319 (or (not (= (select (arr!18426 a!2986) j!136) lt!299388)) (not (= (select (arr!18426 a!2986) j!136) lt!299391)) (bvsge j!136 index!984)))))

(declare-fun b!645444 () Bool)

(assert (=> b!645444 (= e!369899 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) index!984))))

(declare-fun b!645445 () Bool)

(declare-fun Unit!21915 () Unit!21910)

(assert (=> b!645445 (= e!369910 Unit!21915)))

(declare-fun b!645446 () Bool)

(assert (=> b!645446 (= e!369913 (not e!369906))))

(declare-fun res!418314 () Bool)

(assert (=> b!645446 (=> res!418314 e!369906)))

(declare-fun lt!299386 () SeekEntryResult!6873)

(assert (=> b!645446 (= res!418314 (not (= lt!299386 (Found!6873 index!984))))))

(declare-fun lt!299389 () Unit!21910)

(assert (=> b!645446 (= lt!299389 e!369907)))

(declare-fun c!73927 () Bool)

(assert (=> b!645446 (= c!73927 (= lt!299386 Undefined!6873))))

(assert (=> b!645446 (= lt!299386 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299388 lt!299381 mask!3053))))

(assert (=> b!645446 e!369905))

(declare-fun res!418318 () Bool)

(assert (=> b!645446 (=> (not res!418318) (not e!369905))))

(declare-fun lt!299379 () (_ BitVec 32))

(assert (=> b!645446 (= res!418318 (= lt!299383 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299379 vacantSpotIndex!68 lt!299388 lt!299381 mask!3053)))))

(assert (=> b!645446 (= lt!299383 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299379 vacantSpotIndex!68 (select (arr!18426 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645446 (= lt!299388 (select (store (arr!18426 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299377 () Unit!21910)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> b!645446 (= lt!299377 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299379 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645446 (= lt!299379 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58464 res!418311) b!645429))

(assert (= (and b!645429 res!418308) b!645432))

(assert (= (and b!645432 res!418305) b!645436))

(assert (= (and b!645436 res!418313) b!645427))

(assert (= (and b!645427 res!418306) b!645430))

(assert (= (and b!645430 res!418304) b!645439))

(assert (= (and b!645439 res!418317) b!645435))

(assert (= (and b!645435 res!418310) b!645426))

(assert (= (and b!645426 res!418315) b!645438))

(assert (= (and b!645438 res!418322) b!645425))

(assert (= (and b!645425 res!418321) b!645446))

(assert (= (and b!645446 res!418318) b!645431))

(assert (= (and b!645446 c!73927) b!645428))

(assert (= (and b!645446 (not c!73927)) b!645441))

(assert (= (and b!645446 (not res!418314)) b!645440))

(assert (= (and b!645440 res!418316) b!645443))

(assert (= (and b!645443 (not res!418319)) b!645434))

(assert (= (and b!645434 res!418307) b!645442))

(assert (= (and b!645440 (not res!418309)) b!645433))

(assert (= (and b!645433 c!73928) b!645424))

(assert (= (and b!645433 (not c!73928)) b!645445))

(assert (= (and b!645433 (not res!418312)) b!645437))

(assert (= (and b!645437 res!418320) b!645444))

(declare-fun m!618999 () Bool)

(assert (=> b!645426 m!618999))

(declare-fun m!619001 () Bool)

(assert (=> b!645442 m!619001))

(assert (=> b!645442 m!619001))

(declare-fun m!619003 () Bool)

(assert (=> b!645442 m!619003))

(declare-fun m!619005 () Bool)

(assert (=> b!645435 m!619005))

(declare-fun m!619007 () Bool)

(assert (=> b!645436 m!619007))

(assert (=> b!645434 m!619001))

(assert (=> b!645434 m!619001))

(declare-fun m!619009 () Bool)

(assert (=> b!645434 m!619009))

(declare-fun m!619011 () Bool)

(assert (=> b!645446 m!619011))

(declare-fun m!619013 () Bool)

(assert (=> b!645446 m!619013))

(declare-fun m!619015 () Bool)

(assert (=> b!645446 m!619015))

(assert (=> b!645446 m!619001))

(declare-fun m!619017 () Bool)

(assert (=> b!645446 m!619017))

(declare-fun m!619019 () Bool)

(assert (=> b!645446 m!619019))

(assert (=> b!645446 m!619001))

(declare-fun m!619021 () Bool)

(assert (=> b!645446 m!619021))

(declare-fun m!619023 () Bool)

(assert (=> b!645446 m!619023))

(declare-fun m!619025 () Bool)

(assert (=> b!645439 m!619025))

(assert (=> b!645440 m!619001))

(assert (=> b!645440 m!619017))

(declare-fun m!619027 () Bool)

(assert (=> b!645440 m!619027))

(declare-fun m!619029 () Bool)

(assert (=> b!645430 m!619029))

(assert (=> b!645437 m!619001))

(assert (=> b!645437 m!619001))

(declare-fun m!619031 () Bool)

(assert (=> b!645437 m!619031))

(assert (=> b!645437 m!619001))

(declare-fun m!619033 () Bool)

(assert (=> b!645437 m!619033))

(assert (=> b!645437 m!619001))

(assert (=> b!645437 m!619009))

(assert (=> b!645443 m!619001))

(declare-fun m!619035 () Bool)

(assert (=> b!645427 m!619035))

(assert (=> b!645444 m!619001))

(assert (=> b!645444 m!619001))

(assert (=> b!645444 m!619003))

(declare-fun m!619037 () Bool)

(assert (=> start!58464 m!619037))

(declare-fun m!619039 () Bool)

(assert (=> start!58464 m!619039))

(assert (=> b!645432 m!619001))

(assert (=> b!645432 m!619001))

(declare-fun m!619041 () Bool)

(assert (=> b!645432 m!619041))

(declare-fun m!619043 () Bool)

(assert (=> b!645425 m!619043))

(assert (=> b!645425 m!619001))

(assert (=> b!645425 m!619001))

(declare-fun m!619045 () Bool)

(assert (=> b!645425 m!619045))

(assert (=> b!645438 m!619017))

(declare-fun m!619047 () Bool)

(assert (=> b!645438 m!619047))

(assert (=> b!645424 m!619001))

(declare-fun m!619049 () Bool)

(assert (=> b!645424 m!619049))

(assert (=> b!645424 m!619001))

(declare-fun m!619051 () Bool)

(assert (=> b!645424 m!619051))

(assert (=> b!645424 m!619001))

(declare-fun m!619053 () Bool)

(assert (=> b!645424 m!619053))

(declare-fun m!619055 () Bool)

(assert (=> b!645424 m!619055))

(declare-fun m!619057 () Bool)

(assert (=> b!645424 m!619057))

(declare-fun m!619059 () Bool)

(assert (=> b!645424 m!619059))

(declare-fun m!619061 () Bool)

(assert (=> b!645424 m!619061))

(assert (=> b!645424 m!619001))

(push 1)

(assert (not b!645430))

(assert (not b!645432))

(assert (not b!645437))

(assert (not b!645424))

(assert (not b!645425))

(assert (not b!645442))

(assert (not b!645434))

(assert (not start!58464))

(assert (not b!645439))

(assert (not b!645436))

(assert (not b!645427))

(assert (not b!645444))

(assert (not b!645446))

(assert (not b!645435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91123 () Bool)

(declare-fun res!418463 () Bool)

(declare-fun e!370048 () Bool)

(assert (=> d!91123 (=> res!418463 e!370048)))

(assert (=> d!91123 (= res!418463 (= (select (arr!18426 lt!299381) index!984) (select (arr!18426 a!2986) j!136)))))

(assert (=> d!91123 (= (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) index!984) e!370048)))

(declare-fun b!645647 () Bool)

(declare-fun e!370049 () Bool)

(assert (=> b!645647 (= e!370048 e!370049)))

(declare-fun res!418464 () Bool)

(assert (=> b!645647 (=> (not res!418464) (not e!370049))))

(assert (=> b!645647 (= res!418464 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18790 lt!299381)))))

(declare-fun b!645648 () Bool)

(assert (=> b!645648 (= e!370049 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91123 (not res!418463)) b!645647))

(assert (= (and b!645647 res!418464) b!645648))

(declare-fun m!619249 () Bool)

(assert (=> d!91123 m!619249))

(assert (=> b!645648 m!619001))

(declare-fun m!619251 () Bool)

(assert (=> b!645648 m!619251))

(assert (=> b!645442 d!91123))

(declare-fun d!91131 () Bool)

(assert (=> d!91131 (= (validKeyInArray!0 (select (arr!18426 a!2986) j!136)) (and (not (= (select (arr!18426 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18426 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!645432 d!91131))

(assert (=> b!645444 d!91123))

(declare-fun d!91133 () Bool)

(declare-fun res!418465 () Bool)

(declare-fun e!370050 () Bool)

(assert (=> d!91133 (=> res!418465 e!370050)))

(assert (=> d!91133 (= res!418465 (= (select (arr!18426 lt!299381) j!136) (select (arr!18426 a!2986) j!136)))))

(assert (=> d!91133 (= (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136) e!370050)))

(declare-fun b!645649 () Bool)

(declare-fun e!370051 () Bool)

(assert (=> b!645649 (= e!370050 e!370051)))

(declare-fun res!418466 () Bool)

(assert (=> b!645649 (=> (not res!418466) (not e!370051))))

(assert (=> b!645649 (= res!418466 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18790 lt!299381)))))

(declare-fun b!645650 () Bool)

(assert (=> b!645650 (= e!370051 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91133 (not res!418465)) b!645649))

(assert (= (and b!645649 res!418466) b!645650))

(declare-fun m!619253 () Bool)

(assert (=> d!91133 m!619253))

(assert (=> b!645650 m!619001))

(declare-fun m!619255 () Bool)

(assert (=> b!645650 m!619255))

(assert (=> b!645434 d!91133))

(declare-fun d!91135 () Bool)

(assert (=> d!91135 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58464 d!91135))

(declare-fun d!91149 () Bool)

(assert (=> d!91149 (= (array_inv!14200 a!2986) (bvsge (size!18790 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58464 d!91149))

(declare-fun d!91153 () Bool)

(assert (=> d!91153 (arrayNoDuplicates!0 lt!299381 j!136 Nil!12517)))

(declare-fun lt!299527 () Unit!21910)

(declare-fun choose!39 (array!38436 (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> d!91153 (= lt!299527 (choose!39 lt!299381 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91153 (bvslt (size!18790 lt!299381) #b01111111111111111111111111111111)))

(assert (=> d!91153 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!299381 #b00000000000000000000000000000000 j!136) lt!299527)))

(declare-fun bs!19294 () Bool)

(assert (= bs!19294 d!91153))

(assert (=> bs!19294 m!619059))

(declare-fun m!619303 () Bool)

(assert (=> bs!19294 m!619303))

(assert (=> b!645424 d!91153))

(declare-fun b!645723 () Bool)

(declare-fun e!370106 () Bool)

(declare-fun contains!3151 (List!12520 (_ BitVec 64)) Bool)

(assert (=> b!645723 (= e!370106 (contains!3151 Nil!12517 (select (arr!18426 lt!299381) #b00000000000000000000000000000000)))))

(declare-fun b!645725 () Bool)

(declare-fun e!370108 () Bool)

(declare-fun call!33640 () Bool)

(assert (=> b!645725 (= e!370108 call!33640)))

(declare-fun b!645726 () Bool)

(declare-fun e!370105 () Bool)

(assert (=> b!645726 (= e!370105 e!370108)))

(declare-fun c!73978 () Bool)

(assert (=> b!645726 (= c!73978 (validKeyInArray!0 (select (arr!18426 lt!299381) #b00000000000000000000000000000000)))))

(declare-fun bm!33637 () Bool)

(assert (=> bm!33637 (= call!33640 (arrayNoDuplicates!0 lt!299381 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73978 (Cons!12516 (select (arr!18426 lt!299381) #b00000000000000000000000000000000) Nil!12517) Nil!12517)))))

(declare-fun b!645727 () Bool)

(assert (=> b!645727 (= e!370108 call!33640)))

(declare-fun d!91157 () Bool)

(declare-fun res!418501 () Bool)

(declare-fun e!370107 () Bool)

(assert (=> d!91157 (=> res!418501 e!370107)))

(assert (=> d!91157 (= res!418501 (bvsge #b00000000000000000000000000000000 (size!18790 lt!299381)))))

(assert (=> d!91157 (= (arrayNoDuplicates!0 lt!299381 #b00000000000000000000000000000000 Nil!12517) e!370107)))

(declare-fun b!645724 () Bool)

(assert (=> b!645724 (= e!370107 e!370105)))

(declare-fun res!418502 () Bool)

(assert (=> b!645724 (=> (not res!418502) (not e!370105))))

(assert (=> b!645724 (= res!418502 (not e!370106))))

(declare-fun res!418503 () Bool)

(assert (=> b!645724 (=> (not res!418503) (not e!370106))))

(assert (=> b!645724 (= res!418503 (validKeyInArray!0 (select (arr!18426 lt!299381) #b00000000000000000000000000000000)))))

(assert (= (and d!91157 (not res!418501)) b!645724))

(assert (= (and b!645724 res!418503) b!645723))

(assert (= (and b!645724 res!418502) b!645726))

(assert (= (and b!645726 c!73978) b!645725))

(assert (= (and b!645726 (not c!73978)) b!645727))

(assert (= (or b!645725 b!645727) bm!33637))

(declare-fun m!619311 () Bool)

(assert (=> b!645723 m!619311))

(assert (=> b!645723 m!619311))

(declare-fun m!619313 () Bool)

(assert (=> b!645723 m!619313))

(assert (=> b!645726 m!619311))

(assert (=> b!645726 m!619311))

(declare-fun m!619315 () Bool)

(assert (=> b!645726 m!619315))

(assert (=> bm!33637 m!619311))

(declare-fun m!619317 () Bool)

(assert (=> bm!33637 m!619317))

(assert (=> b!645724 m!619311))

(assert (=> b!645724 m!619311))

(assert (=> b!645724 m!619315))

(assert (=> b!645424 d!91157))

(declare-fun d!91163 () Bool)

(assert (=> d!91163 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18790 lt!299381)) (not (= (select (arr!18426 lt!299381) j!136) (select (arr!18426 a!2986) j!136))))))

(declare-fun lt!299533 () Unit!21910)

(declare-fun choose!21 (array!38436 (_ BitVec 64) (_ BitVec 32) List!12520) Unit!21910)

(assert (=> d!91163 (= lt!299533 (choose!21 lt!299381 (select (arr!18426 a!2986) j!136) j!136 Nil!12517))))

(assert (=> d!91163 (bvslt (size!18790 lt!299381) #b01111111111111111111111111111111)))

(assert (=> d!91163 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299381 (select (arr!18426 a!2986) j!136) j!136 Nil!12517) lt!299533)))

(declare-fun bs!19296 () Bool)

(assert (= bs!19296 d!91163))

(assert (=> bs!19296 m!619253))

(assert (=> bs!19296 m!619001))

(declare-fun m!619319 () Bool)

(assert (=> bs!19296 m!619319))

(assert (=> b!645424 d!91163))

(declare-fun d!91165 () Bool)

(declare-fun res!418504 () Bool)

(declare-fun e!370109 () Bool)

(assert (=> d!91165 (=> res!418504 e!370109)))

(assert (=> d!91165 (= res!418504 (= (select (arr!18426 lt!299381) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18426 a!2986) j!136)))))

(assert (=> d!91165 (= (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!370109)))

(declare-fun b!645728 () Bool)

(declare-fun e!370110 () Bool)

(assert (=> b!645728 (= e!370109 e!370110)))

(declare-fun res!418505 () Bool)

(assert (=> b!645728 (=> (not res!418505) (not e!370110))))

(assert (=> b!645728 (= res!418505 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18790 lt!299381)))))

(declare-fun b!645729 () Bool)

(assert (=> b!645729 (= e!370110 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91165 (not res!418504)) b!645728))

(assert (= (and b!645728 res!418505) b!645729))

(declare-fun m!619321 () Bool)

(assert (=> d!91165 m!619321))

(assert (=> b!645729 m!619001))

(declare-fun m!619323 () Bool)

(assert (=> b!645729 m!619323))

(assert (=> b!645424 d!91165))

(declare-fun d!91167 () Bool)

(declare-fun e!370119 () Bool)

(assert (=> d!91167 e!370119))

(declare-fun res!418508 () Bool)

(assert (=> d!91167 (=> (not res!418508) (not e!370119))))

(assert (=> d!91167 (= res!418508 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18790 a!2986))))))

(declare-fun lt!299542 () Unit!21910)

(declare-fun choose!41 (array!38436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12520) Unit!21910)

(assert (=> d!91167 (= lt!299542 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12517))))

(assert (=> d!91167 (bvslt (size!18790 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91167 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12517) lt!299542)))

(declare-fun b!645744 () Bool)

(assert (=> b!645744 (= e!370119 (arrayNoDuplicates!0 (array!38437 (store (arr!18426 a!2986) i!1108 k!1786) (size!18790 a!2986)) #b00000000000000000000000000000000 Nil!12517))))

(assert (= (and d!91167 res!418508) b!645744))

(declare-fun m!619325 () Bool)

(assert (=> d!91167 m!619325))

(assert (=> b!645744 m!619017))

(declare-fun m!619327 () Bool)

(assert (=> b!645744 m!619327))

(assert (=> b!645424 d!91167))

(declare-fun b!645745 () Bool)

(declare-fun e!370121 () Bool)

(assert (=> b!645745 (= e!370121 (contains!3151 Nil!12517 (select (arr!18426 lt!299381) j!136)))))

(declare-fun b!645747 () Bool)

(declare-fun e!370123 () Bool)

(declare-fun call!33641 () Bool)

(assert (=> b!645747 (= e!370123 call!33641)))

(declare-fun b!645748 () Bool)

(declare-fun e!370120 () Bool)

(assert (=> b!645748 (= e!370120 e!370123)))

(declare-fun c!73985 () Bool)

(assert (=> b!645748 (= c!73985 (validKeyInArray!0 (select (arr!18426 lt!299381) j!136)))))

(declare-fun bm!33638 () Bool)

(assert (=> bm!33638 (= call!33641 (arrayNoDuplicates!0 lt!299381 (bvadd j!136 #b00000000000000000000000000000001) (ite c!73985 (Cons!12516 (select (arr!18426 lt!299381) j!136) Nil!12517) Nil!12517)))))

(declare-fun b!645749 () Bool)

(assert (=> b!645749 (= e!370123 call!33641)))

(declare-fun d!91169 () Bool)

(declare-fun res!418509 () Bool)

(declare-fun e!370122 () Bool)

(assert (=> d!91169 (=> res!418509 e!370122)))

(assert (=> d!91169 (= res!418509 (bvsge j!136 (size!18790 lt!299381)))))

(assert (=> d!91169 (= (arrayNoDuplicates!0 lt!299381 j!136 Nil!12517) e!370122)))

(declare-fun b!645746 () Bool)

(assert (=> b!645746 (= e!370122 e!370120)))

(declare-fun res!418510 () Bool)

(assert (=> b!645746 (=> (not res!418510) (not e!370120))))

(assert (=> b!645746 (= res!418510 (not e!370121))))

(declare-fun res!418511 () Bool)

(assert (=> b!645746 (=> (not res!418511) (not e!370121))))

(assert (=> b!645746 (= res!418511 (validKeyInArray!0 (select (arr!18426 lt!299381) j!136)))))

(assert (= (and d!91169 (not res!418509)) b!645746))

(assert (= (and b!645746 res!418511) b!645745))

(assert (= (and b!645746 res!418510) b!645748))

(assert (= (and b!645748 c!73985) b!645747))

(assert (= (and b!645748 (not c!73985)) b!645749))

(assert (= (or b!645747 b!645749) bm!33638))

(assert (=> b!645745 m!619253))

(assert (=> b!645745 m!619253))

(declare-fun m!619329 () Bool)

(assert (=> b!645745 m!619329))

(assert (=> b!645748 m!619253))

(assert (=> b!645748 m!619253))

(declare-fun m!619331 () Bool)

(assert (=> b!645748 m!619331))

(assert (=> bm!33638 m!619253))

(declare-fun m!619333 () Bool)

(assert (=> bm!33638 m!619333))

(assert (=> b!645746 m!619253))

(assert (=> b!645746 m!619253))

(assert (=> b!645746 m!619331))

(assert (=> b!645424 d!91169))

(declare-fun d!91171 () Bool)

(assert (=> d!91171 (arrayContainsKey!0 lt!299381 (select (arr!18426 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299554 () Unit!21910)

(declare-fun choose!114 (array!38436 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> d!91171 (= lt!299554 (choose!114 lt!299381 (select (arr!18426 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91171 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91171 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299381 (select (arr!18426 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!299554)))

(declare-fun bs!19297 () Bool)

(assert (= bs!19297 d!91171))

(assert (=> bs!19297 m!619001))

(assert (=> bs!19297 m!619049))

(assert (=> bs!19297 m!619001))

(declare-fun m!619349 () Bool)

(assert (=> bs!19297 m!619349))

(assert (=> b!645424 d!91171))

(declare-fun b!645768 () Bool)

(declare-fun e!370134 () Bool)

(assert (=> b!645768 (= e!370134 (contains!3151 Nil!12517 (select (arr!18426 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!645770 () Bool)

(declare-fun e!370136 () Bool)

(declare-fun call!33642 () Bool)

(assert (=> b!645770 (= e!370136 call!33642)))

(declare-fun b!645771 () Bool)

(declare-fun e!370133 () Bool)

(assert (=> b!645771 (= e!370133 e!370136)))

(declare-fun c!73995 () Bool)

(assert (=> b!645771 (= c!73995 (validKeyInArray!0 (select (arr!18426 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33639 () Bool)

(assert (=> bm!33639 (= call!33642 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73995 (Cons!12516 (select (arr!18426 a!2986) #b00000000000000000000000000000000) Nil!12517) Nil!12517)))))

(declare-fun b!645772 () Bool)

(assert (=> b!645772 (= e!370136 call!33642)))

(declare-fun d!91177 () Bool)

(declare-fun res!418512 () Bool)

(declare-fun e!370135 () Bool)

(assert (=> d!91177 (=> res!418512 e!370135)))

(assert (=> d!91177 (= res!418512 (bvsge #b00000000000000000000000000000000 (size!18790 a!2986)))))

(assert (=> d!91177 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12517) e!370135)))

(declare-fun b!645769 () Bool)

(assert (=> b!645769 (= e!370135 e!370133)))

(declare-fun res!418513 () Bool)

(assert (=> b!645769 (=> (not res!418513) (not e!370133))))

(assert (=> b!645769 (= res!418513 (not e!370134))))

(declare-fun res!418514 () Bool)

(assert (=> b!645769 (=> (not res!418514) (not e!370134))))

(assert (=> b!645769 (= res!418514 (validKeyInArray!0 (select (arr!18426 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!91177 (not res!418512)) b!645769))

(assert (= (and b!645769 res!418514) b!645768))

(assert (= (and b!645769 res!418513) b!645771))

(assert (= (and b!645771 c!73995) b!645770))

(assert (= (and b!645771 (not c!73995)) b!645772))

(assert (= (or b!645770 b!645772) bm!33639))

(declare-fun m!619351 () Bool)

(assert (=> b!645768 m!619351))

(assert (=> b!645768 m!619351))

(declare-fun m!619353 () Bool)

(assert (=> b!645768 m!619353))

(assert (=> b!645771 m!619351))

(assert (=> b!645771 m!619351))

(declare-fun m!619355 () Bool)

(assert (=> b!645771 m!619355))

(assert (=> bm!33639 m!619351))

(declare-fun m!619357 () Bool)

(assert (=> bm!33639 m!619357))

(assert (=> b!645769 m!619351))

(assert (=> b!645769 m!619351))

(assert (=> b!645769 m!619355))

(assert (=> b!645435 d!91177))

(declare-fun d!91179 () Bool)

(declare-fun e!370166 () Bool)

(assert (=> d!91179 e!370166))

(declare-fun res!418535 () Bool)

(assert (=> d!91179 (=> (not res!418535) (not e!370166))))

(assert (=> d!91179 (= res!418535 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18790 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18790 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18790 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18790 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18790 a!2986))))))

(declare-fun lt!299578 () Unit!21910)

(declare-fun choose!9 (array!38436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21910)

(assert (=> d!91179 (= lt!299578 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299379 vacantSpotIndex!68 mask!3053))))

