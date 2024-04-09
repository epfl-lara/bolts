; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55352 () Bool)

(assert start!55352)

(declare-fun b!605709 () Bool)

(declare-fun e!346731 () Bool)

(declare-fun e!346727 () Bool)

(assert (=> b!605709 (= e!346731 e!346727)))

(declare-fun res!389254 () Bool)

(assert (=> b!605709 (=> (not res!389254) (not e!346727))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6310 0))(
  ( (MissingZero!6310 (index!27508 (_ BitVec 32))) (Found!6310 (index!27509 (_ BitVec 32))) (Intermediate!6310 (undefined!7122 Bool) (index!27510 (_ BitVec 32)) (x!56338 (_ BitVec 32))) (Undefined!6310) (MissingVacant!6310 (index!27511 (_ BitVec 32))) )
))
(declare-fun lt!276474 () SeekEntryResult!6310)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37226 0))(
  ( (array!37227 (arr!17863 (Array (_ BitVec 32) (_ BitVec 64))) (size!18227 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37226)

(assert (=> b!605709 (= res!389254 (and (= lt!276474 (Found!6310 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17863 a!2986) index!984) (select (arr!17863 a!2986) j!136))) (not (= (select (arr!17863 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37226 (_ BitVec 32)) SeekEntryResult!6310)

(assert (=> b!605709 (= lt!276474 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!605710 () Bool)

(declare-fun e!346729 () Bool)

(assert (=> b!605710 (= e!346729 e!346731)))

(declare-fun res!389253 () Bool)

(assert (=> b!605710 (=> (not res!389253) (not e!346731))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!605710 (= res!389253 (= (select (store (arr!17863 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!276483 () array!37226)

(assert (=> b!605710 (= lt!276483 (array!37227 (store (arr!17863 a!2986) i!1108 k0!1786) (size!18227 a!2986)))))

(declare-fun b!605711 () Bool)

(declare-fun e!346737 () Bool)

(declare-fun e!346740 () Bool)

(assert (=> b!605711 (= e!346737 e!346740)))

(declare-fun res!389262 () Bool)

(assert (=> b!605711 (=> res!389262 e!346740)))

(declare-fun lt!276475 () (_ BitVec 64))

(declare-fun lt!276479 () (_ BitVec 64))

(assert (=> b!605711 (= res!389262 (or (not (= (select (arr!17863 a!2986) j!136) lt!276479)) (not (= (select (arr!17863 a!2986) j!136) lt!276475))))))

(declare-fun e!346735 () Bool)

(assert (=> b!605711 e!346735))

(declare-fun res!389257 () Bool)

(assert (=> b!605711 (=> (not res!389257) (not e!346735))))

(assert (=> b!605711 (= res!389257 (= lt!276475 (select (arr!17863 a!2986) j!136)))))

(assert (=> b!605711 (= lt!276475 (select (store (arr!17863 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!605712 () Bool)

(declare-fun e!346734 () Bool)

(declare-fun e!346732 () Bool)

(assert (=> b!605712 (= e!346734 e!346732)))

(declare-fun res!389256 () Bool)

(assert (=> b!605712 (=> (not res!389256) (not e!346732))))

(declare-fun arrayContainsKey!0 (array!37226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!605712 (= res!389256 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136))))

(declare-fun b!605713 () Bool)

(declare-datatypes ((Unit!19288 0))(
  ( (Unit!19289) )
))
(declare-fun e!346728 () Unit!19288)

(declare-fun Unit!19290 () Unit!19288)

(assert (=> b!605713 (= e!346728 Unit!19290)))

(declare-fun b!605714 () Bool)

(declare-fun e!346730 () Bool)

(assert (=> b!605714 (= e!346740 e!346730)))

(declare-fun res!389245 () Bool)

(assert (=> b!605714 (=> res!389245 e!346730)))

(assert (=> b!605714 (= res!389245 (bvsge index!984 j!136))))

(declare-fun lt!276476 () Unit!19288)

(declare-fun e!346733 () Unit!19288)

(assert (=> b!605714 (= lt!276476 e!346733)))

(declare-fun c!68599 () Bool)

(assert (=> b!605714 (= c!68599 (bvslt j!136 index!984))))

(declare-fun b!605715 () Bool)

(declare-fun Unit!19291 () Unit!19288)

(assert (=> b!605715 (= e!346728 Unit!19291)))

(assert (=> b!605715 false))

(declare-fun b!605716 () Bool)

(declare-fun res!389255 () Bool)

(assert (=> b!605716 (=> (not res!389255) (not e!346729))))

(declare-datatypes ((List!11957 0))(
  ( (Nil!11954) (Cons!11953 (h!12998 (_ BitVec 64)) (t!18193 List!11957)) )
))
(declare-fun arrayNoDuplicates!0 (array!37226 (_ BitVec 32) List!11957) Bool)

(assert (=> b!605716 (= res!389255 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11954))))

(declare-fun b!605718 () Bool)

(declare-fun e!346726 () Bool)

(assert (=> b!605718 (= e!346730 e!346726)))

(declare-fun res!389258 () Bool)

(assert (=> b!605718 (=> res!389258 e!346726)))

(assert (=> b!605718 (= res!389258 (or (bvsgt #b00000000000000000000000000000000 (size!18227 a!2986)) (bvsge (size!18227 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!605718 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276473 () Unit!19288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> b!605718 (= lt!276473 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!346741 () Bool)

(assert (=> b!605718 e!346741))

(declare-fun res!389260 () Bool)

(assert (=> b!605718 (=> (not res!389260) (not e!346741))))

(assert (=> b!605718 (= res!389260 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136))))

(declare-fun b!605719 () Bool)

(declare-fun noDuplicate!305 (List!11957) Bool)

(assert (=> b!605719 (= e!346726 (noDuplicate!305 Nil!11954))))

(declare-fun b!605720 () Bool)

(declare-fun res!389251 () Bool)

(declare-fun e!346738 () Bool)

(assert (=> b!605720 (=> (not res!389251) (not e!346738))))

(assert (=> b!605720 (= res!389251 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!605721 () Bool)

(assert (=> b!605721 (= e!346738 e!346729)))

(declare-fun res!389246 () Bool)

(assert (=> b!605721 (=> (not res!389246) (not e!346729))))

(declare-fun lt!276477 () SeekEntryResult!6310)

(assert (=> b!605721 (= res!389246 (or (= lt!276477 (MissingZero!6310 i!1108)) (= lt!276477 (MissingVacant!6310 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37226 (_ BitVec 32)) SeekEntryResult!6310)

(assert (=> b!605721 (= lt!276477 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!605722 () Bool)

(declare-fun res!389249 () Bool)

(assert (=> b!605722 (=> (not res!389249) (not e!346738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!605722 (= res!389249 (validKeyInArray!0 (select (arr!17863 a!2986) j!136)))))

(declare-fun b!605723 () Bool)

(declare-fun Unit!19292 () Unit!19288)

(assert (=> b!605723 (= e!346733 Unit!19292)))

(declare-fun b!605724 () Bool)

(declare-fun res!389264 () Bool)

(assert (=> b!605724 (=> (not res!389264) (not e!346729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37226 (_ BitVec 32)) Bool)

(assert (=> b!605724 (= res!389264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!605725 () Bool)

(assert (=> b!605725 (= e!346727 (not e!346737))))

(declare-fun res!389247 () Bool)

(assert (=> b!605725 (=> res!389247 e!346737)))

(declare-fun lt!276486 () SeekEntryResult!6310)

(assert (=> b!605725 (= res!389247 (not (= lt!276486 (Found!6310 index!984))))))

(declare-fun lt!276484 () Unit!19288)

(assert (=> b!605725 (= lt!276484 e!346728)))

(declare-fun c!68600 () Bool)

(assert (=> b!605725 (= c!68600 (= lt!276486 Undefined!6310))))

(assert (=> b!605725 (= lt!276486 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276479 lt!276483 mask!3053))))

(declare-fun e!346736 () Bool)

(assert (=> b!605725 e!346736))

(declare-fun res!389259 () Bool)

(assert (=> b!605725 (=> (not res!389259) (not e!346736))))

(declare-fun lt!276482 () SeekEntryResult!6310)

(declare-fun lt!276478 () (_ BitVec 32))

(assert (=> b!605725 (= res!389259 (= lt!276482 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 lt!276479 lt!276483 mask!3053)))))

(assert (=> b!605725 (= lt!276482 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!605725 (= lt!276479 (select (store (arr!17863 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!276485 () Unit!19288)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37226 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> b!605725 (= lt!276485 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!605725 (= lt!276478 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!605726 () Bool)

(assert (=> b!605726 (= e!346736 (= lt!276474 lt!276482))))

(declare-fun b!605727 () Bool)

(declare-fun res!389250 () Bool)

(assert (=> b!605727 (=> (not res!389250) (not e!346729))))

(assert (=> b!605727 (= res!389250 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17863 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!605728 () Bool)

(assert (=> b!605728 (= e!346741 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) index!984))))

(declare-fun b!605729 () Bool)

(declare-fun res!389252 () Bool)

(assert (=> b!605729 (=> (not res!389252) (not e!346738))))

(assert (=> b!605729 (= res!389252 (validKeyInArray!0 k0!1786))))

(declare-fun b!605717 () Bool)

(declare-fun Unit!19293 () Unit!19288)

(assert (=> b!605717 (= e!346733 Unit!19293)))

(declare-fun lt!276480 () Unit!19288)

(assert (=> b!605717 (= lt!276480 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276483 (select (arr!17863 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!605717 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276472 () Unit!19288)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11957) Unit!19288)

(assert (=> b!605717 (= lt!276472 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11954))))

(assert (=> b!605717 (arrayNoDuplicates!0 lt!276483 #b00000000000000000000000000000000 Nil!11954)))

(declare-fun lt!276471 () Unit!19288)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37226 (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> b!605717 (= lt!276471 (lemmaNoDuplicateFromThenFromBigger!0 lt!276483 #b00000000000000000000000000000000 j!136))))

(assert (=> b!605717 (arrayNoDuplicates!0 lt!276483 j!136 Nil!11954)))

(declare-fun lt!276481 () Unit!19288)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37226 (_ BitVec 64) (_ BitVec 32) List!11957) Unit!19288)

(assert (=> b!605717 (= lt!276481 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136 Nil!11954))))

(assert (=> b!605717 false))

(declare-fun res!389261 () Bool)

(assert (=> start!55352 (=> (not res!389261) (not e!346738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55352 (= res!389261 (validMask!0 mask!3053))))

(assert (=> start!55352 e!346738))

(assert (=> start!55352 true))

(declare-fun array_inv!13637 (array!37226) Bool)

(assert (=> start!55352 (array_inv!13637 a!2986)))

(declare-fun b!605730 () Bool)

(assert (=> b!605730 (= e!346732 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) index!984))))

(declare-fun b!605731 () Bool)

(assert (=> b!605731 (= e!346735 e!346734)))

(declare-fun res!389248 () Bool)

(assert (=> b!605731 (=> res!389248 e!346734)))

(assert (=> b!605731 (= res!389248 (or (not (= (select (arr!17863 a!2986) j!136) lt!276479)) (not (= (select (arr!17863 a!2986) j!136) lt!276475)) (bvsge j!136 index!984)))))

(declare-fun b!605732 () Bool)

(declare-fun res!389263 () Bool)

(assert (=> b!605732 (=> (not res!389263) (not e!346738))))

(assert (=> b!605732 (= res!389263 (and (= (size!18227 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18227 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18227 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!55352 res!389261) b!605732))

(assert (= (and b!605732 res!389263) b!605722))

(assert (= (and b!605722 res!389249) b!605729))

(assert (= (and b!605729 res!389252) b!605720))

(assert (= (and b!605720 res!389251) b!605721))

(assert (= (and b!605721 res!389246) b!605724))

(assert (= (and b!605724 res!389264) b!605716))

(assert (= (and b!605716 res!389255) b!605727))

(assert (= (and b!605727 res!389250) b!605710))

(assert (= (and b!605710 res!389253) b!605709))

(assert (= (and b!605709 res!389254) b!605725))

(assert (= (and b!605725 res!389259) b!605726))

(assert (= (and b!605725 c!68600) b!605715))

(assert (= (and b!605725 (not c!68600)) b!605713))

(assert (= (and b!605725 (not res!389247)) b!605711))

(assert (= (and b!605711 res!389257) b!605731))

(assert (= (and b!605731 (not res!389248)) b!605712))

(assert (= (and b!605712 res!389256) b!605730))

(assert (= (and b!605711 (not res!389262)) b!605714))

(assert (= (and b!605714 c!68599) b!605717))

(assert (= (and b!605714 (not c!68599)) b!605723))

(assert (= (and b!605714 (not res!389245)) b!605718))

(assert (= (and b!605718 res!389260) b!605728))

(assert (= (and b!605718 (not res!389258)) b!605719))

(declare-fun m!582597 () Bool)

(assert (=> b!605731 m!582597))

(declare-fun m!582599 () Bool)

(assert (=> b!605719 m!582599))

(declare-fun m!582601 () Bool)

(assert (=> b!605725 m!582601))

(declare-fun m!582603 () Bool)

(assert (=> b!605725 m!582603))

(declare-fun m!582605 () Bool)

(assert (=> b!605725 m!582605))

(assert (=> b!605725 m!582597))

(declare-fun m!582607 () Bool)

(assert (=> b!605725 m!582607))

(declare-fun m!582609 () Bool)

(assert (=> b!605725 m!582609))

(declare-fun m!582611 () Bool)

(assert (=> b!605725 m!582611))

(assert (=> b!605725 m!582597))

(declare-fun m!582613 () Bool)

(assert (=> b!605725 m!582613))

(declare-fun m!582615 () Bool)

(assert (=> b!605709 m!582615))

(assert (=> b!605709 m!582597))

(assert (=> b!605709 m!582597))

(declare-fun m!582617 () Bool)

(assert (=> b!605709 m!582617))

(assert (=> b!605712 m!582597))

(assert (=> b!605712 m!582597))

(declare-fun m!582619 () Bool)

(assert (=> b!605712 m!582619))

(assert (=> b!605711 m!582597))

(assert (=> b!605711 m!582607))

(declare-fun m!582621 () Bool)

(assert (=> b!605711 m!582621))

(declare-fun m!582623 () Bool)

(assert (=> b!605724 m!582623))

(declare-fun m!582625 () Bool)

(assert (=> b!605717 m!582625))

(assert (=> b!605717 m!582597))

(declare-fun m!582627 () Bool)

(assert (=> b!605717 m!582627))

(assert (=> b!605717 m!582597))

(declare-fun m!582629 () Bool)

(assert (=> b!605717 m!582629))

(assert (=> b!605717 m!582597))

(declare-fun m!582631 () Bool)

(assert (=> b!605717 m!582631))

(declare-fun m!582633 () Bool)

(assert (=> b!605717 m!582633))

(assert (=> b!605717 m!582597))

(declare-fun m!582635 () Bool)

(assert (=> b!605717 m!582635))

(declare-fun m!582637 () Bool)

(assert (=> b!605717 m!582637))

(declare-fun m!582639 () Bool)

(assert (=> b!605716 m!582639))

(declare-fun m!582641 () Bool)

(assert (=> b!605720 m!582641))

(assert (=> b!605718 m!582597))

(assert (=> b!605718 m!582597))

(declare-fun m!582643 () Bool)

(assert (=> b!605718 m!582643))

(assert (=> b!605718 m!582597))

(declare-fun m!582645 () Bool)

(assert (=> b!605718 m!582645))

(assert (=> b!605718 m!582597))

(assert (=> b!605718 m!582619))

(declare-fun m!582647 () Bool)

(assert (=> start!55352 m!582647))

(declare-fun m!582649 () Bool)

(assert (=> start!55352 m!582649))

(assert (=> b!605722 m!582597))

(assert (=> b!605722 m!582597))

(declare-fun m!582651 () Bool)

(assert (=> b!605722 m!582651))

(declare-fun m!582653 () Bool)

(assert (=> b!605721 m!582653))

(assert (=> b!605728 m!582597))

(assert (=> b!605728 m!582597))

(declare-fun m!582655 () Bool)

(assert (=> b!605728 m!582655))

(assert (=> b!605730 m!582597))

(assert (=> b!605730 m!582597))

(assert (=> b!605730 m!582655))

(assert (=> b!605710 m!582607))

(declare-fun m!582657 () Bool)

(assert (=> b!605710 m!582657))

(declare-fun m!582659 () Bool)

(assert (=> b!605727 m!582659))

(declare-fun m!582661 () Bool)

(assert (=> b!605729 m!582661))

(check-sat (not b!605730) (not b!605728) (not b!605722) (not b!605720) (not b!605709) (not b!605724) (not b!605717) (not b!605718) (not b!605716) (not b!605719) (not start!55352) (not b!605721) (not b!605712) (not b!605729) (not b!605725))
(check-sat)
(get-model)

(declare-fun b!605813 () Bool)

(declare-fun e!346798 () Bool)

(declare-fun call!33059 () Bool)

(assert (=> b!605813 (= e!346798 call!33059)))

(declare-fun b!605814 () Bool)

(declare-fun e!346797 () Bool)

(assert (=> b!605814 (= e!346797 e!346798)))

(declare-fun lt!276542 () (_ BitVec 64))

(assert (=> b!605814 (= lt!276542 (select (arr!17863 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!276543 () Unit!19288)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37226 (_ BitVec 64) (_ BitVec 32)) Unit!19288)

(assert (=> b!605814 (= lt!276543 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!276542 #b00000000000000000000000000000000))))

(assert (=> b!605814 (arrayContainsKey!0 a!2986 lt!276542 #b00000000000000000000000000000000)))

(declare-fun lt!276541 () Unit!19288)

(assert (=> b!605814 (= lt!276541 lt!276543)))

(declare-fun res!389329 () Bool)

(assert (=> b!605814 (= res!389329 (= (seekEntryOrOpen!0 (select (arr!17863 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6310 #b00000000000000000000000000000000)))))

(assert (=> b!605814 (=> (not res!389329) (not e!346798))))

(declare-fun b!605815 () Bool)

(assert (=> b!605815 (= e!346797 call!33059)))

(declare-fun bm!33056 () Bool)

(assert (=> bm!33056 (= call!33059 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!87609 () Bool)

(declare-fun res!389330 () Bool)

(declare-fun e!346796 () Bool)

(assert (=> d!87609 (=> res!389330 e!346796)))

(assert (=> d!87609 (= res!389330 (bvsge #b00000000000000000000000000000000 (size!18227 a!2986)))))

(assert (=> d!87609 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!346796)))

(declare-fun b!605816 () Bool)

(assert (=> b!605816 (= e!346796 e!346797)))

(declare-fun c!68609 () Bool)

(assert (=> b!605816 (= c!68609 (validKeyInArray!0 (select (arr!17863 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87609 (not res!389330)) b!605816))

(assert (= (and b!605816 c!68609) b!605814))

(assert (= (and b!605816 (not c!68609)) b!605815))

(assert (= (and b!605814 res!389329) b!605813))

(assert (= (or b!605813 b!605815) bm!33056))

(declare-fun m!582729 () Bool)

(assert (=> b!605814 m!582729))

(declare-fun m!582731 () Bool)

(assert (=> b!605814 m!582731))

(declare-fun m!582733 () Bool)

(assert (=> b!605814 m!582733))

(assert (=> b!605814 m!582729))

(declare-fun m!582735 () Bool)

(assert (=> b!605814 m!582735))

(declare-fun m!582737 () Bool)

(assert (=> bm!33056 m!582737))

(assert (=> b!605816 m!582729))

(assert (=> b!605816 m!582729))

(declare-fun m!582739 () Bool)

(assert (=> b!605816 m!582739))

(assert (=> b!605724 d!87609))

(declare-fun d!87611 () Bool)

(assert (=> d!87611 (= (validKeyInArray!0 (select (arr!17863 a!2986) j!136)) (and (not (= (select (arr!17863 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17863 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605722 d!87611))

(declare-fun d!87613 () Bool)

(assert (=> d!87613 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55352 d!87613))

(declare-fun d!87615 () Bool)

(assert (=> d!87615 (= (array_inv!13637 a!2986) (bvsge (size!18227 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55352 d!87615))

(declare-fun d!87617 () Bool)

(declare-fun res!389335 () Bool)

(declare-fun e!346803 () Bool)

(assert (=> d!87617 (=> res!389335 e!346803)))

(assert (=> d!87617 (= res!389335 (= (select (arr!17863 lt!276483) j!136) (select (arr!17863 a!2986) j!136)))))

(assert (=> d!87617 (= (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136) e!346803)))

(declare-fun b!605821 () Bool)

(declare-fun e!346804 () Bool)

(assert (=> b!605821 (= e!346803 e!346804)))

(declare-fun res!389336 () Bool)

(assert (=> b!605821 (=> (not res!389336) (not e!346804))))

(assert (=> b!605821 (= res!389336 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18227 lt!276483)))))

(declare-fun b!605822 () Bool)

(assert (=> b!605822 (= e!346804 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87617 (not res!389335)) b!605821))

(assert (= (and b!605821 res!389336) b!605822))

(declare-fun m!582741 () Bool)

(assert (=> d!87617 m!582741))

(assert (=> b!605822 m!582597))

(declare-fun m!582743 () Bool)

(assert (=> b!605822 m!582743))

(assert (=> b!605712 d!87617))

(declare-fun b!605833 () Bool)

(declare-fun e!346813 () Bool)

(declare-fun call!33062 () Bool)

(assert (=> b!605833 (= e!346813 call!33062)))

(declare-fun b!605834 () Bool)

(declare-fun e!346815 () Bool)

(declare-fun contains!3002 (List!11957 (_ BitVec 64)) Bool)

(assert (=> b!605834 (= e!346815 (contains!3002 Nil!11954 (select (arr!17863 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605835 () Bool)

(assert (=> b!605835 (= e!346813 call!33062)))

(declare-fun bm!33059 () Bool)

(declare-fun c!68612 () Bool)

(assert (=> bm!33059 (= call!33062 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68612 (Cons!11953 (select (arr!17863 a!2986) #b00000000000000000000000000000000) Nil!11954) Nil!11954)))))

(declare-fun d!87619 () Bool)

(declare-fun res!389344 () Bool)

(declare-fun e!346814 () Bool)

(assert (=> d!87619 (=> res!389344 e!346814)))

(assert (=> d!87619 (= res!389344 (bvsge #b00000000000000000000000000000000 (size!18227 a!2986)))))

(assert (=> d!87619 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11954) e!346814)))

(declare-fun b!605836 () Bool)

(declare-fun e!346816 () Bool)

(assert (=> b!605836 (= e!346816 e!346813)))

(assert (=> b!605836 (= c!68612 (validKeyInArray!0 (select (arr!17863 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!605837 () Bool)

(assert (=> b!605837 (= e!346814 e!346816)))

(declare-fun res!389345 () Bool)

(assert (=> b!605837 (=> (not res!389345) (not e!346816))))

(assert (=> b!605837 (= res!389345 (not e!346815))))

(declare-fun res!389343 () Bool)

(assert (=> b!605837 (=> (not res!389343) (not e!346815))))

(assert (=> b!605837 (= res!389343 (validKeyInArray!0 (select (arr!17863 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87619 (not res!389344)) b!605837))

(assert (= (and b!605837 res!389343) b!605834))

(assert (= (and b!605837 res!389345) b!605836))

(assert (= (and b!605836 c!68612) b!605833))

(assert (= (and b!605836 (not c!68612)) b!605835))

(assert (= (or b!605833 b!605835) bm!33059))

(assert (=> b!605834 m!582729))

(assert (=> b!605834 m!582729))

(declare-fun m!582745 () Bool)

(assert (=> b!605834 m!582745))

(assert (=> bm!33059 m!582729))

(declare-fun m!582747 () Bool)

(assert (=> bm!33059 m!582747))

(assert (=> b!605836 m!582729))

(assert (=> b!605836 m!582729))

(assert (=> b!605836 m!582739))

(assert (=> b!605837 m!582729))

(assert (=> b!605837 m!582729))

(assert (=> b!605837 m!582739))

(assert (=> b!605716 d!87619))

(declare-fun b!605864 () Bool)

(declare-fun e!346837 () SeekEntryResult!6310)

(assert (=> b!605864 (= e!346837 Undefined!6310)))

(declare-fun b!605865 () Bool)

(declare-fun e!346839 () SeekEntryResult!6310)

(assert (=> b!605865 (= e!346839 (MissingVacant!6310 vacantSpotIndex!68))))

(declare-fun b!605866 () Bool)

(declare-fun e!346838 () SeekEntryResult!6310)

(assert (=> b!605866 (= e!346838 (Found!6310 lt!276478))))

(declare-fun b!605867 () Bool)

(assert (=> b!605867 (= e!346837 e!346838)))

(declare-fun lt!276551 () (_ BitVec 64))

(declare-fun c!68621 () Bool)

(assert (=> b!605867 (= c!68621 (= lt!276551 (select (arr!17863 a!2986) j!136)))))

(declare-fun d!87621 () Bool)

(declare-fun lt!276552 () SeekEntryResult!6310)

(get-info :version)

(assert (=> d!87621 (and (or ((_ is Undefined!6310) lt!276552) (not ((_ is Found!6310) lt!276552)) (and (bvsge (index!27509 lt!276552) #b00000000000000000000000000000000) (bvslt (index!27509 lt!276552) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276552) ((_ is Found!6310) lt!276552) (not ((_ is MissingVacant!6310) lt!276552)) (not (= (index!27511 lt!276552) vacantSpotIndex!68)) (and (bvsge (index!27511 lt!276552) #b00000000000000000000000000000000) (bvslt (index!27511 lt!276552) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276552) (ite ((_ is Found!6310) lt!276552) (= (select (arr!17863 a!2986) (index!27509 lt!276552)) (select (arr!17863 a!2986) j!136)) (and ((_ is MissingVacant!6310) lt!276552) (= (index!27511 lt!276552) vacantSpotIndex!68) (= (select (arr!17863 a!2986) (index!27511 lt!276552)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87621 (= lt!276552 e!346837)))

(declare-fun c!68620 () Bool)

(assert (=> d!87621 (= c!68620 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87621 (= lt!276551 (select (arr!17863 a!2986) lt!276478))))

(assert (=> d!87621 (validMask!0 mask!3053)))

(assert (=> d!87621 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053) lt!276552)))

(declare-fun b!605868 () Bool)

(declare-fun c!68619 () Bool)

(assert (=> b!605868 (= c!68619 (= lt!276551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605868 (= e!346838 e!346839)))

(declare-fun b!605869 () Bool)

(assert (=> b!605869 (= e!346839 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276478 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87621 c!68620) b!605864))

(assert (= (and d!87621 (not c!68620)) b!605867))

(assert (= (and b!605867 c!68621) b!605866))

(assert (= (and b!605867 (not c!68621)) b!605868))

(assert (= (and b!605868 c!68619) b!605865))

(assert (= (and b!605868 (not c!68619)) b!605869))

(declare-fun m!582763 () Bool)

(assert (=> d!87621 m!582763))

(declare-fun m!582765 () Bool)

(assert (=> d!87621 m!582765))

(declare-fun m!582767 () Bool)

(assert (=> d!87621 m!582767))

(assert (=> d!87621 m!582647))

(declare-fun m!582769 () Bool)

(assert (=> b!605869 m!582769))

(assert (=> b!605869 m!582769))

(assert (=> b!605869 m!582597))

(declare-fun m!582771 () Bool)

(assert (=> b!605869 m!582771))

(assert (=> b!605725 d!87621))

(declare-fun b!605870 () Bool)

(declare-fun e!346840 () SeekEntryResult!6310)

(assert (=> b!605870 (= e!346840 Undefined!6310)))

(declare-fun b!605871 () Bool)

(declare-fun e!346842 () SeekEntryResult!6310)

(assert (=> b!605871 (= e!346842 (MissingVacant!6310 vacantSpotIndex!68))))

(declare-fun b!605872 () Bool)

(declare-fun e!346841 () SeekEntryResult!6310)

(assert (=> b!605872 (= e!346841 (Found!6310 lt!276478))))

(declare-fun b!605873 () Bool)

(assert (=> b!605873 (= e!346840 e!346841)))

(declare-fun c!68624 () Bool)

(declare-fun lt!276553 () (_ BitVec 64))

(assert (=> b!605873 (= c!68624 (= lt!276553 lt!276479))))

(declare-fun lt!276554 () SeekEntryResult!6310)

(declare-fun d!87635 () Bool)

(assert (=> d!87635 (and (or ((_ is Undefined!6310) lt!276554) (not ((_ is Found!6310) lt!276554)) (and (bvsge (index!27509 lt!276554) #b00000000000000000000000000000000) (bvslt (index!27509 lt!276554) (size!18227 lt!276483)))) (or ((_ is Undefined!6310) lt!276554) ((_ is Found!6310) lt!276554) (not ((_ is MissingVacant!6310) lt!276554)) (not (= (index!27511 lt!276554) vacantSpotIndex!68)) (and (bvsge (index!27511 lt!276554) #b00000000000000000000000000000000) (bvslt (index!27511 lt!276554) (size!18227 lt!276483)))) (or ((_ is Undefined!6310) lt!276554) (ite ((_ is Found!6310) lt!276554) (= (select (arr!17863 lt!276483) (index!27509 lt!276554)) lt!276479) (and ((_ is MissingVacant!6310) lt!276554) (= (index!27511 lt!276554) vacantSpotIndex!68) (= (select (arr!17863 lt!276483) (index!27511 lt!276554)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87635 (= lt!276554 e!346840)))

(declare-fun c!68623 () Bool)

(assert (=> d!87635 (= c!68623 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!87635 (= lt!276553 (select (arr!17863 lt!276483) lt!276478))))

(assert (=> d!87635 (validMask!0 mask!3053)))

(assert (=> d!87635 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 lt!276479 lt!276483 mask!3053) lt!276554)))

(declare-fun b!605874 () Bool)

(declare-fun c!68622 () Bool)

(assert (=> b!605874 (= c!68622 (= lt!276553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605874 (= e!346841 e!346842)))

(declare-fun b!605875 () Bool)

(assert (=> b!605875 (= e!346842 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!276478 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!276479 lt!276483 mask!3053))))

(assert (= (and d!87635 c!68623) b!605870))

(assert (= (and d!87635 (not c!68623)) b!605873))

(assert (= (and b!605873 c!68624) b!605872))

(assert (= (and b!605873 (not c!68624)) b!605874))

(assert (= (and b!605874 c!68622) b!605871))

(assert (= (and b!605874 (not c!68622)) b!605875))

(declare-fun m!582773 () Bool)

(assert (=> d!87635 m!582773))

(declare-fun m!582775 () Bool)

(assert (=> d!87635 m!582775))

(declare-fun m!582777 () Bool)

(assert (=> d!87635 m!582777))

(assert (=> d!87635 m!582647))

(assert (=> b!605875 m!582769))

(assert (=> b!605875 m!582769))

(declare-fun m!582779 () Bool)

(assert (=> b!605875 m!582779))

(assert (=> b!605725 d!87635))

(declare-fun b!605886 () Bool)

(declare-fun e!346851 () SeekEntryResult!6310)

(assert (=> b!605886 (= e!346851 Undefined!6310)))

(declare-fun b!605887 () Bool)

(declare-fun e!346853 () SeekEntryResult!6310)

(assert (=> b!605887 (= e!346853 (MissingVacant!6310 vacantSpotIndex!68))))

(declare-fun b!605888 () Bool)

(declare-fun e!346852 () SeekEntryResult!6310)

(assert (=> b!605888 (= e!346852 (Found!6310 index!984))))

(declare-fun b!605889 () Bool)

(assert (=> b!605889 (= e!346851 e!346852)))

(declare-fun c!68629 () Bool)

(declare-fun lt!276555 () (_ BitVec 64))

(assert (=> b!605889 (= c!68629 (= lt!276555 lt!276479))))

(declare-fun d!87637 () Bool)

(declare-fun lt!276556 () SeekEntryResult!6310)

(assert (=> d!87637 (and (or ((_ is Undefined!6310) lt!276556) (not ((_ is Found!6310) lt!276556)) (and (bvsge (index!27509 lt!276556) #b00000000000000000000000000000000) (bvslt (index!27509 lt!276556) (size!18227 lt!276483)))) (or ((_ is Undefined!6310) lt!276556) ((_ is Found!6310) lt!276556) (not ((_ is MissingVacant!6310) lt!276556)) (not (= (index!27511 lt!276556) vacantSpotIndex!68)) (and (bvsge (index!27511 lt!276556) #b00000000000000000000000000000000) (bvslt (index!27511 lt!276556) (size!18227 lt!276483)))) (or ((_ is Undefined!6310) lt!276556) (ite ((_ is Found!6310) lt!276556) (= (select (arr!17863 lt!276483) (index!27509 lt!276556)) lt!276479) (and ((_ is MissingVacant!6310) lt!276556) (= (index!27511 lt!276556) vacantSpotIndex!68) (= (select (arr!17863 lt!276483) (index!27511 lt!276556)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87637 (= lt!276556 e!346851)))

(declare-fun c!68628 () Bool)

(assert (=> d!87637 (= c!68628 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87637 (= lt!276555 (select (arr!17863 lt!276483) index!984))))

(assert (=> d!87637 (validMask!0 mask!3053)))

(assert (=> d!87637 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!276479 lt!276483 mask!3053) lt!276556)))

(declare-fun b!605890 () Bool)

(declare-fun c!68627 () Bool)

(assert (=> b!605890 (= c!68627 (= lt!276555 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!605890 (= e!346852 e!346853)))

(declare-fun b!605891 () Bool)

(assert (=> b!605891 (= e!346853 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!276479 lt!276483 mask!3053))))

(assert (= (and d!87637 c!68628) b!605886))

(assert (= (and d!87637 (not c!68628)) b!605889))

(assert (= (and b!605889 c!68629) b!605888))

(assert (= (and b!605889 (not c!68629)) b!605890))

(assert (= (and b!605890 c!68627) b!605887))

(assert (= (and b!605890 (not c!68627)) b!605891))

(declare-fun m!582781 () Bool)

(assert (=> d!87637 m!582781))

(declare-fun m!582783 () Bool)

(assert (=> d!87637 m!582783))

(declare-fun m!582785 () Bool)

(assert (=> d!87637 m!582785))

(assert (=> d!87637 m!582647))

(assert (=> b!605891 m!582601))

(assert (=> b!605891 m!582601))

(declare-fun m!582787 () Bool)

(assert (=> b!605891 m!582787))

(assert (=> b!605725 d!87637))

(declare-fun d!87639 () Bool)

(declare-fun lt!276562 () (_ BitVec 32))

(assert (=> d!87639 (and (bvsge lt!276562 #b00000000000000000000000000000000) (bvslt lt!276562 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87639 (= lt!276562 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!87639 (validMask!0 mask!3053)))

(assert (=> d!87639 (= (nextIndex!0 index!984 x!910 mask!3053) lt!276562)))

(declare-fun bs!18534 () Bool)

(assert (= bs!18534 d!87639))

(declare-fun m!582797 () Bool)

(assert (=> bs!18534 m!582797))

(assert (=> bs!18534 m!582647))

(assert (=> b!605725 d!87639))

(declare-fun d!87643 () Bool)

(declare-fun e!346882 () Bool)

(assert (=> d!87643 e!346882))

(declare-fun res!389385 () Bool)

(assert (=> d!87643 (=> (not res!389385) (not e!346882))))

(assert (=> d!87643 (= res!389385 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18227 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18227 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18227 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18227 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18227 a!2986))))))

(declare-fun lt!276578 () Unit!19288)

(declare-fun choose!9 (array!37226 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> d!87643 (= lt!276578 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 mask!3053))))

(assert (=> d!87643 (validMask!0 mask!3053)))

(assert (=> d!87643 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 mask!3053) lt!276578)))

(declare-fun b!605929 () Bool)

(assert (=> b!605929 (= e!346882 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!276478 vacantSpotIndex!68 (select (store (arr!17863 a!2986) i!1108 k0!1786) j!136) (array!37227 (store (arr!17863 a!2986) i!1108 k0!1786) (size!18227 a!2986)) mask!3053)))))

(assert (= (and d!87643 res!389385) b!605929))

(declare-fun m!582829 () Bool)

(assert (=> d!87643 m!582829))

(assert (=> d!87643 m!582647))

(assert (=> b!605929 m!582597))

(assert (=> b!605929 m!582613))

(assert (=> b!605929 m!582603))

(declare-fun m!582831 () Bool)

(assert (=> b!605929 m!582831))

(assert (=> b!605929 m!582597))

(assert (=> b!605929 m!582603))

(assert (=> b!605929 m!582607))

(assert (=> b!605725 d!87643))

(declare-fun d!87659 () Bool)

(assert (=> d!87659 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!605729 d!87659))

(declare-fun d!87661 () Bool)

(declare-fun res!389386 () Bool)

(declare-fun e!346883 () Bool)

(assert (=> d!87661 (=> res!389386 e!346883)))

(assert (=> d!87661 (= res!389386 (= (select (arr!17863 lt!276483) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!17863 a!2986) j!136)))))

(assert (=> d!87661 (= (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!346883)))

(declare-fun b!605930 () Bool)

(declare-fun e!346884 () Bool)

(assert (=> b!605930 (= e!346883 e!346884)))

(declare-fun res!389387 () Bool)

(assert (=> b!605930 (=> (not res!389387) (not e!346884))))

(assert (=> b!605930 (= res!389387 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18227 lt!276483)))))

(declare-fun b!605931 () Bool)

(assert (=> b!605931 (= e!346884 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87661 (not res!389386)) b!605930))

(assert (= (and b!605930 res!389387) b!605931))

(declare-fun m!582833 () Bool)

(assert (=> d!87661 m!582833))

(assert (=> b!605931 m!582597))

(declare-fun m!582835 () Bool)

(assert (=> b!605931 m!582835))

(assert (=> b!605718 d!87661))

(declare-fun d!87663 () Bool)

(assert (=> d!87663 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!276585 () Unit!19288)

(declare-fun choose!114 (array!37226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> d!87663 (= lt!276585 (choose!114 lt!276483 (select (arr!17863 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!87663 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!87663 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!276585)))

(declare-fun bs!18537 () Bool)

(assert (= bs!18537 d!87663))

(assert (=> bs!18537 m!582597))

(assert (=> bs!18537 m!582643))

(assert (=> bs!18537 m!582597))

(declare-fun m!582855 () Bool)

(assert (=> bs!18537 m!582855))

(assert (=> b!605718 d!87663))

(assert (=> b!605718 d!87617))

(declare-fun d!87669 () Bool)

(declare-fun res!389392 () Bool)

(declare-fun e!346898 () Bool)

(assert (=> d!87669 (=> res!389392 e!346898)))

(assert (=> d!87669 (= res!389392 ((_ is Nil!11954) Nil!11954))))

(assert (=> d!87669 (= (noDuplicate!305 Nil!11954) e!346898)))

(declare-fun b!605954 () Bool)

(declare-fun e!346899 () Bool)

(assert (=> b!605954 (= e!346898 e!346899)))

(declare-fun res!389393 () Bool)

(assert (=> b!605954 (=> (not res!389393) (not e!346899))))

(assert (=> b!605954 (= res!389393 (not (contains!3002 (t!18193 Nil!11954) (h!12998 Nil!11954))))))

(declare-fun b!605955 () Bool)

(assert (=> b!605955 (= e!346899 (noDuplicate!305 (t!18193 Nil!11954)))))

(assert (= (and d!87669 (not res!389392)) b!605954))

(assert (= (and b!605954 res!389393) b!605955))

(declare-fun m!582865 () Bool)

(assert (=> b!605954 m!582865))

(declare-fun m!582867 () Bool)

(assert (=> b!605955 m!582867))

(assert (=> b!605719 d!87669))

(declare-fun b!605956 () Bool)

(declare-fun e!346900 () Bool)

(declare-fun call!33068 () Bool)

(assert (=> b!605956 (= e!346900 call!33068)))

(declare-fun b!605957 () Bool)

(declare-fun e!346902 () Bool)

(assert (=> b!605957 (= e!346902 (contains!3002 Nil!11954 (select (arr!17863 lt!276483) j!136)))))

(declare-fun b!605958 () Bool)

(assert (=> b!605958 (= e!346900 call!33068)))

(declare-fun c!68648 () Bool)

(declare-fun bm!33065 () Bool)

(assert (=> bm!33065 (= call!33068 (arrayNoDuplicates!0 lt!276483 (bvadd j!136 #b00000000000000000000000000000001) (ite c!68648 (Cons!11953 (select (arr!17863 lt!276483) j!136) Nil!11954) Nil!11954)))))

(declare-fun d!87673 () Bool)

(declare-fun res!389395 () Bool)

(declare-fun e!346901 () Bool)

(assert (=> d!87673 (=> res!389395 e!346901)))

(assert (=> d!87673 (= res!389395 (bvsge j!136 (size!18227 lt!276483)))))

(assert (=> d!87673 (= (arrayNoDuplicates!0 lt!276483 j!136 Nil!11954) e!346901)))

(declare-fun b!605959 () Bool)

(declare-fun e!346903 () Bool)

(assert (=> b!605959 (= e!346903 e!346900)))

(assert (=> b!605959 (= c!68648 (validKeyInArray!0 (select (arr!17863 lt!276483) j!136)))))

(declare-fun b!605960 () Bool)

(assert (=> b!605960 (= e!346901 e!346903)))

(declare-fun res!389396 () Bool)

(assert (=> b!605960 (=> (not res!389396) (not e!346903))))

(assert (=> b!605960 (= res!389396 (not e!346902))))

(declare-fun res!389394 () Bool)

(assert (=> b!605960 (=> (not res!389394) (not e!346902))))

(assert (=> b!605960 (= res!389394 (validKeyInArray!0 (select (arr!17863 lt!276483) j!136)))))

(assert (= (and d!87673 (not res!389395)) b!605960))

(assert (= (and b!605960 res!389394) b!605957))

(assert (= (and b!605960 res!389396) b!605959))

(assert (= (and b!605959 c!68648) b!605956))

(assert (= (and b!605959 (not c!68648)) b!605958))

(assert (= (or b!605956 b!605958) bm!33065))

(assert (=> b!605957 m!582741))

(assert (=> b!605957 m!582741))

(declare-fun m!582871 () Bool)

(assert (=> b!605957 m!582871))

(assert (=> bm!33065 m!582741))

(declare-fun m!582873 () Bool)

(assert (=> bm!33065 m!582873))

(assert (=> b!605959 m!582741))

(assert (=> b!605959 m!582741))

(declare-fun m!582875 () Bool)

(assert (=> b!605959 m!582875))

(assert (=> b!605960 m!582741))

(assert (=> b!605960 m!582741))

(assert (=> b!605960 m!582875))

(assert (=> b!605717 d!87673))

(declare-fun d!87677 () Bool)

(assert (=> d!87677 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!276591 () Unit!19288)

(assert (=> d!87677 (= lt!276591 (choose!114 lt!276483 (select (arr!17863 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!87677 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!87677 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!276483 (select (arr!17863 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!276591)))

(declare-fun bs!18539 () Bool)

(assert (= bs!18539 d!87677))

(assert (=> bs!18539 m!582597))

(assert (=> bs!18539 m!582635))

(assert (=> bs!18539 m!582597))

(declare-fun m!582877 () Bool)

(assert (=> bs!18539 m!582877))

(assert (=> b!605717 d!87677))

(declare-fun d!87679 () Bool)

(assert (=> d!87679 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18227 lt!276483)) (not (= (select (arr!17863 lt!276483) j!136) (select (arr!17863 a!2986) j!136))))))

(declare-fun lt!276594 () Unit!19288)

(declare-fun choose!21 (array!37226 (_ BitVec 64) (_ BitVec 32) List!11957) Unit!19288)

(assert (=> d!87679 (= lt!276594 (choose!21 lt!276483 (select (arr!17863 a!2986) j!136) j!136 Nil!11954))))

(assert (=> d!87679 (bvslt (size!18227 lt!276483) #b01111111111111111111111111111111)))

(assert (=> d!87679 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!276483 (select (arr!17863 a!2986) j!136) j!136 Nil!11954) lt!276594)))

(declare-fun bs!18540 () Bool)

(assert (= bs!18540 d!87679))

(assert (=> bs!18540 m!582741))

(assert (=> bs!18540 m!582597))

(declare-fun m!582879 () Bool)

(assert (=> bs!18540 m!582879))

(assert (=> b!605717 d!87679))

(declare-fun d!87683 () Bool)

(declare-fun res!389403 () Bool)

(declare-fun e!346914 () Bool)

(assert (=> d!87683 (=> res!389403 e!346914)))

(assert (=> d!87683 (= res!389403 (= (select (arr!17863 lt!276483) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17863 a!2986) j!136)))))

(assert (=> d!87683 (= (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!346914)))

(declare-fun b!605975 () Bool)

(declare-fun e!346915 () Bool)

(assert (=> b!605975 (= e!346914 e!346915)))

(declare-fun res!389404 () Bool)

(assert (=> b!605975 (=> (not res!389404) (not e!346915))))

(assert (=> b!605975 (= res!389404 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18227 lt!276483)))))

(declare-fun b!605976 () Bool)

(assert (=> b!605976 (= e!346915 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!87683 (not res!389403)) b!605975))

(assert (= (and b!605975 res!389404) b!605976))

(declare-fun m!582881 () Bool)

(assert (=> d!87683 m!582881))

(assert (=> b!605976 m!582597))

(declare-fun m!582883 () Bool)

(assert (=> b!605976 m!582883))

(assert (=> b!605717 d!87683))

(declare-fun d!87685 () Bool)

(assert (=> d!87685 (arrayNoDuplicates!0 lt!276483 j!136 Nil!11954)))

(declare-fun lt!276601 () Unit!19288)

(declare-fun choose!39 (array!37226 (_ BitVec 32) (_ BitVec 32)) Unit!19288)

(assert (=> d!87685 (= lt!276601 (choose!39 lt!276483 #b00000000000000000000000000000000 j!136))))

(assert (=> d!87685 (bvslt (size!18227 lt!276483) #b01111111111111111111111111111111)))

(assert (=> d!87685 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!276483 #b00000000000000000000000000000000 j!136) lt!276601)))

(declare-fun bs!18541 () Bool)

(assert (= bs!18541 d!87685))

(assert (=> bs!18541 m!582627))

(declare-fun m!582885 () Bool)

(assert (=> bs!18541 m!582885))

(assert (=> b!605717 d!87685))

(declare-fun b!605990 () Bool)

(declare-fun e!346924 () Bool)

(declare-fun call!33072 () Bool)

(assert (=> b!605990 (= e!346924 call!33072)))

(declare-fun b!605991 () Bool)

(declare-fun e!346926 () Bool)

(assert (=> b!605991 (= e!346926 (contains!3002 Nil!11954 (select (arr!17863 lt!276483) #b00000000000000000000000000000000)))))

(declare-fun b!605992 () Bool)

(assert (=> b!605992 (= e!346924 call!33072)))

(declare-fun bm!33069 () Bool)

(declare-fun c!68658 () Bool)

(assert (=> bm!33069 (= call!33072 (arrayNoDuplicates!0 lt!276483 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!68658 (Cons!11953 (select (arr!17863 lt!276483) #b00000000000000000000000000000000) Nil!11954) Nil!11954)))))

(declare-fun d!87687 () Bool)

(declare-fun res!389409 () Bool)

(declare-fun e!346925 () Bool)

(assert (=> d!87687 (=> res!389409 e!346925)))

(assert (=> d!87687 (= res!389409 (bvsge #b00000000000000000000000000000000 (size!18227 lt!276483)))))

(assert (=> d!87687 (= (arrayNoDuplicates!0 lt!276483 #b00000000000000000000000000000000 Nil!11954) e!346925)))

(declare-fun b!605993 () Bool)

(declare-fun e!346927 () Bool)

(assert (=> b!605993 (= e!346927 e!346924)))

(assert (=> b!605993 (= c!68658 (validKeyInArray!0 (select (arr!17863 lt!276483) #b00000000000000000000000000000000)))))

(declare-fun b!605994 () Bool)

(assert (=> b!605994 (= e!346925 e!346927)))

(declare-fun res!389410 () Bool)

(assert (=> b!605994 (=> (not res!389410) (not e!346927))))

(assert (=> b!605994 (= res!389410 (not e!346926))))

(declare-fun res!389408 () Bool)

(assert (=> b!605994 (=> (not res!389408) (not e!346926))))

(assert (=> b!605994 (= res!389408 (validKeyInArray!0 (select (arr!17863 lt!276483) #b00000000000000000000000000000000)))))

(assert (= (and d!87687 (not res!389409)) b!605994))

(assert (= (and b!605994 res!389408) b!605991))

(assert (= (and b!605994 res!389410) b!605993))

(assert (= (and b!605993 c!68658) b!605990))

(assert (= (and b!605993 (not c!68658)) b!605992))

(assert (= (or b!605990 b!605992) bm!33069))

(declare-fun m!582895 () Bool)

(assert (=> b!605991 m!582895))

(assert (=> b!605991 m!582895))

(declare-fun m!582897 () Bool)

(assert (=> b!605991 m!582897))

(assert (=> bm!33069 m!582895))

(declare-fun m!582899 () Bool)

(assert (=> bm!33069 m!582899))

(assert (=> b!605993 m!582895))

(assert (=> b!605993 m!582895))

(declare-fun m!582901 () Bool)

(assert (=> b!605993 m!582901))

(assert (=> b!605994 m!582895))

(assert (=> b!605994 m!582895))

(assert (=> b!605994 m!582901))

(assert (=> b!605717 d!87687))

(declare-fun d!87691 () Bool)

(declare-fun e!346943 () Bool)

(assert (=> d!87691 e!346943))

(declare-fun res!389416 () Bool)

(assert (=> d!87691 (=> (not res!389416) (not e!346943))))

(assert (=> d!87691 (= res!389416 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18227 a!2986))))))

(declare-fun lt!276616 () Unit!19288)

(declare-fun choose!41 (array!37226 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11957) Unit!19288)

(assert (=> d!87691 (= lt!276616 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11954))))

(assert (=> d!87691 (bvslt (size!18227 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!87691 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11954) lt!276616)))

(declare-fun b!606020 () Bool)

(assert (=> b!606020 (= e!346943 (arrayNoDuplicates!0 (array!37227 (store (arr!17863 a!2986) i!1108 k0!1786) (size!18227 a!2986)) #b00000000000000000000000000000000 Nil!11954))))

(assert (= (and d!87691 res!389416) b!606020))

(declare-fun m!582937 () Bool)

(assert (=> d!87691 m!582937))

(assert (=> b!606020 m!582607))

(declare-fun m!582941 () Bool)

(assert (=> b!606020 m!582941))

(assert (=> b!605717 d!87691))

(declare-fun d!87705 () Bool)

(declare-fun res!389417 () Bool)

(declare-fun e!346944 () Bool)

(assert (=> d!87705 (=> res!389417 e!346944)))

(assert (=> d!87705 (= res!389417 (= (select (arr!17863 lt!276483) index!984) (select (arr!17863 a!2986) j!136)))))

(assert (=> d!87705 (= (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) index!984) e!346944)))

(declare-fun b!606021 () Bool)

(declare-fun e!346945 () Bool)

(assert (=> b!606021 (= e!346944 e!346945)))

(declare-fun res!389418 () Bool)

(assert (=> b!606021 (=> (not res!389418) (not e!346945))))

(assert (=> b!606021 (= res!389418 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18227 lt!276483)))))

(declare-fun b!606022 () Bool)

(assert (=> b!606022 (= e!346945 (arrayContainsKey!0 lt!276483 (select (arr!17863 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87705 (not res!389417)) b!606021))

(assert (= (and b!606021 res!389418) b!606022))

(assert (=> d!87705 m!582785))

(assert (=> b!606022 m!582597))

(declare-fun m!582945 () Bool)

(assert (=> b!606022 m!582945))

(assert (=> b!605728 d!87705))

(declare-fun d!87709 () Bool)

(declare-fun lt!276638 () SeekEntryResult!6310)

(assert (=> d!87709 (and (or ((_ is Undefined!6310) lt!276638) (not ((_ is Found!6310) lt!276638)) (and (bvsge (index!27509 lt!276638) #b00000000000000000000000000000000) (bvslt (index!27509 lt!276638) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276638) ((_ is Found!6310) lt!276638) (not ((_ is MissingZero!6310) lt!276638)) (and (bvsge (index!27508 lt!276638) #b00000000000000000000000000000000) (bvslt (index!27508 lt!276638) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276638) ((_ is Found!6310) lt!276638) ((_ is MissingZero!6310) lt!276638) (not ((_ is MissingVacant!6310) lt!276638)) (and (bvsge (index!27511 lt!276638) #b00000000000000000000000000000000) (bvslt (index!27511 lt!276638) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276638) (ite ((_ is Found!6310) lt!276638) (= (select (arr!17863 a!2986) (index!27509 lt!276638)) k0!1786) (ite ((_ is MissingZero!6310) lt!276638) (= (select (arr!17863 a!2986) (index!27508 lt!276638)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6310) lt!276638) (= (select (arr!17863 a!2986) (index!27511 lt!276638)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!346964 () SeekEntryResult!6310)

(assert (=> d!87709 (= lt!276638 e!346964)))

(declare-fun c!68675 () Bool)

(declare-fun lt!276636 () SeekEntryResult!6310)

(assert (=> d!87709 (= c!68675 (and ((_ is Intermediate!6310) lt!276636) (undefined!7122 lt!276636)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37226 (_ BitVec 32)) SeekEntryResult!6310)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87709 (= lt!276636 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!87709 (validMask!0 mask!3053)))

(assert (=> d!87709 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!276638)))

(declare-fun b!606047 () Bool)

(declare-fun e!346965 () SeekEntryResult!6310)

(assert (=> b!606047 (= e!346965 (seekKeyOrZeroReturnVacant!0 (x!56338 lt!276636) (index!27510 lt!276636) (index!27510 lt!276636) k0!1786 a!2986 mask!3053))))

(declare-fun b!606048 () Bool)

(assert (=> b!606048 (= e!346965 (MissingZero!6310 (index!27510 lt!276636)))))

(declare-fun b!606049 () Bool)

(assert (=> b!606049 (= e!346964 Undefined!6310)))

(declare-fun b!606050 () Bool)

(declare-fun c!68676 () Bool)

(declare-fun lt!276637 () (_ BitVec 64))

(assert (=> b!606050 (= c!68676 (= lt!276637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!346966 () SeekEntryResult!6310)

(assert (=> b!606050 (= e!346966 e!346965)))

(declare-fun b!606051 () Bool)

(assert (=> b!606051 (= e!346964 e!346966)))

(assert (=> b!606051 (= lt!276637 (select (arr!17863 a!2986) (index!27510 lt!276636)))))

(declare-fun c!68677 () Bool)

(assert (=> b!606051 (= c!68677 (= lt!276637 k0!1786))))

(declare-fun b!606052 () Bool)

(assert (=> b!606052 (= e!346966 (Found!6310 (index!27510 lt!276636)))))

(assert (= (and d!87709 c!68675) b!606049))

(assert (= (and d!87709 (not c!68675)) b!606051))

(assert (= (and b!606051 c!68677) b!606052))

(assert (= (and b!606051 (not c!68677)) b!606050))

(assert (= (and b!606050 c!68676) b!606048))

(assert (= (and b!606050 (not c!68676)) b!606047))

(declare-fun m!582969 () Bool)

(assert (=> d!87709 m!582969))

(assert (=> d!87709 m!582969))

(declare-fun m!582971 () Bool)

(assert (=> d!87709 m!582971))

(declare-fun m!582973 () Bool)

(assert (=> d!87709 m!582973))

(declare-fun m!582975 () Bool)

(assert (=> d!87709 m!582975))

(declare-fun m!582977 () Bool)

(assert (=> d!87709 m!582977))

(assert (=> d!87709 m!582647))

(declare-fun m!582979 () Bool)

(assert (=> b!606047 m!582979))

(declare-fun m!582981 () Bool)

(assert (=> b!606051 m!582981))

(assert (=> b!605721 d!87709))

(declare-fun b!606053 () Bool)

(declare-fun e!346967 () SeekEntryResult!6310)

(assert (=> b!606053 (= e!346967 Undefined!6310)))

(declare-fun b!606054 () Bool)

(declare-fun e!346969 () SeekEntryResult!6310)

(assert (=> b!606054 (= e!346969 (MissingVacant!6310 vacantSpotIndex!68))))

(declare-fun b!606055 () Bool)

(declare-fun e!346968 () SeekEntryResult!6310)

(assert (=> b!606055 (= e!346968 (Found!6310 index!984))))

(declare-fun b!606056 () Bool)

(assert (=> b!606056 (= e!346967 e!346968)))

(declare-fun lt!276639 () (_ BitVec 64))

(declare-fun c!68680 () Bool)

(assert (=> b!606056 (= c!68680 (= lt!276639 (select (arr!17863 a!2986) j!136)))))

(declare-fun lt!276640 () SeekEntryResult!6310)

(declare-fun d!87731 () Bool)

(assert (=> d!87731 (and (or ((_ is Undefined!6310) lt!276640) (not ((_ is Found!6310) lt!276640)) (and (bvsge (index!27509 lt!276640) #b00000000000000000000000000000000) (bvslt (index!27509 lt!276640) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276640) ((_ is Found!6310) lt!276640) (not ((_ is MissingVacant!6310) lt!276640)) (not (= (index!27511 lt!276640) vacantSpotIndex!68)) (and (bvsge (index!27511 lt!276640) #b00000000000000000000000000000000) (bvslt (index!27511 lt!276640) (size!18227 a!2986)))) (or ((_ is Undefined!6310) lt!276640) (ite ((_ is Found!6310) lt!276640) (= (select (arr!17863 a!2986) (index!27509 lt!276640)) (select (arr!17863 a!2986) j!136)) (and ((_ is MissingVacant!6310) lt!276640) (= (index!27511 lt!276640) vacantSpotIndex!68) (= (select (arr!17863 a!2986) (index!27511 lt!276640)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87731 (= lt!276640 e!346967)))

(declare-fun c!68679 () Bool)

(assert (=> d!87731 (= c!68679 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!87731 (= lt!276639 (select (arr!17863 a!2986) index!984))))

(assert (=> d!87731 (validMask!0 mask!3053)))

(assert (=> d!87731 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053) lt!276640)))

(declare-fun b!606057 () Bool)

(declare-fun c!68678 () Bool)

(assert (=> b!606057 (= c!68678 (= lt!276639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!606057 (= e!346968 e!346969)))

(declare-fun b!606058 () Bool)

(assert (=> b!606058 (= e!346969 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17863 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!87731 c!68679) b!606053))

(assert (= (and d!87731 (not c!68679)) b!606056))

(assert (= (and b!606056 c!68680) b!606055))

(assert (= (and b!606056 (not c!68680)) b!606057))

(assert (= (and b!606057 c!68678) b!606054))

(assert (= (and b!606057 (not c!68678)) b!606058))

(declare-fun m!582983 () Bool)

(assert (=> d!87731 m!582983))

(declare-fun m!582985 () Bool)

(assert (=> d!87731 m!582985))

(assert (=> d!87731 m!582615))

(assert (=> d!87731 m!582647))

(assert (=> b!606058 m!582601))

(assert (=> b!606058 m!582601))

(assert (=> b!606058 m!582597))

(declare-fun m!582987 () Bool)

(assert (=> b!606058 m!582987))

(assert (=> b!605709 d!87731))

(assert (=> b!605730 d!87705))

(declare-fun d!87733 () Bool)

(declare-fun res!389431 () Bool)

(declare-fun e!346970 () Bool)

(assert (=> d!87733 (=> res!389431 e!346970)))

(assert (=> d!87733 (= res!389431 (= (select (arr!17863 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!87733 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!346970)))

(declare-fun b!606059 () Bool)

(declare-fun e!346971 () Bool)

(assert (=> b!606059 (= e!346970 e!346971)))

(declare-fun res!389432 () Bool)

(assert (=> b!606059 (=> (not res!389432) (not e!346971))))

(assert (=> b!606059 (= res!389432 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18227 a!2986)))))

(declare-fun b!606060 () Bool)

(assert (=> b!606060 (= e!346971 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87733 (not res!389431)) b!606059))

(assert (= (and b!606059 res!389432) b!606060))

(assert (=> d!87733 m!582729))

(declare-fun m!582989 () Bool)

(assert (=> b!606060 m!582989))

(assert (=> b!605720 d!87733))

(check-sat (not d!87635) (not b!605994) (not b!605837) (not bm!33059) (not d!87677) (not b!605834) (not b!606047) (not d!87663) (not d!87621) (not bm!33065) (not b!605814) (not d!87679) (not b!606058) (not b!605891) (not b!605959) (not bm!33056) (not b!605954) (not b!605822) (not b!605869) (not b!605836) (not b!606020) (not b!605960) (not d!87639) (not b!606060) (not b!605957) (not b!605991) (not b!605875) (not b!605816) (not d!87685) (not b!605976) (not d!87691) (not b!605993) (not d!87637) (not b!606022) (not d!87643) (not d!87731) (not bm!33069) (not b!605931) (not b!605955) (not b!605929) (not d!87709))
(check-sat)
