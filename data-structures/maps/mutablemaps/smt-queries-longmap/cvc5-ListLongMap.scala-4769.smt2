; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65692 () Bool)

(assert start!65692)

(declare-fun b!752536 () Bool)

(declare-fun res!508340 () Bool)

(declare-fun e!419780 () Bool)

(assert (=> b!752536 (=> (not res!508340) (not e!419780))))

(declare-datatypes ((array!41818 0))(
  ( (array!41819 (arr!20019 (Array (_ BitVec 32) (_ BitVec 64))) (size!20440 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41818)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41818 (_ BitVec 32)) Bool)

(assert (=> b!752536 (= res!508340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752537 () Bool)

(declare-fun res!508339 () Bool)

(assert (=> b!752537 (=> (not res!508339) (not e!419780))))

(declare-datatypes ((List!14074 0))(
  ( (Nil!14071) (Cons!14070 (h!15142 (_ BitVec 64)) (t!20397 List!14074)) )
))
(declare-fun arrayNoDuplicates!0 (array!41818 (_ BitVec 32) List!14074) Bool)

(assert (=> b!752537 (= res!508339 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14071))))

(declare-fun b!752538 () Bool)

(declare-fun res!508351 () Bool)

(declare-fun e!419781 () Bool)

(assert (=> b!752538 (=> (not res!508351) (not e!419781))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752538 (= res!508351 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20019 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752539 () Bool)

(declare-fun res!508335 () Bool)

(declare-fun e!419785 () Bool)

(assert (=> b!752539 (=> (not res!508335) (not e!419785))))

(declare-fun lt!334788 () array!41818)

(declare-fun lt!334781 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7626 0))(
  ( (MissingZero!7626 (index!32871 (_ BitVec 32))) (Found!7626 (index!32872 (_ BitVec 32))) (Intermediate!7626 (undefined!8438 Bool) (index!32873 (_ BitVec 32)) (x!63817 (_ BitVec 32))) (Undefined!7626) (MissingVacant!7626 (index!32874 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41818 (_ BitVec 32)) SeekEntryResult!7626)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41818 (_ BitVec 32)) SeekEntryResult!7626)

(assert (=> b!752539 (= res!508335 (= (seekEntryOrOpen!0 lt!334781 lt!334788 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334781 lt!334788 mask!3328)))))

(declare-fun b!752540 () Bool)

(declare-datatypes ((Unit!25906 0))(
  ( (Unit!25907) )
))
(declare-fun e!419779 () Unit!25906)

(declare-fun Unit!25908 () Unit!25906)

(assert (=> b!752540 (= e!419779 Unit!25908)))

(declare-fun b!752541 () Bool)

(declare-fun res!508343 () Bool)

(declare-fun e!419788 () Bool)

(assert (=> b!752541 (=> (not res!508343) (not e!419788))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752541 (= res!508343 (validKeyInArray!0 k!2102))))

(declare-fun res!508349 () Bool)

(assert (=> start!65692 (=> (not res!508349) (not e!419788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65692 (= res!508349 (validMask!0 mask!3328))))

(assert (=> start!65692 e!419788))

(assert (=> start!65692 true))

(declare-fun array_inv!15793 (array!41818) Bool)

(assert (=> start!65692 (array_inv!15793 a!3186)))

(declare-fun e!419784 () Bool)

(declare-fun lt!334789 () SeekEntryResult!7626)

(declare-fun b!752542 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41818 (_ BitVec 32)) SeekEntryResult!7626)

(assert (=> b!752542 (= e!419784 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20019 a!3186) j!159) a!3186 mask!3328) lt!334789))))

(declare-fun b!752543 () Bool)

(declare-fun res!508353 () Bool)

(assert (=> b!752543 (=> (not res!508353) (not e!419788))))

(assert (=> b!752543 (= res!508353 (validKeyInArray!0 (select (arr!20019 a!3186) j!159)))))

(declare-fun b!752544 () Bool)

(assert (=> b!752544 (= e!419780 e!419781)))

(declare-fun res!508337 () Bool)

(assert (=> b!752544 (=> (not res!508337) (not e!419781))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752544 (= res!508337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20019 a!3186) j!159) mask!3328) (select (arr!20019 a!3186) j!159) a!3186 mask!3328) lt!334789))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752544 (= lt!334789 (Intermediate!7626 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752545 () Bool)

(declare-fun res!508347 () Bool)

(assert (=> b!752545 (=> (not res!508347) (not e!419780))))

(assert (=> b!752545 (= res!508347 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20440 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20440 a!3186))))))

(declare-fun b!752546 () Bool)

(declare-fun lt!334780 () SeekEntryResult!7626)

(declare-fun lt!334790 () SeekEntryResult!7626)

(assert (=> b!752546 (= e!419785 (= lt!334780 lt!334790))))

(declare-fun b!752547 () Bool)

(declare-fun e!419789 () Bool)

(declare-fun e!419790 () Bool)

(assert (=> b!752547 (= e!419789 e!419790)))

(declare-fun res!508345 () Bool)

(assert (=> b!752547 (=> res!508345 e!419790)))

(declare-fun lt!334779 () SeekEntryResult!7626)

(assert (=> b!752547 (= res!508345 (not (= lt!334790 lt!334779)))))

(assert (=> b!752547 (= lt!334790 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20019 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752548 () Bool)

(declare-fun res!508352 () Bool)

(assert (=> b!752548 (=> (not res!508352) (not e!419788))))

(assert (=> b!752548 (= res!508352 (and (= (size!20440 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20440 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20440 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752549 () Bool)

(declare-fun e!419787 () Bool)

(assert (=> b!752549 (= e!419787 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20019 a!3186) j!159) a!3186 mask!3328) lt!334779))))

(declare-fun b!752550 () Bool)

(declare-fun e!419786 () Bool)

(assert (=> b!752550 (= e!419790 e!419786)))

(declare-fun res!508344 () Bool)

(assert (=> b!752550 (=> res!508344 e!419786)))

(declare-fun lt!334787 () (_ BitVec 64))

(assert (=> b!752550 (= res!508344 (= lt!334787 lt!334781))))

(assert (=> b!752550 (= lt!334787 (select (store (arr!20019 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752551 () Bool)

(assert (=> b!752551 (= e!419784 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20019 a!3186) j!159) a!3186 mask!3328) (Found!7626 j!159)))))

(declare-fun b!752552 () Bool)

(declare-fun res!508350 () Bool)

(assert (=> b!752552 (=> (not res!508350) (not e!419788))))

(declare-fun arrayContainsKey!0 (array!41818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752552 (= res!508350 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752553 () Bool)

(declare-fun Unit!25909 () Unit!25906)

(assert (=> b!752553 (= e!419779 Unit!25909)))

(assert (=> b!752553 false))

(declare-fun b!752554 () Bool)

(declare-fun e!419782 () Bool)

(assert (=> b!752554 (= e!419782 (not e!419789))))

(declare-fun res!508342 () Bool)

(assert (=> b!752554 (=> res!508342 e!419789)))

(declare-fun lt!334783 () SeekEntryResult!7626)

(assert (=> b!752554 (= res!508342 (or (not (is-Intermediate!7626 lt!334783)) (bvslt x!1131 (x!63817 lt!334783)) (not (= x!1131 (x!63817 lt!334783))) (not (= index!1321 (index!32873 lt!334783)))))))

(assert (=> b!752554 e!419787))

(declare-fun res!508348 () Bool)

(assert (=> b!752554 (=> (not res!508348) (not e!419787))))

(assert (=> b!752554 (= res!508348 (= lt!334780 lt!334779))))

(assert (=> b!752554 (= lt!334779 (Found!7626 j!159))))

(assert (=> b!752554 (= lt!334780 (seekEntryOrOpen!0 (select (arr!20019 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752554 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334785 () Unit!25906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41818 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25906)

(assert (=> b!752554 (= lt!334785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752555 () Bool)

(assert (=> b!752555 (= e!419781 e!419782)))

(declare-fun res!508336 () Bool)

(assert (=> b!752555 (=> (not res!508336) (not e!419782))))

(declare-fun lt!334782 () SeekEntryResult!7626)

(assert (=> b!752555 (= res!508336 (= lt!334782 lt!334783))))

(assert (=> b!752555 (= lt!334783 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334781 lt!334788 mask!3328))))

(assert (=> b!752555 (= lt!334782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334781 mask!3328) lt!334781 lt!334788 mask!3328))))

(assert (=> b!752555 (= lt!334781 (select (store (arr!20019 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752555 (= lt!334788 (array!41819 (store (arr!20019 a!3186) i!1173 k!2102) (size!20440 a!3186)))))

(declare-fun b!752556 () Bool)

(declare-fun res!508346 () Bool)

(assert (=> b!752556 (=> (not res!508346) (not e!419781))))

(assert (=> b!752556 (= res!508346 e!419784)))

(declare-fun c!82481 () Bool)

(assert (=> b!752556 (= c!82481 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752557 () Bool)

(assert (=> b!752557 (= e!419786 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!752557 e!419785))

(declare-fun res!508341 () Bool)

(assert (=> b!752557 (=> (not res!508341) (not e!419785))))

(assert (=> b!752557 (= res!508341 (= lt!334787 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334786 () Unit!25906)

(assert (=> b!752557 (= lt!334786 e!419779)))

(declare-fun c!82482 () Bool)

(assert (=> b!752557 (= c!82482 (= lt!334787 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752558 () Bool)

(assert (=> b!752558 (= e!419788 e!419780)))

(declare-fun res!508338 () Bool)

(assert (=> b!752558 (=> (not res!508338) (not e!419780))))

(declare-fun lt!334784 () SeekEntryResult!7626)

(assert (=> b!752558 (= res!508338 (or (= lt!334784 (MissingZero!7626 i!1173)) (= lt!334784 (MissingVacant!7626 i!1173))))))

(assert (=> b!752558 (= lt!334784 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65692 res!508349) b!752548))

(assert (= (and b!752548 res!508352) b!752543))

(assert (= (and b!752543 res!508353) b!752541))

(assert (= (and b!752541 res!508343) b!752552))

(assert (= (and b!752552 res!508350) b!752558))

(assert (= (and b!752558 res!508338) b!752536))

(assert (= (and b!752536 res!508340) b!752537))

(assert (= (and b!752537 res!508339) b!752545))

(assert (= (and b!752545 res!508347) b!752544))

(assert (= (and b!752544 res!508337) b!752538))

(assert (= (and b!752538 res!508351) b!752556))

(assert (= (and b!752556 c!82481) b!752542))

(assert (= (and b!752556 (not c!82481)) b!752551))

(assert (= (and b!752556 res!508346) b!752555))

(assert (= (and b!752555 res!508336) b!752554))

(assert (= (and b!752554 res!508348) b!752549))

(assert (= (and b!752554 (not res!508342)) b!752547))

(assert (= (and b!752547 (not res!508345)) b!752550))

(assert (= (and b!752550 (not res!508344)) b!752557))

(assert (= (and b!752557 c!82482) b!752553))

(assert (= (and b!752557 (not c!82482)) b!752540))

(assert (= (and b!752557 res!508341) b!752539))

(assert (= (and b!752539 res!508335) b!752546))

(declare-fun m!701521 () Bool)

(assert (=> b!752558 m!701521))

(declare-fun m!701523 () Bool)

(assert (=> b!752539 m!701523))

(declare-fun m!701525 () Bool)

(assert (=> b!752539 m!701525))

(declare-fun m!701527 () Bool)

(assert (=> b!752538 m!701527))

(declare-fun m!701529 () Bool)

(assert (=> b!752543 m!701529))

(assert (=> b!752543 m!701529))

(declare-fun m!701531 () Bool)

(assert (=> b!752543 m!701531))

(declare-fun m!701533 () Bool)

(assert (=> start!65692 m!701533))

(declare-fun m!701535 () Bool)

(assert (=> start!65692 m!701535))

(assert (=> b!752554 m!701529))

(assert (=> b!752554 m!701529))

(declare-fun m!701537 () Bool)

(assert (=> b!752554 m!701537))

(declare-fun m!701539 () Bool)

(assert (=> b!752554 m!701539))

(declare-fun m!701541 () Bool)

(assert (=> b!752554 m!701541))

(assert (=> b!752544 m!701529))

(assert (=> b!752544 m!701529))

(declare-fun m!701543 () Bool)

(assert (=> b!752544 m!701543))

(assert (=> b!752544 m!701543))

(assert (=> b!752544 m!701529))

(declare-fun m!701545 () Bool)

(assert (=> b!752544 m!701545))

(assert (=> b!752542 m!701529))

(assert (=> b!752542 m!701529))

(declare-fun m!701547 () Bool)

(assert (=> b!752542 m!701547))

(declare-fun m!701549 () Bool)

(assert (=> b!752555 m!701549))

(declare-fun m!701551 () Bool)

(assert (=> b!752555 m!701551))

(assert (=> b!752555 m!701549))

(declare-fun m!701553 () Bool)

(assert (=> b!752555 m!701553))

(declare-fun m!701555 () Bool)

(assert (=> b!752555 m!701555))

(declare-fun m!701557 () Bool)

(assert (=> b!752555 m!701557))

(assert (=> b!752551 m!701529))

(assert (=> b!752551 m!701529))

(declare-fun m!701559 () Bool)

(assert (=> b!752551 m!701559))

(declare-fun m!701561 () Bool)

(assert (=> b!752536 m!701561))

(declare-fun m!701563 () Bool)

(assert (=> b!752541 m!701563))

(declare-fun m!701565 () Bool)

(assert (=> b!752552 m!701565))

(assert (=> b!752547 m!701529))

(assert (=> b!752547 m!701529))

(assert (=> b!752547 m!701559))

(assert (=> b!752549 m!701529))

(assert (=> b!752549 m!701529))

(declare-fun m!701567 () Bool)

(assert (=> b!752549 m!701567))

(assert (=> b!752550 m!701553))

(declare-fun m!701569 () Bool)

(assert (=> b!752550 m!701569))

(declare-fun m!701571 () Bool)

(assert (=> b!752537 m!701571))

(push 1)

(assert (not b!752544))

(assert (not b!752547))

(assert (not b!752558))

(assert (not b!752551))

(assert (not b!752549))

(assert (not b!752537))

(assert (not b!752554))

(assert (not b!752539))

(assert (not b!752536))

(assert (not b!752541))

(assert (not b!752552))

(assert (not start!65692))

(assert (not b!752555))

(assert (not b!752543))

(assert (not b!752542))

(check-sat)

(pop 1)

(push 1)

(check-sat)

