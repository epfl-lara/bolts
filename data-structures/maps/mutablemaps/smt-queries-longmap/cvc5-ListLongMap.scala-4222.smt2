; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57942 () Bool)

(assert start!57942)

(declare-fun res!414965 () Bool)

(declare-fun e!366707 () Bool)

(assert (=> start!57942 (=> (not res!414965) (not e!366707))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57942 (= res!414965 (validMask!0 mask!3053))))

(assert (=> start!57942 e!366707))

(assert (=> start!57942 true))

(declare-datatypes ((array!38325 0))(
  ( (array!38326 (arr!18378 (Array (_ BitVec 32) (_ BitVec 64))) (size!18742 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38325)

(declare-fun array_inv!14152 (array!38325) Bool)

(assert (=> start!57942 (array_inv!14152 a!2986)))

(declare-fun b!640553 () Bool)

(declare-fun res!414956 () Bool)

(declare-fun e!366701 () Bool)

(assert (=> b!640553 (=> (not res!414956) (not e!366701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38325 (_ BitVec 32)) Bool)

(assert (=> b!640553 (= res!414956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640554 () Bool)

(declare-datatypes ((Unit!21658 0))(
  ( (Unit!21659) )
))
(declare-fun e!366702 () Unit!21658)

(declare-fun Unit!21660 () Unit!21658)

(assert (=> b!640554 (= e!366702 Unit!21660)))

(declare-fun b!640555 () Bool)

(declare-fun e!366705 () Bool)

(declare-fun e!366698 () Bool)

(assert (=> b!640555 (= e!366705 e!366698)))

(declare-fun res!414969 () Bool)

(assert (=> b!640555 (=> res!414969 e!366698)))

(declare-fun lt!296560 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!296570 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640555 (= res!414969 (or (not (= (select (arr!18378 a!2986) j!136) lt!296570)) (not (= (select (arr!18378 a!2986) j!136) lt!296560)) (bvsge j!136 index!984)))))

(declare-fun e!366709 () Bool)

(assert (=> b!640555 e!366709))

(declare-fun res!414968 () Bool)

(assert (=> b!640555 (=> (not res!414968) (not e!366709))))

(assert (=> b!640555 (= res!414968 (= lt!296560 (select (arr!18378 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!640555 (= lt!296560 (select (store (arr!18378 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640556 () Bool)

(declare-fun e!366703 () Bool)

(assert (=> b!640556 (= e!366703 (not e!366705))))

(declare-fun res!414970 () Bool)

(assert (=> b!640556 (=> res!414970 e!366705)))

(declare-datatypes ((SeekEntryResult!6825 0))(
  ( (MissingZero!6825 (index!29619 (_ BitVec 32))) (Found!6825 (index!29620 (_ BitVec 32))) (Intermediate!6825 (undefined!7637 Bool) (index!29621 (_ BitVec 32)) (x!58406 (_ BitVec 32))) (Undefined!6825) (MissingVacant!6825 (index!29622 (_ BitVec 32))) )
))
(declare-fun lt!296561 () SeekEntryResult!6825)

(assert (=> b!640556 (= res!414970 (not (= lt!296561 (Found!6825 index!984))))))

(declare-fun lt!296563 () Unit!21658)

(assert (=> b!640556 (= lt!296563 e!366702)))

(declare-fun c!73166 () Bool)

(assert (=> b!640556 (= c!73166 (= lt!296561 Undefined!6825))))

(declare-fun lt!296571 () array!38325)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38325 (_ BitVec 32)) SeekEntryResult!6825)

(assert (=> b!640556 (= lt!296561 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296570 lt!296571 mask!3053))))

(declare-fun e!366700 () Bool)

(assert (=> b!640556 e!366700))

(declare-fun res!414962 () Bool)

(assert (=> b!640556 (=> (not res!414962) (not e!366700))))

(declare-fun lt!296562 () (_ BitVec 32))

(declare-fun lt!296559 () SeekEntryResult!6825)

(assert (=> b!640556 (= res!414962 (= lt!296559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296562 vacantSpotIndex!68 lt!296570 lt!296571 mask!3053)))))

(assert (=> b!640556 (= lt!296559 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296562 vacantSpotIndex!68 (select (arr!18378 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640556 (= lt!296570 (select (store (arr!18378 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296565 () Unit!21658)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21658)

(assert (=> b!640556 (= lt!296565 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296562 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640556 (= lt!296562 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640557 () Bool)

(assert (=> b!640557 (= e!366698 true)))

(declare-datatypes ((List!12472 0))(
  ( (Nil!12469) (Cons!12468 (h!13513 (_ BitVec 64)) (t!18708 List!12472)) )
))
(declare-fun arrayNoDuplicates!0 (array!38325 (_ BitVec 32) List!12472) Bool)

(assert (=> b!640557 (arrayNoDuplicates!0 lt!296571 j!136 Nil!12469)))

(declare-fun lt!296569 () Unit!21658)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38325 (_ BitVec 32) (_ BitVec 32)) Unit!21658)

(assert (=> b!640557 (= lt!296569 (lemmaNoDuplicateFromThenFromBigger!0 lt!296571 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640557 (arrayNoDuplicates!0 lt!296571 #b00000000000000000000000000000000 Nil!12469)))

(declare-fun lt!296567 () Unit!21658)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12472) Unit!21658)

(assert (=> b!640557 (= lt!296567 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12469))))

(declare-fun arrayContainsKey!0 (array!38325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640557 (arrayContainsKey!0 lt!296571 (select (arr!18378 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296566 () Unit!21658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38325 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21658)

(assert (=> b!640557 (= lt!296566 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296571 (select (arr!18378 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640558 () Bool)

(declare-fun Unit!21661 () Unit!21658)

(assert (=> b!640558 (= e!366702 Unit!21661)))

(assert (=> b!640558 false))

(declare-fun b!640559 () Bool)

(declare-fun res!414967 () Bool)

(assert (=> b!640559 (=> (not res!414967) (not e!366707))))

(assert (=> b!640559 (= res!414967 (and (= (size!18742 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18742 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18742 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640560 () Bool)

(declare-fun res!414961 () Bool)

(assert (=> b!640560 (=> (not res!414961) (not e!366707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640560 (= res!414961 (validKeyInArray!0 k!1786))))

(declare-fun b!640561 () Bool)

(declare-fun e!366708 () Bool)

(assert (=> b!640561 (= e!366708 e!366703)))

(declare-fun res!414971 () Bool)

(assert (=> b!640561 (=> (not res!414971) (not e!366703))))

(declare-fun lt!296568 () SeekEntryResult!6825)

(assert (=> b!640561 (= res!414971 (and (= lt!296568 (Found!6825 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18378 a!2986) index!984) (select (arr!18378 a!2986) j!136))) (not (= (select (arr!18378 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!640561 (= lt!296568 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18378 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640562 () Bool)

(assert (=> b!640562 (= e!366700 (= lt!296568 lt!296559))))

(declare-fun b!640563 () Bool)

(declare-fun e!366704 () Bool)

(assert (=> b!640563 (= e!366709 e!366704)))

(declare-fun res!414955 () Bool)

(assert (=> b!640563 (=> res!414955 e!366704)))

(assert (=> b!640563 (= res!414955 (or (not (= (select (arr!18378 a!2986) j!136) lt!296570)) (not (= (select (arr!18378 a!2986) j!136) lt!296560)) (bvsge j!136 index!984)))))

(declare-fun b!640564 () Bool)

(declare-fun e!366699 () Bool)

(assert (=> b!640564 (= e!366704 e!366699)))

(declare-fun res!414959 () Bool)

(assert (=> b!640564 (=> (not res!414959) (not e!366699))))

(assert (=> b!640564 (= res!414959 (arrayContainsKey!0 lt!296571 (select (arr!18378 a!2986) j!136) j!136))))

(declare-fun b!640565 () Bool)

(assert (=> b!640565 (= e!366707 e!366701)))

(declare-fun res!414957 () Bool)

(assert (=> b!640565 (=> (not res!414957) (not e!366701))))

(declare-fun lt!296564 () SeekEntryResult!6825)

(assert (=> b!640565 (= res!414957 (or (= lt!296564 (MissingZero!6825 i!1108)) (= lt!296564 (MissingVacant!6825 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38325 (_ BitVec 32)) SeekEntryResult!6825)

(assert (=> b!640565 (= lt!296564 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640566 () Bool)

(declare-fun res!414966 () Bool)

(assert (=> b!640566 (=> (not res!414966) (not e!366701))))

(assert (=> b!640566 (= res!414966 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18378 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640567 () Bool)

(declare-fun res!414960 () Bool)

(assert (=> b!640567 (=> (not res!414960) (not e!366707))))

(assert (=> b!640567 (= res!414960 (validKeyInArray!0 (select (arr!18378 a!2986) j!136)))))

(declare-fun b!640568 () Bool)

(declare-fun res!414958 () Bool)

(assert (=> b!640568 (=> (not res!414958) (not e!366707))))

(assert (=> b!640568 (= res!414958 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!640569 () Bool)

(assert (=> b!640569 (= e!366699 (arrayContainsKey!0 lt!296571 (select (arr!18378 a!2986) j!136) index!984))))

(declare-fun b!640570 () Bool)

(declare-fun res!414964 () Bool)

(assert (=> b!640570 (=> (not res!414964) (not e!366701))))

(assert (=> b!640570 (= res!414964 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12469))))

(declare-fun b!640571 () Bool)

(assert (=> b!640571 (= e!366701 e!366708)))

(declare-fun res!414963 () Bool)

(assert (=> b!640571 (=> (not res!414963) (not e!366708))))

(assert (=> b!640571 (= res!414963 (= (select (store (arr!18378 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640571 (= lt!296571 (array!38326 (store (arr!18378 a!2986) i!1108 k!1786) (size!18742 a!2986)))))

(assert (= (and start!57942 res!414965) b!640559))

(assert (= (and b!640559 res!414967) b!640567))

(assert (= (and b!640567 res!414960) b!640560))

(assert (= (and b!640560 res!414961) b!640568))

(assert (= (and b!640568 res!414958) b!640565))

(assert (= (and b!640565 res!414957) b!640553))

(assert (= (and b!640553 res!414956) b!640570))

(assert (= (and b!640570 res!414964) b!640566))

(assert (= (and b!640566 res!414966) b!640571))

(assert (= (and b!640571 res!414963) b!640561))

(assert (= (and b!640561 res!414971) b!640556))

(assert (= (and b!640556 res!414962) b!640562))

(assert (= (and b!640556 c!73166) b!640558))

(assert (= (and b!640556 (not c!73166)) b!640554))

(assert (= (and b!640556 (not res!414970)) b!640555))

(assert (= (and b!640555 res!414968) b!640563))

(assert (= (and b!640563 (not res!414955)) b!640564))

(assert (= (and b!640564 res!414959) b!640569))

(assert (= (and b!640555 (not res!414969)) b!640557))

(declare-fun m!614463 () Bool)

(assert (=> start!57942 m!614463))

(declare-fun m!614465 () Bool)

(assert (=> start!57942 m!614465))

(declare-fun m!614467 () Bool)

(assert (=> b!640557 m!614467))

(declare-fun m!614469 () Bool)

(assert (=> b!640557 m!614469))

(declare-fun m!614471 () Bool)

(assert (=> b!640557 m!614471))

(assert (=> b!640557 m!614471))

(declare-fun m!614473 () Bool)

(assert (=> b!640557 m!614473))

(assert (=> b!640557 m!614471))

(declare-fun m!614475 () Bool)

(assert (=> b!640557 m!614475))

(declare-fun m!614477 () Bool)

(assert (=> b!640557 m!614477))

(declare-fun m!614479 () Bool)

(assert (=> b!640557 m!614479))

(declare-fun m!614481 () Bool)

(assert (=> b!640561 m!614481))

(assert (=> b!640561 m!614471))

(assert (=> b!640561 m!614471))

(declare-fun m!614483 () Bool)

(assert (=> b!640561 m!614483))

(declare-fun m!614485 () Bool)

(assert (=> b!640571 m!614485))

(declare-fun m!614487 () Bool)

(assert (=> b!640571 m!614487))

(declare-fun m!614489 () Bool)

(assert (=> b!640553 m!614489))

(declare-fun m!614491 () Bool)

(assert (=> b!640570 m!614491))

(assert (=> b!640555 m!614471))

(assert (=> b!640555 m!614485))

(declare-fun m!614493 () Bool)

(assert (=> b!640555 m!614493))

(assert (=> b!640563 m!614471))

(assert (=> b!640564 m!614471))

(assert (=> b!640564 m!614471))

(declare-fun m!614495 () Bool)

(assert (=> b!640564 m!614495))

(declare-fun m!614497 () Bool)

(assert (=> b!640556 m!614497))

(declare-fun m!614499 () Bool)

(assert (=> b!640556 m!614499))

(assert (=> b!640556 m!614471))

(declare-fun m!614501 () Bool)

(assert (=> b!640556 m!614501))

(assert (=> b!640556 m!614471))

(declare-fun m!614503 () Bool)

(assert (=> b!640556 m!614503))

(declare-fun m!614505 () Bool)

(assert (=> b!640556 m!614505))

(assert (=> b!640556 m!614485))

(declare-fun m!614507 () Bool)

(assert (=> b!640556 m!614507))

(declare-fun m!614509 () Bool)

(assert (=> b!640566 m!614509))

(declare-fun m!614511 () Bool)

(assert (=> b!640560 m!614511))

(assert (=> b!640569 m!614471))

(assert (=> b!640569 m!614471))

(declare-fun m!614513 () Bool)

(assert (=> b!640569 m!614513))

(assert (=> b!640567 m!614471))

(assert (=> b!640567 m!614471))

(declare-fun m!614515 () Bool)

(assert (=> b!640567 m!614515))

(declare-fun m!614517 () Bool)

(assert (=> b!640568 m!614517))

(declare-fun m!614519 () Bool)

(assert (=> b!640565 m!614519))

(push 1)

