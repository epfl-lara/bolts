; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57940 () Bool)

(assert start!57940)

(declare-fun b!640496 () Bool)

(declare-fun res!414915 () Bool)

(declare-fun e!366664 () Bool)

(assert (=> b!640496 (=> (not res!414915) (not e!366664))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38323 0))(
  ( (array!38324 (arr!18377 (Array (_ BitVec 32) (_ BitVec 64))) (size!18741 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38323)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!640496 (= res!414915 (and (= (size!18741 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18741 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18741 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!640497 () Bool)

(declare-fun e!366671 () Bool)

(declare-fun e!366668 () Bool)

(assert (=> b!640497 (= e!366671 e!366668)))

(declare-fun res!414910 () Bool)

(assert (=> b!640497 (=> (not res!414910) (not e!366668))))

(declare-datatypes ((SeekEntryResult!6824 0))(
  ( (MissingZero!6824 (index!29615 (_ BitVec 32))) (Found!6824 (index!29616 (_ BitVec 32))) (Intermediate!6824 (undefined!7636 Bool) (index!29617 (_ BitVec 32)) (x!58397 (_ BitVec 32))) (Undefined!6824) (MissingVacant!6824 (index!29618 (_ BitVec 32))) )
))
(declare-fun lt!296524 () SeekEntryResult!6824)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!640497 (= res!414910 (and (= lt!296524 (Found!6824 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18377 a!2986) index!984) (select (arr!18377 a!2986) j!136))) (not (= (select (arr!18377 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38323 (_ BitVec 32)) SeekEntryResult!6824)

(assert (=> b!640497 (= lt!296524 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18377 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!640498 () Bool)

(declare-datatypes ((Unit!21654 0))(
  ( (Unit!21655) )
))
(declare-fun e!366669 () Unit!21654)

(declare-fun Unit!21656 () Unit!21654)

(assert (=> b!640498 (= e!366669 Unit!21656)))

(declare-fun b!640499 () Bool)

(declare-fun e!366666 () Bool)

(assert (=> b!640499 (= e!366664 e!366666)))

(declare-fun res!414917 () Bool)

(assert (=> b!640499 (=> (not res!414917) (not e!366666))))

(declare-fun lt!296530 () SeekEntryResult!6824)

(assert (=> b!640499 (= res!414917 (or (= lt!296530 (MissingZero!6824 i!1108)) (= lt!296530 (MissingVacant!6824 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38323 (_ BitVec 32)) SeekEntryResult!6824)

(assert (=> b!640499 (= lt!296530 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!640500 () Bool)

(declare-fun res!414908 () Bool)

(assert (=> b!640500 (=> (not res!414908) (not e!366666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38323 (_ BitVec 32)) Bool)

(assert (=> b!640500 (= res!414908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!640501 () Bool)

(declare-fun e!366673 () Bool)

(assert (=> b!640501 (= e!366673 (or (bvsge (size!18741 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18741 a!2986))))))

(declare-fun lt!296531 () array!38323)

(declare-datatypes ((List!12471 0))(
  ( (Nil!12468) (Cons!12467 (h!13512 (_ BitVec 64)) (t!18707 List!12471)) )
))
(declare-fun arrayNoDuplicates!0 (array!38323 (_ BitVec 32) List!12471) Bool)

(assert (=> b!640501 (arrayNoDuplicates!0 lt!296531 j!136 Nil!12468)))

(declare-fun lt!296521 () Unit!21654)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38323 (_ BitVec 32) (_ BitVec 32)) Unit!21654)

(assert (=> b!640501 (= lt!296521 (lemmaNoDuplicateFromThenFromBigger!0 lt!296531 #b00000000000000000000000000000000 j!136))))

(assert (=> b!640501 (arrayNoDuplicates!0 lt!296531 #b00000000000000000000000000000000 Nil!12468)))

(declare-fun lt!296527 () Unit!21654)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38323 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12471) Unit!21654)

(assert (=> b!640501 (= lt!296527 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12468))))

(declare-fun arrayContainsKey!0 (array!38323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!640501 (arrayContainsKey!0 lt!296531 (select (arr!18377 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!296522 () Unit!21654)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38323 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21654)

(assert (=> b!640501 (= lt!296522 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!296531 (select (arr!18377 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!640502 () Bool)

(declare-fun e!366665 () Bool)

(declare-fun lt!296523 () SeekEntryResult!6824)

(assert (=> b!640502 (= e!366665 (= lt!296524 lt!296523))))

(declare-fun b!640503 () Bool)

(declare-fun e!366667 () Bool)

(assert (=> b!640503 (= e!366667 e!366673)))

(declare-fun res!414907 () Bool)

(assert (=> b!640503 (=> res!414907 e!366673)))

(declare-fun lt!296525 () (_ BitVec 64))

(declare-fun lt!296528 () (_ BitVec 64))

(assert (=> b!640503 (= res!414907 (or (not (= (select (arr!18377 a!2986) j!136) lt!296525)) (not (= (select (arr!18377 a!2986) j!136) lt!296528)) (bvsge j!136 index!984)))))

(declare-fun e!366662 () Bool)

(assert (=> b!640503 e!366662))

(declare-fun res!414909 () Bool)

(assert (=> b!640503 (=> (not res!414909) (not e!366662))))

(assert (=> b!640503 (= res!414909 (= lt!296528 (select (arr!18377 a!2986) j!136)))))

(assert (=> b!640503 (= lt!296528 (select (store (arr!18377 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!640504 () Bool)

(declare-fun e!366670 () Bool)

(assert (=> b!640504 (= e!366662 e!366670)))

(declare-fun res!414914 () Bool)

(assert (=> b!640504 (=> res!414914 e!366670)))

(assert (=> b!640504 (= res!414914 (or (not (= (select (arr!18377 a!2986) j!136) lt!296525)) (not (= (select (arr!18377 a!2986) j!136) lt!296528)) (bvsge j!136 index!984)))))

(declare-fun b!640505 () Bool)

(declare-fun res!414916 () Bool)

(assert (=> b!640505 (=> (not res!414916) (not e!366664))))

(assert (=> b!640505 (= res!414916 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!414918 () Bool)

(assert (=> start!57940 (=> (not res!414918) (not e!366664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57940 (= res!414918 (validMask!0 mask!3053))))

(assert (=> start!57940 e!366664))

(assert (=> start!57940 true))

(declare-fun array_inv!14151 (array!38323) Bool)

(assert (=> start!57940 (array_inv!14151 a!2986)))

(declare-fun b!640506 () Bool)

(declare-fun Unit!21657 () Unit!21654)

(assert (=> b!640506 (= e!366669 Unit!21657)))

(assert (=> b!640506 false))

(declare-fun b!640507 () Bool)

(declare-fun e!366663 () Bool)

(assert (=> b!640507 (= e!366670 e!366663)))

(declare-fun res!414920 () Bool)

(assert (=> b!640507 (=> (not res!414920) (not e!366663))))

(assert (=> b!640507 (= res!414920 (arrayContainsKey!0 lt!296531 (select (arr!18377 a!2986) j!136) j!136))))

(declare-fun b!640508 () Bool)

(declare-fun res!414913 () Bool)

(assert (=> b!640508 (=> (not res!414913) (not e!366664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!640508 (= res!414913 (validKeyInArray!0 (select (arr!18377 a!2986) j!136)))))

(declare-fun b!640509 () Bool)

(declare-fun res!414904 () Bool)

(assert (=> b!640509 (=> (not res!414904) (not e!366666))))

(assert (=> b!640509 (= res!414904 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18377 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!640510 () Bool)

(assert (=> b!640510 (= e!366663 (arrayContainsKey!0 lt!296531 (select (arr!18377 a!2986) j!136) index!984))))

(declare-fun b!640511 () Bool)

(assert (=> b!640511 (= e!366666 e!366671)))

(declare-fun res!414905 () Bool)

(assert (=> b!640511 (=> (not res!414905) (not e!366671))))

(assert (=> b!640511 (= res!414905 (= (select (store (arr!18377 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!640511 (= lt!296531 (array!38324 (store (arr!18377 a!2986) i!1108 k!1786) (size!18741 a!2986)))))

(declare-fun b!640512 () Bool)

(assert (=> b!640512 (= e!366668 (not e!366667))))

(declare-fun res!414912 () Bool)

(assert (=> b!640512 (=> res!414912 e!366667)))

(declare-fun lt!296532 () SeekEntryResult!6824)

(assert (=> b!640512 (= res!414912 (not (= lt!296532 (Found!6824 index!984))))))

(declare-fun lt!296526 () Unit!21654)

(assert (=> b!640512 (= lt!296526 e!366669)))

(declare-fun c!73163 () Bool)

(assert (=> b!640512 (= c!73163 (= lt!296532 Undefined!6824))))

(assert (=> b!640512 (= lt!296532 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!296525 lt!296531 mask!3053))))

(assert (=> b!640512 e!366665))

(declare-fun res!414906 () Bool)

(assert (=> b!640512 (=> (not res!414906) (not e!366665))))

(declare-fun lt!296520 () (_ BitVec 32))

(assert (=> b!640512 (= res!414906 (= lt!296523 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296520 vacantSpotIndex!68 lt!296525 lt!296531 mask!3053)))))

(assert (=> b!640512 (= lt!296523 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!296520 vacantSpotIndex!68 (select (arr!18377 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!640512 (= lt!296525 (select (store (arr!18377 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!296529 () Unit!21654)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21654)

(assert (=> b!640512 (= lt!296529 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!296520 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!640512 (= lt!296520 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!640513 () Bool)

(declare-fun res!414911 () Bool)

(assert (=> b!640513 (=> (not res!414911) (not e!366664))))

(assert (=> b!640513 (= res!414911 (validKeyInArray!0 k!1786))))

(declare-fun b!640514 () Bool)

(declare-fun res!414919 () Bool)

(assert (=> b!640514 (=> (not res!414919) (not e!366666))))

(assert (=> b!640514 (= res!414919 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12468))))

(assert (= (and start!57940 res!414918) b!640496))

(assert (= (and b!640496 res!414915) b!640508))

(assert (= (and b!640508 res!414913) b!640513))

(assert (= (and b!640513 res!414911) b!640505))

(assert (= (and b!640505 res!414916) b!640499))

(assert (= (and b!640499 res!414917) b!640500))

(assert (= (and b!640500 res!414908) b!640514))

(assert (= (and b!640514 res!414919) b!640509))

(assert (= (and b!640509 res!414904) b!640511))

(assert (= (and b!640511 res!414905) b!640497))

(assert (= (and b!640497 res!414910) b!640512))

(assert (= (and b!640512 res!414906) b!640502))

(assert (= (and b!640512 c!73163) b!640506))

(assert (= (and b!640512 (not c!73163)) b!640498))

(assert (= (and b!640512 (not res!414912)) b!640503))

(assert (= (and b!640503 res!414909) b!640504))

(assert (= (and b!640504 (not res!414914)) b!640507))

(assert (= (and b!640507 res!414920) b!640510))

(assert (= (and b!640503 (not res!414907)) b!640501))

(declare-fun m!614405 () Bool)

(assert (=> b!640500 m!614405))

(declare-fun m!614407 () Bool)

(assert (=> b!640514 m!614407))

(declare-fun m!614409 () Bool)

(assert (=> b!640505 m!614409))

(declare-fun m!614411 () Bool)

(assert (=> b!640497 m!614411))

(declare-fun m!614413 () Bool)

(assert (=> b!640497 m!614413))

(assert (=> b!640497 m!614413))

(declare-fun m!614415 () Bool)

(assert (=> b!640497 m!614415))

(assert (=> b!640508 m!614413))

(assert (=> b!640508 m!614413))

(declare-fun m!614417 () Bool)

(assert (=> b!640508 m!614417))

(declare-fun m!614419 () Bool)

(assert (=> b!640511 m!614419))

(declare-fun m!614421 () Bool)

(assert (=> b!640511 m!614421))

(declare-fun m!614423 () Bool)

(assert (=> start!57940 m!614423))

(declare-fun m!614425 () Bool)

(assert (=> start!57940 m!614425))

(declare-fun m!614427 () Bool)

(assert (=> b!640509 m!614427))

(assert (=> b!640507 m!614413))

(assert (=> b!640507 m!614413))

(declare-fun m!614429 () Bool)

(assert (=> b!640507 m!614429))

(declare-fun m!614431 () Bool)

(assert (=> b!640513 m!614431))

(assert (=> b!640504 m!614413))

(assert (=> b!640503 m!614413))

(assert (=> b!640503 m!614419))

(declare-fun m!614433 () Bool)

(assert (=> b!640503 m!614433))

(assert (=> b!640510 m!614413))

(assert (=> b!640510 m!614413))

(declare-fun m!614435 () Bool)

(assert (=> b!640510 m!614435))

(declare-fun m!614437 () Bool)

(assert (=> b!640512 m!614437))

(declare-fun m!614439 () Bool)

(assert (=> b!640512 m!614439))

(declare-fun m!614441 () Bool)

(assert (=> b!640512 m!614441))

(declare-fun m!614443 () Bool)

(assert (=> b!640512 m!614443))

(assert (=> b!640512 m!614419))

(assert (=> b!640512 m!614413))

(declare-fun m!614445 () Bool)

(assert (=> b!640512 m!614445))

(assert (=> b!640512 m!614413))

(declare-fun m!614447 () Bool)

(assert (=> b!640512 m!614447))

(declare-fun m!614449 () Bool)

(assert (=> b!640499 m!614449))

(assert (=> b!640501 m!614413))

(declare-fun m!614451 () Bool)

(assert (=> b!640501 m!614451))

(assert (=> b!640501 m!614413))

(declare-fun m!614453 () Bool)

(assert (=> b!640501 m!614453))

(assert (=> b!640501 m!614413))

(declare-fun m!614455 () Bool)

(assert (=> b!640501 m!614455))

(declare-fun m!614457 () Bool)

(assert (=> b!640501 m!614457))

(declare-fun m!614459 () Bool)

(assert (=> b!640501 m!614459))

(declare-fun m!614461 () Bool)

(assert (=> b!640501 m!614461))

(push 1)

(assert (not b!640510))

(assert (not b!640499))

(assert (not b!640508))

(assert (not b!640501))

(assert (not b!640507))

(assert (not b!640505))

(assert (not b!640514))

(assert (not b!640513))

(assert (not start!57940))

(assert (not b!640500))

(assert (not b!640497))

(assert (not b!640512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

