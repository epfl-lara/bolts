; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56212 () Bool)

(assert start!56212)

(declare-fun b!622623 () Bool)

(declare-fun res!401372 () Bool)

(declare-fun e!357128 () Bool)

(assert (=> b!622623 (=> (not res!401372) (not e!357128))))

(declare-datatypes ((array!37645 0))(
  ( (array!37646 (arr!18065 (Array (_ BitVec 32) (_ BitVec 64))) (size!18429 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37645)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37645 (_ BitVec 32)) Bool)

(assert (=> b!622623 (= res!401372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!401360 () Bool)

(declare-fun e!357127 () Bool)

(assert (=> start!56212 (=> (not res!401360) (not e!357127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56212 (= res!401360 (validMask!0 mask!3053))))

(assert (=> start!56212 e!357127))

(assert (=> start!56212 true))

(declare-fun array_inv!13839 (array!37645) Bool)

(assert (=> start!56212 (array_inv!13839 a!2986)))

(declare-fun b!622624 () Bool)

(declare-fun res!401371 () Bool)

(assert (=> b!622624 (=> (not res!401371) (not e!357127))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!622624 (= res!401371 (validKeyInArray!0 k!1786))))

(declare-fun b!622625 () Bool)

(declare-datatypes ((Unit!20940 0))(
  ( (Unit!20941) )
))
(declare-fun e!357126 () Unit!20940)

(declare-fun Unit!20942 () Unit!20940)

(assert (=> b!622625 (= e!357126 Unit!20942)))

(declare-fun b!622626 () Bool)

(declare-fun e!357136 () Unit!20940)

(declare-fun Unit!20943 () Unit!20940)

(assert (=> b!622626 (= e!357136 Unit!20943)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!401364 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!622626 (= res!401364 (= (select (store (arr!18065 a!2986) i!1108 k!1786) index!984) (select (arr!18065 a!2986) j!136)))))

(declare-fun e!357131 () Bool)

(assert (=> b!622626 (=> (not res!401364) (not e!357131))))

(assert (=> b!622626 e!357131))

(declare-fun c!71000 () Bool)

(assert (=> b!622626 (= c!71000 (bvslt j!136 index!984))))

(declare-fun lt!288681 () Unit!20940)

(declare-fun e!357137 () Unit!20940)

(assert (=> b!622626 (= lt!288681 e!357137)))

(declare-fun c!71001 () Bool)

(assert (=> b!622626 (= c!71001 (bvslt index!984 j!136))))

(declare-fun lt!288692 () Unit!20940)

(declare-fun e!357132 () Unit!20940)

(assert (=> b!622626 (= lt!288692 e!357132)))

(assert (=> b!622626 false))

(declare-fun b!622627 () Bool)

(declare-fun res!401359 () Bool)

(assert (=> b!622627 (=> (not res!401359) (not e!357127))))

(assert (=> b!622627 (= res!401359 (validKeyInArray!0 (select (arr!18065 a!2986) j!136)))))

(declare-fun b!622628 () Bool)

(declare-fun e!357138 () Bool)

(declare-fun e!357134 () Bool)

(assert (=> b!622628 (= e!357138 e!357134)))

(declare-fun res!401358 () Bool)

(assert (=> b!622628 (=> (not res!401358) (not e!357134))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6512 0))(
  ( (MissingZero!6512 (index!28331 (_ BitVec 32))) (Found!6512 (index!28332 (_ BitVec 32))) (Intermediate!6512 (undefined!7324 Bool) (index!28333 (_ BitVec 32)) (x!57121 (_ BitVec 32))) (Undefined!6512) (MissingVacant!6512 (index!28334 (_ BitVec 32))) )
))
(declare-fun lt!288683 () SeekEntryResult!6512)

(assert (=> b!622628 (= res!401358 (and (= lt!288683 (Found!6512 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18065 a!2986) index!984) (select (arr!18065 a!2986) j!136))) (not (= (select (arr!18065 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37645 (_ BitVec 32)) SeekEntryResult!6512)

(assert (=> b!622628 (= lt!288683 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18065 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!622629 () Bool)

(declare-fun res!401362 () Bool)

(assert (=> b!622629 (=> (not res!401362) (not e!357127))))

(declare-fun arrayContainsKey!0 (array!37645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!622629 (= res!401362 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!622630 () Bool)

(declare-fun res!401363 () Bool)

(assert (=> b!622630 (=> (not res!401363) (not e!357128))))

(assert (=> b!622630 (= res!401363 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18065 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!622631 () Bool)

(assert (=> b!622631 (= e!357128 e!357138)))

(declare-fun res!401370 () Bool)

(assert (=> b!622631 (=> (not res!401370) (not e!357138))))

(assert (=> b!622631 (= res!401370 (= (select (store (arr!18065 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!288689 () array!37645)

(assert (=> b!622631 (= lt!288689 (array!37646 (store (arr!18065 a!2986) i!1108 k!1786) (size!18429 a!2986)))))

(declare-fun b!622632 () Bool)

(assert (=> b!622632 false))

(declare-fun lt!288695 () Unit!20940)

(declare-datatypes ((List!12159 0))(
  ( (Nil!12156) (Cons!12155 (h!13200 (_ BitVec 64)) (t!18395 List!12159)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37645 (_ BitVec 64) (_ BitVec 32) List!12159) Unit!20940)

(assert (=> b!622632 (= lt!288695 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288689 (select (arr!18065 a!2986) j!136) index!984 Nil!12156))))

(declare-fun arrayNoDuplicates!0 (array!37645 (_ BitVec 32) List!12159) Bool)

(assert (=> b!622632 (arrayNoDuplicates!0 lt!288689 index!984 Nil!12156)))

(declare-fun lt!288687 () Unit!20940)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37645 (_ BitVec 32) (_ BitVec 32)) Unit!20940)

(assert (=> b!622632 (= lt!288687 (lemmaNoDuplicateFromThenFromBigger!0 lt!288689 #b00000000000000000000000000000000 index!984))))

(assert (=> b!622632 (arrayNoDuplicates!0 lt!288689 #b00000000000000000000000000000000 Nil!12156)))

(declare-fun lt!288688 () Unit!20940)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37645 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12159) Unit!20940)

(assert (=> b!622632 (= lt!288688 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12156))))

(assert (=> b!622632 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!288680 () Unit!20940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37645 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20940)

(assert (=> b!622632 (= lt!288680 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288689 (select (arr!18065 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357139 () Bool)

(assert (=> b!622632 e!357139))

(declare-fun res!401357 () Bool)

(assert (=> b!622632 (=> (not res!401357) (not e!357139))))

(assert (=> b!622632 (= res!401357 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) j!136))))

(declare-fun Unit!20944 () Unit!20940)

(assert (=> b!622632 (= e!357132 Unit!20944)))

(declare-fun b!622633 () Bool)

(declare-fun e!357129 () Bool)

(declare-fun lt!288686 () SeekEntryResult!6512)

(assert (=> b!622633 (= e!357129 (= lt!288683 lt!288686))))

(declare-fun e!357130 () Bool)

(declare-fun b!622634 () Bool)

(assert (=> b!622634 (= e!357130 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) index!984))))

(declare-fun b!622635 () Bool)

(assert (=> b!622635 false))

(declare-fun lt!288693 () Unit!20940)

(assert (=> b!622635 (= lt!288693 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!288689 (select (arr!18065 a!2986) j!136) j!136 Nil!12156))))

(assert (=> b!622635 (arrayNoDuplicates!0 lt!288689 j!136 Nil!12156)))

(declare-fun lt!288690 () Unit!20940)

(assert (=> b!622635 (= lt!288690 (lemmaNoDuplicateFromThenFromBigger!0 lt!288689 #b00000000000000000000000000000000 j!136))))

(assert (=> b!622635 (arrayNoDuplicates!0 lt!288689 #b00000000000000000000000000000000 Nil!12156)))

(declare-fun lt!288691 () Unit!20940)

(assert (=> b!622635 (= lt!288691 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12156))))

(assert (=> b!622635 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!288682 () Unit!20940)

(assert (=> b!622635 (= lt!288682 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!288689 (select (arr!18065 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20945 () Unit!20940)

(assert (=> b!622635 (= e!357137 Unit!20945)))

(declare-fun b!622636 () Bool)

(assert (=> b!622636 (= e!357134 (not true))))

(declare-fun lt!288696 () Unit!20940)

(assert (=> b!622636 (= lt!288696 e!357136)))

(declare-fun c!71002 () Bool)

(declare-fun lt!288679 () SeekEntryResult!6512)

(assert (=> b!622636 (= c!71002 (= lt!288679 (Found!6512 index!984)))))

(declare-fun lt!288678 () Unit!20940)

(assert (=> b!622636 (= lt!288678 e!357126)))

(declare-fun c!71003 () Bool)

(assert (=> b!622636 (= c!71003 (= lt!288679 Undefined!6512))))

(declare-fun lt!288694 () (_ BitVec 64))

(assert (=> b!622636 (= lt!288679 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!288694 lt!288689 mask!3053))))

(assert (=> b!622636 e!357129))

(declare-fun res!401367 () Bool)

(assert (=> b!622636 (=> (not res!401367) (not e!357129))))

(declare-fun lt!288685 () (_ BitVec 32))

(assert (=> b!622636 (= res!401367 (= lt!288686 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288685 vacantSpotIndex!68 lt!288694 lt!288689 mask!3053)))))

(assert (=> b!622636 (= lt!288686 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!288685 vacantSpotIndex!68 (select (arr!18065 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!622636 (= lt!288694 (select (store (arr!18065 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!288684 () Unit!20940)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20940)

(assert (=> b!622636 (= lt!288684 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!288685 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!622636 (= lt!288685 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!622637 () Bool)

(assert (=> b!622637 (= e!357127 e!357128)))

(declare-fun res!401366 () Bool)

(assert (=> b!622637 (=> (not res!401366) (not e!357128))))

(declare-fun lt!288677 () SeekEntryResult!6512)

(assert (=> b!622637 (= res!401366 (or (= lt!288677 (MissingZero!6512 i!1108)) (= lt!288677 (MissingVacant!6512 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37645 (_ BitVec 32)) SeekEntryResult!6512)

(assert (=> b!622637 (= lt!288677 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!622638 () Bool)

(declare-fun Unit!20946 () Unit!20940)

(assert (=> b!622638 (= e!357132 Unit!20946)))

(declare-fun b!622639 () Bool)

(declare-fun Unit!20947 () Unit!20940)

(assert (=> b!622639 (= e!357136 Unit!20947)))

(declare-fun res!401365 () Bool)

(declare-fun b!622640 () Bool)

(assert (=> b!622640 (= res!401365 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) j!136))))

(assert (=> b!622640 (=> (not res!401365) (not e!357130))))

(declare-fun e!357135 () Bool)

(assert (=> b!622640 (= e!357135 e!357130)))

(declare-fun b!622641 () Bool)

(declare-fun res!401369 () Bool)

(assert (=> b!622641 (= res!401369 (bvsge j!136 index!984))))

(assert (=> b!622641 (=> res!401369 e!357135)))

(assert (=> b!622641 (= e!357131 e!357135)))

(declare-fun b!622642 () Bool)

(declare-fun res!401361 () Bool)

(assert (=> b!622642 (=> (not res!401361) (not e!357128))))

(assert (=> b!622642 (= res!401361 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12156))))

(declare-fun b!622643 () Bool)

(declare-fun Unit!20948 () Unit!20940)

(assert (=> b!622643 (= e!357137 Unit!20948)))

(declare-fun b!622644 () Bool)

(declare-fun res!401368 () Bool)

(assert (=> b!622644 (=> (not res!401368) (not e!357127))))

(assert (=> b!622644 (= res!401368 (and (= (size!18429 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18429 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18429 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!622645 () Bool)

(assert (=> b!622645 (= e!357139 (arrayContainsKey!0 lt!288689 (select (arr!18065 a!2986) j!136) index!984))))

(declare-fun b!622646 () Bool)

(declare-fun Unit!20949 () Unit!20940)

(assert (=> b!622646 (= e!357126 Unit!20949)))

(assert (=> b!622646 false))

(assert (= (and start!56212 res!401360) b!622644))

(assert (= (and b!622644 res!401368) b!622627))

(assert (= (and b!622627 res!401359) b!622624))

(assert (= (and b!622624 res!401371) b!622629))

(assert (= (and b!622629 res!401362) b!622637))

(assert (= (and b!622637 res!401366) b!622623))

(assert (= (and b!622623 res!401372) b!622642))

(assert (= (and b!622642 res!401361) b!622630))

(assert (= (and b!622630 res!401363) b!622631))

(assert (= (and b!622631 res!401370) b!622628))

(assert (= (and b!622628 res!401358) b!622636))

(assert (= (and b!622636 res!401367) b!622633))

(assert (= (and b!622636 c!71003) b!622646))

(assert (= (and b!622636 (not c!71003)) b!622625))

(assert (= (and b!622636 c!71002) b!622626))

(assert (= (and b!622636 (not c!71002)) b!622639))

(assert (= (and b!622626 res!401364) b!622641))

(assert (= (and b!622641 (not res!401369)) b!622640))

(assert (= (and b!622640 res!401365) b!622634))

(assert (= (and b!622626 c!71000) b!622635))

(assert (= (and b!622626 (not c!71000)) b!622643))

(assert (= (and b!622626 c!71001) b!622632))

(assert (= (and b!622626 (not c!71001)) b!622638))

(assert (= (and b!622632 res!401357) b!622645))

(declare-fun m!598529 () Bool)

(assert (=> b!622629 m!598529))

(declare-fun m!598531 () Bool)

(assert (=> b!622630 m!598531))

(declare-fun m!598533 () Bool)

(assert (=> b!622637 m!598533))

(declare-fun m!598535 () Bool)

(assert (=> b!622635 m!598535))

(declare-fun m!598537 () Bool)

(assert (=> b!622635 m!598537))

(assert (=> b!622635 m!598535))

(declare-fun m!598539 () Bool)

(assert (=> b!622635 m!598539))

(declare-fun m!598541 () Bool)

(assert (=> b!622635 m!598541))

(declare-fun m!598543 () Bool)

(assert (=> b!622635 m!598543))

(declare-fun m!598545 () Bool)

(assert (=> b!622635 m!598545))

(assert (=> b!622635 m!598535))

(assert (=> b!622635 m!598535))

(declare-fun m!598547 () Bool)

(assert (=> b!622635 m!598547))

(declare-fun m!598549 () Bool)

(assert (=> b!622635 m!598549))

(assert (=> b!622627 m!598535))

(assert (=> b!622627 m!598535))

(declare-fun m!598551 () Bool)

(assert (=> b!622627 m!598551))

(assert (=> b!622645 m!598535))

(assert (=> b!622645 m!598535))

(declare-fun m!598553 () Bool)

(assert (=> b!622645 m!598553))

(declare-fun m!598555 () Bool)

(assert (=> b!622631 m!598555))

(declare-fun m!598557 () Bool)

(assert (=> b!622631 m!598557))

(declare-fun m!598559 () Bool)

(assert (=> b!622623 m!598559))

(assert (=> b!622632 m!598535))

(declare-fun m!598561 () Bool)

(assert (=> b!622632 m!598561))

(assert (=> b!622632 m!598535))

(assert (=> b!622632 m!598535))

(declare-fun m!598563 () Bool)

(assert (=> b!622632 m!598563))

(declare-fun m!598565 () Bool)

(assert (=> b!622632 m!598565))

(assert (=> b!622632 m!598535))

(declare-fun m!598567 () Bool)

(assert (=> b!622632 m!598567))

(declare-fun m!598569 () Bool)

(assert (=> b!622632 m!598569))

(assert (=> b!622632 m!598549))

(assert (=> b!622632 m!598535))

(declare-fun m!598571 () Bool)

(assert (=> b!622632 m!598571))

(assert (=> b!622632 m!598541))

(declare-fun m!598573 () Bool)

(assert (=> b!622628 m!598573))

(assert (=> b!622628 m!598535))

(assert (=> b!622628 m!598535))

(declare-fun m!598575 () Bool)

(assert (=> b!622628 m!598575))

(declare-fun m!598577 () Bool)

(assert (=> b!622642 m!598577))

(declare-fun m!598579 () Bool)

(assert (=> start!56212 m!598579))

(declare-fun m!598581 () Bool)

(assert (=> start!56212 m!598581))

(assert (=> b!622634 m!598535))

(assert (=> b!622634 m!598535))

(assert (=> b!622634 m!598553))

(declare-fun m!598583 () Bool)

(assert (=> b!622624 m!598583))

(assert (=> b!622640 m!598535))

(assert (=> b!622640 m!598535))

(assert (=> b!622640 m!598567))

(assert (=> b!622626 m!598555))

(declare-fun m!598585 () Bool)

(assert (=> b!622626 m!598585))

(assert (=> b!622626 m!598535))

(declare-fun m!598587 () Bool)

(assert (=> b!622636 m!598587))

(declare-fun m!598589 () Bool)

(assert (=> b!622636 m!598589))

(assert (=> b!622636 m!598555))

(declare-fun m!598591 () Bool)

(assert (=> b!622636 m!598591))

(assert (=> b!622636 m!598535))

(declare-fun m!598593 () Bool)

(assert (=> b!622636 m!598593))

(declare-fun m!598595 () Bool)

(assert (=> b!622636 m!598595))

(assert (=> b!622636 m!598535))

(declare-fun m!598597 () Bool)

(assert (=> b!622636 m!598597))

(push 1)

(assert (not b!622634))

(assert (not b!622629))

(assert (not b!622627))

(assert (not b!622623))

(assert (not b!622637))

(assert (not b!622628))

(assert (not start!56212))

(assert (not b!622636))

(assert (not b!622632))

(assert (not b!622642))

(assert (not b!622640))

(assert (not b!622635))

(assert (not b!622645))

(assert (not b!622624))

(check-sat)

