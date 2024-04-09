; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58666 () Bool)

(assert start!58666)

(declare-fun b!647107 () Bool)

(declare-fun res!419409 () Bool)

(declare-fun e!371036 () Bool)

(assert (=> b!647107 (=> (not res!419409) (not e!371036))))

(declare-datatypes ((array!38470 0))(
  ( (array!38471 (arr!18440 (Array (_ BitVec 32) (_ BitVec 64))) (size!18804 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38470)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38470 (_ BitVec 32)) Bool)

(assert (=> b!647107 (= res!419409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!647108 () Bool)

(declare-datatypes ((Unit!21994 0))(
  ( (Unit!21995) )
))
(declare-fun e!371032 () Unit!21994)

(declare-fun Unit!21996 () Unit!21994)

(assert (=> b!647108 (= e!371032 Unit!21996)))

(assert (=> b!647108 false))

(declare-fun b!647109 () Bool)

(declare-fun e!371034 () Bool)

(declare-fun e!371039 () Bool)

(assert (=> b!647109 (= e!371034 e!371039)))

(declare-fun res!419418 () Bool)

(assert (=> b!647109 (=> (not res!419418) (not e!371039))))

(declare-datatypes ((List!12534 0))(
  ( (Nil!12531) (Cons!12530 (h!13575 (_ BitVec 64)) (t!18770 List!12534)) )
))
(declare-fun contains!3157 (List!12534 (_ BitVec 64)) Bool)

(assert (=> b!647109 (= res!419418 (not (contains!3157 Nil!12531 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647110 () Bool)

(declare-fun res!419415 () Bool)

(assert (=> b!647110 (=> (not res!419415) (not e!371036))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!647110 (= res!419415 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18440 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647111 () Bool)

(declare-fun Unit!21997 () Unit!21994)

(assert (=> b!647111 (= e!371032 Unit!21997)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!300348 () array!38470)

(declare-fun b!647112 () Bool)

(declare-fun e!371033 () Bool)

(declare-fun arrayContainsKey!0 (array!38470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!647112 (= e!371033 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) index!984))))

(declare-fun b!647113 () Bool)

(declare-fun res!419407 () Bool)

(declare-fun e!371035 () Bool)

(assert (=> b!647113 (=> (not res!419407) (not e!371035))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!647113 (= res!419407 (validKeyInArray!0 k!1786))))

(declare-fun b!647114 () Bool)

(declare-fun res!419400 () Bool)

(assert (=> b!647114 (=> (not res!419400) (not e!371035))))

(assert (=> b!647114 (= res!419400 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun e!371038 () Bool)

(declare-fun b!647115 () Bool)

(assert (=> b!647115 (= e!371038 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) index!984))))

(declare-fun b!647116 () Bool)

(declare-fun res!419403 () Bool)

(assert (=> b!647116 (=> res!419403 e!371034)))

(declare-fun noDuplicate!417 (List!12534) Bool)

(assert (=> b!647116 (= res!419403 (not (noDuplicate!417 Nil!12531)))))

(declare-fun b!647117 () Bool)

(declare-fun e!371040 () Bool)

(assert (=> b!647117 (= e!371036 e!371040)))

(declare-fun res!419419 () Bool)

(assert (=> b!647117 (=> (not res!419419) (not e!371040))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!647117 (= res!419419 (= (select (store (arr!18440 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!647117 (= lt!300348 (array!38471 (store (arr!18440 a!2986) i!1108 k!1786) (size!18804 a!2986)))))

(declare-fun b!647118 () Bool)

(declare-fun res!419417 () Bool)

(assert (=> b!647118 (=> (not res!419417) (not e!371035))))

(assert (=> b!647118 (= res!419417 (and (= (size!18804 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18804 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18804 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!647119 () Bool)

(assert (=> b!647119 (= e!371035 e!371036)))

(declare-fun res!419408 () Bool)

(assert (=> b!647119 (=> (not res!419408) (not e!371036))))

(declare-datatypes ((SeekEntryResult!6887 0))(
  ( (MissingZero!6887 (index!29888 (_ BitVec 32))) (Found!6887 (index!29889 (_ BitVec 32))) (Intermediate!6887 (undefined!7699 Bool) (index!29890 (_ BitVec 32)) (x!58691 (_ BitVec 32))) (Undefined!6887) (MissingVacant!6887 (index!29891 (_ BitVec 32))) )
))
(declare-fun lt!300349 () SeekEntryResult!6887)

(assert (=> b!647119 (= res!419408 (or (= lt!300349 (MissingZero!6887 i!1108)) (= lt!300349 (MissingVacant!6887 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38470 (_ BitVec 32)) SeekEntryResult!6887)

(assert (=> b!647119 (= lt!300349 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!647120 () Bool)

(declare-fun e!371044 () Bool)

(declare-fun e!371043 () Bool)

(assert (=> b!647120 (= e!371044 e!371043)))

(declare-fun res!419414 () Bool)

(assert (=> b!647120 (=> res!419414 e!371043)))

(declare-fun lt!300357 () (_ BitVec 64))

(declare-fun lt!300343 () (_ BitVec 64))

(assert (=> b!647120 (= res!419414 (or (not (= (select (arr!18440 a!2986) j!136) lt!300343)) (not (= (select (arr!18440 a!2986) j!136) lt!300357))))))

(declare-fun e!371030 () Bool)

(assert (=> b!647120 e!371030))

(declare-fun res!419420 () Bool)

(assert (=> b!647120 (=> (not res!419420) (not e!371030))))

(assert (=> b!647120 (= res!419420 (= lt!300357 (select (arr!18440 a!2986) j!136)))))

(assert (=> b!647120 (= lt!300357 (select (store (arr!18440 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!647121 () Bool)

(declare-fun e!371031 () Bool)

(assert (=> b!647121 (= e!371040 e!371031)))

(declare-fun res!419413 () Bool)

(assert (=> b!647121 (=> (not res!419413) (not e!371031))))

(declare-fun lt!300356 () SeekEntryResult!6887)

(assert (=> b!647121 (= res!419413 (and (= lt!300356 (Found!6887 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18440 a!2986) index!984) (select (arr!18440 a!2986) j!136))) (not (= (select (arr!18440 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38470 (_ BitVec 32)) SeekEntryResult!6887)

(assert (=> b!647121 (= lt!300356 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18440 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647122 () Bool)

(declare-fun res!419405 () Bool)

(assert (=> b!647122 (=> (not res!419405) (not e!371035))))

(assert (=> b!647122 (= res!419405 (validKeyInArray!0 (select (arr!18440 a!2986) j!136)))))

(declare-fun b!647123 () Bool)

(assert (=> b!647123 (= e!371039 (not (contains!3157 Nil!12531 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!647124 () Bool)

(declare-fun res!419399 () Bool)

(assert (=> b!647124 (=> (not res!419399) (not e!371036))))

(declare-fun arrayNoDuplicates!0 (array!38470 (_ BitVec 32) List!12534) Bool)

(assert (=> b!647124 (= res!419399 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12531))))

(declare-fun b!647125 () Bool)

(declare-fun e!371041 () Bool)

(assert (=> b!647125 (= e!371030 e!371041)))

(declare-fun res!419410 () Bool)

(assert (=> b!647125 (=> res!419410 e!371041)))

(assert (=> b!647125 (= res!419410 (or (not (= (select (arr!18440 a!2986) j!136) lt!300343)) (not (= (select (arr!18440 a!2986) j!136) lt!300357)) (bvsge j!136 index!984)))))

(declare-fun b!647126 () Bool)

(declare-fun e!371042 () Bool)

(assert (=> b!647126 (= e!371043 e!371042)))

(declare-fun res!419412 () Bool)

(assert (=> b!647126 (=> res!419412 e!371042)))

(assert (=> b!647126 (= res!419412 (bvsge index!984 j!136))))

(declare-fun lt!300345 () Unit!21994)

(declare-fun e!371037 () Unit!21994)

(assert (=> b!647126 (= lt!300345 e!371037)))

(declare-fun c!74221 () Bool)

(assert (=> b!647126 (= c!74221 (bvslt j!136 index!984))))

(declare-fun b!647127 () Bool)

(assert (=> b!647127 (= e!371031 (not e!371044))))

(declare-fun res!419404 () Bool)

(assert (=> b!647127 (=> res!419404 e!371044)))

(declare-fun lt!300352 () SeekEntryResult!6887)

(assert (=> b!647127 (= res!419404 (not (= lt!300352 (Found!6887 index!984))))))

(declare-fun lt!300346 () Unit!21994)

(assert (=> b!647127 (= lt!300346 e!371032)))

(declare-fun c!74222 () Bool)

(assert (=> b!647127 (= c!74222 (= lt!300352 Undefined!6887))))

(assert (=> b!647127 (= lt!300352 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300343 lt!300348 mask!3053))))

(declare-fun e!371028 () Bool)

(assert (=> b!647127 e!371028))

(declare-fun res!419411 () Bool)

(assert (=> b!647127 (=> (not res!419411) (not e!371028))))

(declare-fun lt!300350 () (_ BitVec 32))

(declare-fun lt!300353 () SeekEntryResult!6887)

(assert (=> b!647127 (= res!419411 (= lt!300353 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 lt!300343 lt!300348 mask!3053)))))

(assert (=> b!647127 (= lt!300353 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 (select (arr!18440 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!647127 (= lt!300343 (select (store (arr!18440 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!300355 () Unit!21994)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21994)

(assert (=> b!647127 (= lt!300355 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!647127 (= lt!300350 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!419406 () Bool)

(assert (=> start!58666 (=> (not res!419406) (not e!371035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58666 (= res!419406 (validMask!0 mask!3053))))

(assert (=> start!58666 e!371035))

(assert (=> start!58666 true))

(declare-fun array_inv!14214 (array!38470) Bool)

(assert (=> start!58666 (array_inv!14214 a!2986)))

(declare-fun b!647128 () Bool)

(assert (=> b!647128 (= e!371042 e!371034)))

(declare-fun res!419402 () Bool)

(assert (=> b!647128 (=> res!419402 e!371034)))

(assert (=> b!647128 (= res!419402 (or (bvsge (size!18804 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18804 a!2986))))))

(assert (=> b!647128 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300344 () Unit!21994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21994)

(assert (=> b!647128 (= lt!300344 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!647128 e!371038))

(declare-fun res!419416 () Bool)

(assert (=> b!647128 (=> (not res!419416) (not e!371038))))

(assert (=> b!647128 (= res!419416 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136))))

(declare-fun b!647129 () Bool)

(assert (=> b!647129 (= e!371028 (= lt!300356 lt!300353))))

(declare-fun b!647130 () Bool)

(assert (=> b!647130 (= e!371041 e!371033)))

(declare-fun res!419401 () Bool)

(assert (=> b!647130 (=> (not res!419401) (not e!371033))))

(assert (=> b!647130 (= res!419401 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136))))

(declare-fun b!647131 () Bool)

(declare-fun Unit!21998 () Unit!21994)

(assert (=> b!647131 (= e!371037 Unit!21998)))

(declare-fun b!647132 () Bool)

(declare-fun Unit!21999 () Unit!21994)

(assert (=> b!647132 (= e!371037 Unit!21999)))

(declare-fun lt!300347 () Unit!21994)

(assert (=> b!647132 (= lt!300347 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300348 (select (arr!18440 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!647132 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300342 () Unit!21994)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12534) Unit!21994)

(assert (=> b!647132 (= lt!300342 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12531))))

(assert (=> b!647132 (arrayNoDuplicates!0 lt!300348 #b00000000000000000000000000000000 Nil!12531)))

(declare-fun lt!300354 () Unit!21994)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38470 (_ BitVec 32) (_ BitVec 32)) Unit!21994)

(assert (=> b!647132 (= lt!300354 (lemmaNoDuplicateFromThenFromBigger!0 lt!300348 #b00000000000000000000000000000000 j!136))))

(assert (=> b!647132 (arrayNoDuplicates!0 lt!300348 j!136 Nil!12531)))

(declare-fun lt!300351 () Unit!21994)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38470 (_ BitVec 64) (_ BitVec 32) List!12534) Unit!21994)

(assert (=> b!647132 (= lt!300351 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136 Nil!12531))))

(assert (=> b!647132 false))

(assert (= (and start!58666 res!419406) b!647118))

(assert (= (and b!647118 res!419417) b!647122))

(assert (= (and b!647122 res!419405) b!647113))

(assert (= (and b!647113 res!419407) b!647114))

(assert (= (and b!647114 res!419400) b!647119))

(assert (= (and b!647119 res!419408) b!647107))

(assert (= (and b!647107 res!419409) b!647124))

(assert (= (and b!647124 res!419399) b!647110))

(assert (= (and b!647110 res!419415) b!647117))

(assert (= (and b!647117 res!419419) b!647121))

(assert (= (and b!647121 res!419413) b!647127))

(assert (= (and b!647127 res!419411) b!647129))

(assert (= (and b!647127 c!74222) b!647108))

(assert (= (and b!647127 (not c!74222)) b!647111))

(assert (= (and b!647127 (not res!419404)) b!647120))

(assert (= (and b!647120 res!419420) b!647125))

(assert (= (and b!647125 (not res!419410)) b!647130))

(assert (= (and b!647130 res!419401) b!647112))

(assert (= (and b!647120 (not res!419414)) b!647126))

(assert (= (and b!647126 c!74221) b!647132))

(assert (= (and b!647126 (not c!74221)) b!647131))

(assert (= (and b!647126 (not res!419412)) b!647128))

(assert (= (and b!647128 res!419416) b!647115))

(assert (= (and b!647128 (not res!419402)) b!647116))

(assert (= (and b!647116 (not res!419403)) b!647109))

(assert (= (and b!647109 res!419418) b!647123))

(declare-fun m!620585 () Bool)

(assert (=> b!647122 m!620585))

(assert (=> b!647122 m!620585))

(declare-fun m!620587 () Bool)

(assert (=> b!647122 m!620587))

(assert (=> b!647128 m!620585))

(assert (=> b!647128 m!620585))

(declare-fun m!620589 () Bool)

(assert (=> b!647128 m!620589))

(assert (=> b!647128 m!620585))

(declare-fun m!620591 () Bool)

(assert (=> b!647128 m!620591))

(assert (=> b!647128 m!620585))

(declare-fun m!620593 () Bool)

(assert (=> b!647128 m!620593))

(assert (=> b!647115 m!620585))

(assert (=> b!647115 m!620585))

(declare-fun m!620595 () Bool)

(assert (=> b!647115 m!620595))

(declare-fun m!620597 () Bool)

(assert (=> b!647113 m!620597))

(assert (=> b!647125 m!620585))

(declare-fun m!620599 () Bool)

(assert (=> b!647123 m!620599))

(declare-fun m!620601 () Bool)

(assert (=> b!647114 m!620601))

(declare-fun m!620603 () Bool)

(assert (=> b!647107 m!620603))

(declare-fun m!620605 () Bool)

(assert (=> b!647110 m!620605))

(declare-fun m!620607 () Bool)

(assert (=> b!647124 m!620607))

(assert (=> b!647132 m!620585))

(declare-fun m!620609 () Bool)

(assert (=> b!647132 m!620609))

(declare-fun m!620611 () Bool)

(assert (=> b!647132 m!620611))

(assert (=> b!647132 m!620585))

(declare-fun m!620613 () Bool)

(assert (=> b!647132 m!620613))

(assert (=> b!647132 m!620585))

(declare-fun m!620615 () Bool)

(assert (=> b!647132 m!620615))

(declare-fun m!620617 () Bool)

(assert (=> b!647132 m!620617))

(assert (=> b!647132 m!620585))

(declare-fun m!620619 () Bool)

(assert (=> b!647132 m!620619))

(declare-fun m!620621 () Bool)

(assert (=> b!647132 m!620621))

(declare-fun m!620623 () Bool)

(assert (=> b!647117 m!620623))

(declare-fun m!620625 () Bool)

(assert (=> b!647117 m!620625))

(declare-fun m!620627 () Bool)

(assert (=> b!647116 m!620627))

(assert (=> b!647112 m!620585))

(assert (=> b!647112 m!620585))

(assert (=> b!647112 m!620595))

(declare-fun m!620629 () Bool)

(assert (=> b!647109 m!620629))

(assert (=> b!647120 m!620585))

(assert (=> b!647120 m!620623))

(declare-fun m!620631 () Bool)

(assert (=> b!647120 m!620631))

(declare-fun m!620633 () Bool)

(assert (=> start!58666 m!620633))

(declare-fun m!620635 () Bool)

(assert (=> start!58666 m!620635))

(declare-fun m!620637 () Bool)

(assert (=> b!647121 m!620637))

(assert (=> b!647121 m!620585))

(assert (=> b!647121 m!620585))

(declare-fun m!620639 () Bool)

(assert (=> b!647121 m!620639))

(assert (=> b!647130 m!620585))

(assert (=> b!647130 m!620585))

(assert (=> b!647130 m!620593))

(declare-fun m!620641 () Bool)

(assert (=> b!647119 m!620641))

(declare-fun m!620643 () Bool)

(assert (=> b!647127 m!620643))

(declare-fun m!620645 () Bool)

(assert (=> b!647127 m!620645))

(declare-fun m!620647 () Bool)

(assert (=> b!647127 m!620647))

(assert (=> b!647127 m!620585))

(assert (=> b!647127 m!620623))

(declare-fun m!620649 () Bool)

(assert (=> b!647127 m!620649))

(declare-fun m!620651 () Bool)

(assert (=> b!647127 m!620651))

(assert (=> b!647127 m!620585))

(declare-fun m!620653 () Bool)

(assert (=> b!647127 m!620653))

(push 1)

(assert (not b!647109))

(assert (not b!647132))

(assert (not b!647130))

(assert (not start!58666))

(assert (not b!647107))

(assert (not b!647128))

(assert (not b!647119))

(assert (not b!647113))

(assert (not b!647116))

(assert (not b!647123))

(assert (not b!647124))

(assert (not b!647112))

(assert (not b!647115))

(assert (not b!647127))

(assert (not b!647122))

(assert (not b!647121))

(assert (not b!647114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91427 () Bool)

(declare-fun res!419449 () Bool)

(declare-fun e!371091 () Bool)

(assert (=> d!91427 (=> res!419449 e!371091)))

(assert (=> d!91427 (= res!419449 (is-Nil!12531 Nil!12531))))

(assert (=> d!91427 (= (noDuplicate!417 Nil!12531) e!371091)))

(declare-fun b!647197 () Bool)

(declare-fun e!371092 () Bool)

(assert (=> b!647197 (= e!371091 e!371092)))

(declare-fun res!419450 () Bool)

(assert (=> b!647197 (=> (not res!419450) (not e!371092))))

(assert (=> b!647197 (= res!419450 (not (contains!3157 (t!18770 Nil!12531) (h!13575 Nil!12531))))))

(declare-fun b!647198 () Bool)

(assert (=> b!647198 (= e!371092 (noDuplicate!417 (t!18770 Nil!12531)))))

(assert (= (and d!91427 (not res!419449)) b!647197))

(assert (= (and b!647197 res!419450) b!647198))

(declare-fun m!620701 () Bool)

(assert (=> b!647197 m!620701))

(declare-fun m!620703 () Bool)

(assert (=> b!647198 m!620703))

(assert (=> b!647116 d!91427))

(declare-fun b!647229 () Bool)

(declare-fun c!74253 () Bool)

(declare-fun lt!300397 () (_ BitVec 64))

(assert (=> b!647229 (= c!74253 (= lt!300397 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371112 () SeekEntryResult!6887)

(declare-fun e!371113 () SeekEntryResult!6887)

(assert (=> b!647229 (= e!371112 e!371113)))

(declare-fun b!647230 () Bool)

(declare-fun e!371111 () SeekEntryResult!6887)

(assert (=> b!647230 (= e!371111 Undefined!6887)))

(declare-fun d!91429 () Bool)

(declare-fun lt!300398 () SeekEntryResult!6887)

(assert (=> d!91429 (and (or (is-Undefined!6887 lt!300398) (not (is-Found!6887 lt!300398)) (and (bvsge (index!29889 lt!300398) #b00000000000000000000000000000000) (bvslt (index!29889 lt!300398) (size!18804 a!2986)))) (or (is-Undefined!6887 lt!300398) (is-Found!6887 lt!300398) (not (is-MissingVacant!6887 lt!300398)) (not (= (index!29891 lt!300398) vacantSpotIndex!68)) (and (bvsge (index!29891 lt!300398) #b00000000000000000000000000000000) (bvslt (index!29891 lt!300398) (size!18804 a!2986)))) (or (is-Undefined!6887 lt!300398) (ite (is-Found!6887 lt!300398) (= (select (arr!18440 a!2986) (index!29889 lt!300398)) (select (arr!18440 a!2986) j!136)) (and (is-MissingVacant!6887 lt!300398) (= (index!29891 lt!300398) vacantSpotIndex!68) (= (select (arr!18440 a!2986) (index!29891 lt!300398)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91429 (= lt!300398 e!371111)))

(declare-fun c!74255 () Bool)

(assert (=> d!91429 (= c!74255 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91429 (= lt!300397 (select (arr!18440 a!2986) lt!300350))))

(assert (=> d!91429 (validMask!0 mask!3053)))

(assert (=> d!91429 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 (select (arr!18440 a!2986) j!136) a!2986 mask!3053) lt!300398)))

(declare-fun b!647231 () Bool)

(assert (=> b!647231 (= e!371111 e!371112)))

(declare-fun c!74254 () Bool)

(assert (=> b!647231 (= c!74254 (= lt!300397 (select (arr!18440 a!2986) j!136)))))

(declare-fun b!647232 () Bool)

(assert (=> b!647232 (= e!371113 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300350 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18440 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!647233 () Bool)

(assert (=> b!647233 (= e!371112 (Found!6887 lt!300350))))

(declare-fun b!647234 () Bool)

(assert (=> b!647234 (= e!371113 (MissingVacant!6887 vacantSpotIndex!68))))

(assert (= (and d!91429 c!74255) b!647230))

(assert (= (and d!91429 (not c!74255)) b!647231))

(assert (= (and b!647231 c!74254) b!647233))

(assert (= (and b!647231 (not c!74254)) b!647229))

(assert (= (and b!647229 c!74253) b!647234))

(assert (= (and b!647229 (not c!74253)) b!647232))

(declare-fun m!620729 () Bool)

(assert (=> d!91429 m!620729))

(declare-fun m!620731 () Bool)

(assert (=> d!91429 m!620731))

(declare-fun m!620733 () Bool)

(assert (=> d!91429 m!620733))

(assert (=> d!91429 m!620633))

(declare-fun m!620735 () Bool)

(assert (=> b!647232 m!620735))

(assert (=> b!647232 m!620735))

(assert (=> b!647232 m!620585))

(declare-fun m!620737 () Bool)

(assert (=> b!647232 m!620737))

(assert (=> b!647127 d!91429))

(declare-fun b!647235 () Bool)

(declare-fun c!74256 () Bool)

(declare-fun lt!300401 () (_ BitVec 64))

(assert (=> b!647235 (= c!74256 (= lt!300401 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371115 () SeekEntryResult!6887)

(declare-fun e!371116 () SeekEntryResult!6887)

(assert (=> b!647235 (= e!371115 e!371116)))

(declare-fun b!647236 () Bool)

(declare-fun e!371114 () SeekEntryResult!6887)

(assert (=> b!647236 (= e!371114 Undefined!6887)))

(declare-fun d!91443 () Bool)

(declare-fun lt!300402 () SeekEntryResult!6887)

(assert (=> d!91443 (and (or (is-Undefined!6887 lt!300402) (not (is-Found!6887 lt!300402)) (and (bvsge (index!29889 lt!300402) #b00000000000000000000000000000000) (bvslt (index!29889 lt!300402) (size!18804 lt!300348)))) (or (is-Undefined!6887 lt!300402) (is-Found!6887 lt!300402) (not (is-MissingVacant!6887 lt!300402)) (not (= (index!29891 lt!300402) vacantSpotIndex!68)) (and (bvsge (index!29891 lt!300402) #b00000000000000000000000000000000) (bvslt (index!29891 lt!300402) (size!18804 lt!300348)))) (or (is-Undefined!6887 lt!300402) (ite (is-Found!6887 lt!300402) (= (select (arr!18440 lt!300348) (index!29889 lt!300402)) lt!300343) (and (is-MissingVacant!6887 lt!300402) (= (index!29891 lt!300402) vacantSpotIndex!68) (= (select (arr!18440 lt!300348) (index!29891 lt!300402)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91443 (= lt!300402 e!371114)))

(declare-fun c!74258 () Bool)

(assert (=> d!91443 (= c!74258 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!91443 (= lt!300401 (select (arr!18440 lt!300348) index!984))))

(assert (=> d!91443 (validMask!0 mask!3053)))

(assert (=> d!91443 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!300343 lt!300348 mask!3053) lt!300402)))

(declare-fun b!647237 () Bool)

(assert (=> b!647237 (= e!371114 e!371115)))

(declare-fun c!74257 () Bool)

(assert (=> b!647237 (= c!74257 (= lt!300401 lt!300343))))

(declare-fun b!647238 () Bool)

(assert (=> b!647238 (= e!371116 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!300343 lt!300348 mask!3053))))

(declare-fun b!647239 () Bool)

(assert (=> b!647239 (= e!371115 (Found!6887 index!984))))

(declare-fun b!647240 () Bool)

(assert (=> b!647240 (= e!371116 (MissingVacant!6887 vacantSpotIndex!68))))

(assert (= (and d!91443 c!74258) b!647236))

(assert (= (and d!91443 (not c!74258)) b!647237))

(assert (= (and b!647237 c!74257) b!647239))

(assert (= (and b!647237 (not c!74257)) b!647235))

(assert (= (and b!647235 c!74256) b!647240))

(assert (= (and b!647235 (not c!74256)) b!647238))

(declare-fun m!620739 () Bool)

(assert (=> d!91443 m!620739))

(declare-fun m!620741 () Bool)

(assert (=> d!91443 m!620741))

(declare-fun m!620743 () Bool)

(assert (=> d!91443 m!620743))

(assert (=> d!91443 m!620633))

(assert (=> b!647238 m!620643))

(assert (=> b!647238 m!620643))

(declare-fun m!620745 () Bool)

(assert (=> b!647238 m!620745))

(assert (=> b!647127 d!91443))

(declare-fun d!91445 () Bool)

(declare-fun e!371150 () Bool)

(assert (=> d!91445 e!371150))

(declare-fun res!419475 () Bool)

(assert (=> d!91445 (=> (not res!419475) (not e!371150))))

(assert (=> d!91445 (= res!419475 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18804 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18804 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18804 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18804 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18804 a!2986))))))

(declare-fun lt!300419 () Unit!21994)

(declare-fun choose!9 (array!38470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21994)

(assert (=> d!91445 (= lt!300419 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 mask!3053))))

(assert (=> d!91445 (validMask!0 mask!3053)))

(assert (=> d!91445 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 mask!3053) lt!300419)))

(declare-fun b!647289 () Bool)

(assert (=> b!647289 (= e!371150 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 (select (arr!18440 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 (select (store (arr!18440 a!2986) i!1108 k!1786) j!136) (array!38471 (store (arr!18440 a!2986) i!1108 k!1786) (size!18804 a!2986)) mask!3053)))))

(assert (= (and d!91445 res!419475) b!647289))

(declare-fun m!620777 () Bool)

(assert (=> d!91445 m!620777))

(assert (=> d!91445 m!620633))

(assert (=> b!647289 m!620645))

(assert (=> b!647289 m!620623))

(assert (=> b!647289 m!620585))

(assert (=> b!647289 m!620653))

(assert (=> b!647289 m!620585))

(assert (=> b!647289 m!620645))

(declare-fun m!620785 () Bool)

(assert (=> b!647289 m!620785))

(assert (=> b!647127 d!91445))

(declare-fun d!91457 () Bool)

(declare-fun lt!300423 () (_ BitVec 32))

(assert (=> d!91457 (and (bvsge lt!300423 #b00000000000000000000000000000000) (bvslt lt!300423 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91457 (= lt!300423 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!91457 (validMask!0 mask!3053)))

(assert (=> d!91457 (= (nextIndex!0 index!984 x!910 mask!3053) lt!300423)))

(declare-fun bs!19333 () Bool)

(assert (= bs!19333 d!91457))

(declare-fun m!620787 () Bool)

(assert (=> bs!19333 m!620787))

(assert (=> bs!19333 m!620633))

(assert (=> b!647127 d!91457))

(declare-fun b!647292 () Bool)

(declare-fun c!74274 () Bool)

(declare-fun lt!300424 () (_ BitVec 64))

(assert (=> b!647292 (= c!74274 (= lt!300424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!371154 () SeekEntryResult!6887)

(declare-fun e!371155 () SeekEntryResult!6887)

(assert (=> b!647292 (= e!371154 e!371155)))

(declare-fun b!647293 () Bool)

(declare-fun e!371153 () SeekEntryResult!6887)

(assert (=> b!647293 (= e!371153 Undefined!6887)))

(declare-fun lt!300425 () SeekEntryResult!6887)

(declare-fun d!91459 () Bool)

(assert (=> d!91459 (and (or (is-Undefined!6887 lt!300425) (not (is-Found!6887 lt!300425)) (and (bvsge (index!29889 lt!300425) #b00000000000000000000000000000000) (bvslt (index!29889 lt!300425) (size!18804 lt!300348)))) (or (is-Undefined!6887 lt!300425) (is-Found!6887 lt!300425) (not (is-MissingVacant!6887 lt!300425)) (not (= (index!29891 lt!300425) vacantSpotIndex!68)) (and (bvsge (index!29891 lt!300425) #b00000000000000000000000000000000) (bvslt (index!29891 lt!300425) (size!18804 lt!300348)))) (or (is-Undefined!6887 lt!300425) (ite (is-Found!6887 lt!300425) (= (select (arr!18440 lt!300348) (index!29889 lt!300425)) lt!300343) (and (is-MissingVacant!6887 lt!300425) (= (index!29891 lt!300425) vacantSpotIndex!68) (= (select (arr!18440 lt!300348) (index!29891 lt!300425)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!91459 (= lt!300425 e!371153)))

(declare-fun c!74276 () Bool)

(assert (=> d!91459 (= c!74276 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!91459 (= lt!300424 (select (arr!18440 lt!300348) lt!300350))))

(assert (=> d!91459 (validMask!0 mask!3053)))

(assert (=> d!91459 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!300350 vacantSpotIndex!68 lt!300343 lt!300348 mask!3053) lt!300425)))

(declare-fun b!647294 () Bool)

(assert (=> b!647294 (= e!371153 e!371154)))

(declare-fun c!74275 () Bool)

(assert (=> b!647294 (= c!74275 (= lt!300424 lt!300343))))

(declare-fun b!647295 () Bool)

(assert (=> b!647295 (= e!371155 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!300350 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!300343 lt!300348 mask!3053))))

(declare-fun b!647296 () Bool)

(assert (=> b!647296 (= e!371154 (Found!6887 lt!300350))))

(declare-fun b!647297 () Bool)

(assert (=> b!647297 (= e!371155 (MissingVacant!6887 vacantSpotIndex!68))))

(assert (= (and d!91459 c!74276) b!647293))

(assert (= (and d!91459 (not c!74276)) b!647294))

(assert (= (and b!647294 c!74275) b!647296))

(assert (= (and b!647294 (not c!74275)) b!647292))

(assert (= (and b!647292 c!74274) b!647297))

(assert (= (and b!647292 (not c!74274)) b!647295))

(declare-fun m!620789 () Bool)

(assert (=> d!91459 m!620789))

(declare-fun m!620791 () Bool)

(assert (=> d!91459 m!620791))

(declare-fun m!620793 () Bool)

(assert (=> d!91459 m!620793))

(assert (=> d!91459 m!620633))

(assert (=> b!647295 m!620735))

(assert (=> b!647295 m!620735))

(declare-fun m!620795 () Bool)

(assert (=> b!647295 m!620795))

(assert (=> b!647127 d!91459))

(declare-fun d!91461 () Bool)

(declare-fun res!419482 () Bool)

(declare-fun e!371160 () Bool)

(assert (=> d!91461 (=> res!419482 e!371160)))

(assert (=> d!91461 (= res!419482 (= (select (arr!18440 lt!300348) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18440 a!2986) j!136)))))

(assert (=> d!91461 (= (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!371160)))

(declare-fun b!647302 () Bool)

(declare-fun e!371161 () Bool)

(assert (=> b!647302 (= e!371160 e!371161)))

(declare-fun res!419483 () Bool)

(assert (=> b!647302 (=> (not res!419483) (not e!371161))))

(assert (=> b!647302 (= res!419483 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18804 lt!300348)))))

(declare-fun b!647303 () Bool)

(assert (=> b!647303 (= e!371161 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91461 (not res!419482)) b!647302))

(assert (= (and b!647302 res!419483) b!647303))

(declare-fun m!620797 () Bool)

(assert (=> d!91461 m!620797))

(assert (=> b!647303 m!620585))

(declare-fun m!620799 () Bool)

(assert (=> b!647303 m!620799))

(assert (=> b!647128 d!91461))

(declare-fun d!91463 () Bool)

(assert (=> d!91463 (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300432 () Unit!21994)

(declare-fun choose!114 (array!38470 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21994)

(assert (=> d!91463 (= lt!300432 (choose!114 lt!300348 (select (arr!18440 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91463 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91463 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300432)))

(declare-fun bs!19334 () Bool)

(assert (= bs!19334 d!91463))

(assert (=> bs!19334 m!620585))

(assert (=> bs!19334 m!620589))

(assert (=> bs!19334 m!620585))

(declare-fun m!620801 () Bool)

(assert (=> bs!19334 m!620801))

(assert (=> b!647128 d!91463))

(declare-fun d!91465 () Bool)

(declare-fun res!419484 () Bool)

(declare-fun e!371168 () Bool)

(assert (=> d!91465 (=> res!419484 e!371168)))

(assert (=> d!91465 (= res!419484 (= (select (arr!18440 lt!300348) j!136) (select (arr!18440 a!2986) j!136)))))

(assert (=> d!91465 (= (arrayContainsKey!0 lt!300348 (select (arr!18440 a!2986) j!136) j!136) e!371168)))

(declare-fun b!647316 () Bool)

(declare-fun e!371169 () Bool)

(assert (=> b!647316 (= e!371168 e!371169)))

(declare-fun res!419485 () Bool)

(assert (=> b!647316 (=> (not res!419485) (not e!371169))))

(assert (=> b!647316 (= res!419485 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18804 lt!300348)))))

(declare-fun b!647317 () Bool)

