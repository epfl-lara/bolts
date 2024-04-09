; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65572 () Bool)

(assert start!65572)

(declare-fun b!748545 () Bool)

(declare-datatypes ((Unit!25666 0))(
  ( (Unit!25667) )
))
(declare-fun e!417795 () Unit!25666)

(declare-fun Unit!25668 () Unit!25666)

(assert (=> b!748545 (= e!417795 Unit!25668)))

(declare-fun b!748546 () Bool)

(declare-fun e!417799 () Bool)

(declare-fun e!417793 () Bool)

(assert (=> b!748546 (= e!417799 e!417793)))

(declare-fun res!505072 () Bool)

(assert (=> b!748546 (=> (not res!505072) (not e!417793))))

(declare-datatypes ((SeekEntryResult!7566 0))(
  ( (MissingZero!7566 (index!32631 (_ BitVec 32))) (Found!7566 (index!32632 (_ BitVec 32))) (Intermediate!7566 (undefined!8378 Bool) (index!32633 (_ BitVec 32)) (x!63597 (_ BitVec 32))) (Undefined!7566) (MissingVacant!7566 (index!32634 (_ BitVec 32))) )
))
(declare-fun lt!332781 () SeekEntryResult!7566)

(declare-fun lt!332778 () SeekEntryResult!7566)

(assert (=> b!748546 (= res!505072 (= lt!332781 lt!332778))))

(declare-fun lt!332779 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41698 0))(
  ( (array!41699 (arr!19959 (Array (_ BitVec 32) (_ BitVec 64))) (size!20380 (_ BitVec 32))) )
))
(declare-fun lt!332786 () array!41698)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41698 (_ BitVec 32)) SeekEntryResult!7566)

(assert (=> b!748546 (= lt!332778 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332779 lt!332786 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748546 (= lt!332781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332779 mask!3328) lt!332779 lt!332786 mask!3328))))

(declare-fun a!3186 () array!41698)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!748546 (= lt!332779 (select (store (arr!19959 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748546 (= lt!332786 (array!41699 (store (arr!19959 a!3186) i!1173 k!2102) (size!20380 a!3186)))))

(declare-fun b!748547 () Bool)

(declare-fun res!505064 () Bool)

(declare-fun e!417794 () Bool)

(assert (=> b!748547 (=> (not res!505064) (not e!417794))))

(assert (=> b!748547 (= res!505064 (and (= (size!20380 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20380 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20380 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748548 () Bool)

(declare-fun res!505076 () Bool)

(declare-fun e!417800 () Bool)

(assert (=> b!748548 (=> (not res!505076) (not e!417800))))

(declare-datatypes ((List!14014 0))(
  ( (Nil!14011) (Cons!14010 (h!15082 (_ BitVec 64)) (t!20337 List!14014)) )
))
(declare-fun arrayNoDuplicates!0 (array!41698 (_ BitVec 32) List!14014) Bool)

(assert (=> b!748548 (= res!505076 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14011))))

(declare-fun b!748549 () Bool)

(declare-fun Unit!25669 () Unit!25666)

(assert (=> b!748549 (= e!417795 Unit!25669)))

(assert (=> b!748549 false))

(declare-fun b!748550 () Bool)

(declare-fun res!505079 () Bool)

(assert (=> b!748550 (=> (not res!505079) (not e!417799))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!748550 (= res!505079 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19959 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!332785 () SeekEntryResult!7566)

(declare-fun b!748551 () Bool)

(declare-fun e!417796 () Bool)

(assert (=> b!748551 (= e!417796 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19959 a!3186) j!159) a!3186 mask!3328) lt!332785))))

(declare-fun res!505073 () Bool)

(assert (=> start!65572 (=> (not res!505073) (not e!417794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65572 (= res!505073 (validMask!0 mask!3328))))

(assert (=> start!65572 e!417794))

(assert (=> start!65572 true))

(declare-fun array_inv!15733 (array!41698) Bool)

(assert (=> start!65572 (array_inv!15733 a!3186)))

(declare-fun b!748552 () Bool)

(declare-fun res!505080 () Bool)

(assert (=> b!748552 (=> (not res!505080) (not e!417800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41698 (_ BitVec 32)) Bool)

(assert (=> b!748552 (= res!505080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748553 () Bool)

(declare-fun res!505071 () Bool)

(assert (=> b!748553 (=> (not res!505071) (not e!417794))))

(declare-fun arrayContainsKey!0 (array!41698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748553 (= res!505071 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!332784 () SeekEntryResult!7566)

(declare-fun e!417801 () Bool)

(declare-fun b!748554 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41698 (_ BitVec 32)) SeekEntryResult!7566)

(assert (=> b!748554 (= e!417801 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19959 a!3186) j!159) a!3186 mask!3328) lt!332784))))

(declare-fun b!748555 () Bool)

(declare-fun res!505065 () Bool)

(declare-fun e!417797 () Bool)

(assert (=> b!748555 (=> res!505065 e!417797)))

(assert (=> b!748555 (= res!505065 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19959 a!3186) j!159) a!3186 mask!3328) lt!332784)))))

(declare-fun b!748556 () Bool)

(declare-fun res!505067 () Bool)

(assert (=> b!748556 (=> (not res!505067) (not e!417794))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748556 (= res!505067 (validKeyInArray!0 (select (arr!19959 a!3186) j!159)))))

(declare-fun b!748557 () Bool)

(declare-fun res!505069 () Bool)

(assert (=> b!748557 (=> (not res!505069) (not e!417794))))

(assert (=> b!748557 (= res!505069 (validKeyInArray!0 k!2102))))

(declare-fun b!748558 () Bool)

(assert (=> b!748558 (= e!417796 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19959 a!3186) j!159) a!3186 mask!3328) (Found!7566 j!159)))))

(declare-fun b!748559 () Bool)

(declare-fun res!505074 () Bool)

(assert (=> b!748559 (=> (not res!505074) (not e!417799))))

(assert (=> b!748559 (= res!505074 e!417796)))

(declare-fun c!82121 () Bool)

(assert (=> b!748559 (= c!82121 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748560 () Bool)

(declare-fun res!505078 () Bool)

(assert (=> b!748560 (=> (not res!505078) (not e!417800))))

(assert (=> b!748560 (= res!505078 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20380 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20380 a!3186))))))

(declare-fun b!748561 () Bool)

(assert (=> b!748561 (= e!417797 true)))

(assert (=> b!748561 (= (select (store (arr!19959 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332782 () Unit!25666)

(assert (=> b!748561 (= lt!332782 e!417795)))

(declare-fun c!82122 () Bool)

(assert (=> b!748561 (= c!82122 (= (select (store (arr!19959 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748562 () Bool)

(declare-fun res!505066 () Bool)

(assert (=> b!748562 (=> res!505066 e!417797)))

(assert (=> b!748562 (= res!505066 (= (select (store (arr!19959 a!3186) i!1173 k!2102) index!1321) lt!332779))))

(declare-fun b!748563 () Bool)

(assert (=> b!748563 (= e!417793 (not e!417797))))

(declare-fun res!505068 () Bool)

(assert (=> b!748563 (=> res!505068 e!417797)))

(assert (=> b!748563 (= res!505068 (or (not (is-Intermediate!7566 lt!332778)) (bvslt x!1131 (x!63597 lt!332778)) (not (= x!1131 (x!63597 lt!332778))) (not (= index!1321 (index!32633 lt!332778)))))))

(assert (=> b!748563 e!417801))

(declare-fun res!505070 () Bool)

(assert (=> b!748563 (=> (not res!505070) (not e!417801))))

(declare-fun lt!332777 () SeekEntryResult!7566)

(assert (=> b!748563 (= res!505070 (= lt!332777 lt!332784))))

(assert (=> b!748563 (= lt!332784 (Found!7566 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41698 (_ BitVec 32)) SeekEntryResult!7566)

(assert (=> b!748563 (= lt!332777 (seekEntryOrOpen!0 (select (arr!19959 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748563 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332780 () Unit!25666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41698 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25666)

(assert (=> b!748563 (= lt!332780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748564 () Bool)

(assert (=> b!748564 (= e!417800 e!417799)))

(declare-fun res!505077 () Bool)

(assert (=> b!748564 (=> (not res!505077) (not e!417799))))

(assert (=> b!748564 (= res!505077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19959 a!3186) j!159) mask!3328) (select (arr!19959 a!3186) j!159) a!3186 mask!3328) lt!332785))))

(assert (=> b!748564 (= lt!332785 (Intermediate!7566 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748565 () Bool)

(assert (=> b!748565 (= e!417794 e!417800)))

(declare-fun res!505075 () Bool)

(assert (=> b!748565 (=> (not res!505075) (not e!417800))))

(declare-fun lt!332783 () SeekEntryResult!7566)

(assert (=> b!748565 (= res!505075 (or (= lt!332783 (MissingZero!7566 i!1173)) (= lt!332783 (MissingVacant!7566 i!1173))))))

(assert (=> b!748565 (= lt!332783 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65572 res!505073) b!748547))

(assert (= (and b!748547 res!505064) b!748556))

(assert (= (and b!748556 res!505067) b!748557))

(assert (= (and b!748557 res!505069) b!748553))

(assert (= (and b!748553 res!505071) b!748565))

(assert (= (and b!748565 res!505075) b!748552))

(assert (= (and b!748552 res!505080) b!748548))

(assert (= (and b!748548 res!505076) b!748560))

(assert (= (and b!748560 res!505078) b!748564))

(assert (= (and b!748564 res!505077) b!748550))

(assert (= (and b!748550 res!505079) b!748559))

(assert (= (and b!748559 c!82121) b!748551))

(assert (= (and b!748559 (not c!82121)) b!748558))

(assert (= (and b!748559 res!505074) b!748546))

(assert (= (and b!748546 res!505072) b!748563))

(assert (= (and b!748563 res!505070) b!748554))

(assert (= (and b!748563 (not res!505068)) b!748555))

(assert (= (and b!748555 (not res!505065)) b!748562))

(assert (= (and b!748562 (not res!505066)) b!748561))

(assert (= (and b!748561 c!82122) b!748549))

(assert (= (and b!748561 (not c!82122)) b!748545))

(declare-fun m!698431 () Bool)

(assert (=> b!748558 m!698431))

(assert (=> b!748558 m!698431))

(declare-fun m!698433 () Bool)

(assert (=> b!748558 m!698433))

(declare-fun m!698435 () Bool)

(assert (=> b!748552 m!698435))

(assert (=> b!748563 m!698431))

(assert (=> b!748563 m!698431))

(declare-fun m!698437 () Bool)

(assert (=> b!748563 m!698437))

(declare-fun m!698439 () Bool)

(assert (=> b!748563 m!698439))

(declare-fun m!698441 () Bool)

(assert (=> b!748563 m!698441))

(assert (=> b!748556 m!698431))

(assert (=> b!748556 m!698431))

(declare-fun m!698443 () Bool)

(assert (=> b!748556 m!698443))

(assert (=> b!748564 m!698431))

(assert (=> b!748564 m!698431))

(declare-fun m!698445 () Bool)

(assert (=> b!748564 m!698445))

(assert (=> b!748564 m!698445))

(assert (=> b!748564 m!698431))

(declare-fun m!698447 () Bool)

(assert (=> b!748564 m!698447))

(declare-fun m!698449 () Bool)

(assert (=> b!748548 m!698449))

(declare-fun m!698451 () Bool)

(assert (=> b!748562 m!698451))

(declare-fun m!698453 () Bool)

(assert (=> b!748562 m!698453))

(assert (=> b!748551 m!698431))

(assert (=> b!748551 m!698431))

(declare-fun m!698455 () Bool)

(assert (=> b!748551 m!698455))

(declare-fun m!698457 () Bool)

(assert (=> b!748553 m!698457))

(declare-fun m!698459 () Bool)

(assert (=> b!748565 m!698459))

(declare-fun m!698461 () Bool)

(assert (=> b!748550 m!698461))

(assert (=> b!748561 m!698451))

(assert (=> b!748561 m!698453))

(declare-fun m!698463 () Bool)

(assert (=> b!748557 m!698463))

(declare-fun m!698465 () Bool)

(assert (=> b!748546 m!698465))

(declare-fun m!698467 () Bool)

(assert (=> b!748546 m!698467))

(assert (=> b!748546 m!698465))

(declare-fun m!698469 () Bool)

(assert (=> b!748546 m!698469))

(assert (=> b!748546 m!698451))

(declare-fun m!698471 () Bool)

(assert (=> b!748546 m!698471))

(assert (=> b!748555 m!698431))

(assert (=> b!748555 m!698431))

(assert (=> b!748555 m!698433))

(assert (=> b!748554 m!698431))

(assert (=> b!748554 m!698431))

(declare-fun m!698473 () Bool)

(assert (=> b!748554 m!698473))

(declare-fun m!698475 () Bool)

(assert (=> start!65572 m!698475))

(declare-fun m!698477 () Bool)

(assert (=> start!65572 m!698477))

(push 1)

