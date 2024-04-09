; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54868 () Bool)

(assert start!54868)

(declare-fun b!599423 () Bool)

(declare-datatypes ((Unit!18888 0))(
  ( (Unit!18889) )
))
(declare-fun e!342711 () Unit!18888)

(declare-fun Unit!18890 () Unit!18888)

(assert (=> b!599423 (= e!342711 Unit!18890)))

(declare-fun e!342701 () Bool)

(declare-fun b!599425 () Bool)

(declare-datatypes ((array!37066 0))(
  ( (array!37067 (arr!17789 (Array (_ BitVec 32) (_ BitVec 64))) (size!18153 (_ BitVec 32))) )
))
(declare-fun lt!272585 () array!37066)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37066)

(declare-fun arrayContainsKey!0 (array!37066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599425 (= e!342701 (arrayContainsKey!0 lt!272585 (select (arr!17789 a!2986) j!136) index!984))))

(declare-fun b!599426 () Bool)

(declare-fun e!342704 () Bool)

(declare-fun e!342702 () Bool)

(assert (=> b!599426 (= e!342704 e!342702)))

(declare-fun res!384576 () Bool)

(assert (=> b!599426 (=> res!384576 e!342702)))

(declare-fun lt!272578 () (_ BitVec 64))

(declare-fun lt!272573 () (_ BitVec 64))

(assert (=> b!599426 (= res!384576 (or (not (= (select (arr!17789 a!2986) j!136) lt!272578)) (not (= (select (arr!17789 a!2986) j!136) lt!272573)) (bvsge j!136 index!984)))))

(declare-fun b!599427 () Bool)

(declare-fun e!342709 () Bool)

(assert (=> b!599427 (= e!342709 true)))

(declare-fun lt!272584 () Bool)

(declare-datatypes ((List!11883 0))(
  ( (Nil!11880) (Cons!11879 (h!12924 (_ BitVec 64)) (t!18119 List!11883)) )
))
(declare-fun contains!2968 (List!11883 (_ BitVec 64)) Bool)

(assert (=> b!599427 (= lt!272584 (contains!2968 Nil!11880 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599428 () Bool)

(declare-fun e!342700 () Bool)

(declare-fun e!342712 () Bool)

(assert (=> b!599428 (= e!342700 e!342712)))

(declare-fun res!384563 () Bool)

(assert (=> b!599428 (=> (not res!384563) (not e!342712))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!599428 (= res!384563 (= (select (store (arr!17789 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599428 (= lt!272585 (array!37067 (store (arr!17789 a!2986) i!1108 k!1786) (size!18153 a!2986)))))

(declare-fun b!599429 () Bool)

(declare-fun res!384562 () Bool)

(assert (=> b!599429 (=> res!384562 e!342709)))

(declare-fun noDuplicate!282 (List!11883) Bool)

(assert (=> b!599429 (= res!384562 (not (noDuplicate!282 Nil!11880)))))

(declare-fun b!599430 () Bool)

(declare-fun e!342705 () Bool)

(assert (=> b!599430 (= e!342705 e!342700)))

(declare-fun res!384559 () Bool)

(assert (=> b!599430 (=> (not res!384559) (not e!342700))))

(declare-datatypes ((SeekEntryResult!6236 0))(
  ( (MissingZero!6236 (index!27200 (_ BitVec 32))) (Found!6236 (index!27201 (_ BitVec 32))) (Intermediate!6236 (undefined!7048 Bool) (index!27202 (_ BitVec 32)) (x!56028 (_ BitVec 32))) (Undefined!6236) (MissingVacant!6236 (index!27203 (_ BitVec 32))) )
))
(declare-fun lt!272581 () SeekEntryResult!6236)

(assert (=> b!599430 (= res!384559 (or (= lt!272581 (MissingZero!6236 i!1108)) (= lt!272581 (MissingVacant!6236 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37066 (_ BitVec 32)) SeekEntryResult!6236)

(assert (=> b!599430 (= lt!272581 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599431 () Bool)

(declare-fun res!384577 () Bool)

(assert (=> b!599431 (=> (not res!384577) (not e!342705))))

(assert (=> b!599431 (= res!384577 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599432 () Bool)

(declare-fun res!384561 () Bool)

(assert (=> b!599432 (=> res!384561 e!342709)))

(assert (=> b!599432 (= res!384561 (contains!2968 Nil!11880 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599433 () Bool)

(declare-fun e!342710 () Bool)

(assert (=> b!599433 (= e!342712 e!342710)))

(declare-fun res!384578 () Bool)

(assert (=> b!599433 (=> (not res!384578) (not e!342710))))

(declare-fun lt!272586 () SeekEntryResult!6236)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!599433 (= res!384578 (and (= lt!272586 (Found!6236 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17789 a!2986) index!984) (select (arr!17789 a!2986) j!136))) (not (= (select (arr!17789 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37066 (_ BitVec 32)) SeekEntryResult!6236)

(assert (=> b!599433 (= lt!272586 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17789 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599434 () Bool)

(declare-fun res!384568 () Bool)

(assert (=> b!599434 (=> (not res!384568) (not e!342705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599434 (= res!384568 (validKeyInArray!0 (select (arr!17789 a!2986) j!136)))))

(declare-fun b!599435 () Bool)

(declare-fun e!342707 () Bool)

(assert (=> b!599435 (= e!342707 e!342709)))

(declare-fun res!384574 () Bool)

(assert (=> b!599435 (=> res!384574 e!342709)))

(assert (=> b!599435 (= res!384574 (or (bvsge (size!18153 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18153 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37066 (_ BitVec 32) List!11883) Bool)

(assert (=> b!599435 (arrayNoDuplicates!0 lt!272585 j!136 Nil!11880)))

(declare-fun lt!272575 () Unit!18888)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37066 (_ BitVec 32) (_ BitVec 32)) Unit!18888)

(assert (=> b!599435 (= lt!272575 (lemmaNoDuplicateFromThenFromBigger!0 lt!272585 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599435 (arrayNoDuplicates!0 lt!272585 #b00000000000000000000000000000000 Nil!11880)))

(declare-fun lt!272580 () Unit!18888)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37066 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11883) Unit!18888)

(assert (=> b!599435 (= lt!272580 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11880))))

(assert (=> b!599435 (arrayContainsKey!0 lt!272585 (select (arr!17789 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272576 () Unit!18888)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37066 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18888)

(assert (=> b!599435 (= lt!272576 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272585 (select (arr!17789 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599436 () Bool)

(declare-fun res!384575 () Bool)

(assert (=> b!599436 (=> (not res!384575) (not e!342700))))

(assert (=> b!599436 (= res!384575 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11880))))

(declare-fun b!599424 () Bool)

(declare-fun Unit!18891 () Unit!18888)

(assert (=> b!599424 (= e!342711 Unit!18891)))

(assert (=> b!599424 false))

(declare-fun res!384569 () Bool)

(assert (=> start!54868 (=> (not res!384569) (not e!342705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54868 (= res!384569 (validMask!0 mask!3053))))

(assert (=> start!54868 e!342705))

(assert (=> start!54868 true))

(declare-fun array_inv!13563 (array!37066) Bool)

(assert (=> start!54868 (array_inv!13563 a!2986)))

(declare-fun b!599437 () Bool)

(declare-fun e!342703 () Bool)

(declare-fun lt!272583 () SeekEntryResult!6236)

(assert (=> b!599437 (= e!342703 (= lt!272586 lt!272583))))

(declare-fun b!599438 () Bool)

(declare-fun res!384570 () Bool)

(assert (=> b!599438 (=> (not res!384570) (not e!342700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37066 (_ BitVec 32)) Bool)

(assert (=> b!599438 (= res!384570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599439 () Bool)

(declare-fun res!384571 () Bool)

(assert (=> b!599439 (=> (not res!384571) (not e!342705))))

(assert (=> b!599439 (= res!384571 (and (= (size!18153 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18153 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18153 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599440 () Bool)

(assert (=> b!599440 (= e!342702 e!342701)))

(declare-fun res!384573 () Bool)

(assert (=> b!599440 (=> (not res!384573) (not e!342701))))

(assert (=> b!599440 (= res!384573 (arrayContainsKey!0 lt!272585 (select (arr!17789 a!2986) j!136) j!136))))

(declare-fun b!599441 () Bool)

(declare-fun e!342708 () Bool)

(assert (=> b!599441 (= e!342710 (not e!342708))))

(declare-fun res!384567 () Bool)

(assert (=> b!599441 (=> res!384567 e!342708)))

(declare-fun lt!272579 () SeekEntryResult!6236)

(assert (=> b!599441 (= res!384567 (not (= lt!272579 (Found!6236 index!984))))))

(declare-fun lt!272574 () Unit!18888)

(assert (=> b!599441 (= lt!272574 e!342711)))

(declare-fun c!67799 () Bool)

(assert (=> b!599441 (= c!67799 (= lt!272579 Undefined!6236))))

(assert (=> b!599441 (= lt!272579 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272578 lt!272585 mask!3053))))

(assert (=> b!599441 e!342703))

(declare-fun res!384560 () Bool)

(assert (=> b!599441 (=> (not res!384560) (not e!342703))))

(declare-fun lt!272582 () (_ BitVec 32))

(assert (=> b!599441 (= res!384560 (= lt!272583 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272582 vacantSpotIndex!68 lt!272578 lt!272585 mask!3053)))))

(assert (=> b!599441 (= lt!272583 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272582 vacantSpotIndex!68 (select (arr!17789 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!599441 (= lt!272578 (select (store (arr!17789 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272577 () Unit!18888)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37066 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18888)

(assert (=> b!599441 (= lt!272577 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272582 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599441 (= lt!272582 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599442 () Bool)

(declare-fun res!384566 () Bool)

(assert (=> b!599442 (=> (not res!384566) (not e!342705))))

(assert (=> b!599442 (= res!384566 (validKeyInArray!0 k!1786))))

(declare-fun b!599443 () Bool)

(declare-fun res!384564 () Bool)

(assert (=> b!599443 (=> (not res!384564) (not e!342700))))

(assert (=> b!599443 (= res!384564 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17789 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599444 () Bool)

(assert (=> b!599444 (= e!342708 e!342707)))

(declare-fun res!384565 () Bool)

(assert (=> b!599444 (=> res!384565 e!342707)))

(assert (=> b!599444 (= res!384565 (or (not (= (select (arr!17789 a!2986) j!136) lt!272578)) (not (= (select (arr!17789 a!2986) j!136) lt!272573)) (bvsge j!136 index!984)))))

(assert (=> b!599444 e!342704))

(declare-fun res!384572 () Bool)

(assert (=> b!599444 (=> (not res!384572) (not e!342704))))

(assert (=> b!599444 (= res!384572 (= lt!272573 (select (arr!17789 a!2986) j!136)))))

(assert (=> b!599444 (= lt!272573 (select (store (arr!17789 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!54868 res!384569) b!599439))

(assert (= (and b!599439 res!384571) b!599434))

(assert (= (and b!599434 res!384568) b!599442))

(assert (= (and b!599442 res!384566) b!599431))

(assert (= (and b!599431 res!384577) b!599430))

(assert (= (and b!599430 res!384559) b!599438))

(assert (= (and b!599438 res!384570) b!599436))

(assert (= (and b!599436 res!384575) b!599443))

(assert (= (and b!599443 res!384564) b!599428))

(assert (= (and b!599428 res!384563) b!599433))

(assert (= (and b!599433 res!384578) b!599441))

(assert (= (and b!599441 res!384560) b!599437))

(assert (= (and b!599441 c!67799) b!599424))

(assert (= (and b!599441 (not c!67799)) b!599423))

(assert (= (and b!599441 (not res!384567)) b!599444))

(assert (= (and b!599444 res!384572) b!599426))

(assert (= (and b!599426 (not res!384576)) b!599440))

(assert (= (and b!599440 res!384573) b!599425))

(assert (= (and b!599444 (not res!384565)) b!599435))

(assert (= (and b!599435 (not res!384574)) b!599429))

(assert (= (and b!599429 (not res!384562)) b!599432))

(assert (= (and b!599432 (not res!384561)) b!599427))

(declare-fun m!576719 () Bool)

(assert (=> b!599427 m!576719))

(declare-fun m!576721 () Bool)

(assert (=> b!599440 m!576721))

(assert (=> b!599440 m!576721))

(declare-fun m!576723 () Bool)

(assert (=> b!599440 m!576723))

(assert (=> b!599425 m!576721))

(assert (=> b!599425 m!576721))

(declare-fun m!576725 () Bool)

(assert (=> b!599425 m!576725))

(assert (=> b!599434 m!576721))

(assert (=> b!599434 m!576721))

(declare-fun m!576727 () Bool)

(assert (=> b!599434 m!576727))

(declare-fun m!576729 () Bool)

(assert (=> b!599430 m!576729))

(declare-fun m!576731 () Bool)

(assert (=> b!599442 m!576731))

(declare-fun m!576733 () Bool)

(assert (=> b!599429 m!576733))

(declare-fun m!576735 () Bool)

(assert (=> b!599428 m!576735))

(declare-fun m!576737 () Bool)

(assert (=> b!599428 m!576737))

(declare-fun m!576739 () Bool)

(assert (=> start!54868 m!576739))

(declare-fun m!576741 () Bool)

(assert (=> start!54868 m!576741))

(declare-fun m!576743 () Bool)

(assert (=> b!599432 m!576743))

(declare-fun m!576745 () Bool)

(assert (=> b!599433 m!576745))

(assert (=> b!599433 m!576721))

(assert (=> b!599433 m!576721))

(declare-fun m!576747 () Bool)

(assert (=> b!599433 m!576747))

(assert (=> b!599426 m!576721))

(declare-fun m!576749 () Bool)

(assert (=> b!599436 m!576749))

(declare-fun m!576751 () Bool)

(assert (=> b!599443 m!576751))

(declare-fun m!576753 () Bool)

(assert (=> b!599441 m!576753))

(declare-fun m!576755 () Bool)

(assert (=> b!599441 m!576755))

(assert (=> b!599441 m!576721))

(declare-fun m!576757 () Bool)

(assert (=> b!599441 m!576757))

(assert (=> b!599441 m!576721))

(declare-fun m!576759 () Bool)

(assert (=> b!599441 m!576759))

(declare-fun m!576761 () Bool)

(assert (=> b!599441 m!576761))

(declare-fun m!576763 () Bool)

(assert (=> b!599441 m!576763))

(assert (=> b!599441 m!576735))

(declare-fun m!576765 () Bool)

(assert (=> b!599438 m!576765))

(assert (=> b!599444 m!576721))

(assert (=> b!599444 m!576735))

(declare-fun m!576767 () Bool)

(assert (=> b!599444 m!576767))

(assert (=> b!599435 m!576721))

(declare-fun m!576769 () Bool)

(assert (=> b!599435 m!576769))

(declare-fun m!576771 () Bool)

(assert (=> b!599435 m!576771))

(assert (=> b!599435 m!576721))

(declare-fun m!576773 () Bool)

(assert (=> b!599435 m!576773))

(declare-fun m!576775 () Bool)

(assert (=> b!599435 m!576775))

(assert (=> b!599435 m!576721))

(declare-fun m!576777 () Bool)

(assert (=> b!599435 m!576777))

(declare-fun m!576779 () Bool)

(assert (=> b!599435 m!576779))

(declare-fun m!576781 () Bool)

(assert (=> b!599431 m!576781))

(push 1)

