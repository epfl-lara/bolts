; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59586 () Bool)

(assert start!59586)

(declare-fun b!657560 () Bool)

(declare-fun res!426518 () Bool)

(declare-fun e!377750 () Bool)

(assert (=> b!657560 (=> (not res!426518) (not e!377750))))

(declare-datatypes ((array!38700 0))(
  ( (array!38701 (arr!18543 (Array (_ BitVec 32) (_ BitVec 64))) (size!18907 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38700)

(declare-datatypes ((List!12637 0))(
  ( (Nil!12634) (Cons!12633 (h!13678 (_ BitVec 64)) (t!18873 List!12637)) )
))
(declare-fun arrayNoDuplicates!0 (array!38700 (_ BitVec 32) List!12637) Bool)

(assert (=> b!657560 (= res!426518 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12634))))

(declare-fun b!657561 () Bool)

(assert (=> b!657561 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!307279 () array!38700)

(declare-datatypes ((Unit!22744 0))(
  ( (Unit!22745) )
))
(declare-fun lt!307277 () Unit!22744)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38700 (_ BitVec 64) (_ BitVec 32) List!12637) Unit!22744)

(assert (=> b!657561 (= lt!307277 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307279 (select (arr!18543 a!2986) j!136) index!984 Nil!12634))))

(assert (=> b!657561 (arrayNoDuplicates!0 lt!307279 index!984 Nil!12634)))

(declare-fun lt!307271 () Unit!22744)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38700 (_ BitVec 32) (_ BitVec 32)) Unit!22744)

(assert (=> b!657561 (= lt!307271 (lemmaNoDuplicateFromThenFromBigger!0 lt!307279 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657561 (arrayNoDuplicates!0 lt!307279 #b00000000000000000000000000000000 Nil!12634)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!307268 () Unit!22744)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38700 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12637) Unit!22744)

(assert (=> b!657561 (= lt!307268 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12634))))

(declare-fun arrayContainsKey!0 (array!38700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657561 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307273 () Unit!22744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38700 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22744)

(assert (=> b!657561 (= lt!307273 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307279 (select (arr!18543 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377753 () Bool)

(assert (=> b!657561 e!377753))

(declare-fun res!426509 () Bool)

(assert (=> b!657561 (=> (not res!426509) (not e!377753))))

(assert (=> b!657561 (= res!426509 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) j!136))))

(declare-fun e!377745 () Unit!22744)

(declare-fun Unit!22746 () Unit!22744)

(assert (=> b!657561 (= e!377745 Unit!22746)))

(declare-fun b!657562 () Bool)

(declare-fun res!426514 () Bool)

(assert (=> b!657562 (= res!426514 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) j!136))))

(declare-fun e!377756 () Bool)

(assert (=> b!657562 (=> (not res!426514) (not e!377756))))

(declare-fun e!377744 () Bool)

(assert (=> b!657562 (= e!377744 e!377756)))

(declare-fun res!426504 () Bool)

(declare-fun e!377751 () Bool)

(assert (=> start!59586 (=> (not res!426504) (not e!377751))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59586 (= res!426504 (validMask!0 mask!3053))))

(assert (=> start!59586 e!377751))

(assert (=> start!59586 true))

(declare-fun array_inv!14317 (array!38700) Bool)

(assert (=> start!59586 (array_inv!14317 a!2986)))

(declare-fun b!657563 () Bool)

(declare-fun Unit!22747 () Unit!22744)

(assert (=> b!657563 (= e!377745 Unit!22747)))

(declare-fun b!657564 () Bool)

(declare-fun res!426511 () Bool)

(assert (=> b!657564 (=> (not res!426511) (not e!377751))))

(assert (=> b!657564 (= res!426511 (and (= (size!18907 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18907 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18907 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!657565 () Bool)

(declare-fun res!426507 () Bool)

(assert (=> b!657565 (= res!426507 (bvsge j!136 index!984))))

(assert (=> b!657565 (=> res!426507 e!377744)))

(declare-fun e!377748 () Bool)

(assert (=> b!657565 (= e!377748 e!377744)))

(declare-fun b!657566 () Bool)

(declare-fun e!377757 () Bool)

(declare-fun e!377755 () Bool)

(assert (=> b!657566 (= e!377757 (not e!377755))))

(declare-fun res!426515 () Bool)

(assert (=> b!657566 (=> res!426515 e!377755)))

(declare-datatypes ((SeekEntryResult!6990 0))(
  ( (MissingZero!6990 (index!30324 (_ BitVec 32))) (Found!6990 (index!30325 (_ BitVec 32))) (Intermediate!6990 (undefined!7802 Bool) (index!30326 (_ BitVec 32)) (x!59146 (_ BitVec 32))) (Undefined!6990) (MissingVacant!6990 (index!30327 (_ BitVec 32))) )
))
(declare-fun lt!307282 () SeekEntryResult!6990)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657566 (= res!426515 (not (= lt!307282 (MissingVacant!6990 vacantSpotIndex!68))))))

(declare-fun lt!307272 () Unit!22744)

(declare-fun e!377758 () Unit!22744)

(assert (=> b!657566 (= lt!307272 e!377758)))

(declare-fun c!75897 () Bool)

(assert (=> b!657566 (= c!75897 (= lt!307282 (Found!6990 index!984)))))

(declare-fun lt!307283 () Unit!22744)

(declare-fun e!377746 () Unit!22744)

(assert (=> b!657566 (= lt!307283 e!377746)))

(declare-fun c!75896 () Bool)

(assert (=> b!657566 (= c!75896 (= lt!307282 Undefined!6990))))

(declare-fun lt!307284 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38700 (_ BitVec 32)) SeekEntryResult!6990)

(assert (=> b!657566 (= lt!307282 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307284 lt!307279 mask!3053))))

(declare-fun e!377752 () Bool)

(assert (=> b!657566 e!377752))

(declare-fun res!426516 () Bool)

(assert (=> b!657566 (=> (not res!426516) (not e!377752))))

(declare-fun lt!307270 () (_ BitVec 32))

(declare-fun lt!307274 () SeekEntryResult!6990)

(assert (=> b!657566 (= res!426516 (= lt!307274 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307270 vacantSpotIndex!68 lt!307284 lt!307279 mask!3053)))))

(assert (=> b!657566 (= lt!307274 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307270 vacantSpotIndex!68 (select (arr!18543 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!657566 (= lt!307284 (select (store (arr!18543 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307286 () Unit!22744)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38700 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22744)

(assert (=> b!657566 (= lt!307286 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307270 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657566 (= lt!307270 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657567 () Bool)

(declare-fun e!377754 () Bool)

(assert (=> b!657567 (= e!377750 e!377754)))

(declare-fun res!426513 () Bool)

(assert (=> b!657567 (=> (not res!426513) (not e!377754))))

(assert (=> b!657567 (= res!426513 (= (select (store (arr!18543 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657567 (= lt!307279 (array!38701 (store (arr!18543 a!2986) i!1108 k!1786) (size!18907 a!2986)))))

(declare-fun b!657568 () Bool)

(declare-fun res!426505 () Bool)

(assert (=> b!657568 (=> (not res!426505) (not e!377751))))

(assert (=> b!657568 (= res!426505 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657569 () Bool)

(assert (=> b!657569 (= e!377754 e!377757)))

(declare-fun res!426506 () Bool)

(assert (=> b!657569 (=> (not res!426506) (not e!377757))))

(declare-fun lt!307280 () SeekEntryResult!6990)

(assert (=> b!657569 (= res!426506 (and (= lt!307280 (Found!6990 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18543 a!2986) index!984) (select (arr!18543 a!2986) j!136))) (not (= (select (arr!18543 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657569 (= lt!307280 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18543 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657570 () Bool)

(assert (=> b!657570 (= e!377752 (= lt!307280 lt!307274))))

(declare-fun b!657571 () Bool)

(declare-fun Unit!22748 () Unit!22744)

(assert (=> b!657571 (= e!377758 Unit!22748)))

(declare-fun b!657572 () Bool)

(assert (=> b!657572 (= e!377753 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) index!984))))

(declare-fun b!657573 () Bool)

(declare-fun res!426502 () Bool)

(assert (=> b!657573 (=> (not res!426502) (not e!377751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657573 (= res!426502 (validKeyInArray!0 (select (arr!18543 a!2986) j!136)))))

(declare-fun b!657574 () Bool)

(declare-fun res!426517 () Bool)

(assert (=> b!657574 (=> (not res!426517) (not e!377750))))

(assert (=> b!657574 (= res!426517 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18543 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657575 () Bool)

(assert (=> b!657575 (= e!377756 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) index!984))))

(declare-fun b!657576 () Bool)

(declare-fun Unit!22749 () Unit!22744)

(assert (=> b!657576 (= e!377746 Unit!22749)))

(assert (=> b!657576 false))

(declare-fun b!657577 () Bool)

(assert (=> b!657577 (= e!377751 e!377750)))

(declare-fun res!426512 () Bool)

(assert (=> b!657577 (=> (not res!426512) (not e!377750))))

(declare-fun lt!307285 () SeekEntryResult!6990)

(assert (=> b!657577 (= res!426512 (or (= lt!307285 (MissingZero!6990 i!1108)) (= lt!307285 (MissingVacant!6990 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38700 (_ BitVec 32)) SeekEntryResult!6990)

(assert (=> b!657577 (= lt!307285 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657578 () Bool)

(assert (=> b!657578 (= e!377755 true)))

(assert (=> b!657578 (= (select (store (arr!18543 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657579 () Bool)

(assert (=> b!657579 false))

(declare-fun lt!307276 () Unit!22744)

(assert (=> b!657579 (= lt!307276 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307279 (select (arr!18543 a!2986) j!136) j!136 Nil!12634))))

(assert (=> b!657579 (arrayNoDuplicates!0 lt!307279 j!136 Nil!12634)))

(declare-fun lt!307287 () Unit!22744)

(assert (=> b!657579 (= lt!307287 (lemmaNoDuplicateFromThenFromBigger!0 lt!307279 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657579 (arrayNoDuplicates!0 lt!307279 #b00000000000000000000000000000000 Nil!12634)))

(declare-fun lt!307278 () Unit!22744)

(assert (=> b!657579 (= lt!307278 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12634))))

(assert (=> b!657579 (arrayContainsKey!0 lt!307279 (select (arr!18543 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307275 () Unit!22744)

(assert (=> b!657579 (= lt!307275 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307279 (select (arr!18543 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!377747 () Unit!22744)

(declare-fun Unit!22750 () Unit!22744)

(assert (=> b!657579 (= e!377747 Unit!22750)))

(declare-fun b!657580 () Bool)

(declare-fun Unit!22751 () Unit!22744)

(assert (=> b!657580 (= e!377746 Unit!22751)))

(declare-fun b!657581 () Bool)

(declare-fun res!426503 () Bool)

(assert (=> b!657581 (=> (not res!426503) (not e!377751))))

(assert (=> b!657581 (= res!426503 (validKeyInArray!0 k!1786))))

(declare-fun b!657582 () Bool)

(declare-fun res!426508 () Bool)

(assert (=> b!657582 (=> (not res!426508) (not e!377750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38700 (_ BitVec 32)) Bool)

(assert (=> b!657582 (= res!426508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657583 () Bool)

(declare-fun Unit!22752 () Unit!22744)

(assert (=> b!657583 (= e!377747 Unit!22752)))

(declare-fun b!657584 () Bool)

(declare-fun Unit!22753 () Unit!22744)

(assert (=> b!657584 (= e!377758 Unit!22753)))

(declare-fun res!426510 () Bool)

(assert (=> b!657584 (= res!426510 (= (select (store (arr!18543 a!2986) i!1108 k!1786) index!984) (select (arr!18543 a!2986) j!136)))))

(assert (=> b!657584 (=> (not res!426510) (not e!377748))))

(assert (=> b!657584 e!377748))

(declare-fun c!75898 () Bool)

(assert (=> b!657584 (= c!75898 (bvslt j!136 index!984))))

(declare-fun lt!307281 () Unit!22744)

(assert (=> b!657584 (= lt!307281 e!377747)))

(declare-fun c!75899 () Bool)

(assert (=> b!657584 (= c!75899 (bvslt index!984 j!136))))

(declare-fun lt!307269 () Unit!22744)

(assert (=> b!657584 (= lt!307269 e!377745)))

(assert (=> b!657584 false))

(assert (= (and start!59586 res!426504) b!657564))

(assert (= (and b!657564 res!426511) b!657573))

(assert (= (and b!657573 res!426502) b!657581))

(assert (= (and b!657581 res!426503) b!657568))

(assert (= (and b!657568 res!426505) b!657577))

(assert (= (and b!657577 res!426512) b!657582))

(assert (= (and b!657582 res!426508) b!657560))

(assert (= (and b!657560 res!426518) b!657574))

(assert (= (and b!657574 res!426517) b!657567))

(assert (= (and b!657567 res!426513) b!657569))

(assert (= (and b!657569 res!426506) b!657566))

(assert (= (and b!657566 res!426516) b!657570))

(assert (= (and b!657566 c!75896) b!657576))

(assert (= (and b!657566 (not c!75896)) b!657580))

(assert (= (and b!657566 c!75897) b!657584))

(assert (= (and b!657566 (not c!75897)) b!657571))

(assert (= (and b!657584 res!426510) b!657565))

(assert (= (and b!657565 (not res!426507)) b!657562))

(assert (= (and b!657562 res!426514) b!657575))

(assert (= (and b!657584 c!75898) b!657579))

(assert (= (and b!657584 (not c!75898)) b!657583))

(assert (= (and b!657584 c!75899) b!657561))

(assert (= (and b!657584 (not c!75899)) b!657563))

(assert (= (and b!657561 res!426509) b!657572))

(assert (= (and b!657566 (not res!426515)) b!657578))

(declare-fun m!630651 () Bool)

(assert (=> b!657561 m!630651))

(assert (=> b!657561 m!630651))

(declare-fun m!630653 () Bool)

(assert (=> b!657561 m!630653))

(assert (=> b!657561 m!630651))

(declare-fun m!630655 () Bool)

(assert (=> b!657561 m!630655))

(declare-fun m!630657 () Bool)

(assert (=> b!657561 m!630657))

(declare-fun m!630659 () Bool)

(assert (=> b!657561 m!630659))

(assert (=> b!657561 m!630651))

(declare-fun m!630661 () Bool)

(assert (=> b!657561 m!630661))

(declare-fun m!630663 () Bool)

(assert (=> b!657561 m!630663))

(assert (=> b!657561 m!630651))

(declare-fun m!630665 () Bool)

(assert (=> b!657561 m!630665))

(declare-fun m!630667 () Bool)

(assert (=> b!657561 m!630667))

(declare-fun m!630669 () Bool)

(assert (=> b!657578 m!630669))

(declare-fun m!630671 () Bool)

(assert (=> b!657578 m!630671))

(assert (=> b!657575 m!630651))

(assert (=> b!657575 m!630651))

(declare-fun m!630673 () Bool)

(assert (=> b!657575 m!630673))

(declare-fun m!630675 () Bool)

(assert (=> b!657569 m!630675))

(assert (=> b!657569 m!630651))

(assert (=> b!657569 m!630651))

(declare-fun m!630677 () Bool)

(assert (=> b!657569 m!630677))

(declare-fun m!630679 () Bool)

(assert (=> b!657560 m!630679))

(assert (=> b!657572 m!630651))

(assert (=> b!657572 m!630651))

(assert (=> b!657572 m!630673))

(assert (=> b!657567 m!630669))

(declare-fun m!630681 () Bool)

(assert (=> b!657567 m!630681))

(declare-fun m!630683 () Bool)

(assert (=> b!657574 m!630683))

(declare-fun m!630685 () Bool)

(assert (=> start!59586 m!630685))

(declare-fun m!630687 () Bool)

(assert (=> start!59586 m!630687))

(declare-fun m!630689 () Bool)

(assert (=> b!657579 m!630689))

(assert (=> b!657579 m!630651))

(declare-fun m!630691 () Bool)

(assert (=> b!657579 m!630691))

(assert (=> b!657579 m!630651))

(assert (=> b!657579 m!630657))

(declare-fun m!630693 () Bool)

(assert (=> b!657579 m!630693))

(assert (=> b!657579 m!630651))

(declare-fun m!630695 () Bool)

(assert (=> b!657579 m!630695))

(assert (=> b!657579 m!630651))

(declare-fun m!630697 () Bool)

(assert (=> b!657579 m!630697))

(assert (=> b!657579 m!630667))

(declare-fun m!630699 () Bool)

(assert (=> b!657582 m!630699))

(assert (=> b!657562 m!630651))

(assert (=> b!657562 m!630651))

(assert (=> b!657562 m!630665))

(declare-fun m!630701 () Bool)

(assert (=> b!657577 m!630701))

(declare-fun m!630703 () Bool)

(assert (=> b!657581 m!630703))

(declare-fun m!630705 () Bool)

(assert (=> b!657568 m!630705))

(assert (=> b!657573 m!630651))

(assert (=> b!657573 m!630651))

(declare-fun m!630707 () Bool)

(assert (=> b!657573 m!630707))

(assert (=> b!657584 m!630669))

(assert (=> b!657584 m!630671))

(assert (=> b!657584 m!630651))

(declare-fun m!630709 () Bool)

(assert (=> b!657566 m!630709))

(assert (=> b!657566 m!630651))

(assert (=> b!657566 m!630669))

(declare-fun m!630711 () Bool)

(assert (=> b!657566 m!630711))

(declare-fun m!630713 () Bool)

(assert (=> b!657566 m!630713))

(assert (=> b!657566 m!630651))

(declare-fun m!630715 () Bool)

(assert (=> b!657566 m!630715))

(declare-fun m!630717 () Bool)

(assert (=> b!657566 m!630717))

(declare-fun m!630719 () Bool)

(assert (=> b!657566 m!630719))

(push 1)

