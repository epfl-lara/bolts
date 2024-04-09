; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57840 () Bool)

(assert start!57840)

(declare-fun b!639542 () Bool)

(declare-datatypes ((Unit!21610 0))(
  ( (Unit!21611) )
))
(declare-fun e!366046 () Unit!21610)

(declare-fun Unit!21612 () Unit!21610)

(assert (=> b!639542 (= e!366046 Unit!21612)))

(assert (=> b!639542 false))

(declare-fun res!414235 () Bool)

(declare-fun e!366052 () Bool)

(assert (=> start!57840 (=> (not res!414235) (not e!366052))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57840 (= res!414235 (validMask!0 mask!3053))))

(assert (=> start!57840 e!366052))

(assert (=> start!57840 true))

(declare-datatypes ((array!38298 0))(
  ( (array!38299 (arr!18366 (Array (_ BitVec 32) (_ BitVec 64))) (size!18730 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38298)

(declare-fun array_inv!14140 (array!38298) Bool)

(assert (=> start!57840 (array_inv!14140 a!2986)))

(declare-fun b!639543 () Bool)

(declare-fun e!366049 () Bool)

(declare-fun e!366047 () Bool)

(assert (=> b!639543 (= e!366049 e!366047)))

(declare-fun res!414234 () Bool)

(assert (=> b!639543 (=> res!414234 e!366047)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!295967 () (_ BitVec 64))

(declare-fun lt!295959 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!639543 (= res!414234 (or (not (= (select (arr!18366 a!2986) j!136) lt!295959)) (not (= (select (arr!18366 a!2986) j!136) lt!295967)) (bvsge j!136 index!984)))))

(declare-fun e!366050 () Bool)

(assert (=> b!639543 e!366050))

(declare-fun res!414231 () Bool)

(assert (=> b!639543 (=> (not res!414231) (not e!366050))))

(assert (=> b!639543 (= res!414231 (= lt!295967 (select (arr!18366 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!639543 (= lt!295967 (select (store (arr!18366 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639544 () Bool)

(declare-fun e!366045 () Bool)

(declare-fun e!366051 () Bool)

(assert (=> b!639544 (= e!366045 e!366051)))

(declare-fun res!414239 () Bool)

(assert (=> b!639544 (=> (not res!414239) (not e!366051))))

(declare-fun lt!295965 () array!38298)

(declare-fun arrayContainsKey!0 (array!38298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639544 (= res!414239 (arrayContainsKey!0 lt!295965 (select (arr!18366 a!2986) j!136) j!136))))

(declare-fun b!639545 () Bool)

(assert (=> b!639545 (= e!366050 e!366045)))

(declare-fun res!414241 () Bool)

(assert (=> b!639545 (=> res!414241 e!366045)))

(assert (=> b!639545 (= res!414241 (or (not (= (select (arr!18366 a!2986) j!136) lt!295959)) (not (= (select (arr!18366 a!2986) j!136) lt!295967)) (bvsge j!136 index!984)))))

(declare-fun b!639546 () Bool)

(declare-fun e!366053 () Bool)

(declare-datatypes ((SeekEntryResult!6813 0))(
  ( (MissingZero!6813 (index!29568 (_ BitVec 32))) (Found!6813 (index!29569 (_ BitVec 32))) (Intermediate!6813 (undefined!7625 Bool) (index!29570 (_ BitVec 32)) (x!58353 (_ BitVec 32))) (Undefined!6813) (MissingVacant!6813 (index!29571 (_ BitVec 32))) )
))
(declare-fun lt!295957 () SeekEntryResult!6813)

(declare-fun lt!295964 () SeekEntryResult!6813)

(assert (=> b!639546 (= e!366053 (= lt!295957 lt!295964))))

(declare-fun b!639547 () Bool)

(declare-fun res!414237 () Bool)

(declare-fun e!366054 () Bool)

(assert (=> b!639547 (=> (not res!414237) (not e!366054))))

(declare-datatypes ((List!12460 0))(
  ( (Nil!12457) (Cons!12456 (h!13501 (_ BitVec 64)) (t!18696 List!12460)) )
))
(declare-fun arrayNoDuplicates!0 (array!38298 (_ BitVec 32) List!12460) Bool)

(assert (=> b!639547 (= res!414237 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12457))))

(declare-fun b!639548 () Bool)

(declare-fun res!414232 () Bool)

(assert (=> b!639548 (=> (not res!414232) (not e!366052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639548 (= res!414232 (validKeyInArray!0 (select (arr!18366 a!2986) j!136)))))

(declare-fun b!639549 () Bool)

(declare-fun e!366055 () Bool)

(assert (=> b!639549 (= e!366054 e!366055)))

(declare-fun res!414233 () Bool)

(assert (=> b!639549 (=> (not res!414233) (not e!366055))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!639549 (= res!414233 (= (select (store (arr!18366 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639549 (= lt!295965 (array!38299 (store (arr!18366 a!2986) i!1108 k!1786) (size!18730 a!2986)))))

(declare-fun b!639550 () Bool)

(declare-fun res!414238 () Bool)

(assert (=> b!639550 (=> (not res!414238) (not e!366054))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!639550 (= res!414238 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18366 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639551 () Bool)

(declare-fun res!414228 () Bool)

(assert (=> b!639551 (=> (not res!414228) (not e!366052))))

(assert (=> b!639551 (= res!414228 (validKeyInArray!0 k!1786))))

(declare-fun b!639552 () Bool)

(assert (=> b!639552 (= e!366047 (bvslt (size!18730 a!2986) #b01111111111111111111111111111111))))

(assert (=> b!639552 (arrayNoDuplicates!0 lt!295965 j!136 Nil!12457)))

(declare-fun lt!295956 () Unit!21610)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38298 (_ BitVec 32) (_ BitVec 32)) Unit!21610)

(assert (=> b!639552 (= lt!295956 (lemmaNoDuplicateFromThenFromBigger!0 lt!295965 #b00000000000000000000000000000000 j!136))))

(assert (=> b!639552 (arrayNoDuplicates!0 lt!295965 #b00000000000000000000000000000000 Nil!12457)))

(declare-fun lt!295968 () Unit!21610)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38298 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12460) Unit!21610)

(assert (=> b!639552 (= lt!295968 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12457))))

(assert (=> b!639552 (arrayContainsKey!0 lt!295965 (select (arr!18366 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295963 () Unit!21610)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38298 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21610)

(assert (=> b!639552 (= lt!295963 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295965 (select (arr!18366 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639553 () Bool)

(declare-fun res!414240 () Bool)

(assert (=> b!639553 (=> (not res!414240) (not e!366052))))

(assert (=> b!639553 (= res!414240 (and (= (size!18730 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18730 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18730 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639554 () Bool)

(declare-fun Unit!21613 () Unit!21610)

(assert (=> b!639554 (= e!366046 Unit!21613)))

(declare-fun b!639555 () Bool)

(assert (=> b!639555 (= e!366052 e!366054)))

(declare-fun res!414229 () Bool)

(assert (=> b!639555 (=> (not res!414229) (not e!366054))))

(declare-fun lt!295958 () SeekEntryResult!6813)

(assert (=> b!639555 (= res!414229 (or (= lt!295958 (MissingZero!6813 i!1108)) (= lt!295958 (MissingVacant!6813 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38298 (_ BitVec 32)) SeekEntryResult!6813)

(assert (=> b!639555 (= lt!295958 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639556 () Bool)

(declare-fun e!366044 () Bool)

(assert (=> b!639556 (= e!366055 e!366044)))

(declare-fun res!414230 () Bool)

(assert (=> b!639556 (=> (not res!414230) (not e!366044))))

(assert (=> b!639556 (= res!414230 (and (= lt!295957 (Found!6813 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18366 a!2986) index!984) (select (arr!18366 a!2986) j!136))) (not (= (select (arr!18366 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38298 (_ BitVec 32)) SeekEntryResult!6813)

(assert (=> b!639556 (= lt!295957 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18366 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639557 () Bool)

(assert (=> b!639557 (= e!366051 (arrayContainsKey!0 lt!295965 (select (arr!18366 a!2986) j!136) index!984))))

(declare-fun b!639558 () Bool)

(assert (=> b!639558 (= e!366044 (not e!366049))))

(declare-fun res!414242 () Bool)

(assert (=> b!639558 (=> res!414242 e!366049)))

(declare-fun lt!295962 () SeekEntryResult!6813)

(assert (=> b!639558 (= res!414242 (not (= lt!295962 (Found!6813 index!984))))))

(declare-fun lt!295966 () Unit!21610)

(assert (=> b!639558 (= lt!295966 e!366046)))

(declare-fun c!73025 () Bool)

(assert (=> b!639558 (= c!73025 (= lt!295962 Undefined!6813))))

(assert (=> b!639558 (= lt!295962 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295959 lt!295965 mask!3053))))

(assert (=> b!639558 e!366053))

(declare-fun res!414226 () Bool)

(assert (=> b!639558 (=> (not res!414226) (not e!366053))))

(declare-fun lt!295960 () (_ BitVec 32))

(assert (=> b!639558 (= res!414226 (= lt!295964 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 lt!295959 lt!295965 mask!3053)))))

(assert (=> b!639558 (= lt!295964 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 (select (arr!18366 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639558 (= lt!295959 (select (store (arr!18366 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295961 () Unit!21610)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38298 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21610)

(assert (=> b!639558 (= lt!295961 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639558 (= lt!295960 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639559 () Bool)

(declare-fun res!414236 () Bool)

(assert (=> b!639559 (=> (not res!414236) (not e!366052))))

(assert (=> b!639559 (= res!414236 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639560 () Bool)

(declare-fun res!414227 () Bool)

(assert (=> b!639560 (=> (not res!414227) (not e!366054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38298 (_ BitVec 32)) Bool)

(assert (=> b!639560 (= res!414227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57840 res!414235) b!639553))

(assert (= (and b!639553 res!414240) b!639548))

(assert (= (and b!639548 res!414232) b!639551))

(assert (= (and b!639551 res!414228) b!639559))

(assert (= (and b!639559 res!414236) b!639555))

(assert (= (and b!639555 res!414229) b!639560))

(assert (= (and b!639560 res!414227) b!639547))

(assert (= (and b!639547 res!414237) b!639550))

(assert (= (and b!639550 res!414238) b!639549))

(assert (= (and b!639549 res!414233) b!639556))

(assert (= (and b!639556 res!414230) b!639558))

(assert (= (and b!639558 res!414226) b!639546))

(assert (= (and b!639558 c!73025) b!639542))

(assert (= (and b!639558 (not c!73025)) b!639554))

(assert (= (and b!639558 (not res!414242)) b!639543))

(assert (= (and b!639543 res!414231) b!639545))

(assert (= (and b!639545 (not res!414241)) b!639544))

(assert (= (and b!639544 res!414239) b!639557))

(assert (= (and b!639543 (not res!414234)) b!639552))

(declare-fun m!613461 () Bool)

(assert (=> b!639544 m!613461))

(assert (=> b!639544 m!613461))

(declare-fun m!613463 () Bool)

(assert (=> b!639544 m!613463))

(declare-fun m!613465 () Bool)

(assert (=> b!639549 m!613465))

(declare-fun m!613467 () Bool)

(assert (=> b!639549 m!613467))

(declare-fun m!613469 () Bool)

(assert (=> b!639556 m!613469))

(assert (=> b!639556 m!613461))

(assert (=> b!639556 m!613461))

(declare-fun m!613471 () Bool)

(assert (=> b!639556 m!613471))

(assert (=> b!639548 m!613461))

(assert (=> b!639548 m!613461))

(declare-fun m!613473 () Bool)

(assert (=> b!639548 m!613473))

(assert (=> b!639557 m!613461))

(assert (=> b!639557 m!613461))

(declare-fun m!613475 () Bool)

(assert (=> b!639557 m!613475))

(declare-fun m!613477 () Bool)

(assert (=> b!639555 m!613477))

(declare-fun m!613479 () Bool)

(assert (=> b!639551 m!613479))

(declare-fun m!613481 () Bool)

(assert (=> start!57840 m!613481))

(declare-fun m!613483 () Bool)

(assert (=> start!57840 m!613483))

(declare-fun m!613485 () Bool)

(assert (=> b!639559 m!613485))

(declare-fun m!613487 () Bool)

(assert (=> b!639547 m!613487))

(declare-fun m!613489 () Bool)

(assert (=> b!639550 m!613489))

(declare-fun m!613491 () Bool)

(assert (=> b!639560 m!613491))

(assert (=> b!639543 m!613461))

(assert (=> b!639543 m!613465))

(declare-fun m!613493 () Bool)

(assert (=> b!639543 m!613493))

(assert (=> b!639545 m!613461))

(declare-fun m!613495 () Bool)

(assert (=> b!639558 m!613495))

(declare-fun m!613497 () Bool)

(assert (=> b!639558 m!613497))

(assert (=> b!639558 m!613461))

(declare-fun m!613499 () Bool)

(assert (=> b!639558 m!613499))

(assert (=> b!639558 m!613465))

(assert (=> b!639558 m!613461))

(declare-fun m!613501 () Bool)

(assert (=> b!639558 m!613501))

(declare-fun m!613503 () Bool)

(assert (=> b!639558 m!613503))

(declare-fun m!613505 () Bool)

(assert (=> b!639558 m!613505))

(assert (=> b!639552 m!613461))

(declare-fun m!613507 () Bool)

(assert (=> b!639552 m!613507))

(declare-fun m!613509 () Bool)

(assert (=> b!639552 m!613509))

(assert (=> b!639552 m!613461))

(declare-fun m!613511 () Bool)

(assert (=> b!639552 m!613511))

(declare-fun m!613513 () Bool)

(assert (=> b!639552 m!613513))

(assert (=> b!639552 m!613461))

(declare-fun m!613515 () Bool)

(assert (=> b!639552 m!613515))

(declare-fun m!613517 () Bool)

(assert (=> b!639552 m!613517))

(push 1)

(assert (not b!639555))

(assert (not b!639559))

(assert (not b!639558))

(assert (not b!639548))

(assert (not b!639551))

(assert (not b!639556))

(assert (not b!639547))

(assert (not b!639557))

(assert (not b!639544))

(assert (not start!57840))

(assert (not b!639552))

(assert (not b!639560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!33485 () Bool)

(declare-fun call!33488 () Bool)

(assert (=> bm!33485 (= call!33488 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!90225 () Bool)

(declare-fun res!414352 () Bool)

(declare-fun e!366157 () Bool)

(assert (=> d!90225 (=> res!414352 e!366157)))

(assert (=> d!90225 (= res!414352 (bvsge #b00000000000000000000000000000000 (size!18730 a!2986)))))

(assert (=> d!90225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!366157)))

(declare-fun b!639722 () Bool)

(declare-fun e!366156 () Bool)

(assert (=> b!639722 (= e!366156 call!33488)))

(declare-fun b!639723 () Bool)

(declare-fun e!366155 () Bool)

(assert (=> b!639723 (= e!366155 call!33488)))

(declare-fun b!639724 () Bool)

(assert (=> b!639724 (= e!366157 e!366155)))

(declare-fun c!73052 () Bool)

(assert (=> b!639724 (= c!73052 (validKeyInArray!0 (select (arr!18366 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639725 () Bool)

(assert (=> b!639725 (= e!366155 e!366156)))

(declare-fun lt!296072 () (_ BitVec 64))

(assert (=> b!639725 (= lt!296072 (select (arr!18366 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!296073 () Unit!21610)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38298 (_ BitVec 64) (_ BitVec 32)) Unit!21610)

(assert (=> b!639725 (= lt!296073 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!296072 #b00000000000000000000000000000000))))

(assert (=> b!639725 (arrayContainsKey!0 a!2986 lt!296072 #b00000000000000000000000000000000)))

(declare-fun lt!296071 () Unit!21610)

(assert (=> b!639725 (= lt!296071 lt!296073)))

(declare-fun res!414353 () Bool)

(assert (=> b!639725 (= res!414353 (= (seekEntryOrOpen!0 (select (arr!18366 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6813 #b00000000000000000000000000000000)))))

(assert (=> b!639725 (=> (not res!414353) (not e!366156))))

(assert (= (and d!90225 (not res!414352)) b!639724))

(assert (= (and b!639724 c!73052) b!639725))

(assert (= (and b!639724 (not c!73052)) b!639723))

(assert (= (and b!639725 res!414353) b!639722))

(assert (= (or b!639722 b!639723) bm!33485))

(declare-fun m!613663 () Bool)

(assert (=> bm!33485 m!613663))

(declare-fun m!613665 () Bool)

(assert (=> b!639724 m!613665))

(assert (=> b!639724 m!613665))

(declare-fun m!613667 () Bool)

(assert (=> b!639724 m!613667))

(assert (=> b!639725 m!613665))

(declare-fun m!613669 () Bool)

(assert (=> b!639725 m!613669))

(declare-fun m!613671 () Bool)

(assert (=> b!639725 m!613671))

(assert (=> b!639725 m!613665))

(declare-fun m!613673 () Bool)

(assert (=> b!639725 m!613673))

(assert (=> b!639560 d!90225))

(declare-fun d!90231 () Bool)

(declare-fun res!414364 () Bool)

(declare-fun e!366176 () Bool)

(assert (=> d!90231 (=> res!414364 e!366176)))

(assert (=> d!90231 (= res!414364 (= (select (arr!18366 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!90231 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!366176)))

(declare-fun b!639752 () Bool)

(declare-fun e!366177 () Bool)

(assert (=> b!639752 (= e!366176 e!366177)))

(declare-fun res!414365 () Bool)

(assert (=> b!639752 (=> (not res!414365) (not e!366177))))

(assert (=> b!639752 (= res!414365 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18730 a!2986)))))

(declare-fun b!639753 () Bool)

(assert (=> b!639753 (= e!366177 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90231 (not res!414364)) b!639752))

(assert (= (and b!639752 res!414365) b!639753))

(assert (=> d!90231 m!613665))

(declare-fun m!613693 () Bool)

(assert (=> b!639753 m!613693))

(assert (=> b!639559 d!90231))

(declare-fun d!90239 () Bool)

(assert (=> d!90239 (= (validKeyInArray!0 (select (arr!18366 a!2986) j!136)) (and (not (= (select (arr!18366 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18366 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!639548 d!90239))

(declare-fun bm!33491 () Bool)

(declare-fun call!33494 () Bool)

(declare-fun c!73064 () Bool)

(assert (=> bm!33491 (= call!33494 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73064 (Cons!12456 (select (arr!18366 a!2986) #b00000000000000000000000000000000) Nil!12457) Nil!12457)))))

(declare-fun b!639775 () Bool)

(declare-fun e!366197 () Bool)

(declare-fun contains!3128 (List!12460 (_ BitVec 64)) Bool)

(assert (=> b!639775 (= e!366197 (contains!3128 Nil!12457 (select (arr!18366 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639776 () Bool)

(declare-fun e!366198 () Bool)

(assert (=> b!639776 (= e!366198 call!33494)))

(declare-fun b!639777 () Bool)

(declare-fun e!366199 () Bool)

(declare-fun e!366196 () Bool)

(assert (=> b!639777 (= e!366199 e!366196)))

(declare-fun res!414382 () Bool)

(assert (=> b!639777 (=> (not res!414382) (not e!366196))))

(assert (=> b!639777 (= res!414382 (not e!366197))))

(declare-fun res!414383 () Bool)

(assert (=> b!639777 (=> (not res!414383) (not e!366197))))

(assert (=> b!639777 (= res!414383 (validKeyInArray!0 (select (arr!18366 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90241 () Bool)

(declare-fun res!414381 () Bool)

(assert (=> d!90241 (=> res!414381 e!366199)))

(assert (=> d!90241 (= res!414381 (bvsge #b00000000000000000000000000000000 (size!18730 a!2986)))))

(assert (=> d!90241 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12457) e!366199)))

(declare-fun b!639778 () Bool)

(assert (=> b!639778 (= e!366196 e!366198)))

(assert (=> b!639778 (= c!73064 (validKeyInArray!0 (select (arr!18366 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!639779 () Bool)

(assert (=> b!639779 (= e!366198 call!33494)))

(assert (= (and d!90241 (not res!414381)) b!639777))

(assert (= (and b!639777 res!414383) b!639775))

(assert (= (and b!639777 res!414382) b!639778))

(assert (= (and b!639778 c!73064) b!639776))

(assert (= (and b!639778 (not c!73064)) b!639779))

(assert (= (or b!639776 b!639779) bm!33491))

(assert (=> bm!33491 m!613665))

(declare-fun m!613705 () Bool)

(assert (=> bm!33491 m!613705))

(assert (=> b!639775 m!613665))

(assert (=> b!639775 m!613665))

(declare-fun m!613707 () Bool)

(assert (=> b!639775 m!613707))

(assert (=> b!639777 m!613665))

(assert (=> b!639777 m!613665))

(assert (=> b!639777 m!613667))

(assert (=> b!639778 m!613665))

(assert (=> b!639778 m!613665))

(assert (=> b!639778 m!613667))

(assert (=> b!639547 d!90241))

(declare-fun b!639836 () Bool)

(declare-fun e!366243 () SeekEntryResult!6813)

(assert (=> b!639836 (= e!366243 Undefined!6813)))

(declare-fun d!90247 () Bool)

(declare-fun lt!296105 () SeekEntryResult!6813)

(assert (=> d!90247 (and (or (is-Undefined!6813 lt!296105) (not (is-Found!6813 lt!296105)) (and (bvsge (index!29569 lt!296105) #b00000000000000000000000000000000) (bvslt (index!29569 lt!296105) (size!18730 lt!295965)))) (or (is-Undefined!6813 lt!296105) (is-Found!6813 lt!296105) (not (is-MissingVacant!6813 lt!296105)) (not (= (index!29571 lt!296105) vacantSpotIndex!68)) (and (bvsge (index!29571 lt!296105) #b00000000000000000000000000000000) (bvslt (index!29571 lt!296105) (size!18730 lt!295965)))) (or (is-Undefined!6813 lt!296105) (ite (is-Found!6813 lt!296105) (= (select (arr!18366 lt!295965) (index!29569 lt!296105)) lt!295959) (and (is-MissingVacant!6813 lt!296105) (= (index!29571 lt!296105) vacantSpotIndex!68) (= (select (arr!18366 lt!295965) (index!29571 lt!296105)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90247 (= lt!296105 e!366243)))

(declare-fun c!73082 () Bool)

(assert (=> d!90247 (= c!73082 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!296106 () (_ BitVec 64))

(assert (=> d!90247 (= lt!296106 (select (arr!18366 lt!295965) index!984))))

(assert (=> d!90247 (validMask!0 mask!3053)))

(assert (=> d!90247 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295959 lt!295965 mask!3053) lt!296105)))

(declare-fun b!639837 () Bool)

(declare-fun e!366242 () SeekEntryResult!6813)

(assert (=> b!639837 (= e!366243 e!366242)))

(declare-fun c!73081 () Bool)

(assert (=> b!639837 (= c!73081 (= lt!296106 lt!295959))))

(declare-fun b!639838 () Bool)

(declare-fun e!366241 () SeekEntryResult!6813)

(assert (=> b!639838 (= e!366241 (MissingVacant!6813 vacantSpotIndex!68))))

(declare-fun b!639839 () Bool)

(assert (=> b!639839 (= e!366241 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!295959 lt!295965 mask!3053))))

(declare-fun b!639840 () Bool)

(declare-fun c!73080 () Bool)

(assert (=> b!639840 (= c!73080 (= lt!296106 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639840 (= e!366242 e!366241)))

(declare-fun b!639841 () Bool)

(assert (=> b!639841 (= e!366242 (Found!6813 index!984))))

(assert (= (and d!90247 c!73082) b!639836))

(assert (= (and d!90247 (not c!73082)) b!639837))

(assert (= (and b!639837 c!73081) b!639841))

(assert (= (and b!639837 (not c!73081)) b!639840))

(assert (= (and b!639840 c!73080) b!639838))

(assert (= (and b!639840 (not c!73080)) b!639839))

(declare-fun m!613747 () Bool)

(assert (=> d!90247 m!613747))

(declare-fun m!613749 () Bool)

(assert (=> d!90247 m!613749))

(declare-fun m!613751 () Bool)

(assert (=> d!90247 m!613751))

(assert (=> d!90247 m!613481))

(assert (=> b!639839 m!613495))

(assert (=> b!639839 m!613495))

(declare-fun m!613753 () Bool)

(assert (=> b!639839 m!613753))

(assert (=> b!639558 d!90247))

(declare-fun b!639847 () Bool)

(declare-fun e!366250 () SeekEntryResult!6813)

(assert (=> b!639847 (= e!366250 Undefined!6813)))

(declare-fun d!90271 () Bool)

(declare-fun lt!296109 () SeekEntryResult!6813)

(assert (=> d!90271 (and (or (is-Undefined!6813 lt!296109) (not (is-Found!6813 lt!296109)) (and (bvsge (index!29569 lt!296109) #b00000000000000000000000000000000) (bvslt (index!29569 lt!296109) (size!18730 lt!295965)))) (or (is-Undefined!6813 lt!296109) (is-Found!6813 lt!296109) (not (is-MissingVacant!6813 lt!296109)) (not (= (index!29571 lt!296109) vacantSpotIndex!68)) (and (bvsge (index!29571 lt!296109) #b00000000000000000000000000000000) (bvslt (index!29571 lt!296109) (size!18730 lt!295965)))) (or (is-Undefined!6813 lt!296109) (ite (is-Found!6813 lt!296109) (= (select (arr!18366 lt!295965) (index!29569 lt!296109)) lt!295959) (and (is-MissingVacant!6813 lt!296109) (= (index!29571 lt!296109) vacantSpotIndex!68) (= (select (arr!18366 lt!295965) (index!29571 lt!296109)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90271 (= lt!296109 e!366250)))

(declare-fun c!73086 () Bool)

(assert (=> d!90271 (= c!73086 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!296110 () (_ BitVec 64))

(assert (=> d!90271 (= lt!296110 (select (arr!18366 lt!295965) lt!295960))))

(assert (=> d!90271 (validMask!0 mask!3053)))

(assert (=> d!90271 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 lt!295959 lt!295965 mask!3053) lt!296109)))

(declare-fun b!639848 () Bool)

(declare-fun e!366249 () SeekEntryResult!6813)

(assert (=> b!639848 (= e!366250 e!366249)))

(declare-fun c!73085 () Bool)

(assert (=> b!639848 (= c!73085 (= lt!296110 lt!295959))))

(declare-fun b!639849 () Bool)

(declare-fun e!366248 () SeekEntryResult!6813)

(assert (=> b!639849 (= e!366248 (MissingVacant!6813 vacantSpotIndex!68))))

(declare-fun b!639850 () Bool)

(assert (=> b!639850 (= e!366248 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295960 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!295959 lt!295965 mask!3053))))

(declare-fun b!639851 () Bool)

(declare-fun c!73084 () Bool)

(assert (=> b!639851 (= c!73084 (= lt!296110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639851 (= e!366249 e!366248)))

(declare-fun b!639852 () Bool)

(assert (=> b!639852 (= e!366249 (Found!6813 lt!295960))))

(assert (= (and d!90271 c!73086) b!639847))

(assert (= (and d!90271 (not c!73086)) b!639848))

(assert (= (and b!639848 c!73085) b!639852))

(assert (= (and b!639848 (not c!73085)) b!639851))

(assert (= (and b!639851 c!73084) b!639849))

(assert (= (and b!639851 (not c!73084)) b!639850))

(declare-fun m!613765 () Bool)

(assert (=> d!90271 m!613765))

(declare-fun m!613767 () Bool)

(assert (=> d!90271 m!613767))

(declare-fun m!613769 () Bool)

(assert (=> d!90271 m!613769))

(assert (=> d!90271 m!613481))

(declare-fun m!613771 () Bool)

(assert (=> b!639850 m!613771))

(assert (=> b!639850 m!613771))

(declare-fun m!613773 () Bool)

(assert (=> b!639850 m!613773))

(assert (=> b!639558 d!90271))

(declare-fun d!90277 () Bool)

(declare-fun lt!296116 () (_ BitVec 32))

(assert (=> d!90277 (and (bvsge lt!296116 #b00000000000000000000000000000000) (bvslt lt!296116 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90277 (= lt!296116 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!90277 (validMask!0 mask!3053)))

(assert (=> d!90277 (= (nextIndex!0 index!984 x!910 mask!3053) lt!296116)))

(declare-fun bs!19170 () Bool)

(assert (= bs!19170 d!90277))

(declare-fun m!613783 () Bool)

(assert (=> bs!19170 m!613783))

(assert (=> bs!19170 m!613481))

(assert (=> b!639558 d!90277))

(declare-fun d!90281 () Bool)

(declare-fun e!366272 () Bool)

(assert (=> d!90281 e!366272))

(declare-fun res!414431 () Bool)

(assert (=> d!90281 (=> (not res!414431) (not e!366272))))

(assert (=> d!90281 (= res!414431 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18730 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18730 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18730 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18730 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18730 a!2986))))))

(declare-fun lt!296123 () Unit!21610)

(declare-fun choose!9 (array!38298 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21610)

(assert (=> d!90281 (= lt!296123 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 mask!3053))))

(assert (=> d!90281 (validMask!0 mask!3053)))

(assert (=> d!90281 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 mask!3053) lt!296123)))

(declare-fun b!639877 () Bool)

(assert (=> b!639877 (= e!366272 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 (select (arr!18366 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 (select (store (arr!18366 a!2986) i!1108 k!1786) j!136) (array!38299 (store (arr!18366 a!2986) i!1108 k!1786) (size!18730 a!2986)) mask!3053)))))

(assert (= (and d!90281 res!414431) b!639877))

(declare-fun m!613811 () Bool)

(assert (=> d!90281 m!613811))

(assert (=> d!90281 m!613481))

(assert (=> b!639877 m!613497))

(assert (=> b!639877 m!613461))

(assert (=> b!639877 m!613501))

(assert (=> b!639877 m!613461))

(assert (=> b!639877 m!613465))

(assert (=> b!639877 m!613497))

(declare-fun m!613813 () Bool)

(assert (=> b!639877 m!613813))

(assert (=> b!639558 d!90281))

(declare-fun b!639890 () Bool)

(declare-fun e!366283 () SeekEntryResult!6813)

(assert (=> b!639890 (= e!366283 Undefined!6813)))

(declare-fun d!90297 () Bool)

(declare-fun lt!296134 () SeekEntryResult!6813)

(assert (=> d!90297 (and (or (is-Undefined!6813 lt!296134) (not (is-Found!6813 lt!296134)) (and (bvsge (index!29569 lt!296134) #b00000000000000000000000000000000) (bvslt (index!29569 lt!296134) (size!18730 a!2986)))) (or (is-Undefined!6813 lt!296134) (is-Found!6813 lt!296134) (not (is-MissingVacant!6813 lt!296134)) (not (= (index!29571 lt!296134) vacantSpotIndex!68)) (and (bvsge (index!29571 lt!296134) #b00000000000000000000000000000000) (bvslt (index!29571 lt!296134) (size!18730 a!2986)))) (or (is-Undefined!6813 lt!296134) (ite (is-Found!6813 lt!296134) (= (select (arr!18366 a!2986) (index!29569 lt!296134)) (select (arr!18366 a!2986) j!136)) (and (is-MissingVacant!6813 lt!296134) (= (index!29571 lt!296134) vacantSpotIndex!68) (= (select (arr!18366 a!2986) (index!29571 lt!296134)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90297 (= lt!296134 e!366283)))

(declare-fun c!73096 () Bool)

(assert (=> d!90297 (= c!73096 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!296135 () (_ BitVec 64))

(assert (=> d!90297 (= lt!296135 (select (arr!18366 a!2986) lt!295960))))

(assert (=> d!90297 (validMask!0 mask!3053)))

(assert (=> d!90297 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295960 vacantSpotIndex!68 (select (arr!18366 a!2986) j!136) a!2986 mask!3053) lt!296134)))

(declare-fun b!639891 () Bool)

(declare-fun e!366282 () SeekEntryResult!6813)

(assert (=> b!639891 (= e!366283 e!366282)))

(declare-fun c!73095 () Bool)

(assert (=> b!639891 (= c!73095 (= lt!296135 (select (arr!18366 a!2986) j!136)))))

(declare-fun b!639892 () Bool)

(declare-fun e!366281 () SeekEntryResult!6813)

(assert (=> b!639892 (= e!366281 (MissingVacant!6813 vacantSpotIndex!68))))

(declare-fun b!639893 () Bool)

(assert (=> b!639893 (= e!366281 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!295960 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18366 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639894 () Bool)

(declare-fun c!73094 () Bool)

(assert (=> b!639894 (= c!73094 (= lt!296135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639894 (= e!366282 e!366281)))

(declare-fun b!639895 () Bool)

(assert (=> b!639895 (= e!366282 (Found!6813 lt!295960))))

