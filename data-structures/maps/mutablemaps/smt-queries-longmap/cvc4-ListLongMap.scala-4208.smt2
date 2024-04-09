; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57712 () Bool)

(assert start!57712)

(declare-fun b!637522 () Bool)

(declare-datatypes ((Unit!21498 0))(
  ( (Unit!21499) )
))
(declare-fun e!364804 () Unit!21498)

(declare-fun Unit!21500 () Unit!21498)

(assert (=> b!637522 (= e!364804 Unit!21500)))

(declare-fun b!637523 () Bool)

(declare-fun res!412578 () Bool)

(declare-fun e!364802 () Bool)

(assert (=> b!637523 (=> res!412578 e!364802)))

(declare-datatypes ((List!12432 0))(
  ( (Nil!12429) (Cons!12428 (h!13473 (_ BitVec 64)) (t!18668 List!12432)) )
))
(declare-fun noDuplicate!390 (List!12432) Bool)

(assert (=> b!637523 (= res!412578 (not (noDuplicate!390 Nil!12429)))))

(declare-fun b!637524 () Bool)

(declare-fun e!364798 () Bool)

(declare-datatypes ((SeekEntryResult!6785 0))(
  ( (MissingZero!6785 (index!29453 (_ BitVec 32))) (Found!6785 (index!29454 (_ BitVec 32))) (Intermediate!6785 (undefined!7597 Bool) (index!29455 (_ BitVec 32)) (x!58236 (_ BitVec 32))) (Undefined!6785) (MissingVacant!6785 (index!29456 (_ BitVec 32))) )
))
(declare-fun lt!294827 () SeekEntryResult!6785)

(declare-fun lt!294826 () SeekEntryResult!6785)

(assert (=> b!637524 (= e!364798 (= lt!294827 lt!294826))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!364803 () Bool)

(declare-fun b!637525 () Bool)

(declare-datatypes ((array!38239 0))(
  ( (array!38240 (arr!18338 (Array (_ BitVec 32) (_ BitVec 64))) (size!18702 (_ BitVec 32))) )
))
(declare-fun lt!294831 () array!38239)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38239)

(declare-fun arrayContainsKey!0 (array!38239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637525 (= e!364803 (arrayContainsKey!0 lt!294831 (select (arr!18338 a!2986) j!136) index!984))))

(declare-fun b!637526 () Bool)

(declare-fun res!412585 () Bool)

(declare-fun e!364800 () Bool)

(assert (=> b!637526 (=> (not res!412585) (not e!364800))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38239 (_ BitVec 32)) Bool)

(assert (=> b!637526 (= res!412585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637527 () Bool)

(declare-fun res!412595 () Bool)

(assert (=> b!637527 (=> res!412595 e!364802)))

(declare-fun contains!3115 (List!12432 (_ BitVec 64)) Bool)

(assert (=> b!637527 (= res!412595 (contains!3115 Nil!12429 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637528 () Bool)

(declare-fun res!412589 () Bool)

(assert (=> b!637528 (=> (not res!412589) (not e!364800))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637528 (= res!412589 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18338 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637529 () Bool)

(declare-fun res!412580 () Bool)

(declare-fun e!364799 () Bool)

(assert (=> b!637529 (=> (not res!412580) (not e!364799))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!637529 (= res!412580 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637530 () Bool)

(declare-fun e!364809 () Bool)

(declare-fun e!364801 () Bool)

(assert (=> b!637530 (= e!364809 (not e!364801))))

(declare-fun res!412593 () Bool)

(assert (=> b!637530 (=> res!412593 e!364801)))

(declare-fun lt!294825 () SeekEntryResult!6785)

(assert (=> b!637530 (= res!412593 (not (= lt!294825 (Found!6785 index!984))))))

(declare-fun lt!294821 () Unit!21498)

(assert (=> b!637530 (= lt!294821 e!364804)))

(declare-fun c!72839 () Bool)

(assert (=> b!637530 (= c!72839 (= lt!294825 Undefined!6785))))

(declare-fun lt!294828 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38239 (_ BitVec 32)) SeekEntryResult!6785)

(assert (=> b!637530 (= lt!294825 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294828 lt!294831 mask!3053))))

(assert (=> b!637530 e!364798))

(declare-fun res!412583 () Bool)

(assert (=> b!637530 (=> (not res!412583) (not e!364798))))

(declare-fun lt!294822 () (_ BitVec 32))

(assert (=> b!637530 (= res!412583 (= lt!294826 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294822 vacantSpotIndex!68 lt!294828 lt!294831 mask!3053)))))

(assert (=> b!637530 (= lt!294826 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294822 vacantSpotIndex!68 (select (arr!18338 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637530 (= lt!294828 (select (store (arr!18338 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294829 () Unit!21498)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38239 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21498)

(assert (=> b!637530 (= lt!294829 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294822 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637530 (= lt!294822 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637531 () Bool)

(declare-fun Unit!21501 () Unit!21498)

(assert (=> b!637531 (= e!364804 Unit!21501)))

(assert (=> b!637531 false))

(declare-fun b!637532 () Bool)

(assert (=> b!637532 (= e!364799 e!364800)))

(declare-fun res!412594 () Bool)

(assert (=> b!637532 (=> (not res!412594) (not e!364800))))

(declare-fun lt!294823 () SeekEntryResult!6785)

(assert (=> b!637532 (= res!412594 (or (= lt!294823 (MissingZero!6785 i!1108)) (= lt!294823 (MissingVacant!6785 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38239 (_ BitVec 32)) SeekEntryResult!6785)

(assert (=> b!637532 (= lt!294823 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637533 () Bool)

(declare-fun e!364808 () Bool)

(assert (=> b!637533 (= e!364808 e!364809)))

(declare-fun res!412582 () Bool)

(assert (=> b!637533 (=> (not res!412582) (not e!364809))))

(assert (=> b!637533 (= res!412582 (and (= lt!294827 (Found!6785 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18338 a!2986) index!984) (select (arr!18338 a!2986) j!136))) (not (= (select (arr!18338 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!637533 (= lt!294827 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18338 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637534 () Bool)

(declare-fun e!364806 () Bool)

(assert (=> b!637534 (= e!364801 e!364806)))

(declare-fun res!412588 () Bool)

(assert (=> b!637534 (=> res!412588 e!364806)))

(declare-fun lt!294830 () (_ BitVec 64))

(assert (=> b!637534 (= res!412588 (or (not (= (select (arr!18338 a!2986) j!136) lt!294828)) (not (= (select (arr!18338 a!2986) j!136) lt!294830)) (bvsge j!136 index!984)))))

(declare-fun e!364810 () Bool)

(assert (=> b!637534 e!364810))

(declare-fun res!412586 () Bool)

(assert (=> b!637534 (=> (not res!412586) (not e!364810))))

(assert (=> b!637534 (= res!412586 (= lt!294830 (select (arr!18338 a!2986) j!136)))))

(assert (=> b!637534 (= lt!294830 (select (store (arr!18338 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637535 () Bool)

(declare-fun res!412581 () Bool)

(assert (=> b!637535 (=> (not res!412581) (not e!364799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637535 (= res!412581 (validKeyInArray!0 k!1786))))

(declare-fun b!637536 () Bool)

(assert (=> b!637536 (= e!364800 e!364808)))

(declare-fun res!412596 () Bool)

(assert (=> b!637536 (=> (not res!412596) (not e!364808))))

(assert (=> b!637536 (= res!412596 (= (select (store (arr!18338 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637536 (= lt!294831 (array!38240 (store (arr!18338 a!2986) i!1108 k!1786) (size!18702 a!2986)))))

(declare-fun b!637537 () Bool)

(declare-fun res!412597 () Bool)

(assert (=> b!637537 (=> res!412597 e!364802)))

(assert (=> b!637537 (= res!412597 (contains!3115 Nil!12429 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!412598 () Bool)

(assert (=> start!57712 (=> (not res!412598) (not e!364799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57712 (= res!412598 (validMask!0 mask!3053))))

(assert (=> start!57712 e!364799))

(assert (=> start!57712 true))

(declare-fun array_inv!14112 (array!38239) Bool)

(assert (=> start!57712 (array_inv!14112 a!2986)))

(declare-fun b!637538 () Bool)

(declare-fun res!412584 () Bool)

(assert (=> b!637538 (=> (not res!412584) (not e!364799))))

(assert (=> b!637538 (= res!412584 (and (= (size!18702 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18702 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18702 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637539 () Bool)

(declare-fun e!364807 () Bool)

(assert (=> b!637539 (= e!364807 e!364803)))

(declare-fun res!412590 () Bool)

(assert (=> b!637539 (=> (not res!412590) (not e!364803))))

(assert (=> b!637539 (= res!412590 (arrayContainsKey!0 lt!294831 (select (arr!18338 a!2986) j!136) j!136))))

(declare-fun b!637540 () Bool)

(declare-fun res!412587 () Bool)

(assert (=> b!637540 (=> (not res!412587) (not e!364800))))

(declare-fun arrayNoDuplicates!0 (array!38239 (_ BitVec 32) List!12432) Bool)

(assert (=> b!637540 (= res!412587 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12429))))

(declare-fun b!637541 () Bool)

(assert (=> b!637541 (= e!364810 e!364807)))

(declare-fun res!412579 () Bool)

(assert (=> b!637541 (=> res!412579 e!364807)))

(assert (=> b!637541 (= res!412579 (or (not (= (select (arr!18338 a!2986) j!136) lt!294828)) (not (= (select (arr!18338 a!2986) j!136) lt!294830)) (bvsge j!136 index!984)))))

(declare-fun b!637542 () Bool)

(declare-fun res!412591 () Bool)

(assert (=> b!637542 (=> (not res!412591) (not e!364799))))

(assert (=> b!637542 (= res!412591 (validKeyInArray!0 (select (arr!18338 a!2986) j!136)))))

(declare-fun b!637543 () Bool)

(assert (=> b!637543 (= e!364802 true)))

(declare-fun lt!294820 () Bool)

(assert (=> b!637543 (= lt!294820 (contains!3115 Nil!12429 k!1786))))

(declare-fun b!637544 () Bool)

(assert (=> b!637544 (= e!364806 e!364802)))

(declare-fun res!412592 () Bool)

(assert (=> b!637544 (=> res!412592 e!364802)))

(assert (=> b!637544 (= res!412592 (or (bvsge (size!18702 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18702 a!2986))))))

(assert (=> b!637544 (arrayContainsKey!0 lt!294831 (select (arr!18338 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294824 () Unit!21498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38239 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21498)

(assert (=> b!637544 (= lt!294824 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294831 (select (arr!18338 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!57712 res!412598) b!637538))

(assert (= (and b!637538 res!412584) b!637542))

(assert (= (and b!637542 res!412591) b!637535))

(assert (= (and b!637535 res!412581) b!637529))

(assert (= (and b!637529 res!412580) b!637532))

(assert (= (and b!637532 res!412594) b!637526))

(assert (= (and b!637526 res!412585) b!637540))

(assert (= (and b!637540 res!412587) b!637528))

(assert (= (and b!637528 res!412589) b!637536))

(assert (= (and b!637536 res!412596) b!637533))

(assert (= (and b!637533 res!412582) b!637530))

(assert (= (and b!637530 res!412583) b!637524))

(assert (= (and b!637530 c!72839) b!637531))

(assert (= (and b!637530 (not c!72839)) b!637522))

(assert (= (and b!637530 (not res!412593)) b!637534))

(assert (= (and b!637534 res!412586) b!637541))

(assert (= (and b!637541 (not res!412579)) b!637539))

(assert (= (and b!637539 res!412590) b!637525))

(assert (= (and b!637534 (not res!412588)) b!637544))

(assert (= (and b!637544 (not res!412592)) b!637523))

(assert (= (and b!637523 (not res!412578)) b!637527))

(assert (= (and b!637527 (not res!412595)) b!637537))

(assert (= (and b!637537 (not res!412597)) b!637543))

(declare-fun m!611627 () Bool)

(assert (=> b!637543 m!611627))

(declare-fun m!611629 () Bool)

(assert (=> b!637529 m!611629))

(declare-fun m!611631 () Bool)

(assert (=> b!637530 m!611631))

(declare-fun m!611633 () Bool)

(assert (=> b!637530 m!611633))

(declare-fun m!611635 () Bool)

(assert (=> b!637530 m!611635))

(declare-fun m!611637 () Bool)

(assert (=> b!637530 m!611637))

(declare-fun m!611639 () Bool)

(assert (=> b!637530 m!611639))

(assert (=> b!637530 m!611635))

(declare-fun m!611641 () Bool)

(assert (=> b!637530 m!611641))

(declare-fun m!611643 () Bool)

(assert (=> b!637530 m!611643))

(declare-fun m!611645 () Bool)

(assert (=> b!637530 m!611645))

(assert (=> b!637539 m!611635))

(assert (=> b!637539 m!611635))

(declare-fun m!611647 () Bool)

(assert (=> b!637539 m!611647))

(declare-fun m!611649 () Bool)

(assert (=> b!637523 m!611649))

(assert (=> b!637525 m!611635))

(assert (=> b!637525 m!611635))

(declare-fun m!611651 () Bool)

(assert (=> b!637525 m!611651))

(declare-fun m!611653 () Bool)

(assert (=> b!637526 m!611653))

(assert (=> b!637544 m!611635))

(assert (=> b!637544 m!611635))

(declare-fun m!611655 () Bool)

(assert (=> b!637544 m!611655))

(assert (=> b!637544 m!611635))

(declare-fun m!611657 () Bool)

(assert (=> b!637544 m!611657))

(declare-fun m!611659 () Bool)

(assert (=> b!637533 m!611659))

(assert (=> b!637533 m!611635))

(assert (=> b!637533 m!611635))

(declare-fun m!611661 () Bool)

(assert (=> b!637533 m!611661))

(declare-fun m!611663 () Bool)

(assert (=> start!57712 m!611663))

(declare-fun m!611665 () Bool)

(assert (=> start!57712 m!611665))

(assert (=> b!637541 m!611635))

(declare-fun m!611667 () Bool)

(assert (=> b!637535 m!611667))

(declare-fun m!611669 () Bool)

(assert (=> b!637528 m!611669))

(declare-fun m!611671 () Bool)

(assert (=> b!637537 m!611671))

(declare-fun m!611673 () Bool)

(assert (=> b!637532 m!611673))

(assert (=> b!637542 m!611635))

(assert (=> b!637542 m!611635))

(declare-fun m!611675 () Bool)

(assert (=> b!637542 m!611675))

(assert (=> b!637536 m!611639))

(declare-fun m!611677 () Bool)

(assert (=> b!637536 m!611677))

(declare-fun m!611679 () Bool)

(assert (=> b!637527 m!611679))

(assert (=> b!637534 m!611635))

(assert (=> b!637534 m!611639))

(declare-fun m!611681 () Bool)

(assert (=> b!637534 m!611681))

(declare-fun m!611683 () Bool)

(assert (=> b!637540 m!611683))

(push 1)

