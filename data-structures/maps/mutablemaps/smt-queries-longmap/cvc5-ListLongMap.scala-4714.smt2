; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65362 () Bool)

(assert start!65362)

(declare-fun b!742464 () Bool)

(declare-fun e!414950 () Bool)

(declare-fun e!414956 () Bool)

(assert (=> b!742464 (= e!414950 e!414956)))

(declare-fun res!499790 () Bool)

(assert (=> b!742464 (=> (not res!499790) (not e!414956))))

(declare-datatypes ((SeekEntryResult!7461 0))(
  ( (MissingZero!7461 (index!32211 (_ BitVec 32))) (Found!7461 (index!32212 (_ BitVec 32))) (Intermediate!7461 (undefined!8273 Bool) (index!32213 (_ BitVec 32)) (x!63212 (_ BitVec 32))) (Undefined!7461) (MissingVacant!7461 (index!32214 (_ BitVec 32))) )
))
(declare-fun lt!329855 () SeekEntryResult!7461)

(declare-fun lt!329853 () SeekEntryResult!7461)

(assert (=> b!742464 (= res!499790 (= lt!329855 lt!329853))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!41488 0))(
  ( (array!41489 (arr!19854 (Array (_ BitVec 32) (_ BitVec 64))) (size!20275 (_ BitVec 32))) )
))
(declare-fun lt!329852 () array!41488)

(declare-fun lt!329856 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41488 (_ BitVec 32)) SeekEntryResult!7461)

(assert (=> b!742464 (= lt!329853 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329856 lt!329852 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742464 (= lt!329855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329856 mask!3328) lt!329856 lt!329852 mask!3328))))

(declare-fun a!3186 () array!41488)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!742464 (= lt!329856 (select (store (arr!19854 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742464 (= lt!329852 (array!41489 (store (arr!19854 a!3186) i!1173 k!2102) (size!20275 a!3186)))))

(declare-fun b!742465 () Bool)

(declare-fun e!414953 () Bool)

(declare-fun e!414957 () Bool)

(assert (=> b!742465 (= e!414953 e!414957)))

(declare-fun res!499788 () Bool)

(assert (=> b!742465 (=> (not res!499788) (not e!414957))))

(declare-fun lt!329858 () SeekEntryResult!7461)

(assert (=> b!742465 (= res!499788 (or (= lt!329858 (MissingZero!7461 i!1173)) (= lt!329858 (MissingVacant!7461 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41488 (_ BitVec 32)) SeekEntryResult!7461)

(assert (=> b!742465 (= lt!329858 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742466 () Bool)

(declare-fun res!499791 () Bool)

(assert (=> b!742466 (=> (not res!499791) (not e!414957))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742466 (= res!499791 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20275 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20275 a!3186))))))

(declare-fun b!742467 () Bool)

(declare-fun res!499785 () Bool)

(assert (=> b!742467 (=> (not res!499785) (not e!414957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41488 (_ BitVec 32)) Bool)

(assert (=> b!742467 (= res!499785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!499787 () Bool)

(assert (=> start!65362 (=> (not res!499787) (not e!414953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65362 (= res!499787 (validMask!0 mask!3328))))

(assert (=> start!65362 e!414953))

(assert (=> start!65362 true))

(declare-fun array_inv!15628 (array!41488) Bool)

(assert (=> start!65362 (array_inv!15628 a!3186)))

(declare-fun b!742468 () Bool)

(declare-fun e!414949 () Bool)

(declare-fun e!414954 () Bool)

(assert (=> b!742468 (= e!414949 e!414954)))

(declare-fun res!499792 () Bool)

(assert (=> b!742468 (=> (not res!499792) (not e!414954))))

(declare-fun lt!329854 () SeekEntryResult!7461)

(assert (=> b!742468 (= res!499792 (= (seekEntryOrOpen!0 (select (arr!19854 a!3186) j!159) a!3186 mask!3328) lt!329854))))

(assert (=> b!742468 (= lt!329854 (Found!7461 j!159))))

(declare-fun b!742469 () Bool)

(declare-fun e!414955 () Bool)

(assert (=> b!742469 (= e!414955 true)))

(declare-fun lt!329851 () SeekEntryResult!7461)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41488 (_ BitVec 32)) SeekEntryResult!7461)

(assert (=> b!742469 (= lt!329851 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19854 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!742470 () Bool)

(assert (=> b!742470 (= e!414956 (not e!414955))))

(declare-fun res!499781 () Bool)

(assert (=> b!742470 (=> res!499781 e!414955)))

(assert (=> b!742470 (= res!499781 (or (not (is-Intermediate!7461 lt!329853)) (bvslt x!1131 (x!63212 lt!329853)) (not (= x!1131 (x!63212 lt!329853))) (not (= index!1321 (index!32213 lt!329853)))))))

(assert (=> b!742470 e!414949))

(declare-fun res!499782 () Bool)

(assert (=> b!742470 (=> (not res!499782) (not e!414949))))

(assert (=> b!742470 (= res!499782 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25402 0))(
  ( (Unit!25403) )
))
(declare-fun lt!329857 () Unit!25402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25402)

(assert (=> b!742470 (= lt!329857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742471 () Bool)

(declare-fun res!499794 () Bool)

(assert (=> b!742471 (=> (not res!499794) (not e!414953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742471 (= res!499794 (validKeyInArray!0 k!2102))))

(declare-fun b!742472 () Bool)

(declare-fun res!499784 () Bool)

(assert (=> b!742472 (=> (not res!499784) (not e!414950))))

(declare-fun e!414951 () Bool)

(assert (=> b!742472 (= res!499784 e!414951)))

(declare-fun c!81723 () Bool)

(assert (=> b!742472 (= c!81723 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742473 () Bool)

(declare-fun res!499793 () Bool)

(assert (=> b!742473 (=> (not res!499793) (not e!414953))))

(declare-fun arrayContainsKey!0 (array!41488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742473 (= res!499793 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742474 () Bool)

(declare-fun res!499783 () Bool)

(assert (=> b!742474 (=> (not res!499783) (not e!414950))))

(assert (=> b!742474 (= res!499783 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19854 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!329850 () SeekEntryResult!7461)

(declare-fun b!742475 () Bool)

(assert (=> b!742475 (= e!414951 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19854 a!3186) j!159) a!3186 mask!3328) lt!329850))))

(declare-fun b!742476 () Bool)

(declare-fun res!499789 () Bool)

(assert (=> b!742476 (=> (not res!499789) (not e!414953))))

(assert (=> b!742476 (= res!499789 (and (= (size!20275 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20275 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20275 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742477 () Bool)

(declare-fun res!499780 () Bool)

(assert (=> b!742477 (=> (not res!499780) (not e!414953))))

(assert (=> b!742477 (= res!499780 (validKeyInArray!0 (select (arr!19854 a!3186) j!159)))))

(declare-fun b!742478 () Bool)

(assert (=> b!742478 (= e!414954 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19854 a!3186) j!159) a!3186 mask!3328) lt!329854))))

(declare-fun b!742479 () Bool)

(assert (=> b!742479 (= e!414957 e!414950)))

(declare-fun res!499779 () Bool)

(assert (=> b!742479 (=> (not res!499779) (not e!414950))))

(assert (=> b!742479 (= res!499779 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19854 a!3186) j!159) mask!3328) (select (arr!19854 a!3186) j!159) a!3186 mask!3328) lt!329850))))

(assert (=> b!742479 (= lt!329850 (Intermediate!7461 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742480 () Bool)

(assert (=> b!742480 (= e!414951 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19854 a!3186) j!159) a!3186 mask!3328) (Found!7461 j!159)))))

(declare-fun b!742481 () Bool)

(declare-fun res!499786 () Bool)

(assert (=> b!742481 (=> (not res!499786) (not e!414957))))

(declare-datatypes ((List!13909 0))(
  ( (Nil!13906) (Cons!13905 (h!14977 (_ BitVec 64)) (t!20232 List!13909)) )
))
(declare-fun arrayNoDuplicates!0 (array!41488 (_ BitVec 32) List!13909) Bool)

(assert (=> b!742481 (= res!499786 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13906))))

(assert (= (and start!65362 res!499787) b!742476))

(assert (= (and b!742476 res!499789) b!742477))

(assert (= (and b!742477 res!499780) b!742471))

(assert (= (and b!742471 res!499794) b!742473))

(assert (= (and b!742473 res!499793) b!742465))

(assert (= (and b!742465 res!499788) b!742467))

(assert (= (and b!742467 res!499785) b!742481))

(assert (= (and b!742481 res!499786) b!742466))

(assert (= (and b!742466 res!499791) b!742479))

(assert (= (and b!742479 res!499779) b!742474))

(assert (= (and b!742474 res!499783) b!742472))

(assert (= (and b!742472 c!81723) b!742475))

(assert (= (and b!742472 (not c!81723)) b!742480))

(assert (= (and b!742472 res!499784) b!742464))

(assert (= (and b!742464 res!499790) b!742470))

(assert (= (and b!742470 res!499782) b!742468))

(assert (= (and b!742468 res!499792) b!742478))

(assert (= (and b!742470 (not res!499781)) b!742469))

(declare-fun m!693403 () Bool)

(assert (=> b!742477 m!693403))

(assert (=> b!742477 m!693403))

(declare-fun m!693405 () Bool)

(assert (=> b!742477 m!693405))

(assert (=> b!742475 m!693403))

(assert (=> b!742475 m!693403))

(declare-fun m!693407 () Bool)

(assert (=> b!742475 m!693407))

(declare-fun m!693409 () Bool)

(assert (=> b!742465 m!693409))

(declare-fun m!693411 () Bool)

(assert (=> b!742464 m!693411))

(declare-fun m!693413 () Bool)

(assert (=> b!742464 m!693413))

(assert (=> b!742464 m!693411))

(declare-fun m!693415 () Bool)

(assert (=> b!742464 m!693415))

(declare-fun m!693417 () Bool)

(assert (=> b!742464 m!693417))

(declare-fun m!693419 () Bool)

(assert (=> b!742464 m!693419))

(declare-fun m!693421 () Bool)

(assert (=> b!742467 m!693421))

(declare-fun m!693423 () Bool)

(assert (=> b!742481 m!693423))

(assert (=> b!742479 m!693403))

(assert (=> b!742479 m!693403))

(declare-fun m!693425 () Bool)

(assert (=> b!742479 m!693425))

(assert (=> b!742479 m!693425))

(assert (=> b!742479 m!693403))

(declare-fun m!693427 () Bool)

(assert (=> b!742479 m!693427))

(assert (=> b!742480 m!693403))

(assert (=> b!742480 m!693403))

(declare-fun m!693429 () Bool)

(assert (=> b!742480 m!693429))

(declare-fun m!693431 () Bool)

(assert (=> b!742470 m!693431))

(declare-fun m!693433 () Bool)

(assert (=> b!742470 m!693433))

(assert (=> b!742468 m!693403))

(assert (=> b!742468 m!693403))

(declare-fun m!693435 () Bool)

(assert (=> b!742468 m!693435))

(declare-fun m!693437 () Bool)

(assert (=> start!65362 m!693437))

(declare-fun m!693439 () Bool)

(assert (=> start!65362 m!693439))

(declare-fun m!693441 () Bool)

(assert (=> b!742473 m!693441))

(assert (=> b!742469 m!693403))

(assert (=> b!742469 m!693403))

(assert (=> b!742469 m!693429))

(assert (=> b!742478 m!693403))

(assert (=> b!742478 m!693403))

(declare-fun m!693443 () Bool)

(assert (=> b!742478 m!693443))

(declare-fun m!693445 () Bool)

(assert (=> b!742474 m!693445))

(declare-fun m!693447 () Bool)

(assert (=> b!742471 m!693447))

(push 1)

