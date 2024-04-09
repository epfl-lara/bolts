; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65808 () Bool)

(assert start!65808)

(declare-fun b!756538 () Bool)

(declare-fun res!511644 () Bool)

(declare-fun e!421872 () Bool)

(assert (=> b!756538 (=> (not res!511644) (not e!421872))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41934 0))(
  ( (array!41935 (arr!20077 (Array (_ BitVec 32) (_ BitVec 64))) (size!20498 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41934)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756538 (= res!511644 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20077 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756539 () Bool)

(declare-fun res!511652 () Bool)

(declare-fun e!421878 () Bool)

(assert (=> b!756539 (=> (not res!511652) (not e!421878))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41934 (_ BitVec 32)) Bool)

(assert (=> b!756539 (= res!511652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756540 () Bool)

(declare-fun res!511643 () Bool)

(declare-fun e!421868 () Bool)

(assert (=> b!756540 (=> (not res!511643) (not e!421868))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756540 (= res!511643 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756541 () Bool)

(declare-fun res!511646 () Bool)

(declare-fun e!421875 () Bool)

(assert (=> b!756541 (=> (not res!511646) (not e!421875))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!336876 () (_ BitVec 64))

(declare-fun lt!336877 () array!41934)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7684 0))(
  ( (MissingZero!7684 (index!33103 (_ BitVec 32))) (Found!7684 (index!33104 (_ BitVec 32))) (Intermediate!7684 (undefined!8496 Bool) (index!33105 (_ BitVec 32)) (x!64027 (_ BitVec 32))) (Undefined!7684) (MissingVacant!7684 (index!33106 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41934 (_ BitVec 32)) SeekEntryResult!7684)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41934 (_ BitVec 32)) SeekEntryResult!7684)

(assert (=> b!756541 (= res!511646 (= (seekEntryOrOpen!0 lt!336876 lt!336877 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336876 lt!336877 mask!3328)))))

(declare-fun b!756542 () Bool)

(declare-fun e!421871 () Bool)

(declare-fun e!421877 () Bool)

(assert (=> b!756542 (= e!421871 e!421877)))

(declare-fun res!511649 () Bool)

(assert (=> b!756542 (=> res!511649 e!421877)))

(declare-fun lt!336873 () SeekEntryResult!7684)

(declare-fun lt!336875 () SeekEntryResult!7684)

(assert (=> b!756542 (= res!511649 (not (= lt!336873 lt!336875)))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!756542 (= lt!336873 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20077 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!511641 () Bool)

(assert (=> start!65808 (=> (not res!511641) (not e!421868))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65808 (= res!511641 (validMask!0 mask!3328))))

(assert (=> start!65808 e!421868))

(assert (=> start!65808 true))

(declare-fun array_inv!15851 (array!41934) Bool)

(assert (=> start!65808 (array_inv!15851 a!3186)))

(declare-fun b!756543 () Bool)

(declare-fun res!511659 () Bool)

(assert (=> b!756543 (=> (not res!511659) (not e!421868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756543 (= res!511659 (validKeyInArray!0 k0!2102))))

(declare-fun b!756544 () Bool)

(declare-datatypes ((Unit!26138 0))(
  ( (Unit!26139) )
))
(declare-fun e!421867 () Unit!26138)

(declare-fun Unit!26140 () Unit!26138)

(assert (=> b!756544 (= e!421867 Unit!26140)))

(assert (=> b!756544 false))

(declare-fun b!756545 () Bool)

(declare-fun e!421870 () Bool)

(assert (=> b!756545 (= e!421870 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20077 a!3186) j!159) a!3186 mask!3328) (Found!7684 j!159)))))

(declare-fun b!756546 () Bool)

(declare-fun e!421869 () Bool)

(assert (=> b!756546 (= e!421877 e!421869)))

(declare-fun res!511650 () Bool)

(assert (=> b!756546 (=> res!511650 e!421869)))

(declare-fun lt!336872 () (_ BitVec 64))

(assert (=> b!756546 (= res!511650 (= lt!336872 lt!336876))))

(assert (=> b!756546 (= lt!336872 (select (store (arr!20077 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!756547 () Bool)

(declare-fun lt!336870 () SeekEntryResult!7684)

(assert (=> b!756547 (= e!421875 (= lt!336870 lt!336873))))

(declare-fun b!756548 () Bool)

(declare-fun Unit!26141 () Unit!26138)

(assert (=> b!756548 (= e!421867 Unit!26141)))

(declare-fun b!756549 () Bool)

(declare-fun lt!336867 () SeekEntryResult!7684)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41934 (_ BitVec 32)) SeekEntryResult!7684)

(assert (=> b!756549 (= e!421870 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20077 a!3186) j!159) a!3186 mask!3328) lt!336867))))

(declare-fun b!756550 () Bool)

(declare-fun res!511657 () Bool)

(assert (=> b!756550 (=> (not res!511657) (not e!421868))))

(assert (=> b!756550 (= res!511657 (validKeyInArray!0 (select (arr!20077 a!3186) j!159)))))

(declare-fun b!756551 () Bool)

(assert (=> b!756551 (= e!421869 true)))

(assert (=> b!756551 e!421875))

(declare-fun res!511647 () Bool)

(assert (=> b!756551 (=> (not res!511647) (not e!421875))))

(assert (=> b!756551 (= res!511647 (= lt!336872 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336869 () Unit!26138)

(assert (=> b!756551 (= lt!336869 e!421867)))

(declare-fun c!82829 () Bool)

(assert (=> b!756551 (= c!82829 (= lt!336872 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756552 () Bool)

(declare-fun res!511648 () Bool)

(assert (=> b!756552 (=> (not res!511648) (not e!421878))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756552 (= res!511648 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20498 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20498 a!3186))))))

(declare-fun b!756553 () Bool)

(declare-fun res!511656 () Bool)

(assert (=> b!756553 (=> (not res!511656) (not e!421878))))

(declare-datatypes ((List!14132 0))(
  ( (Nil!14129) (Cons!14128 (h!15200 (_ BitVec 64)) (t!20455 List!14132)) )
))
(declare-fun arrayNoDuplicates!0 (array!41934 (_ BitVec 32) List!14132) Bool)

(assert (=> b!756553 (= res!511656 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14129))))

(declare-fun b!756554 () Bool)

(declare-fun res!511654 () Bool)

(assert (=> b!756554 (=> (not res!511654) (not e!421872))))

(assert (=> b!756554 (= res!511654 e!421870)))

(declare-fun c!82830 () Bool)

(assert (=> b!756554 (= c!82830 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756555 () Bool)

(declare-fun e!421876 () Bool)

(assert (=> b!756555 (= e!421872 e!421876)))

(declare-fun res!511655 () Bool)

(assert (=> b!756555 (=> (not res!511655) (not e!421876))))

(declare-fun lt!336871 () SeekEntryResult!7684)

(declare-fun lt!336868 () SeekEntryResult!7684)

(assert (=> b!756555 (= res!511655 (= lt!336871 lt!336868))))

(assert (=> b!756555 (= lt!336868 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336876 lt!336877 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756555 (= lt!336871 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336876 mask!3328) lt!336876 lt!336877 mask!3328))))

(assert (=> b!756555 (= lt!336876 (select (store (arr!20077 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!756555 (= lt!336877 (array!41935 (store (arr!20077 a!3186) i!1173 k0!2102) (size!20498 a!3186)))))

(declare-fun b!756556 () Bool)

(assert (=> b!756556 (= e!421878 e!421872)))

(declare-fun res!511651 () Bool)

(assert (=> b!756556 (=> (not res!511651) (not e!421872))))

(assert (=> b!756556 (= res!511651 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20077 a!3186) j!159) mask!3328) (select (arr!20077 a!3186) j!159) a!3186 mask!3328) lt!336867))))

(assert (=> b!756556 (= lt!336867 (Intermediate!7684 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756557 () Bool)

(assert (=> b!756557 (= e!421876 (not e!421871))))

(declare-fun res!511645 () Bool)

(assert (=> b!756557 (=> res!511645 e!421871)))

(get-info :version)

(assert (=> b!756557 (= res!511645 (or (not ((_ is Intermediate!7684) lt!336868)) (bvslt x!1131 (x!64027 lt!336868)) (not (= x!1131 (x!64027 lt!336868))) (not (= index!1321 (index!33105 lt!336868)))))))

(declare-fun e!421873 () Bool)

(assert (=> b!756557 e!421873))

(declare-fun res!511642 () Bool)

(assert (=> b!756557 (=> (not res!511642) (not e!421873))))

(assert (=> b!756557 (= res!511642 (= lt!336870 lt!336875))))

(assert (=> b!756557 (= lt!336875 (Found!7684 j!159))))

(assert (=> b!756557 (= lt!336870 (seekEntryOrOpen!0 (select (arr!20077 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756557 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336874 () Unit!26138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41934 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26138)

(assert (=> b!756557 (= lt!336874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756558 () Bool)

(assert (=> b!756558 (= e!421873 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20077 a!3186) j!159) a!3186 mask!3328) lt!336875))))

(declare-fun b!756559 () Bool)

(assert (=> b!756559 (= e!421868 e!421878)))

(declare-fun res!511653 () Bool)

(assert (=> b!756559 (=> (not res!511653) (not e!421878))))

(declare-fun lt!336878 () SeekEntryResult!7684)

(assert (=> b!756559 (= res!511653 (or (= lt!336878 (MissingZero!7684 i!1173)) (= lt!336878 (MissingVacant!7684 i!1173))))))

(assert (=> b!756559 (= lt!336878 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!756560 () Bool)

(declare-fun res!511658 () Bool)

(assert (=> b!756560 (=> (not res!511658) (not e!421868))))

(assert (=> b!756560 (= res!511658 (and (= (size!20498 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20498 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20498 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65808 res!511641) b!756560))

(assert (= (and b!756560 res!511658) b!756550))

(assert (= (and b!756550 res!511657) b!756543))

(assert (= (and b!756543 res!511659) b!756540))

(assert (= (and b!756540 res!511643) b!756559))

(assert (= (and b!756559 res!511653) b!756539))

(assert (= (and b!756539 res!511652) b!756553))

(assert (= (and b!756553 res!511656) b!756552))

(assert (= (and b!756552 res!511648) b!756556))

(assert (= (and b!756556 res!511651) b!756538))

(assert (= (and b!756538 res!511644) b!756554))

(assert (= (and b!756554 c!82830) b!756549))

(assert (= (and b!756554 (not c!82830)) b!756545))

(assert (= (and b!756554 res!511654) b!756555))

(assert (= (and b!756555 res!511655) b!756557))

(assert (= (and b!756557 res!511642) b!756558))

(assert (= (and b!756557 (not res!511645)) b!756542))

(assert (= (and b!756542 (not res!511649)) b!756546))

(assert (= (and b!756546 (not res!511650)) b!756551))

(assert (= (and b!756551 c!82829) b!756544))

(assert (= (and b!756551 (not c!82829)) b!756548))

(assert (= (and b!756551 res!511647) b!756541))

(assert (= (and b!756541 res!511646) b!756547))

(declare-fun m!704537 () Bool)

(assert (=> b!756540 m!704537))

(declare-fun m!704539 () Bool)

(assert (=> b!756553 m!704539))

(declare-fun m!704541 () Bool)

(assert (=> b!756557 m!704541))

(assert (=> b!756557 m!704541))

(declare-fun m!704543 () Bool)

(assert (=> b!756557 m!704543))

(declare-fun m!704545 () Bool)

(assert (=> b!756557 m!704545))

(declare-fun m!704547 () Bool)

(assert (=> b!756557 m!704547))

(assert (=> b!756556 m!704541))

(assert (=> b!756556 m!704541))

(declare-fun m!704549 () Bool)

(assert (=> b!756556 m!704549))

(assert (=> b!756556 m!704549))

(assert (=> b!756556 m!704541))

(declare-fun m!704551 () Bool)

(assert (=> b!756556 m!704551))

(declare-fun m!704553 () Bool)

(assert (=> b!756546 m!704553))

(declare-fun m!704555 () Bool)

(assert (=> b!756546 m!704555))

(assert (=> b!756542 m!704541))

(assert (=> b!756542 m!704541))

(declare-fun m!704557 () Bool)

(assert (=> b!756542 m!704557))

(assert (=> b!756558 m!704541))

(assert (=> b!756558 m!704541))

(declare-fun m!704559 () Bool)

(assert (=> b!756558 m!704559))

(declare-fun m!704561 () Bool)

(assert (=> start!65808 m!704561))

(declare-fun m!704563 () Bool)

(assert (=> start!65808 m!704563))

(declare-fun m!704565 () Bool)

(assert (=> b!756555 m!704565))

(declare-fun m!704567 () Bool)

(assert (=> b!756555 m!704567))

(assert (=> b!756555 m!704553))

(declare-fun m!704569 () Bool)

(assert (=> b!756555 m!704569))

(assert (=> b!756555 m!704569))

(declare-fun m!704571 () Bool)

(assert (=> b!756555 m!704571))

(declare-fun m!704573 () Bool)

(assert (=> b!756539 m!704573))

(assert (=> b!756549 m!704541))

(assert (=> b!756549 m!704541))

(declare-fun m!704575 () Bool)

(assert (=> b!756549 m!704575))

(declare-fun m!704577 () Bool)

(assert (=> b!756559 m!704577))

(declare-fun m!704579 () Bool)

(assert (=> b!756543 m!704579))

(assert (=> b!756550 m!704541))

(assert (=> b!756550 m!704541))

(declare-fun m!704581 () Bool)

(assert (=> b!756550 m!704581))

(declare-fun m!704583 () Bool)

(assert (=> b!756541 m!704583))

(declare-fun m!704585 () Bool)

(assert (=> b!756541 m!704585))

(assert (=> b!756545 m!704541))

(assert (=> b!756545 m!704541))

(assert (=> b!756545 m!704557))

(declare-fun m!704587 () Bool)

(assert (=> b!756538 m!704587))

(check-sat (not b!756558) (not b!756555) (not b!756556) (not b!756553) (not start!65808) (not b!756542) (not b!756545) (not b!756543) (not b!756559) (not b!756539) (not b!756549) (not b!756541) (not b!756550) (not b!756540) (not b!756557))
(check-sat)
