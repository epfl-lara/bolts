; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56152 () Bool)

(assert start!56152)

(declare-fun b!620463 () Bool)

(declare-fun e!355878 () Bool)

(declare-fun e!355873 () Bool)

(assert (=> b!620463 (= e!355878 e!355873)))

(declare-fun res!399930 () Bool)

(assert (=> b!620463 (=> (not res!399930) (not e!355873))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37585 0))(
  ( (array!37586 (arr!18035 (Array (_ BitVec 32) (_ BitVec 64))) (size!18399 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37585)

(assert (=> b!620463 (= res!399930 (= (select (store (arr!18035 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!286890 () array!37585)

(assert (=> b!620463 (= lt!286890 (array!37586 (store (arr!18035 a!2986) i!1108 k!1786) (size!18399 a!2986)))))

(declare-fun b!620464 () Bool)

(declare-fun res!399924 () Bool)

(declare-fun e!355879 () Bool)

(assert (=> b!620464 (=> (not res!399924) (not e!355879))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!620464 (= res!399924 (validKeyInArray!0 (select (arr!18035 a!2986) j!136)))))

(declare-fun b!620465 () Bool)

(declare-fun res!399926 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!620465 (= res!399926 (bvsge j!136 index!984))))

(declare-fun e!355872 () Bool)

(assert (=> b!620465 (=> res!399926 e!355872)))

(declare-fun e!355876 () Bool)

(assert (=> b!620465 (= e!355876 e!355872)))

(declare-fun b!620466 () Bool)

(declare-fun e!355871 () Bool)

(declare-fun arrayContainsKey!0 (array!37585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!620466 (= e!355871 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) index!984))))

(declare-fun b!620467 () Bool)

(declare-fun res!399928 () Bool)

(assert (=> b!620467 (=> (not res!399928) (not e!355878))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!620467 (= res!399928 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18035 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!620468 () Bool)

(declare-fun res!399932 () Bool)

(assert (=> b!620468 (= res!399932 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) j!136))))

(assert (=> b!620468 (=> (not res!399932) (not e!355871))))

(assert (=> b!620468 (= e!355872 e!355871)))

(declare-fun b!620470 () Bool)

(declare-datatypes ((Unit!20640 0))(
  ( (Unit!20641) )
))
(declare-fun e!355866 () Unit!20640)

(declare-fun Unit!20642 () Unit!20640)

(assert (=> b!620470 (= e!355866 Unit!20642)))

(declare-fun b!620471 () Bool)

(assert (=> b!620471 false))

(declare-fun lt!286888 () Unit!20640)

(declare-datatypes ((List!12129 0))(
  ( (Nil!12126) (Cons!12125 (h!13170 (_ BitVec 64)) (t!18365 List!12129)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37585 (_ BitVec 64) (_ BitVec 32) List!12129) Unit!20640)

(assert (=> b!620471 (= lt!286888 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286890 (select (arr!18035 a!2986) j!136) index!984 Nil!12126))))

(declare-fun arrayNoDuplicates!0 (array!37585 (_ BitVec 32) List!12129) Bool)

(assert (=> b!620471 (arrayNoDuplicates!0 lt!286890 index!984 Nil!12126)))

(declare-fun lt!286895 () Unit!20640)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37585 (_ BitVec 32) (_ BitVec 32)) Unit!20640)

(assert (=> b!620471 (= lt!286895 (lemmaNoDuplicateFromThenFromBigger!0 lt!286890 #b00000000000000000000000000000000 index!984))))

(assert (=> b!620471 (arrayNoDuplicates!0 lt!286890 #b00000000000000000000000000000000 Nil!12126)))

(declare-fun lt!286879 () Unit!20640)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37585 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12129) Unit!20640)

(assert (=> b!620471 (= lt!286879 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12126))))

(assert (=> b!620471 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286886 () Unit!20640)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37585 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20640)

(assert (=> b!620471 (= lt!286886 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286890 (select (arr!18035 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!355877 () Bool)

(assert (=> b!620471 e!355877))

(declare-fun res!399925 () Bool)

(assert (=> b!620471 (=> (not res!399925) (not e!355877))))

(assert (=> b!620471 (= res!399925 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) j!136))))

(declare-fun e!355867 () Unit!20640)

(declare-fun Unit!20643 () Unit!20640)

(assert (=> b!620471 (= e!355867 Unit!20643)))

(declare-fun b!620472 () Bool)

(declare-fun res!399927 () Bool)

(assert (=> b!620472 (=> (not res!399927) (not e!355879))))

(assert (=> b!620472 (= res!399927 (and (= (size!18399 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18399 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18399 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!620473 () Bool)

(declare-fun res!399929 () Bool)

(assert (=> b!620473 (=> (not res!399929) (not e!355879))))

(assert (=> b!620473 (= res!399929 (validKeyInArray!0 k!1786))))

(declare-fun b!620474 () Bool)

(declare-fun res!399917 () Bool)

(assert (=> b!620474 (=> (not res!399917) (not e!355879))))

(assert (=> b!620474 (= res!399917 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!620475 () Bool)

(declare-fun Unit!20644 () Unit!20640)

(assert (=> b!620475 (= e!355867 Unit!20644)))

(declare-fun b!620476 () Bool)

(assert (=> b!620476 false))

(declare-fun lt!286892 () Unit!20640)

(assert (=> b!620476 (= lt!286892 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286890 (select (arr!18035 a!2986) j!136) j!136 Nil!12126))))

(assert (=> b!620476 (arrayNoDuplicates!0 lt!286890 j!136 Nil!12126)))

(declare-fun lt!286883 () Unit!20640)

(assert (=> b!620476 (= lt!286883 (lemmaNoDuplicateFromThenFromBigger!0 lt!286890 #b00000000000000000000000000000000 j!136))))

(assert (=> b!620476 (arrayNoDuplicates!0 lt!286890 #b00000000000000000000000000000000 Nil!12126)))

(declare-fun lt!286893 () Unit!20640)

(assert (=> b!620476 (= lt!286893 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12126))))

(assert (=> b!620476 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286889 () Unit!20640)

(assert (=> b!620476 (= lt!286889 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286890 (select (arr!18035 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!355874 () Unit!20640)

(declare-fun Unit!20645 () Unit!20640)

(assert (=> b!620476 (= e!355874 Unit!20645)))

(declare-fun b!620477 () Bool)

(declare-fun e!355875 () Bool)

(declare-datatypes ((SeekEntryResult!6482 0))(
  ( (MissingZero!6482 (index!28211 (_ BitVec 32))) (Found!6482 (index!28212 (_ BitVec 32))) (Intermediate!6482 (undefined!7294 Bool) (index!28213 (_ BitVec 32)) (x!57011 (_ BitVec 32))) (Undefined!6482) (MissingVacant!6482 (index!28214 (_ BitVec 32))) )
))
(declare-fun lt!286881 () SeekEntryResult!6482)

(declare-fun lt!286882 () SeekEntryResult!6482)

(assert (=> b!620477 (= e!355875 (= lt!286881 lt!286882))))

(declare-fun b!620478 () Bool)

(declare-fun e!355870 () Bool)

(assert (=> b!620478 (= e!355873 e!355870)))

(declare-fun res!399931 () Bool)

(assert (=> b!620478 (=> (not res!399931) (not e!355870))))

(assert (=> b!620478 (= res!399931 (and (= lt!286881 (Found!6482 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18035 a!2986) index!984) (select (arr!18035 a!2986) j!136))) (not (= (select (arr!18035 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37585 (_ BitVec 32)) SeekEntryResult!6482)

(assert (=> b!620478 (= lt!286881 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18035 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!620479 () Bool)

(assert (=> b!620479 (= e!355870 (not true))))

(declare-fun lt!286884 () Unit!20640)

(assert (=> b!620479 (= lt!286884 e!355866)))

(declare-fun c!70642 () Bool)

(declare-fun lt!286887 () SeekEntryResult!6482)

(assert (=> b!620479 (= c!70642 (= lt!286887 (Found!6482 index!984)))))

(declare-fun lt!286896 () Unit!20640)

(declare-fun e!355869 () Unit!20640)

(assert (=> b!620479 (= lt!286896 e!355869)))

(declare-fun c!70640 () Bool)

(assert (=> b!620479 (= c!70640 (= lt!286887 Undefined!6482))))

(declare-fun lt!286894 () (_ BitVec 64))

(assert (=> b!620479 (= lt!286887 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286894 lt!286890 mask!3053))))

(assert (=> b!620479 e!355875))

(declare-fun res!399922 () Bool)

(assert (=> b!620479 (=> (not res!399922) (not e!355875))))

(declare-fun lt!286880 () (_ BitVec 32))

(assert (=> b!620479 (= res!399922 (= lt!286882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286880 vacantSpotIndex!68 lt!286894 lt!286890 mask!3053)))))

(assert (=> b!620479 (= lt!286882 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286880 vacantSpotIndex!68 (select (arr!18035 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!620479 (= lt!286894 (select (store (arr!18035 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286878 () Unit!20640)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37585 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20640)

(assert (=> b!620479 (= lt!286878 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286880 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!620479 (= lt!286880 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!620480 () Bool)

(declare-fun res!399920 () Bool)

(assert (=> b!620480 (=> (not res!399920) (not e!355878))))

(assert (=> b!620480 (= res!399920 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12126))))

(declare-fun b!620481 () Bool)

(declare-fun Unit!20646 () Unit!20640)

(assert (=> b!620481 (= e!355866 Unit!20646)))

(declare-fun res!399919 () Bool)

(assert (=> b!620481 (= res!399919 (= (select (store (arr!18035 a!2986) i!1108 k!1786) index!984) (select (arr!18035 a!2986) j!136)))))

(assert (=> b!620481 (=> (not res!399919) (not e!355876))))

(assert (=> b!620481 e!355876))

(declare-fun c!70641 () Bool)

(assert (=> b!620481 (= c!70641 (bvslt j!136 index!984))))

(declare-fun lt!286877 () Unit!20640)

(assert (=> b!620481 (= lt!286877 e!355874)))

(declare-fun c!70643 () Bool)

(assert (=> b!620481 (= c!70643 (bvslt index!984 j!136))))

(declare-fun lt!286891 () Unit!20640)

(assert (=> b!620481 (= lt!286891 e!355867)))

(assert (=> b!620481 false))

(declare-fun b!620482 () Bool)

(assert (=> b!620482 (= e!355879 e!355878)))

(declare-fun res!399923 () Bool)

(assert (=> b!620482 (=> (not res!399923) (not e!355878))))

(declare-fun lt!286885 () SeekEntryResult!6482)

(assert (=> b!620482 (= res!399923 (or (= lt!286885 (MissingZero!6482 i!1108)) (= lt!286885 (MissingVacant!6482 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37585 (_ BitVec 32)) SeekEntryResult!6482)

(assert (=> b!620482 (= lt!286885 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!399921 () Bool)

(assert (=> start!56152 (=> (not res!399921) (not e!355879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56152 (= res!399921 (validMask!0 mask!3053))))

(assert (=> start!56152 e!355879))

(assert (=> start!56152 true))

(declare-fun array_inv!13809 (array!37585) Bool)

(assert (=> start!56152 (array_inv!13809 a!2986)))

(declare-fun b!620469 () Bool)

(declare-fun res!399918 () Bool)

(assert (=> b!620469 (=> (not res!399918) (not e!355878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37585 (_ BitVec 32)) Bool)

(assert (=> b!620469 (= res!399918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!620483 () Bool)

(declare-fun Unit!20647 () Unit!20640)

(assert (=> b!620483 (= e!355869 Unit!20647)))

(declare-fun b!620484 () Bool)

(assert (=> b!620484 (= e!355877 (arrayContainsKey!0 lt!286890 (select (arr!18035 a!2986) j!136) index!984))))

(declare-fun b!620485 () Bool)

(declare-fun Unit!20648 () Unit!20640)

(assert (=> b!620485 (= e!355874 Unit!20648)))

(declare-fun b!620486 () Bool)

(declare-fun Unit!20649 () Unit!20640)

(assert (=> b!620486 (= e!355869 Unit!20649)))

(assert (=> b!620486 false))

(assert (= (and start!56152 res!399921) b!620472))

(assert (= (and b!620472 res!399927) b!620464))

(assert (= (and b!620464 res!399924) b!620473))

(assert (= (and b!620473 res!399929) b!620474))

(assert (= (and b!620474 res!399917) b!620482))

(assert (= (and b!620482 res!399923) b!620469))

(assert (= (and b!620469 res!399918) b!620480))

(assert (= (and b!620480 res!399920) b!620467))

(assert (= (and b!620467 res!399928) b!620463))

(assert (= (and b!620463 res!399930) b!620478))

(assert (= (and b!620478 res!399931) b!620479))

(assert (= (and b!620479 res!399922) b!620477))

(assert (= (and b!620479 c!70640) b!620486))

(assert (= (and b!620479 (not c!70640)) b!620483))

(assert (= (and b!620479 c!70642) b!620481))

(assert (= (and b!620479 (not c!70642)) b!620470))

(assert (= (and b!620481 res!399919) b!620465))

(assert (= (and b!620465 (not res!399926)) b!620468))

(assert (= (and b!620468 res!399932) b!620466))

(assert (= (and b!620481 c!70641) b!620476))

(assert (= (and b!620481 (not c!70641)) b!620485))

(assert (= (and b!620481 c!70643) b!620471))

(assert (= (and b!620481 (not c!70643)) b!620475))

(assert (= (and b!620471 res!399925) b!620484))

(declare-fun m!596429 () Bool)

(assert (=> b!620468 m!596429))

(assert (=> b!620468 m!596429))

(declare-fun m!596431 () Bool)

(assert (=> b!620468 m!596431))

(declare-fun m!596433 () Bool)

(assert (=> b!620469 m!596433))

(declare-fun m!596435 () Bool)

(assert (=> b!620478 m!596435))

(assert (=> b!620478 m!596429))

(assert (=> b!620478 m!596429))

(declare-fun m!596437 () Bool)

(assert (=> b!620478 m!596437))

(assert (=> b!620471 m!596429))

(declare-fun m!596439 () Bool)

(assert (=> b!620471 m!596439))

(declare-fun m!596441 () Bool)

(assert (=> b!620471 m!596441))

(assert (=> b!620471 m!596429))

(declare-fun m!596443 () Bool)

(assert (=> b!620471 m!596443))

(declare-fun m!596445 () Bool)

(assert (=> b!620471 m!596445))

(declare-fun m!596447 () Bool)

(assert (=> b!620471 m!596447))

(assert (=> b!620471 m!596429))

(assert (=> b!620471 m!596431))

(assert (=> b!620471 m!596429))

(declare-fun m!596449 () Bool)

(assert (=> b!620471 m!596449))

(assert (=> b!620471 m!596429))

(declare-fun m!596451 () Bool)

(assert (=> b!620471 m!596451))

(declare-fun m!596453 () Bool)

(assert (=> b!620481 m!596453))

(declare-fun m!596455 () Bool)

(assert (=> b!620481 m!596455))

(assert (=> b!620481 m!596429))

(assert (=> b!620463 m!596453))

(declare-fun m!596457 () Bool)

(assert (=> b!620463 m!596457))

(declare-fun m!596459 () Bool)

(assert (=> b!620476 m!596459))

(assert (=> b!620476 m!596429))

(assert (=> b!620476 m!596429))

(declare-fun m!596461 () Bool)

(assert (=> b!620476 m!596461))

(declare-fun m!596463 () Bool)

(assert (=> b!620476 m!596463))

(assert (=> b!620476 m!596429))

(declare-fun m!596465 () Bool)

(assert (=> b!620476 m!596465))

(assert (=> b!620476 m!596445))

(assert (=> b!620476 m!596429))

(declare-fun m!596467 () Bool)

(assert (=> b!620476 m!596467))

(assert (=> b!620476 m!596447))

(declare-fun m!596469 () Bool)

(assert (=> start!56152 m!596469))

(declare-fun m!596471 () Bool)

(assert (=> start!56152 m!596471))

(assert (=> b!620466 m!596429))

(assert (=> b!620466 m!596429))

(declare-fun m!596473 () Bool)

(assert (=> b!620466 m!596473))

(declare-fun m!596475 () Bool)

(assert (=> b!620479 m!596475))

(declare-fun m!596477 () Bool)

(assert (=> b!620479 m!596477))

(assert (=> b!620479 m!596429))

(assert (=> b!620479 m!596453))

(declare-fun m!596479 () Bool)

(assert (=> b!620479 m!596479))

(assert (=> b!620479 m!596429))

(declare-fun m!596481 () Bool)

(assert (=> b!620479 m!596481))

(declare-fun m!596483 () Bool)

(assert (=> b!620479 m!596483))

(declare-fun m!596485 () Bool)

(assert (=> b!620479 m!596485))

(declare-fun m!596487 () Bool)

(assert (=> b!620467 m!596487))

(assert (=> b!620464 m!596429))

(assert (=> b!620464 m!596429))

(declare-fun m!596489 () Bool)

(assert (=> b!620464 m!596489))

(declare-fun m!596491 () Bool)

(assert (=> b!620482 m!596491))

(assert (=> b!620484 m!596429))

(assert (=> b!620484 m!596429))

(assert (=> b!620484 m!596473))

(declare-fun m!596493 () Bool)

(assert (=> b!620474 m!596493))

(declare-fun m!596495 () Bool)

(assert (=> b!620473 m!596495))

(declare-fun m!596497 () Bool)

(assert (=> b!620480 m!596497))

(push 1)

