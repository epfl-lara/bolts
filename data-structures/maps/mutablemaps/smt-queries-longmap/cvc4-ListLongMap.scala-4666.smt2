; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64934 () Bool)

(assert start!64934)

(declare-fun b!732394 () Bool)

(declare-fun res!492124 () Bool)

(declare-fun e!409856 () Bool)

(assert (=> b!732394 (=> (not res!492124) (not e!409856))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732394 (= res!492124 (validKeyInArray!0 k!2102))))

(declare-fun b!732395 () Bool)

(declare-fun e!409863 () Bool)

(declare-fun e!409854 () Bool)

(assert (=> b!732395 (= e!409863 e!409854)))

(declare-fun res!492132 () Bool)

(assert (=> b!732395 (=> (not res!492132) (not e!409854))))

(declare-datatypes ((array!41198 0))(
  ( (array!41199 (arr!19712 (Array (_ BitVec 32) (_ BitVec 64))) (size!20133 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41198)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7319 0))(
  ( (MissingZero!7319 (index!31643 (_ BitVec 32))) (Found!7319 (index!31644 (_ BitVec 32))) (Intermediate!7319 (undefined!8131 Bool) (index!31645 (_ BitVec 32)) (x!62662 (_ BitVec 32))) (Undefined!7319) (MissingVacant!7319 (index!31646 (_ BitVec 32))) )
))
(declare-fun lt!324572 () SeekEntryResult!7319)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41198 (_ BitVec 32)) SeekEntryResult!7319)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732395 (= res!492132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19712 a!3186) j!159) mask!3328) (select (arr!19712 a!3186) j!159) a!3186 mask!3328) lt!324572))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!732395 (= lt!324572 (Intermediate!7319 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732396 () Bool)

(declare-fun e!409859 () Bool)

(declare-fun e!409858 () Bool)

(assert (=> b!732396 (= e!409859 (not e!409858))))

(declare-fun res!492115 () Bool)

(assert (=> b!732396 (=> res!492115 e!409858)))

(declare-fun lt!324574 () SeekEntryResult!7319)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!732396 (= res!492115 (or (not (is-Intermediate!7319 lt!324574)) (bvsge x!1131 (x!62662 lt!324574))))))

(declare-fun e!409855 () Bool)

(assert (=> b!732396 e!409855))

(declare-fun res!492122 () Bool)

(assert (=> b!732396 (=> (not res!492122) (not e!409855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41198 (_ BitVec 32)) Bool)

(assert (=> b!732396 (= res!492122 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24956 0))(
  ( (Unit!24957) )
))
(declare-fun lt!324571 () Unit!24956)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41198 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24956)

(assert (=> b!732396 (= lt!324571 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732397 () Bool)

(declare-fun res!492129 () Bool)

(declare-fun e!409860 () Bool)

(assert (=> b!732397 (=> res!492129 e!409860)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41198 (_ BitVec 32)) SeekEntryResult!7319)

(assert (=> b!732397 (= res!492129 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19712 a!3186) j!159) a!3186 mask!3328) (Found!7319 j!159))))))

(declare-fun res!492131 () Bool)

(assert (=> start!64934 (=> (not res!492131) (not e!409856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64934 (= res!492131 (validMask!0 mask!3328))))

(assert (=> start!64934 e!409856))

(assert (=> start!64934 true))

(declare-fun array_inv!15486 (array!41198) Bool)

(assert (=> start!64934 (array_inv!15486 a!3186)))

(declare-fun lt!324573 () (_ BitVec 32))

(declare-fun b!732398 () Bool)

(assert (=> b!732398 (= e!409860 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324573 #b00000000000000000000000000000000) (bvsge lt!324573 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!732399 () Bool)

(assert (=> b!732399 (= e!409854 e!409859)))

(declare-fun res!492120 () Bool)

(assert (=> b!732399 (=> (not res!492120) (not e!409859))))

(declare-fun lt!324577 () SeekEntryResult!7319)

(assert (=> b!732399 (= res!492120 (= lt!324577 lt!324574))))

(declare-fun lt!324575 () (_ BitVec 64))

(declare-fun lt!324576 () array!41198)

(assert (=> b!732399 (= lt!324574 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324575 lt!324576 mask!3328))))

(assert (=> b!732399 (= lt!324577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324575 mask!3328) lt!324575 lt!324576 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732399 (= lt!324575 (select (store (arr!19712 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732399 (= lt!324576 (array!41199 (store (arr!19712 a!3186) i!1173 k!2102) (size!20133 a!3186)))))

(declare-fun e!409862 () Bool)

(declare-fun b!732400 () Bool)

(assert (=> b!732400 (= e!409862 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19712 a!3186) j!159) a!3186 mask!3328) lt!324572))))

(declare-fun b!732401 () Bool)

(declare-fun res!492123 () Bool)

(assert (=> b!732401 (=> (not res!492123) (not e!409854))))

(assert (=> b!732401 (= res!492123 e!409862)))

(declare-fun c!80517 () Bool)

(assert (=> b!732401 (= c!80517 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732402 () Bool)

(assert (=> b!732402 (= e!409856 e!409863)))

(declare-fun res!492127 () Bool)

(assert (=> b!732402 (=> (not res!492127) (not e!409863))))

(declare-fun lt!324578 () SeekEntryResult!7319)

(assert (=> b!732402 (= res!492127 (or (= lt!324578 (MissingZero!7319 i!1173)) (= lt!324578 (MissingVacant!7319 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41198 (_ BitVec 32)) SeekEntryResult!7319)

(assert (=> b!732402 (= lt!324578 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732403 () Bool)

(declare-fun e!409861 () Bool)

(assert (=> b!732403 (= e!409855 e!409861)))

(declare-fun res!492126 () Bool)

(assert (=> b!732403 (=> (not res!492126) (not e!409861))))

(declare-fun lt!324570 () SeekEntryResult!7319)

(assert (=> b!732403 (= res!492126 (= (seekEntryOrOpen!0 (select (arr!19712 a!3186) j!159) a!3186 mask!3328) lt!324570))))

(assert (=> b!732403 (= lt!324570 (Found!7319 j!159))))

(declare-fun b!732404 () Bool)

(declare-fun res!492125 () Bool)

(assert (=> b!732404 (=> (not res!492125) (not e!409863))))

(declare-datatypes ((List!13767 0))(
  ( (Nil!13764) (Cons!13763 (h!14829 (_ BitVec 64)) (t!20090 List!13767)) )
))
(declare-fun arrayNoDuplicates!0 (array!41198 (_ BitVec 32) List!13767) Bool)

(assert (=> b!732404 (= res!492125 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13764))))

(declare-fun b!732405 () Bool)

(declare-fun res!492116 () Bool)

(assert (=> b!732405 (=> (not res!492116) (not e!409863))))

(assert (=> b!732405 (= res!492116 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20133 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20133 a!3186))))))

(declare-fun b!732406 () Bool)

(assert (=> b!732406 (= e!409862 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19712 a!3186) j!159) a!3186 mask!3328) (Found!7319 j!159)))))

(declare-fun b!732407 () Bool)

(declare-fun res!492130 () Bool)

(assert (=> b!732407 (=> (not res!492130) (not e!409854))))

(assert (=> b!732407 (= res!492130 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19712 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732408 () Bool)

(declare-fun res!492119 () Bool)

(assert (=> b!732408 (=> (not res!492119) (not e!409856))))

(declare-fun arrayContainsKey!0 (array!41198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732408 (= res!492119 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732409 () Bool)

(declare-fun res!492118 () Bool)

(assert (=> b!732409 (=> (not res!492118) (not e!409856))))

(assert (=> b!732409 (= res!492118 (and (= (size!20133 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20133 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20133 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732410 () Bool)

(declare-fun res!492121 () Bool)

(assert (=> b!732410 (=> (not res!492121) (not e!409863))))

(assert (=> b!732410 (= res!492121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!732411 () Bool)

(assert (=> b!732411 (= e!409858 e!409860)))

(declare-fun res!492117 () Bool)

(assert (=> b!732411 (=> res!492117 e!409860)))

(assert (=> b!732411 (= res!492117 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732411 (= lt!324573 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732412 () Bool)

(assert (=> b!732412 (= e!409861 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19712 a!3186) j!159) a!3186 mask!3328) lt!324570))))

(declare-fun b!732413 () Bool)

(declare-fun res!492128 () Bool)

(assert (=> b!732413 (=> (not res!492128) (not e!409856))))

(assert (=> b!732413 (= res!492128 (validKeyInArray!0 (select (arr!19712 a!3186) j!159)))))

(assert (= (and start!64934 res!492131) b!732409))

(assert (= (and b!732409 res!492118) b!732413))

(assert (= (and b!732413 res!492128) b!732394))

(assert (= (and b!732394 res!492124) b!732408))

(assert (= (and b!732408 res!492119) b!732402))

(assert (= (and b!732402 res!492127) b!732410))

(assert (= (and b!732410 res!492121) b!732404))

(assert (= (and b!732404 res!492125) b!732405))

(assert (= (and b!732405 res!492116) b!732395))

(assert (= (and b!732395 res!492132) b!732407))

(assert (= (and b!732407 res!492130) b!732401))

(assert (= (and b!732401 c!80517) b!732400))

(assert (= (and b!732401 (not c!80517)) b!732406))

(assert (= (and b!732401 res!492123) b!732399))

(assert (= (and b!732399 res!492120) b!732396))

(assert (= (and b!732396 res!492122) b!732403))

(assert (= (and b!732403 res!492126) b!732412))

(assert (= (and b!732396 (not res!492115)) b!732411))

(assert (= (and b!732411 (not res!492117)) b!732397))

(assert (= (and b!732397 (not res!492129)) b!732398))

(declare-fun m!685537 () Bool)

(assert (=> b!732413 m!685537))

(assert (=> b!732413 m!685537))

(declare-fun m!685539 () Bool)

(assert (=> b!732413 m!685539))

(declare-fun m!685541 () Bool)

(assert (=> b!732404 m!685541))

(assert (=> b!732395 m!685537))

(assert (=> b!732395 m!685537))

(declare-fun m!685543 () Bool)

(assert (=> b!732395 m!685543))

(assert (=> b!732395 m!685543))

(assert (=> b!732395 m!685537))

(declare-fun m!685545 () Bool)

(assert (=> b!732395 m!685545))

(declare-fun m!685547 () Bool)

(assert (=> b!732411 m!685547))

(declare-fun m!685549 () Bool)

(assert (=> b!732394 m!685549))

(declare-fun m!685551 () Bool)

(assert (=> start!64934 m!685551))

(declare-fun m!685553 () Bool)

(assert (=> start!64934 m!685553))

(declare-fun m!685555 () Bool)

(assert (=> b!732396 m!685555))

(declare-fun m!685557 () Bool)

(assert (=> b!732396 m!685557))

(declare-fun m!685559 () Bool)

(assert (=> b!732399 m!685559))

(declare-fun m!685561 () Bool)

(assert (=> b!732399 m!685561))

(declare-fun m!685563 () Bool)

(assert (=> b!732399 m!685563))

(assert (=> b!732399 m!685559))

(declare-fun m!685565 () Bool)

(assert (=> b!732399 m!685565))

(declare-fun m!685567 () Bool)

(assert (=> b!732399 m!685567))

(declare-fun m!685569 () Bool)

(assert (=> b!732402 m!685569))

(assert (=> b!732412 m!685537))

(assert (=> b!732412 m!685537))

(declare-fun m!685571 () Bool)

(assert (=> b!732412 m!685571))

(assert (=> b!732397 m!685537))

(assert (=> b!732397 m!685537))

(declare-fun m!685573 () Bool)

(assert (=> b!732397 m!685573))

(declare-fun m!685575 () Bool)

(assert (=> b!732408 m!685575))

(assert (=> b!732403 m!685537))

(assert (=> b!732403 m!685537))

(declare-fun m!685577 () Bool)

(assert (=> b!732403 m!685577))

(declare-fun m!685579 () Bool)

(assert (=> b!732407 m!685579))

(assert (=> b!732400 m!685537))

(assert (=> b!732400 m!685537))

(declare-fun m!685581 () Bool)

(assert (=> b!732400 m!685581))

(declare-fun m!685583 () Bool)

(assert (=> b!732410 m!685583))

(assert (=> b!732406 m!685537))

(assert (=> b!732406 m!685537))

(assert (=> b!732406 m!685573))

(push 1)

(assert (not b!732394))

(assert (not b!732399))

(assert (not b!732406))

(assert (not b!732396))

(assert (not b!732403))

(assert (not b!732410))

(assert (not b!732404))

(assert (not b!732408))

(assert (not b!732402))

(assert (not b!732412))

(assert (not b!732395))

(assert (not b!732400))

(assert (not b!732413))

(assert (not b!732411))

(assert (not b!732397))

(assert (not start!64934))

(check-sat)

(pop 1)

(push 1)

(check-sat)

