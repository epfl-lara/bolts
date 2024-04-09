; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59134 () Bool)

(assert start!59134)

(declare-fun b!652497 () Bool)

(declare-fun e!374548 () Bool)

(declare-fun e!374539 () Bool)

(assert (=> b!652497 (= e!374548 e!374539)))

(declare-fun res!423302 () Bool)

(assert (=> b!652497 (=> res!423302 e!374539)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303773 () (_ BitVec 64))

(declare-fun lt!303757 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38590 0))(
  ( (array!38591 (arr!18494 (Array (_ BitVec 32) (_ BitVec 64))) (size!18858 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38590)

(assert (=> b!652497 (= res!423302 (or (not (= (select (arr!18494 a!2986) j!136) lt!303757)) (not (= (select (arr!18494 a!2986) j!136) lt!303773)) (bvsge j!136 index!984)))))

(declare-fun b!652498 () Bool)

(declare-fun e!374543 () Bool)

(declare-fun e!374540 () Bool)

(assert (=> b!652498 (= e!374543 e!374540)))

(declare-fun res!423305 () Bool)

(assert (=> b!652498 (=> (not res!423305) (not e!374540))))

(declare-datatypes ((SeekEntryResult!6941 0))(
  ( (MissingZero!6941 (index!30116 (_ BitVec 32))) (Found!6941 (index!30117 (_ BitVec 32))) (Intermediate!6941 (undefined!7753 Bool) (index!30118 (_ BitVec 32)) (x!58925 (_ BitVec 32))) (Undefined!6941) (MissingVacant!6941 (index!30119 (_ BitVec 32))) )
))
(declare-fun lt!303761 () SeekEntryResult!6941)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!652498 (= res!423305 (and (= lt!303761 (Found!6941 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18494 a!2986) index!984) (select (arr!18494 a!2986) j!136))) (not (= (select (arr!18494 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38590 (_ BitVec 32)) SeekEntryResult!6941)

(assert (=> b!652498 (= lt!303761 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18494 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652499 () Bool)

(declare-fun e!374541 () Bool)

(declare-fun e!374538 () Bool)

(assert (=> b!652499 (= e!374541 e!374538)))

(declare-fun res!423298 () Bool)

(assert (=> b!652499 (=> res!423298 e!374538)))

(assert (=> b!652499 (= res!423298 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22318 0))(
  ( (Unit!22319) )
))
(declare-fun lt!303765 () Unit!22318)

(declare-fun e!374549 () Unit!22318)

(assert (=> b!652499 (= lt!303765 e!374549)))

(declare-fun c!74969 () Bool)

(assert (=> b!652499 (= c!74969 (bvslt j!136 index!984))))

(declare-fun b!652500 () Bool)

(declare-fun e!374551 () Unit!22318)

(declare-fun Unit!22320 () Unit!22318)

(assert (=> b!652500 (= e!374551 Unit!22320)))

(declare-fun b!652501 () Bool)

(declare-fun e!374546 () Bool)

(assert (=> b!652501 (= e!374538 e!374546)))

(declare-fun res!423304 () Bool)

(assert (=> b!652501 (=> res!423304 e!374546)))

(assert (=> b!652501 (= res!423304 (or (bvsge (size!18858 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18858 a!2986)) (bvsge index!984 (size!18858 a!2986))))))

(declare-fun lt!303774 () array!38590)

(declare-datatypes ((List!12588 0))(
  ( (Nil!12585) (Cons!12584 (h!13629 (_ BitVec 64)) (t!18824 List!12588)) )
))
(declare-fun arrayNoDuplicates!0 (array!38590 (_ BitVec 32) List!12588) Bool)

(assert (=> b!652501 (arrayNoDuplicates!0 lt!303774 index!984 Nil!12585)))

(declare-fun lt!303768 () Unit!22318)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38590 (_ BitVec 32) (_ BitVec 32)) Unit!22318)

(assert (=> b!652501 (= lt!303768 (lemmaNoDuplicateFromThenFromBigger!0 lt!303774 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652501 (arrayNoDuplicates!0 lt!303774 #b00000000000000000000000000000000 Nil!12585)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!303770 () Unit!22318)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38590 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12588) Unit!22318)

(assert (=> b!652501 (= lt!303770 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12585))))

(declare-fun arrayContainsKey!0 (array!38590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652501 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303760 () Unit!22318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38590 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22318)

(assert (=> b!652501 (= lt!303760 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303774 (select (arr!18494 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374550 () Bool)

(assert (=> b!652501 e!374550))

(declare-fun res!423299 () Bool)

(assert (=> b!652501 (=> (not res!423299) (not e!374550))))

(assert (=> b!652501 (= res!423299 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) j!136))))

(declare-fun b!652502 () Bool)

(declare-fun Unit!22321 () Unit!22318)

(assert (=> b!652502 (= e!374549 Unit!22321)))

(declare-fun b!652503 () Bool)

(declare-fun res!423296 () Bool)

(declare-fun e!374536 () Bool)

(assert (=> b!652503 (=> (not res!423296) (not e!374536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38590 (_ BitVec 32)) Bool)

(assert (=> b!652503 (= res!423296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652504 () Bool)

(declare-fun e!374542 () Bool)

(assert (=> b!652504 (= e!374542 e!374541)))

(declare-fun res!423295 () Bool)

(assert (=> b!652504 (=> res!423295 e!374541)))

(assert (=> b!652504 (= res!423295 (or (not (= (select (arr!18494 a!2986) j!136) lt!303757)) (not (= (select (arr!18494 a!2986) j!136) lt!303773))))))

(assert (=> b!652504 e!374548))

(declare-fun res!423313 () Bool)

(assert (=> b!652504 (=> (not res!423313) (not e!374548))))

(assert (=> b!652504 (= res!423313 (= lt!303773 (select (arr!18494 a!2986) j!136)))))

(assert (=> b!652504 (= lt!303773 (select (store (arr!18494 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652505 () Bool)

(declare-fun e!374537 () Bool)

(assert (=> b!652505 (= e!374539 e!374537)))

(declare-fun res!423297 () Bool)

(assert (=> b!652505 (=> (not res!423297) (not e!374537))))

(assert (=> b!652505 (= res!423297 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) j!136))))

(declare-fun b!652506 () Bool)

(assert (=> b!652506 (= e!374540 (not e!374542))))

(declare-fun res!423314 () Bool)

(assert (=> b!652506 (=> res!423314 e!374542)))

(declare-fun lt!303758 () SeekEntryResult!6941)

(assert (=> b!652506 (= res!423314 (not (= lt!303758 (Found!6941 index!984))))))

(declare-fun lt!303764 () Unit!22318)

(assert (=> b!652506 (= lt!303764 e!374551)))

(declare-fun c!74968 () Bool)

(assert (=> b!652506 (= c!74968 (= lt!303758 Undefined!6941))))

(assert (=> b!652506 (= lt!303758 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303757 lt!303774 mask!3053))))

(declare-fun e!374544 () Bool)

(assert (=> b!652506 e!374544))

(declare-fun res!423300 () Bool)

(assert (=> b!652506 (=> (not res!423300) (not e!374544))))

(declare-fun lt!303759 () (_ BitVec 32))

(declare-fun lt!303763 () SeekEntryResult!6941)

(assert (=> b!652506 (= res!423300 (= lt!303763 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 lt!303757 lt!303774 mask!3053)))))

(assert (=> b!652506 (= lt!303763 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 (select (arr!18494 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652506 (= lt!303757 (select (store (arr!18494 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303769 () Unit!22318)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38590 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22318)

(assert (=> b!652506 (= lt!303769 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652506 (= lt!303759 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652507 () Bool)

(declare-fun res!423301 () Bool)

(assert (=> b!652507 (=> (not res!423301) (not e!374536))))

(assert (=> b!652507 (= res!423301 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18494 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!423308 () Bool)

(declare-fun e!374547 () Bool)

(assert (=> start!59134 (=> (not res!423308) (not e!374547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59134 (= res!423308 (validMask!0 mask!3053))))

(assert (=> start!59134 e!374547))

(assert (=> start!59134 true))

(declare-fun array_inv!14268 (array!38590) Bool)

(assert (=> start!59134 (array_inv!14268 a!2986)))

(declare-fun b!652508 () Bool)

(declare-fun Unit!22322 () Unit!22318)

(assert (=> b!652508 (= e!374549 Unit!22322)))

(declare-fun lt!303762 () Unit!22318)

(assert (=> b!652508 (= lt!303762 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303774 (select (arr!18494 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652508 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303766 () Unit!22318)

(assert (=> b!652508 (= lt!303766 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12585))))

(assert (=> b!652508 (arrayNoDuplicates!0 lt!303774 #b00000000000000000000000000000000 Nil!12585)))

(declare-fun lt!303767 () Unit!22318)

(assert (=> b!652508 (= lt!303767 (lemmaNoDuplicateFromThenFromBigger!0 lt!303774 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652508 (arrayNoDuplicates!0 lt!303774 j!136 Nil!12585)))

(declare-fun lt!303772 () Unit!22318)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38590 (_ BitVec 64) (_ BitVec 32) List!12588) Unit!22318)

(assert (=> b!652508 (= lt!303772 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303774 (select (arr!18494 a!2986) j!136) j!136 Nil!12585))))

(assert (=> b!652508 false))

(declare-fun b!652509 () Bool)

(declare-fun res!423310 () Bool)

(assert (=> b!652509 (=> (not res!423310) (not e!374547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652509 (= res!423310 (validKeyInArray!0 k!1786))))

(declare-fun b!652510 () Bool)

(assert (=> b!652510 (= e!374544 (= lt!303761 lt!303763))))

(declare-fun b!652511 () Bool)

(declare-fun res!423312 () Bool)

(assert (=> b!652511 (=> (not res!423312) (not e!374547))))

(assert (=> b!652511 (= res!423312 (validKeyInArray!0 (select (arr!18494 a!2986) j!136)))))

(declare-fun b!652512 () Bool)

(declare-fun noDuplicate!438 (List!12588) Bool)

(assert (=> b!652512 (= e!374546 (noDuplicate!438 Nil!12585))))

(declare-fun b!652513 () Bool)

(assert (=> b!652513 (= e!374536 e!374543)))

(declare-fun res!423311 () Bool)

(assert (=> b!652513 (=> (not res!423311) (not e!374543))))

(assert (=> b!652513 (= res!423311 (= (select (store (arr!18494 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652513 (= lt!303774 (array!38591 (store (arr!18494 a!2986) i!1108 k!1786) (size!18858 a!2986)))))

(declare-fun b!652514 () Bool)

(declare-fun Unit!22323 () Unit!22318)

(assert (=> b!652514 (= e!374551 Unit!22323)))

(assert (=> b!652514 false))

(declare-fun b!652515 () Bool)

(assert (=> b!652515 (= e!374547 e!374536)))

(declare-fun res!423309 () Bool)

(assert (=> b!652515 (=> (not res!423309) (not e!374536))))

(declare-fun lt!303771 () SeekEntryResult!6941)

(assert (=> b!652515 (= res!423309 (or (= lt!303771 (MissingZero!6941 i!1108)) (= lt!303771 (MissingVacant!6941 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38590 (_ BitVec 32)) SeekEntryResult!6941)

(assert (=> b!652515 (= lt!303771 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!652516 () Bool)

(assert (=> b!652516 (= e!374537 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) index!984))))

(declare-fun b!652517 () Bool)

(assert (=> b!652517 (= e!374550 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) index!984))))

(declare-fun b!652518 () Bool)

(declare-fun res!423307 () Bool)

(assert (=> b!652518 (=> (not res!423307) (not e!374536))))

(assert (=> b!652518 (= res!423307 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12585))))

(declare-fun b!652519 () Bool)

(declare-fun res!423303 () Bool)

(assert (=> b!652519 (=> (not res!423303) (not e!374547))))

(assert (=> b!652519 (= res!423303 (and (= (size!18858 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18858 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18858 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652520 () Bool)

(declare-fun res!423306 () Bool)

(assert (=> b!652520 (=> (not res!423306) (not e!374547))))

(assert (=> b!652520 (= res!423306 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59134 res!423308) b!652519))

(assert (= (and b!652519 res!423303) b!652511))

(assert (= (and b!652511 res!423312) b!652509))

(assert (= (and b!652509 res!423310) b!652520))

(assert (= (and b!652520 res!423306) b!652515))

(assert (= (and b!652515 res!423309) b!652503))

(assert (= (and b!652503 res!423296) b!652518))

(assert (= (and b!652518 res!423307) b!652507))

(assert (= (and b!652507 res!423301) b!652513))

(assert (= (and b!652513 res!423311) b!652498))

(assert (= (and b!652498 res!423305) b!652506))

(assert (= (and b!652506 res!423300) b!652510))

(assert (= (and b!652506 c!74968) b!652514))

(assert (= (and b!652506 (not c!74968)) b!652500))

(assert (= (and b!652506 (not res!423314)) b!652504))

(assert (= (and b!652504 res!423313) b!652497))

(assert (= (and b!652497 (not res!423302)) b!652505))

(assert (= (and b!652505 res!423297) b!652516))

(assert (= (and b!652504 (not res!423295)) b!652499))

(assert (= (and b!652499 c!74969) b!652508))

(assert (= (and b!652499 (not c!74969)) b!652502))

(assert (= (and b!652499 (not res!423298)) b!652501))

(assert (= (and b!652501 res!423299) b!652517))

(assert (= (and b!652501 (not res!423304)) b!652512))

(declare-fun m!625703 () Bool)

(assert (=> b!652501 m!625703))

(declare-fun m!625705 () Bool)

(assert (=> b!652501 m!625705))

(declare-fun m!625707 () Bool)

(assert (=> b!652501 m!625707))

(declare-fun m!625709 () Bool)

(assert (=> b!652501 m!625709))

(assert (=> b!652501 m!625705))

(declare-fun m!625711 () Bool)

(assert (=> b!652501 m!625711))

(declare-fun m!625713 () Bool)

(assert (=> b!652501 m!625713))

(assert (=> b!652501 m!625705))

(assert (=> b!652501 m!625705))

(declare-fun m!625715 () Bool)

(assert (=> b!652501 m!625715))

(declare-fun m!625717 () Bool)

(assert (=> b!652501 m!625717))

(assert (=> b!652505 m!625705))

(assert (=> b!652505 m!625705))

(assert (=> b!652505 m!625715))

(assert (=> b!652504 m!625705))

(declare-fun m!625719 () Bool)

(assert (=> b!652504 m!625719))

(declare-fun m!625721 () Bool)

(assert (=> b!652504 m!625721))

(assert (=> b!652517 m!625705))

(assert (=> b!652517 m!625705))

(declare-fun m!625723 () Bool)

(assert (=> b!652517 m!625723))

(assert (=> b!652513 m!625719))

(declare-fun m!625725 () Bool)

(assert (=> b!652513 m!625725))

(assert (=> b!652511 m!625705))

(assert (=> b!652511 m!625705))

(declare-fun m!625727 () Bool)

(assert (=> b!652511 m!625727))

(assert (=> b!652497 m!625705))

(declare-fun m!625729 () Bool)

(assert (=> b!652509 m!625729))

(declare-fun m!625731 () Bool)

(assert (=> b!652508 m!625731))

(assert (=> b!652508 m!625705))

(assert (=> b!652508 m!625709))

(assert (=> b!652508 m!625705))

(declare-fun m!625733 () Bool)

(assert (=> b!652508 m!625733))

(assert (=> b!652508 m!625705))

(declare-fun m!625735 () Bool)

(assert (=> b!652508 m!625735))

(declare-fun m!625737 () Bool)

(assert (=> b!652508 m!625737))

(assert (=> b!652508 m!625705))

(declare-fun m!625739 () Bool)

(assert (=> b!652508 m!625739))

(assert (=> b!652508 m!625713))

(declare-fun m!625741 () Bool)

(assert (=> b!652503 m!625741))

(assert (=> b!652516 m!625705))

(assert (=> b!652516 m!625705))

(assert (=> b!652516 m!625723))

(declare-fun m!625743 () Bool)

(assert (=> b!652515 m!625743))

(declare-fun m!625745 () Bool)

(assert (=> b!652506 m!625745))

(declare-fun m!625747 () Bool)

(assert (=> b!652506 m!625747))

(assert (=> b!652506 m!625705))

(assert (=> b!652506 m!625705))

(declare-fun m!625749 () Bool)

(assert (=> b!652506 m!625749))

(declare-fun m!625751 () Bool)

(assert (=> b!652506 m!625751))

(declare-fun m!625753 () Bool)

(assert (=> b!652506 m!625753))

(declare-fun m!625755 () Bool)

(assert (=> b!652506 m!625755))

(assert (=> b!652506 m!625719))

(declare-fun m!625757 () Bool)

(assert (=> b!652518 m!625757))

(declare-fun m!625759 () Bool)

(assert (=> b!652520 m!625759))

(declare-fun m!625761 () Bool)

(assert (=> start!59134 m!625761))

(declare-fun m!625763 () Bool)

(assert (=> start!59134 m!625763))

(declare-fun m!625765 () Bool)

(assert (=> b!652498 m!625765))

(assert (=> b!652498 m!625705))

(assert (=> b!652498 m!625705))

(declare-fun m!625767 () Bool)

(assert (=> b!652498 m!625767))

(declare-fun m!625769 () Bool)

(assert (=> b!652507 m!625769))

(declare-fun m!625771 () Bool)

(assert (=> b!652512 m!625771))

(push 1)

(assert (not b!652503))

(assert (not b!652508))

(assert (not b!652517))

(assert (not b!652516))

(assert (not b!652518))

(assert (not b!652501))

(assert (not b!652506))

(assert (not b!652515))

(assert (not b!652498))

(assert (not b!652512))

(assert (not b!652509))

(assert (not b!652505))

(assert (not b!652511))

(assert (not start!59134))

(assert (not b!652520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!374606 () SeekEntryResult!6941)

(declare-fun b!652606 () Bool)

(assert (=> b!652606 (= e!374606 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303759 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18494 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652608 () Bool)

(declare-fun c!75002 () Bool)

(declare-fun lt!303807 () (_ BitVec 64))

(assert (=> b!652608 (= c!75002 (= lt!303807 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374607 () SeekEntryResult!6941)

(assert (=> b!652608 (= e!374607 e!374606)))

(declare-fun b!652609 () Bool)

(assert (=> b!652609 (= e!374606 (MissingVacant!6941 vacantSpotIndex!68))))

(declare-fun b!652610 () Bool)

(declare-fun e!374605 () SeekEntryResult!6941)

(assert (=> b!652610 (= e!374605 e!374607)))

(declare-fun c!75004 () Bool)

(assert (=> b!652610 (= c!75004 (= lt!303807 (select (arr!18494 a!2986) j!136)))))

(declare-fun b!652611 () Bool)

(assert (=> b!652611 (= e!374605 Undefined!6941)))

(declare-fun d!92109 () Bool)

(declare-fun lt!303808 () SeekEntryResult!6941)

(assert (=> d!92109 (and (or (is-Undefined!6941 lt!303808) (not (is-Found!6941 lt!303808)) (and (bvsge (index!30117 lt!303808) #b00000000000000000000000000000000) (bvslt (index!30117 lt!303808) (size!18858 a!2986)))) (or (is-Undefined!6941 lt!303808) (is-Found!6941 lt!303808) (not (is-MissingVacant!6941 lt!303808)) (not (= (index!30119 lt!303808) vacantSpotIndex!68)) (and (bvsge (index!30119 lt!303808) #b00000000000000000000000000000000) (bvslt (index!30119 lt!303808) (size!18858 a!2986)))) (or (is-Undefined!6941 lt!303808) (ite (is-Found!6941 lt!303808) (= (select (arr!18494 a!2986) (index!30117 lt!303808)) (select (arr!18494 a!2986) j!136)) (and (is-MissingVacant!6941 lt!303808) (= (index!30119 lt!303808) vacantSpotIndex!68) (= (select (arr!18494 a!2986) (index!30119 lt!303808)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92109 (= lt!303808 e!374605)))

(declare-fun c!75003 () Bool)

(assert (=> d!92109 (= c!75003 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92109 (= lt!303807 (select (arr!18494 a!2986) lt!303759))))

(assert (=> d!92109 (validMask!0 mask!3053)))

(assert (=> d!92109 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 (select (arr!18494 a!2986) j!136) a!2986 mask!3053) lt!303808)))

(declare-fun b!652607 () Bool)

(assert (=> b!652607 (= e!374607 (Found!6941 lt!303759))))

(assert (= (and d!92109 c!75003) b!652611))

(assert (= (and d!92109 (not c!75003)) b!652610))

(assert (= (and b!652610 c!75004) b!652607))

(assert (= (and b!652610 (not c!75004)) b!652608))

(assert (= (and b!652608 c!75002) b!652609))

(assert (= (and b!652608 (not c!75002)) b!652606))

(declare-fun m!625831 () Bool)

(assert (=> b!652606 m!625831))

(assert (=> b!652606 m!625831))

(assert (=> b!652606 m!625705))

(declare-fun m!625835 () Bool)

(assert (=> b!652606 m!625835))

(declare-fun m!625837 () Bool)

(assert (=> d!92109 m!625837))

(declare-fun m!625841 () Bool)

(assert (=> d!92109 m!625841))

(declare-fun m!625843 () Bool)

(assert (=> d!92109 m!625843))

(assert (=> d!92109 m!625761))

(assert (=> b!652506 d!92109))

(declare-fun d!92121 () Bool)

(declare-fun e!374632 () Bool)

(assert (=> d!92121 e!374632))

(declare-fun res!423355 () Bool)

(assert (=> d!92121 (=> (not res!423355) (not e!374632))))

(assert (=> d!92121 (= res!423355 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18858 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18858 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18858 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18858 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18858 a!2986))))))

(declare-fun lt!303826 () Unit!22318)

(declare-fun choose!9 (array!38590 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22318)

(assert (=> d!92121 (= lt!303826 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 mask!3053))))

(assert (=> d!92121 (validMask!0 mask!3053)))

(assert (=> d!92121 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 mask!3053) lt!303826)))

(declare-fun b!652641 () Bool)

(assert (=> b!652641 (= e!374632 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 (select (arr!18494 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 (select (store (arr!18494 a!2986) i!1108 k!1786) j!136) (array!38591 (store (arr!18494 a!2986) i!1108 k!1786) (size!18858 a!2986)) mask!3053)))))

(assert (= (and d!92121 res!423355) b!652641))

(declare-fun m!625875 () Bool)

(assert (=> d!92121 m!625875))

(assert (=> d!92121 m!625761))

(assert (=> b!652641 m!625747))

(assert (=> b!652641 m!625705))

(assert (=> b!652641 m!625749))

(assert (=> b!652641 m!625705))

(assert (=> b!652641 m!625719))

(assert (=> b!652641 m!625747))

(declare-fun m!625877 () Bool)

(assert (=> b!652641 m!625877))

(assert (=> b!652506 d!92121))

(declare-fun d!92135 () Bool)

(declare-fun lt!303829 () (_ BitVec 32))

(assert (=> d!92135 (and (bvsge lt!303829 #b00000000000000000000000000000000) (bvslt lt!303829 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92135 (= lt!303829 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!92135 (validMask!0 mask!3053)))

(assert (=> d!92135 (= (nextIndex!0 index!984 x!910 mask!3053) lt!303829)))

(declare-fun bs!19451 () Bool)

(assert (= bs!19451 d!92135))

(declare-fun m!625879 () Bool)

(assert (=> bs!19451 m!625879))

(assert (=> bs!19451 m!625761))

(assert (=> b!652506 d!92135))

(declare-fun e!374634 () SeekEntryResult!6941)

(declare-fun b!652642 () Bool)

(assert (=> b!652642 (= e!374634 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303759 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!303757 lt!303774 mask!3053))))

(declare-fun b!652644 () Bool)

(declare-fun c!75010 () Bool)

(declare-fun lt!303830 () (_ BitVec 64))

(assert (=> b!652644 (= c!75010 (= lt!303830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374635 () SeekEntryResult!6941)

(assert (=> b!652644 (= e!374635 e!374634)))

(declare-fun b!652645 () Bool)

(assert (=> b!652645 (= e!374634 (MissingVacant!6941 vacantSpotIndex!68))))

(declare-fun b!652646 () Bool)

(declare-fun e!374633 () SeekEntryResult!6941)

(assert (=> b!652646 (= e!374633 e!374635)))

(declare-fun c!75012 () Bool)

(assert (=> b!652646 (= c!75012 (= lt!303830 lt!303757))))

(declare-fun b!652647 () Bool)

(assert (=> b!652647 (= e!374633 Undefined!6941)))

(declare-fun d!92137 () Bool)

(declare-fun lt!303831 () SeekEntryResult!6941)

(assert (=> d!92137 (and (or (is-Undefined!6941 lt!303831) (not (is-Found!6941 lt!303831)) (and (bvsge (index!30117 lt!303831) #b00000000000000000000000000000000) (bvslt (index!30117 lt!303831) (size!18858 lt!303774)))) (or (is-Undefined!6941 lt!303831) (is-Found!6941 lt!303831) (not (is-MissingVacant!6941 lt!303831)) (not (= (index!30119 lt!303831) vacantSpotIndex!68)) (and (bvsge (index!30119 lt!303831) #b00000000000000000000000000000000) (bvslt (index!30119 lt!303831) (size!18858 lt!303774)))) (or (is-Undefined!6941 lt!303831) (ite (is-Found!6941 lt!303831) (= (select (arr!18494 lt!303774) (index!30117 lt!303831)) lt!303757) (and (is-MissingVacant!6941 lt!303831) (= (index!30119 lt!303831) vacantSpotIndex!68) (= (select (arr!18494 lt!303774) (index!30119 lt!303831)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92137 (= lt!303831 e!374633)))

(declare-fun c!75011 () Bool)

(assert (=> d!92137 (= c!75011 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!92137 (= lt!303830 (select (arr!18494 lt!303774) lt!303759))))

(assert (=> d!92137 (validMask!0 mask!3053)))

(assert (=> d!92137 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303759 vacantSpotIndex!68 lt!303757 lt!303774 mask!3053) lt!303831)))

(declare-fun b!652643 () Bool)

(assert (=> b!652643 (= e!374635 (Found!6941 lt!303759))))

(assert (= (and d!92137 c!75011) b!652647))

(assert (= (and d!92137 (not c!75011)) b!652646))

(assert (= (and b!652646 c!75012) b!652643))

(assert (= (and b!652646 (not c!75012)) b!652644))

(assert (= (and b!652644 c!75010) b!652645))

(assert (= (and b!652644 (not c!75010)) b!652642))

(assert (=> b!652642 m!625831))

(assert (=> b!652642 m!625831))

(declare-fun m!625881 () Bool)

(assert (=> b!652642 m!625881))

(declare-fun m!625883 () Bool)

(assert (=> d!92137 m!625883))

(declare-fun m!625885 () Bool)

(assert (=> d!92137 m!625885))

(declare-fun m!625887 () Bool)

(assert (=> d!92137 m!625887))

(assert (=> d!92137 m!625761))

(assert (=> b!652506 d!92137))

(declare-fun e!374637 () SeekEntryResult!6941)

(declare-fun b!652648 () Bool)

(assert (=> b!652648 (= e!374637 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!303757 lt!303774 mask!3053))))

(declare-fun b!652650 () Bool)

(declare-fun c!75013 () Bool)

(declare-fun lt!303832 () (_ BitVec 64))

(assert (=> b!652650 (= c!75013 (= lt!303832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!374638 () SeekEntryResult!6941)

(assert (=> b!652650 (= e!374638 e!374637)))

(declare-fun b!652651 () Bool)

(assert (=> b!652651 (= e!374637 (MissingVacant!6941 vacantSpotIndex!68))))

(declare-fun b!652652 () Bool)

(declare-fun e!374636 () SeekEntryResult!6941)

(assert (=> b!652652 (= e!374636 e!374638)))

(declare-fun c!75015 () Bool)

(assert (=> b!652652 (= c!75015 (= lt!303832 lt!303757))))

(declare-fun b!652653 () Bool)

(assert (=> b!652653 (= e!374636 Undefined!6941)))

(declare-fun d!92139 () Bool)

(declare-fun lt!303833 () SeekEntryResult!6941)

(assert (=> d!92139 (and (or (is-Undefined!6941 lt!303833) (not (is-Found!6941 lt!303833)) (and (bvsge (index!30117 lt!303833) #b00000000000000000000000000000000) (bvslt (index!30117 lt!303833) (size!18858 lt!303774)))) (or (is-Undefined!6941 lt!303833) (is-Found!6941 lt!303833) (not (is-MissingVacant!6941 lt!303833)) (not (= (index!30119 lt!303833) vacantSpotIndex!68)) (and (bvsge (index!30119 lt!303833) #b00000000000000000000000000000000) (bvslt (index!30119 lt!303833) (size!18858 lt!303774)))) (or (is-Undefined!6941 lt!303833) (ite (is-Found!6941 lt!303833) (= (select (arr!18494 lt!303774) (index!30117 lt!303833)) lt!303757) (and (is-MissingVacant!6941 lt!303833) (= (index!30119 lt!303833) vacantSpotIndex!68) (= (select (arr!18494 lt!303774) (index!30119 lt!303833)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92139 (= lt!303833 e!374636)))

(declare-fun c!75014 () Bool)

(assert (=> d!92139 (= c!75014 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92139 (= lt!303832 (select (arr!18494 lt!303774) index!984))))

(assert (=> d!92139 (validMask!0 mask!3053)))

(assert (=> d!92139 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303757 lt!303774 mask!3053) lt!303833)))

(declare-fun b!652649 () Bool)

(assert (=> b!652649 (= e!374638 (Found!6941 index!984))))

(assert (= (and d!92139 c!75014) b!652653))

(assert (= (and d!92139 (not c!75014)) b!652652))

(assert (= (and b!652652 c!75015) b!652649))

(assert (= (and b!652652 (not c!75015)) b!652650))

(assert (= (and b!652650 c!75013) b!652651))

(assert (= (and b!652650 (not c!75013)) b!652648))

(assert (=> b!652648 m!625745))

(assert (=> b!652648 m!625745))

(declare-fun m!625889 () Bool)

(assert (=> b!652648 m!625889))

(declare-fun m!625891 () Bool)

(assert (=> d!92139 m!625891))

(declare-fun m!625893 () Bool)

(assert (=> d!92139 m!625893))

(declare-fun m!625895 () Bool)

(assert (=> d!92139 m!625895))

(assert (=> d!92139 m!625761))

(assert (=> b!652506 d!92139))

(declare-fun d!92141 () Bool)

(declare-fun res!423360 () Bool)

(declare-fun e!374643 () Bool)

(assert (=> d!92141 (=> res!423360 e!374643)))

(assert (=> d!92141 (= res!423360 (= (select (arr!18494 lt!303774) index!984) (select (arr!18494 a!2986) j!136)))))

(assert (=> d!92141 (= (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) index!984) e!374643)))

(declare-fun b!652658 () Bool)

(declare-fun e!374644 () Bool)

(assert (=> b!652658 (= e!374643 e!374644)))

(declare-fun res!423361 () Bool)

(assert (=> b!652658 (=> (not res!423361) (not e!374644))))

(assert (=> b!652658 (= res!423361 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18858 lt!303774)))))

(declare-fun b!652659 () Bool)

(assert (=> b!652659 (= e!374644 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92141 (not res!423360)) b!652658))

(assert (= (and b!652658 res!423361) b!652659))

(assert (=> d!92141 m!625895))

(assert (=> b!652659 m!625705))

(declare-fun m!625897 () Bool)

(assert (=> b!652659 m!625897))

(assert (=> b!652517 d!92141))

(declare-fun b!652724 () Bool)

(declare-fun e!374691 () SeekEntryResult!6941)

(assert (=> b!652724 (= e!374691 Undefined!6941)))

(declare-fun b!652725 () Bool)

(declare-fun e!374689 () SeekEntryResult!6941)

(declare-fun lt!303864 () SeekEntryResult!6941)

(assert (=> b!652725 (= e!374689 (MissingZero!6941 (index!30118 lt!303864)))))

(declare-fun d!92153 () Bool)

(declare-fun lt!303862 () SeekEntryResult!6941)

(assert (=> d!92153 (and (or (is-Undefined!6941 lt!303862) (not (is-Found!6941 lt!303862)) (and (bvsge (index!30117 lt!303862) #b00000000000000000000000000000000) (bvslt (index!30117 lt!303862) (size!18858 a!2986)))) (or (is-Undefined!6941 lt!303862) (is-Found!6941 lt!303862) (not (is-MissingZero!6941 lt!303862)) (and (bvsge (index!30116 lt!303862) #b00000000000000000000000000000000) (bvslt (index!30116 lt!303862) (size!18858 a!2986)))) (or (is-Undefined!6941 lt!303862) (is-Found!6941 lt!303862) (is-MissingZero!6941 lt!303862) (not (is-MissingVacant!6941 lt!303862)) (and (bvsge (index!30119 lt!303862) #b00000000000000000000000000000000) (bvslt (index!30119 lt!303862) (size!18858 a!2986)))) (or (is-Undefined!6941 lt!303862) (ite (is-Found!6941 lt!303862) (= (select (arr!18494 a!2986) (index!30117 lt!303862)) k!1786) (ite (is-MissingZero!6941 lt!303862) (= (select (arr!18494 a!2986) (index!30116 lt!303862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6941 lt!303862) (= (select (arr!18494 a!2986) (index!30119 lt!303862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92153 (= lt!303862 e!374691)))

(declare-fun c!75037 () Bool)

(assert (=> d!92153 (= c!75037 (and (is-Intermediate!6941 lt!303864) (undefined!7753 lt!303864)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38590 (_ BitVec 32)) SeekEntryResult!6941)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92153 (= lt!303864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92153 (validMask!0 mask!3053)))

(assert (=> d!92153 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!303862)))

(declare-fun b!652726 () Bool)

(assert (=> b!652726 (= e!374689 (seekKeyOrZeroReturnVacant!0 (x!58925 lt!303864) (index!30118 lt!303864) (index!30118 lt!303864) k!1786 a!2986 mask!3053))))

(declare-fun b!652727 () Bool)

(declare-fun e!374690 () SeekEntryResult!6941)

(assert (=> b!652727 (= e!374691 e!374690)))

(declare-fun lt!303863 () (_ BitVec 64))

(assert (=> b!652727 (= lt!303863 (select (arr!18494 a!2986) (index!30118 lt!303864)))))

(declare-fun c!75038 () Bool)

(assert (=> b!652727 (= c!75038 (= lt!303863 k!1786))))

(declare-fun b!652728 () Bool)

(declare-fun c!75036 () Bool)

(assert (=> b!652728 (= c!75036 (= lt!303863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652728 (= e!374690 e!374689)))

(declare-fun b!652729 () Bool)

(assert (=> b!652729 (= e!374690 (Found!6941 (index!30118 lt!303864)))))

(assert (= (and d!92153 c!75037) b!652724))

(assert (= (and d!92153 (not c!75037)) b!652727))

(assert (= (and b!652727 c!75038) b!652729))

(assert (= (and b!652727 (not c!75038)) b!652728))

(assert (= (and b!652728 c!75036) b!652725))

(assert (= (and b!652728 (not c!75036)) b!652726))

(declare-fun m!625945 () Bool)

(assert (=> d!92153 m!625945))

(declare-fun m!625947 () Bool)

(assert (=> d!92153 m!625947))

(declare-fun m!625949 () Bool)

(assert (=> d!92153 m!625949))

(assert (=> d!92153 m!625945))

(declare-fun m!625951 () Bool)

(assert (=> d!92153 m!625951))

(declare-fun m!625953 () Bool)

(assert (=> d!92153 m!625953))

(assert (=> d!92153 m!625761))

(declare-fun m!625955 () Bool)

(assert (=> b!652726 m!625955))

(declare-fun m!625957 () Bool)

(assert (=> b!652727 m!625957))

(assert (=> b!652515 d!92153))

(assert (=> b!652516 d!92141))

(declare-fun d!92177 () Bool)

(declare-fun res!423386 () Bool)

(declare-fun e!374692 () Bool)

(assert (=> d!92177 (=> res!423386 e!374692)))

(assert (=> d!92177 (= res!423386 (= (select (arr!18494 lt!303774) j!136) (select (arr!18494 a!2986) j!136)))))

(assert (=> d!92177 (= (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) j!136) e!374692)))

(declare-fun b!652730 () Bool)

(declare-fun e!374693 () Bool)

(assert (=> b!652730 (= e!374692 e!374693)))

(declare-fun res!423387 () Bool)

(assert (=> b!652730 (=> (not res!423387) (not e!374693))))

(assert (=> b!652730 (= res!423387 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18858 lt!303774)))))

(declare-fun b!652731 () Bool)

(assert (=> b!652731 (= e!374693 (arrayContainsKey!0 lt!303774 (select (arr!18494 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92177 (not res!423386)) b!652730))

(assert (= (and b!652730 res!423387) b!652731))

(declare-fun m!625959 () Bool)

(assert (=> d!92177 m!625959))

(assert (=> b!652731 m!625705))

(declare-fun m!625961 () Bool)

(assert (=> b!652731 m!625961))

(assert (=> b!652505 d!92177))

(declare-fun bm!33788 () Bool)

(declare-fun call!33791 () Bool)

(assert (=> bm!33788 (= call!33791 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!652747 () Bool)

(declare-fun e!374704 () Bool)

(declare-fun e!374705 () Bool)

(assert (=> b!652747 (= e!374704 e!374705)))

(declare-fun lt!303874 () (_ BitVec 64))

(assert (=> b!652747 (= lt!303874 (select (arr!18494 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!303875 () Unit!22318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38590 (_ BitVec 64) (_ BitVec 32)) Unit!22318)

(assert (=> b!652747 (= lt!303875 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!303874 #b00000000000000000000000000000000))))

(assert (=> b!652747 (arrayContainsKey!0 a!2986 lt!303874 #b00000000000000000000000000000000)))

(declare-fun lt!303876 () Unit!22318)

(assert (=> b!652747 (= lt!303876 lt!303875)))

(declare-fun res!423392 () Bool)

(assert (=> b!652747 (= res!423392 (= (seekEntryOrOpen!0 (select (arr!18494 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6941 #b00000000000000000000000000000000)))))

(assert (=> b!652747 (=> (not res!423392) (not e!374705))))

(declare-fun b!652748 () Bool)

(assert (=> b!652748 (= e!374705 call!33791)))

(declare-fun b!652749 () Bool)

(assert (=> b!652749 (= e!374704 call!33791)))

(declare-fun b!652746 () Bool)

(declare-fun e!374703 () Bool)

(assert (=> b!652746 (= e!374703 e!374704)))

(declare-fun c!75044 () Bool)

(assert (=> b!652746 (= c!75044 (validKeyInArray!0 (select (arr!18494 a!2986) #b00000000000000000000000000000000)))))

