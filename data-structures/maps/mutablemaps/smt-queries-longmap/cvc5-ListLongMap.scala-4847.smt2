; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66796 () Bool)

(assert start!66796)

(declare-fun b!769625 () Bool)

(declare-fun res!520645 () Bool)

(declare-fun e!428566 () Bool)

(assert (=> b!769625 (=> (not res!520645) (not e!428566))))

(declare-datatypes ((array!42313 0))(
  ( (array!42314 (arr!20253 (Array (_ BitVec 32) (_ BitVec 64))) (size!20674 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42313)

(declare-datatypes ((List!14308 0))(
  ( (Nil!14305) (Cons!14304 (h!15403 (_ BitVec 64)) (t!20631 List!14308)) )
))
(declare-fun arrayNoDuplicates!0 (array!42313 (_ BitVec 32) List!14308) Bool)

(assert (=> b!769625 (= res!520645 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14305))))

(declare-fun b!769626 () Bool)

(declare-fun e!428565 () Bool)

(declare-fun e!428568 () Bool)

(assert (=> b!769626 (= e!428565 (not e!428568))))

(declare-fun res!520648 () Bool)

(assert (=> b!769626 (=> res!520648 e!428568)))

(declare-datatypes ((SeekEntryResult!7860 0))(
  ( (MissingZero!7860 (index!33807 (_ BitVec 32))) (Found!7860 (index!33808 (_ BitVec 32))) (Intermediate!7860 (undefined!8672 Bool) (index!33809 (_ BitVec 32)) (x!64768 (_ BitVec 32))) (Undefined!7860) (MissingVacant!7860 (index!33810 (_ BitVec 32))) )
))
(declare-fun lt!342486 () SeekEntryResult!7860)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!769626 (= res!520648 (or (not (is-Intermediate!7860 lt!342486)) (bvsge x!1131 (x!64768 lt!342486))))))

(declare-fun e!428561 () Bool)

(assert (=> b!769626 e!428561))

(declare-fun res!520646 () Bool)

(assert (=> b!769626 (=> (not res!520646) (not e!428561))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42313 (_ BitVec 32)) Bool)

(assert (=> b!769626 (= res!520646 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26476 0))(
  ( (Unit!26477) )
))
(declare-fun lt!342492 () Unit!26476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26476)

(assert (=> b!769626 (= lt!342492 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769627 () Bool)

(declare-fun res!520651 () Bool)

(declare-fun e!428562 () Bool)

(assert (=> b!769627 (=> (not res!520651) (not e!428562))))

(declare-fun e!428564 () Bool)

(assert (=> b!769627 (= res!520651 e!428564)))

(declare-fun c!84891 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769627 (= c!84891 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769628 () Bool)

(declare-fun e!428560 () Unit!26476)

(declare-fun Unit!26478 () Unit!26476)

(assert (=> b!769628 (= e!428560 Unit!26478)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342487 () SeekEntryResult!7860)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42313 (_ BitVec 32)) SeekEntryResult!7860)

(assert (=> b!769628 (= lt!342487 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20253 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342489 () (_ BitVec 32))

(assert (=> b!769628 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342489 resIntermediateIndex!5 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) (Found!7860 j!159))))

(declare-fun b!769629 () Bool)

(declare-fun lt!342496 () SeekEntryResult!7860)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42313 (_ BitVec 32)) SeekEntryResult!7860)

(assert (=> b!769629 (= e!428564 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) lt!342496))))

(declare-fun b!769630 () Bool)

(declare-fun res!520649 () Bool)

(assert (=> b!769630 (=> (not res!520649) (not e!428566))))

(assert (=> b!769630 (= res!520649 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20674 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20674 a!3186))))))

(declare-fun b!769631 () Bool)

(assert (=> b!769631 (= e!428564 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) (Found!7860 j!159)))))

(declare-fun b!769632 () Bool)

(declare-fun res!520640 () Bool)

(assert (=> b!769632 (=> (not res!520640) (not e!428566))))

(assert (=> b!769632 (= res!520640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769633 () Bool)

(assert (=> b!769633 (= e!428562 e!428565)))

(declare-fun res!520637 () Bool)

(assert (=> b!769633 (=> (not res!520637) (not e!428565))))

(declare-fun lt!342491 () SeekEntryResult!7860)

(assert (=> b!769633 (= res!520637 (= lt!342491 lt!342486))))

(declare-fun lt!342494 () array!42313)

(declare-fun lt!342488 () (_ BitVec 64))

(assert (=> b!769633 (= lt!342486 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342488 lt!342494 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769633 (= lt!342491 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342488 mask!3328) lt!342488 lt!342494 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!769633 (= lt!342488 (select (store (arr!20253 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769633 (= lt!342494 (array!42314 (store (arr!20253 a!3186) i!1173 k!2102) (size!20674 a!3186)))))

(declare-fun lt!342493 () SeekEntryResult!7860)

(declare-fun e!428563 () Bool)

(declare-fun b!769634 () Bool)

(assert (=> b!769634 (= e!428563 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) lt!342493))))

(declare-fun b!769635 () Bool)

(declare-fun res!520641 () Bool)

(declare-fun e!428567 () Bool)

(assert (=> b!769635 (=> (not res!520641) (not e!428567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769635 (= res!520641 (validKeyInArray!0 (select (arr!20253 a!3186) j!159)))))

(declare-fun b!769637 () Bool)

(assert (=> b!769637 (= e!428566 e!428562)))

(declare-fun res!520642 () Bool)

(assert (=> b!769637 (=> (not res!520642) (not e!428562))))

(assert (=> b!769637 (= res!520642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20253 a!3186) j!159) mask!3328) (select (arr!20253 a!3186) j!159) a!3186 mask!3328) lt!342496))))

(assert (=> b!769637 (= lt!342496 (Intermediate!7860 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769638 () Bool)

(assert (=> b!769638 (= e!428568 true)))

(declare-fun lt!342495 () Unit!26476)

(assert (=> b!769638 (= lt!342495 e!428560)))

(declare-fun c!84890 () Bool)

(assert (=> b!769638 (= c!84890 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769638 (= lt!342489 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769639 () Bool)

(declare-fun res!520643 () Bool)

(assert (=> b!769639 (=> (not res!520643) (not e!428567))))

(assert (=> b!769639 (= res!520643 (and (= (size!20674 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20674 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20674 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769640 () Bool)

(declare-fun res!520650 () Bool)

(assert (=> b!769640 (=> (not res!520650) (not e!428567))))

(assert (=> b!769640 (= res!520650 (validKeyInArray!0 k!2102))))

(declare-fun b!769641 () Bool)

(declare-fun res!520647 () Bool)

(assert (=> b!769641 (=> (not res!520647) (not e!428562))))

(assert (=> b!769641 (= res!520647 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20253 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769642 () Bool)

(declare-fun Unit!26479 () Unit!26476)

(assert (=> b!769642 (= e!428560 Unit!26479)))

(assert (=> b!769642 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342489 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) lt!342496)))

(declare-fun b!769643 () Bool)

(assert (=> b!769643 (= e!428561 e!428563)))

(declare-fun res!520638 () Bool)

(assert (=> b!769643 (=> (not res!520638) (not e!428563))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42313 (_ BitVec 32)) SeekEntryResult!7860)

(assert (=> b!769643 (= res!520638 (= (seekEntryOrOpen!0 (select (arr!20253 a!3186) j!159) a!3186 mask!3328) lt!342493))))

(assert (=> b!769643 (= lt!342493 (Found!7860 j!159))))

(declare-fun b!769644 () Bool)

(assert (=> b!769644 (= e!428567 e!428566)))

(declare-fun res!520644 () Bool)

(assert (=> b!769644 (=> (not res!520644) (not e!428566))))

(declare-fun lt!342490 () SeekEntryResult!7860)

(assert (=> b!769644 (= res!520644 (or (= lt!342490 (MissingZero!7860 i!1173)) (= lt!342490 (MissingVacant!7860 i!1173))))))

(assert (=> b!769644 (= lt!342490 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769636 () Bool)

(declare-fun res!520636 () Bool)

(assert (=> b!769636 (=> (not res!520636) (not e!428567))))

(declare-fun arrayContainsKey!0 (array!42313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769636 (= res!520636 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!520639 () Bool)

(assert (=> start!66796 (=> (not res!520639) (not e!428567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66796 (= res!520639 (validMask!0 mask!3328))))

(assert (=> start!66796 e!428567))

(assert (=> start!66796 true))

(declare-fun array_inv!16027 (array!42313) Bool)

(assert (=> start!66796 (array_inv!16027 a!3186)))

(assert (= (and start!66796 res!520639) b!769639))

(assert (= (and b!769639 res!520643) b!769635))

(assert (= (and b!769635 res!520641) b!769640))

(assert (= (and b!769640 res!520650) b!769636))

(assert (= (and b!769636 res!520636) b!769644))

(assert (= (and b!769644 res!520644) b!769632))

(assert (= (and b!769632 res!520640) b!769625))

(assert (= (and b!769625 res!520645) b!769630))

(assert (= (and b!769630 res!520649) b!769637))

(assert (= (and b!769637 res!520642) b!769641))

(assert (= (and b!769641 res!520647) b!769627))

(assert (= (and b!769627 c!84891) b!769629))

(assert (= (and b!769627 (not c!84891)) b!769631))

(assert (= (and b!769627 res!520651) b!769633))

(assert (= (and b!769633 res!520637) b!769626))

(assert (= (and b!769626 res!520646) b!769643))

(assert (= (and b!769643 res!520638) b!769634))

(assert (= (and b!769626 (not res!520648)) b!769638))

(assert (= (and b!769638 c!84890) b!769642))

(assert (= (and b!769638 (not c!84890)) b!769628))

(declare-fun m!715075 () Bool)

(assert (=> b!769637 m!715075))

(assert (=> b!769637 m!715075))

(declare-fun m!715077 () Bool)

(assert (=> b!769637 m!715077))

(assert (=> b!769637 m!715077))

(assert (=> b!769637 m!715075))

(declare-fun m!715079 () Bool)

(assert (=> b!769637 m!715079))

(declare-fun m!715081 () Bool)

(assert (=> b!769633 m!715081))

(declare-fun m!715083 () Bool)

(assert (=> b!769633 m!715083))

(declare-fun m!715085 () Bool)

(assert (=> b!769633 m!715085))

(declare-fun m!715087 () Bool)

(assert (=> b!769633 m!715087))

(declare-fun m!715089 () Bool)

(assert (=> b!769633 m!715089))

(assert (=> b!769633 m!715085))

(declare-fun m!715091 () Bool)

(assert (=> start!66796 m!715091))

(declare-fun m!715093 () Bool)

(assert (=> start!66796 m!715093))

(declare-fun m!715095 () Bool)

(assert (=> b!769636 m!715095))

(declare-fun m!715097 () Bool)

(assert (=> b!769641 m!715097))

(declare-fun m!715099 () Bool)

(assert (=> b!769644 m!715099))

(assert (=> b!769642 m!715075))

(assert (=> b!769642 m!715075))

(declare-fun m!715101 () Bool)

(assert (=> b!769642 m!715101))

(declare-fun m!715103 () Bool)

(assert (=> b!769626 m!715103))

(declare-fun m!715105 () Bool)

(assert (=> b!769626 m!715105))

(assert (=> b!769629 m!715075))

(assert (=> b!769629 m!715075))

(declare-fun m!715107 () Bool)

(assert (=> b!769629 m!715107))

(declare-fun m!715109 () Bool)

(assert (=> b!769632 m!715109))

(declare-fun m!715111 () Bool)

(assert (=> b!769625 m!715111))

(assert (=> b!769631 m!715075))

(assert (=> b!769631 m!715075))

(declare-fun m!715113 () Bool)

(assert (=> b!769631 m!715113))

(declare-fun m!715115 () Bool)

(assert (=> b!769640 m!715115))

(assert (=> b!769643 m!715075))

(assert (=> b!769643 m!715075))

(declare-fun m!715117 () Bool)

(assert (=> b!769643 m!715117))

(assert (=> b!769634 m!715075))

(assert (=> b!769634 m!715075))

(declare-fun m!715119 () Bool)

(assert (=> b!769634 m!715119))

(assert (=> b!769628 m!715075))

(assert (=> b!769628 m!715075))

(assert (=> b!769628 m!715113))

(assert (=> b!769628 m!715075))

(declare-fun m!715121 () Bool)

(assert (=> b!769628 m!715121))

(declare-fun m!715123 () Bool)

(assert (=> b!769638 m!715123))

(assert (=> b!769635 m!715075))

(assert (=> b!769635 m!715075))

(declare-fun m!715125 () Bool)

(assert (=> b!769635 m!715125))

(push 1)

