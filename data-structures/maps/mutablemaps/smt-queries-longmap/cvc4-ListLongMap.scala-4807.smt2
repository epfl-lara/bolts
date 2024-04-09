; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66138 () Bool)

(assert start!66138)

(declare-datatypes ((array!42059 0))(
  ( (array!42060 (arr!20135 (Array (_ BitVec 32) (_ BitVec 64))) (size!20556 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42059)

(declare-fun e!424559 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!761522 () Bool)

(declare-datatypes ((SeekEntryResult!7742 0))(
  ( (MissingZero!7742 (index!33335 (_ BitVec 32))) (Found!7742 (index!33336 (_ BitVec 32))) (Intermediate!7742 (undefined!8554 Bool) (index!33337 (_ BitVec 32)) (x!64266 (_ BitVec 32))) (Undefined!7742) (MissingVacant!7742 (index!33338 (_ BitVec 32))) )
))
(declare-fun lt!339274 () SeekEntryResult!7742)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42059 (_ BitVec 32)) SeekEntryResult!7742)

(assert (=> b!761522 (= e!424559 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339274))))

(declare-fun b!761523 () Bool)

(declare-fun e!424560 () Bool)

(declare-fun e!424557 () Bool)

(assert (=> b!761523 (= e!424560 e!424557)))

(declare-fun res!515098 () Bool)

(assert (=> b!761523 (=> (not res!515098) (not e!424557))))

(declare-fun lt!339273 () SeekEntryResult!7742)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42059 (_ BitVec 32)) SeekEntryResult!7742)

(assert (=> b!761523 (= res!515098 (= (seekEntryOrOpen!0 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339273))))

(assert (=> b!761523 (= lt!339273 (Found!7742 j!159))))

(declare-fun res!515106 () Bool)

(declare-fun e!424556 () Bool)

(assert (=> start!66138 (=> (not res!515106) (not e!424556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66138 (= res!515106 (validMask!0 mask!3328))))

(assert (=> start!66138 e!424556))

(assert (=> start!66138 true))

(declare-fun array_inv!15909 (array!42059) Bool)

(assert (=> start!66138 (array_inv!15909 a!3186)))

(declare-fun b!761524 () Bool)

(declare-fun res!515099 () Bool)

(declare-fun e!424554 () Bool)

(assert (=> b!761524 (=> res!515099 e!424554)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42059 (_ BitVec 32)) SeekEntryResult!7742)

(assert (=> b!761524 (= res!515099 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) (Found!7742 j!159))))))

(declare-fun b!761525 () Bool)

(declare-fun res!515110 () Bool)

(declare-fun e!424562 () Bool)

(assert (=> b!761525 (=> (not res!515110) (not e!424562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42059 (_ BitVec 32)) Bool)

(assert (=> b!761525 (= res!515110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!339277 () SeekEntryResult!7742)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!339271 () (_ BitVec 64))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun b!761526 () Bool)

(assert (=> b!761526 (= e!424554 (or (not (= (select (store (arr!20135 a!3186) i!1173 k!2102) index!1321) lt!339271)) (not (undefined!8554 lt!339277))))))

(declare-fun b!761527 () Bool)

(declare-fun res!515101 () Bool)

(assert (=> b!761527 (=> (not res!515101) (not e!424562))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!761527 (= res!515101 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20556 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20556 a!3186))))))

(declare-fun b!761528 () Bool)

(declare-fun res!515105 () Bool)

(assert (=> b!761528 (=> (not res!515105) (not e!424562))))

(declare-datatypes ((List!14190 0))(
  ( (Nil!14187) (Cons!14186 (h!15267 (_ BitVec 64)) (t!20513 List!14190)) )
))
(declare-fun arrayNoDuplicates!0 (array!42059 (_ BitVec 32) List!14190) Bool)

(assert (=> b!761528 (= res!515105 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14187))))

(declare-fun b!761529 () Bool)

(declare-fun res!515109 () Bool)

(assert (=> b!761529 (=> (not res!515109) (not e!424556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!761529 (= res!515109 (validKeyInArray!0 (select (arr!20135 a!3186) j!159)))))

(declare-fun b!761530 () Bool)

(declare-fun e!424555 () Bool)

(assert (=> b!761530 (= e!424562 e!424555)))

(declare-fun res!515108 () Bool)

(assert (=> b!761530 (=> (not res!515108) (not e!424555))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761530 (= res!515108 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339274))))

(assert (=> b!761530 (= lt!339274 (Intermediate!7742 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!761531 () Bool)

(declare-fun res!515096 () Bool)

(assert (=> b!761531 (=> (not res!515096) (not e!424556))))

(assert (=> b!761531 (= res!515096 (and (= (size!20556 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20556 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20556 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!761532 () Bool)

(declare-fun e!424558 () Bool)

(assert (=> b!761532 (= e!424558 (not e!424554))))

(declare-fun res!515097 () Bool)

(assert (=> b!761532 (=> res!515097 e!424554)))

(assert (=> b!761532 (= res!515097 (or (not (is-Intermediate!7742 lt!339277)) (bvslt x!1131 (x!64266 lt!339277)) (not (= x!1131 (x!64266 lt!339277))) (not (= index!1321 (index!33337 lt!339277)))))))

(assert (=> b!761532 e!424560))

(declare-fun res!515112 () Bool)

(assert (=> b!761532 (=> (not res!515112) (not e!424560))))

(assert (=> b!761532 (= res!515112 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26324 0))(
  ( (Unit!26325) )
))
(declare-fun lt!339272 () Unit!26324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26324)

(assert (=> b!761532 (= lt!339272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!761533 () Bool)

(assert (=> b!761533 (= e!424559 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) (Found!7742 j!159)))))

(declare-fun b!761534 () Bool)

(assert (=> b!761534 (= e!424556 e!424562)))

(declare-fun res!515103 () Bool)

(assert (=> b!761534 (=> (not res!515103) (not e!424562))))

(declare-fun lt!339275 () SeekEntryResult!7742)

(assert (=> b!761534 (= res!515103 (or (= lt!339275 (MissingZero!7742 i!1173)) (= lt!339275 (MissingVacant!7742 i!1173))))))

(assert (=> b!761534 (= lt!339275 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!761535 () Bool)

(assert (=> b!761535 (= e!424555 e!424558)))

(declare-fun res!515102 () Bool)

(assert (=> b!761535 (=> (not res!515102) (not e!424558))))

(declare-fun lt!339270 () SeekEntryResult!7742)

(assert (=> b!761535 (= res!515102 (= lt!339270 lt!339277))))

(declare-fun lt!339276 () array!42059)

(assert (=> b!761535 (= lt!339277 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339271 lt!339276 mask!3328))))

(assert (=> b!761535 (= lt!339270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339271 mask!3328) lt!339271 lt!339276 mask!3328))))

(assert (=> b!761535 (= lt!339271 (select (store (arr!20135 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!761535 (= lt!339276 (array!42060 (store (arr!20135 a!3186) i!1173 k!2102) (size!20556 a!3186)))))

(declare-fun b!761536 () Bool)

(declare-fun res!515111 () Bool)

(assert (=> b!761536 (=> (not res!515111) (not e!424555))))

(assert (=> b!761536 (= res!515111 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20135 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761537 () Bool)

(declare-fun res!515107 () Bool)

(assert (=> b!761537 (=> (not res!515107) (not e!424556))))

(assert (=> b!761537 (= res!515107 (validKeyInArray!0 k!2102))))

(declare-fun b!761538 () Bool)

(declare-fun res!515100 () Bool)

(assert (=> b!761538 (=> (not res!515100) (not e!424556))))

(declare-fun arrayContainsKey!0 (array!42059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!761538 (= res!515100 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!761539 () Bool)

(assert (=> b!761539 (= e!424557 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339273))))

(declare-fun b!761540 () Bool)

(declare-fun res!515104 () Bool)

(assert (=> b!761540 (=> (not res!515104) (not e!424555))))

(assert (=> b!761540 (= res!515104 e!424559)))

(declare-fun c!83598 () Bool)

(assert (=> b!761540 (= c!83598 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!66138 res!515106) b!761531))

(assert (= (and b!761531 res!515096) b!761529))

(assert (= (and b!761529 res!515109) b!761537))

(assert (= (and b!761537 res!515107) b!761538))

(assert (= (and b!761538 res!515100) b!761534))

(assert (= (and b!761534 res!515103) b!761525))

(assert (= (and b!761525 res!515110) b!761528))

(assert (= (and b!761528 res!515105) b!761527))

(assert (= (and b!761527 res!515101) b!761530))

(assert (= (and b!761530 res!515108) b!761536))

(assert (= (and b!761536 res!515111) b!761540))

(assert (= (and b!761540 c!83598) b!761522))

(assert (= (and b!761540 (not c!83598)) b!761533))

(assert (= (and b!761540 res!515104) b!761535))

(assert (= (and b!761535 res!515102) b!761532))

(assert (= (and b!761532 res!515112) b!761523))

(assert (= (and b!761523 res!515098) b!761539))

(assert (= (and b!761532 (not res!515097)) b!761524))

(assert (= (and b!761524 (not res!515099)) b!761526))

(declare-fun m!708533 () Bool)

(assert (=> b!761526 m!708533))

(declare-fun m!708535 () Bool)

(assert (=> b!761526 m!708535))

(declare-fun m!708537 () Bool)

(assert (=> b!761536 m!708537))

(declare-fun m!708539 () Bool)

(assert (=> b!761528 m!708539))

(declare-fun m!708541 () Bool)

(assert (=> b!761530 m!708541))

(assert (=> b!761530 m!708541))

(declare-fun m!708543 () Bool)

(assert (=> b!761530 m!708543))

(assert (=> b!761530 m!708543))

(assert (=> b!761530 m!708541))

(declare-fun m!708545 () Bool)

(assert (=> b!761530 m!708545))

(assert (=> b!761524 m!708541))

(assert (=> b!761524 m!708541))

(declare-fun m!708547 () Bool)

(assert (=> b!761524 m!708547))

(assert (=> b!761522 m!708541))

(assert (=> b!761522 m!708541))

(declare-fun m!708549 () Bool)

(assert (=> b!761522 m!708549))

(declare-fun m!708551 () Bool)

(assert (=> b!761537 m!708551))

(declare-fun m!708553 () Bool)

(assert (=> b!761535 m!708553))

(assert (=> b!761535 m!708533))

(declare-fun m!708555 () Bool)

(assert (=> b!761535 m!708555))

(declare-fun m!708557 () Bool)

(assert (=> b!761535 m!708557))

(assert (=> b!761535 m!708555))

(declare-fun m!708559 () Bool)

(assert (=> b!761535 m!708559))

(declare-fun m!708561 () Bool)

(assert (=> b!761525 m!708561))

(declare-fun m!708563 () Bool)

(assert (=> b!761538 m!708563))

(assert (=> b!761533 m!708541))

(assert (=> b!761533 m!708541))

(assert (=> b!761533 m!708547))

(assert (=> b!761523 m!708541))

(assert (=> b!761523 m!708541))

(declare-fun m!708565 () Bool)

(assert (=> b!761523 m!708565))

(declare-fun m!708567 () Bool)

(assert (=> b!761532 m!708567))

(declare-fun m!708569 () Bool)

(assert (=> b!761532 m!708569))

(assert (=> b!761539 m!708541))

(assert (=> b!761539 m!708541))

(declare-fun m!708571 () Bool)

(assert (=> b!761539 m!708571))

(declare-fun m!708573 () Bool)

(assert (=> b!761534 m!708573))

(declare-fun m!708575 () Bool)

(assert (=> start!66138 m!708575))

(declare-fun m!708577 () Bool)

(assert (=> start!66138 m!708577))

(assert (=> b!761529 m!708541))

(assert (=> b!761529 m!708541))

(declare-fun m!708579 () Bool)

(assert (=> b!761529 m!708579))

(push 1)

(assert (not b!761524))

(assert (not b!761523))

(assert (not b!761534))

(assert (not b!761533))

(assert (not b!761525))

(assert (not b!761529))

(assert (not b!761528))

(assert (not b!761537))

(assert (not b!761532))

(assert (not b!761535))

(assert (not start!66138))

(assert (not b!761539))

(assert (not b!761522))

(assert (not b!761538))

(assert (not b!761530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!761656 () Bool)

(declare-fun lt!339321 () SeekEntryResult!7742)

(assert (=> b!761656 (and (bvsge (index!33337 lt!339321) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339321) (size!20556 a!3186)))))

(declare-fun e!424633 () Bool)

(assert (=> b!761656 (= e!424633 (= (select (arr!20135 a!3186) (index!33337 lt!339321)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761657 () Bool)

(declare-fun e!424637 () Bool)

(assert (=> b!761657 (= e!424637 (bvsge (x!64266 lt!339321) #b01111111111111111111111111111110))))

(declare-fun b!761658 () Bool)

(declare-fun e!424635 () SeekEntryResult!7742)

(assert (=> b!761658 (= e!424635 (Intermediate!7742 false (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!100749 () Bool)

(assert (=> d!100749 e!424637))

(declare-fun c!83644 () Bool)

(assert (=> d!100749 (= c!83644 (and (is-Intermediate!7742 lt!339321) (undefined!8554 lt!339321)))))

(declare-fun e!424634 () SeekEntryResult!7742)

(assert (=> d!100749 (= lt!339321 e!424634)))

(declare-fun c!83643 () Bool)

(assert (=> d!100749 (= c!83643 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339320 () (_ BitVec 64))

(assert (=> d!100749 (= lt!339320 (select (arr!20135 a!3186) (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328)))))

(assert (=> d!100749 (validMask!0 mask!3328)))

(assert (=> d!100749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339321)))

(declare-fun b!761659 () Bool)

(assert (=> b!761659 (= e!424634 (Intermediate!7742 true (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761660 () Bool)

(declare-fun e!424636 () Bool)

(assert (=> b!761660 (= e!424637 e!424636)))

(declare-fun res!515142 () Bool)

(assert (=> b!761660 (= res!515142 (and (is-Intermediate!7742 lt!339321) (not (undefined!8554 lt!339321)) (bvslt (x!64266 lt!339321) #b01111111111111111111111111111110) (bvsge (x!64266 lt!339321) #b00000000000000000000000000000000) (bvsge (x!64266 lt!339321) #b00000000000000000000000000000000)))))

(assert (=> b!761660 (=> (not res!515142) (not e!424636))))

(declare-fun b!761661 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!761661 (= e!424635 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20135 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761662 () Bool)

(assert (=> b!761662 (and (bvsge (index!33337 lt!339321) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339321) (size!20556 a!3186)))))

(declare-fun res!515143 () Bool)

(assert (=> b!761662 (= res!515143 (= (select (arr!20135 a!3186) (index!33337 lt!339321)) (select (arr!20135 a!3186) j!159)))))

(assert (=> b!761662 (=> res!515143 e!424633)))

(assert (=> b!761662 (= e!424636 e!424633)))

(declare-fun b!761663 () Bool)

(assert (=> b!761663 (= e!424634 e!424635)))

(declare-fun c!83642 () Bool)

(assert (=> b!761663 (= c!83642 (or (= lt!339320 (select (arr!20135 a!3186) j!159)) (= (bvadd lt!339320 lt!339320) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761664 () Bool)

(assert (=> b!761664 (and (bvsge (index!33337 lt!339321) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339321) (size!20556 a!3186)))))

(declare-fun res!515144 () Bool)

(assert (=> b!761664 (= res!515144 (= (select (arr!20135 a!3186) (index!33337 lt!339321)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761664 (=> res!515144 e!424633)))

(assert (= (and d!100749 c!83643) b!761659))

(assert (= (and d!100749 (not c!83643)) b!761663))

(assert (= (and b!761663 c!83642) b!761658))

(assert (= (and b!761663 (not c!83642)) b!761661))

(assert (= (and d!100749 c!83644) b!761657))

(assert (= (and d!100749 (not c!83644)) b!761660))

(assert (= (and b!761660 res!515142) b!761662))

(assert (= (and b!761662 (not res!515143)) b!761664))

(assert (= (and b!761664 (not res!515144)) b!761656))

(declare-fun m!708645 () Bool)

(assert (=> b!761656 m!708645))

(assert (=> d!100749 m!708543))

(declare-fun m!708647 () Bool)

(assert (=> d!100749 m!708647))

(assert (=> d!100749 m!708575))

(assert (=> b!761664 m!708645))

(assert (=> b!761662 m!708645))

(assert (=> b!761661 m!708543))

(declare-fun m!708649 () Bool)

(assert (=> b!761661 m!708649))

(assert (=> b!761661 m!708649))

(assert (=> b!761661 m!708541))

(declare-fun m!708651 () Bool)

(assert (=> b!761661 m!708651))

(assert (=> b!761530 d!100749))

(declare-fun d!100763 () Bool)

(declare-fun lt!339333 () (_ BitVec 32))

(declare-fun lt!339332 () (_ BitVec 32))

(assert (=> d!100763 (= lt!339333 (bvmul (bvxor lt!339332 (bvlshr lt!339332 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100763 (= lt!339332 ((_ extract 31 0) (bvand (bvxor (select (arr!20135 a!3186) j!159) (bvlshr (select (arr!20135 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100763 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!515145 (let ((h!15268 ((_ extract 31 0) (bvand (bvxor (select (arr!20135 a!3186) j!159) (bvlshr (select (arr!20135 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64271 (bvmul (bvxor h!15268 (bvlshr h!15268 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64271 (bvlshr x!64271 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!515145 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!515145 #b00000000000000000000000000000000))))))

(assert (=> d!100763 (= (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) (bvand (bvxor lt!339333 (bvlshr lt!339333 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!761530 d!100763))

(declare-fun b!761718 () Bool)

(declare-fun e!424671 () Bool)

(declare-fun e!424669 () Bool)

(assert (=> b!761718 (= e!424671 e!424669)))

(declare-fun c!83662 () Bool)

(assert (=> b!761718 (= c!83662 (validKeyInArray!0 (select (arr!20135 a!3186) j!159)))))

(declare-fun call!34990 () Bool)

(declare-fun bm!34987 () Bool)

(assert (=> bm!34987 (= call!34990 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761720 () Bool)

(assert (=> b!761720 (= e!424669 call!34990)))

(declare-fun b!761721 () Bool)

(declare-fun e!424670 () Bool)

(assert (=> b!761721 (= e!424669 e!424670)))

(declare-fun lt!339345 () (_ BitVec 64))

(assert (=> b!761721 (= lt!339345 (select (arr!20135 a!3186) j!159))))

(declare-fun lt!339346 () Unit!26324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42059 (_ BitVec 64) (_ BitVec 32)) Unit!26324)

(assert (=> b!761721 (= lt!339346 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339345 j!159))))

(assert (=> b!761721 (arrayContainsKey!0 a!3186 lt!339345 #b00000000000000000000000000000000)))

(declare-fun lt!339344 () Unit!26324)

(assert (=> b!761721 (= lt!339344 lt!339346)))

(declare-fun res!515165 () Bool)

(assert (=> b!761721 (= res!515165 (= (seekEntryOrOpen!0 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) (Found!7742 j!159)))))

(assert (=> b!761721 (=> (not res!515165) (not e!424670))))

(declare-fun d!100765 () Bool)

(declare-fun res!515166 () Bool)

(assert (=> d!100765 (=> res!515166 e!424671)))

(assert (=> d!100765 (= res!515166 (bvsge j!159 (size!20556 a!3186)))))

(assert (=> d!100765 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424671)))

(declare-fun b!761719 () Bool)

(assert (=> b!761719 (= e!424670 call!34990)))

(assert (= (and d!100765 (not res!515166)) b!761718))

(assert (= (and b!761718 c!83662) b!761721))

(assert (= (and b!761718 (not c!83662)) b!761720))

(assert (= (and b!761721 res!515165) b!761719))

(assert (= (or b!761719 b!761720) bm!34987))

(assert (=> b!761718 m!708541))

(assert (=> b!761718 m!708541))

(assert (=> b!761718 m!708579))

(declare-fun m!708657 () Bool)

(assert (=> bm!34987 m!708657))

(assert (=> b!761721 m!708541))

(declare-fun m!708659 () Bool)

(assert (=> b!761721 m!708659))

(declare-fun m!708661 () Bool)

(assert (=> b!761721 m!708661))

(assert (=> b!761721 m!708541))

(assert (=> b!761721 m!708565))

(assert (=> b!761532 d!100765))

(declare-fun d!100769 () Bool)

(assert (=> d!100769 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339351 () Unit!26324)

(declare-fun choose!38 (array!42059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26324)

(assert (=> d!100769 (= lt!339351 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100769 (validMask!0 mask!3328)))

(assert (=> d!100769 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339351)))

(declare-fun bs!21403 () Bool)

(assert (= bs!21403 d!100769))

(assert (=> bs!21403 m!708567))

(declare-fun m!708671 () Bool)

(assert (=> bs!21403 m!708671))

(assert (=> bs!21403 m!708575))

(assert (=> b!761532 d!100769))

(declare-fun b!761733 () Bool)

(declare-fun lt!339353 () SeekEntryResult!7742)

(assert (=> b!761733 (and (bvsge (index!33337 lt!339353) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339353) (size!20556 a!3186)))))

(declare-fun e!424679 () Bool)

(assert (=> b!761733 (= e!424679 (= (select (arr!20135 a!3186) (index!33337 lt!339353)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761734 () Bool)

(declare-fun e!424683 () Bool)

(assert (=> b!761734 (= e!424683 (bvsge (x!64266 lt!339353) #b01111111111111111111111111111110))))

(declare-fun b!761735 () Bool)

(declare-fun e!424681 () SeekEntryResult!7742)

(assert (=> b!761735 (= e!424681 (Intermediate!7742 false index!1321 x!1131))))

(declare-fun d!100777 () Bool)

(assert (=> d!100777 e!424683))

(declare-fun c!83668 () Bool)

(assert (=> d!100777 (= c!83668 (and (is-Intermediate!7742 lt!339353) (undefined!8554 lt!339353)))))

(declare-fun e!424680 () SeekEntryResult!7742)

(assert (=> d!100777 (= lt!339353 e!424680)))

(declare-fun c!83667 () Bool)

(assert (=> d!100777 (= c!83667 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339352 () (_ BitVec 64))

(assert (=> d!100777 (= lt!339352 (select (arr!20135 a!3186) index!1321))))

(assert (=> d!100777 (validMask!0 mask!3328)))

(assert (=> d!100777 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339353)))

(declare-fun b!761736 () Bool)

(assert (=> b!761736 (= e!424680 (Intermediate!7742 true index!1321 x!1131))))

(declare-fun b!761737 () Bool)

(declare-fun e!424682 () Bool)

(assert (=> b!761737 (= e!424683 e!424682)))

(declare-fun res!515173 () Bool)

(assert (=> b!761737 (= res!515173 (and (is-Intermediate!7742 lt!339353) (not (undefined!8554 lt!339353)) (bvslt (x!64266 lt!339353) #b01111111111111111111111111111110) (bvsge (x!64266 lt!339353) #b00000000000000000000000000000000) (bvsge (x!64266 lt!339353) x!1131)))))

(assert (=> b!761737 (=> (not res!515173) (not e!424682))))

(declare-fun b!761738 () Bool)

(assert (=> b!761738 (= e!424681 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20135 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761739 () Bool)

(assert (=> b!761739 (and (bvsge (index!33337 lt!339353) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339353) (size!20556 a!3186)))))

(declare-fun res!515174 () Bool)

(assert (=> b!761739 (= res!515174 (= (select (arr!20135 a!3186) (index!33337 lt!339353)) (select (arr!20135 a!3186) j!159)))))

(assert (=> b!761739 (=> res!515174 e!424679)))

(assert (=> b!761739 (= e!424682 e!424679)))

(declare-fun b!761740 () Bool)

(assert (=> b!761740 (= e!424680 e!424681)))

(declare-fun c!83666 () Bool)

(assert (=> b!761740 (= c!83666 (or (= lt!339352 (select (arr!20135 a!3186) j!159)) (= (bvadd lt!339352 lt!339352) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761741 () Bool)

(assert (=> b!761741 (and (bvsge (index!33337 lt!339353) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339353) (size!20556 a!3186)))))

(declare-fun res!515175 () Bool)

(assert (=> b!761741 (= res!515175 (= (select (arr!20135 a!3186) (index!33337 lt!339353)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761741 (=> res!515175 e!424679)))

(assert (= (and d!100777 c!83667) b!761736))

(assert (= (and d!100777 (not c!83667)) b!761740))

(assert (= (and b!761740 c!83666) b!761735))

(assert (= (and b!761740 (not c!83666)) b!761738))

(assert (= (and d!100777 c!83668) b!761734))

(assert (= (and d!100777 (not c!83668)) b!761737))

(assert (= (and b!761737 res!515173) b!761739))

(assert (= (and b!761739 (not res!515174)) b!761741))

(assert (= (and b!761741 (not res!515175)) b!761733))

(declare-fun m!708673 () Bool)

(assert (=> b!761733 m!708673))

(declare-fun m!708675 () Bool)

(assert (=> d!100777 m!708675))

(assert (=> d!100777 m!708575))

(assert (=> b!761741 m!708673))

(assert (=> b!761739 m!708673))

(declare-fun m!708677 () Bool)

(assert (=> b!761738 m!708677))

(assert (=> b!761738 m!708677))

(assert (=> b!761738 m!708541))

(declare-fun m!708679 () Bool)

(assert (=> b!761738 m!708679))

(assert (=> b!761522 d!100777))

(declare-fun b!761808 () Bool)

(declare-fun e!424724 () SeekEntryResult!7742)

(declare-fun e!424726 () SeekEntryResult!7742)

(assert (=> b!761808 (= e!424724 e!424726)))

(declare-fun c!83694 () Bool)

(declare-fun lt!339385 () (_ BitVec 64))

(assert (=> b!761808 (= c!83694 (= lt!339385 (select (arr!20135 a!3186) j!159)))))

(declare-fun b!761809 () Bool)

(declare-fun e!424725 () SeekEntryResult!7742)

(assert (=> b!761809 (= e!424725 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20135 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761810 () Bool)

(assert (=> b!761810 (= e!424724 Undefined!7742)))

(declare-fun b!761811 () Bool)

(declare-fun c!83692 () Bool)

(assert (=> b!761811 (= c!83692 (= lt!339385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761811 (= e!424726 e!424725)))

(declare-fun d!100779 () Bool)

(declare-fun lt!339384 () SeekEntryResult!7742)

(assert (=> d!100779 (and (or (is-Undefined!7742 lt!339384) (not (is-Found!7742 lt!339384)) (and (bvsge (index!33336 lt!339384) #b00000000000000000000000000000000) (bvslt (index!33336 lt!339384) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339384) (is-Found!7742 lt!339384) (not (is-MissingVacant!7742 lt!339384)) (not (= (index!33338 lt!339384) resIntermediateIndex!5)) (and (bvsge (index!33338 lt!339384) #b00000000000000000000000000000000) (bvslt (index!33338 lt!339384) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339384) (ite (is-Found!7742 lt!339384) (= (select (arr!20135 a!3186) (index!33336 lt!339384)) (select (arr!20135 a!3186) j!159)) (and (is-MissingVacant!7742 lt!339384) (= (index!33338 lt!339384) resIntermediateIndex!5) (= (select (arr!20135 a!3186) (index!33338 lt!339384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100779 (= lt!339384 e!424724)))

(declare-fun c!83693 () Bool)

(assert (=> d!100779 (= c!83693 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100779 (= lt!339385 (select (arr!20135 a!3186) index!1321))))

(assert (=> d!100779 (validMask!0 mask!3328)))

(assert (=> d!100779 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339384)))

(declare-fun b!761812 () Bool)

(assert (=> b!761812 (= e!424726 (Found!7742 index!1321))))

(declare-fun b!761813 () Bool)

(assert (=> b!761813 (= e!424725 (MissingVacant!7742 resIntermediateIndex!5))))

(assert (= (and d!100779 c!83693) b!761810))

(assert (= (and d!100779 (not c!83693)) b!761808))

(assert (= (and b!761808 c!83694) b!761812))

(assert (= (and b!761808 (not c!83694)) b!761811))

(assert (= (and b!761811 c!83692) b!761813))

(assert (= (and b!761811 (not c!83692)) b!761809))

(assert (=> b!761809 m!708677))

(assert (=> b!761809 m!708677))

(assert (=> b!761809 m!708541))

(declare-fun m!708715 () Bool)

(assert (=> b!761809 m!708715))

(declare-fun m!708717 () Bool)

(assert (=> d!100779 m!708717))

(declare-fun m!708719 () Bool)

(assert (=> d!100779 m!708719))

(assert (=> d!100779 m!708675))

(assert (=> d!100779 m!708575))

(assert (=> b!761533 d!100779))

(declare-fun b!761873 () Bool)

(declare-fun e!424764 () SeekEntryResult!7742)

(assert (=> b!761873 (= e!424764 Undefined!7742)))

(declare-fun d!100805 () Bool)

(declare-fun lt!339414 () SeekEntryResult!7742)

(assert (=> d!100805 (and (or (is-Undefined!7742 lt!339414) (not (is-Found!7742 lt!339414)) (and (bvsge (index!33336 lt!339414) #b00000000000000000000000000000000) (bvslt (index!33336 lt!339414) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339414) (is-Found!7742 lt!339414) (not (is-MissingZero!7742 lt!339414)) (and (bvsge (index!33335 lt!339414) #b00000000000000000000000000000000) (bvslt (index!33335 lt!339414) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339414) (is-Found!7742 lt!339414) (is-MissingZero!7742 lt!339414) (not (is-MissingVacant!7742 lt!339414)) (and (bvsge (index!33338 lt!339414) #b00000000000000000000000000000000) (bvslt (index!33338 lt!339414) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339414) (ite (is-Found!7742 lt!339414) (= (select (arr!20135 a!3186) (index!33336 lt!339414)) k!2102) (ite (is-MissingZero!7742 lt!339414) (= (select (arr!20135 a!3186) (index!33335 lt!339414)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7742 lt!339414) (= (select (arr!20135 a!3186) (index!33338 lt!339414)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100805 (= lt!339414 e!424764)))

(declare-fun c!83717 () Bool)

(declare-fun lt!339415 () SeekEntryResult!7742)

(assert (=> d!100805 (= c!83717 (and (is-Intermediate!7742 lt!339415) (undefined!8554 lt!339415)))))

(assert (=> d!100805 (= lt!339415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100805 (validMask!0 mask!3328)))

(assert (=> d!100805 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!339414)))

(declare-fun b!761874 () Bool)

(declare-fun e!424763 () SeekEntryResult!7742)

(assert (=> b!761874 (= e!424764 e!424763)))

(declare-fun lt!339416 () (_ BitVec 64))

(assert (=> b!761874 (= lt!339416 (select (arr!20135 a!3186) (index!33337 lt!339415)))))

(declare-fun c!83715 () Bool)

(assert (=> b!761874 (= c!83715 (= lt!339416 k!2102))))

(declare-fun b!761875 () Bool)

(assert (=> b!761875 (= e!424763 (Found!7742 (index!33337 lt!339415)))))

(declare-fun b!761876 () Bool)

(declare-fun e!424765 () SeekEntryResult!7742)

(assert (=> b!761876 (= e!424765 (MissingZero!7742 (index!33337 lt!339415)))))

(declare-fun b!761877 () Bool)

(assert (=> b!761877 (= e!424765 (seekKeyOrZeroReturnVacant!0 (x!64266 lt!339415) (index!33337 lt!339415) (index!33337 lt!339415) k!2102 a!3186 mask!3328))))

(declare-fun b!761878 () Bool)

(declare-fun c!83716 () Bool)

(assert (=> b!761878 (= c!83716 (= lt!339416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761878 (= e!424763 e!424765)))

(assert (= (and d!100805 c!83717) b!761873))

(assert (= (and d!100805 (not c!83717)) b!761874))

(assert (= (and b!761874 c!83715) b!761875))

(assert (= (and b!761874 (not c!83715)) b!761878))

(assert (= (and b!761878 c!83716) b!761876))

(assert (= (and b!761878 (not c!83716)) b!761877))

(declare-fun m!708775 () Bool)

(assert (=> d!100805 m!708775))

(assert (=> d!100805 m!708575))

(declare-fun m!708777 () Bool)

(assert (=> d!100805 m!708777))

(declare-fun m!708779 () Bool)

(assert (=> d!100805 m!708779))

(assert (=> d!100805 m!708777))

(declare-fun m!708781 () Bool)

(assert (=> d!100805 m!708781))

(declare-fun m!708783 () Bool)

(assert (=> d!100805 m!708783))

(declare-fun m!708785 () Bool)

(assert (=> b!761874 m!708785))

(declare-fun m!708787 () Bool)

(assert (=> b!761877 m!708787))

(assert (=> b!761534 d!100805))

(declare-fun b!761879 () Bool)

(declare-fun e!424767 () SeekEntryResult!7742)

(assert (=> b!761879 (= e!424767 Undefined!7742)))

(declare-fun d!100825 () Bool)

(declare-fun lt!339417 () SeekEntryResult!7742)

(assert (=> d!100825 (and (or (is-Undefined!7742 lt!339417) (not (is-Found!7742 lt!339417)) (and (bvsge (index!33336 lt!339417) #b00000000000000000000000000000000) (bvslt (index!33336 lt!339417) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339417) (is-Found!7742 lt!339417) (not (is-MissingZero!7742 lt!339417)) (and (bvsge (index!33335 lt!339417) #b00000000000000000000000000000000) (bvslt (index!33335 lt!339417) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339417) (is-Found!7742 lt!339417) (is-MissingZero!7742 lt!339417) (not (is-MissingVacant!7742 lt!339417)) (and (bvsge (index!33338 lt!339417) #b00000000000000000000000000000000) (bvslt (index!33338 lt!339417) (size!20556 a!3186)))) (or (is-Undefined!7742 lt!339417) (ite (is-Found!7742 lt!339417) (= (select (arr!20135 a!3186) (index!33336 lt!339417)) (select (arr!20135 a!3186) j!159)) (ite (is-MissingZero!7742 lt!339417) (= (select (arr!20135 a!3186) (index!33335 lt!339417)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7742 lt!339417) (= (select (arr!20135 a!3186) (index!33338 lt!339417)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100825 (= lt!339417 e!424767)))

(declare-fun c!83720 () Bool)

(declare-fun lt!339418 () SeekEntryResult!7742)

(assert (=> d!100825 (= c!83720 (and (is-Intermediate!7742 lt!339418) (undefined!8554 lt!339418)))))

(assert (=> d!100825 (= lt!339418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20135 a!3186) j!159) mask!3328) (select (arr!20135 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100825 (validMask!0 mask!3328)))

(assert (=> d!100825 (= (seekEntryOrOpen!0 (select (arr!20135 a!3186) j!159) a!3186 mask!3328) lt!339417)))

(declare-fun b!761880 () Bool)

(declare-fun e!424766 () SeekEntryResult!7742)

(assert (=> b!761880 (= e!424767 e!424766)))

(declare-fun lt!339419 () (_ BitVec 64))

(assert (=> b!761880 (= lt!339419 (select (arr!20135 a!3186) (index!33337 lt!339418)))))

(declare-fun c!83718 () Bool)

(assert (=> b!761880 (= c!83718 (= lt!339419 (select (arr!20135 a!3186) j!159)))))

(declare-fun b!761881 () Bool)

(assert (=> b!761881 (= e!424766 (Found!7742 (index!33337 lt!339418)))))

(declare-fun b!761882 () Bool)

(declare-fun e!424768 () SeekEntryResult!7742)

(assert (=> b!761882 (= e!424768 (MissingZero!7742 (index!33337 lt!339418)))))

(declare-fun b!761883 () Bool)

(assert (=> b!761883 (= e!424768 (seekKeyOrZeroReturnVacant!0 (x!64266 lt!339418) (index!33337 lt!339418) (index!33337 lt!339418) (select (arr!20135 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761884 () Bool)

(declare-fun c!83719 () Bool)

(assert (=> b!761884 (= c!83719 (= lt!339419 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761884 (= e!424766 e!424768)))

(assert (= (and d!100825 c!83720) b!761879))

(assert (= (and d!100825 (not c!83720)) b!761880))

(assert (= (and b!761880 c!83718) b!761881))

(assert (= (and b!761880 (not c!83718)) b!761884))

(assert (= (and b!761884 c!83719) b!761882))

(assert (= (and b!761884 (not c!83719)) b!761883))

(declare-fun m!708789 () Bool)

(assert (=> d!100825 m!708789))

(assert (=> d!100825 m!708575))

(assert (=> d!100825 m!708543))

(assert (=> d!100825 m!708541))

(assert (=> d!100825 m!708545))

(assert (=> d!100825 m!708541))

(assert (=> d!100825 m!708543))

(declare-fun m!708791 () Bool)

(assert (=> d!100825 m!708791))

(declare-fun m!708793 () Bool)

(assert (=> d!100825 m!708793))

(declare-fun m!708795 () Bool)

(assert (=> b!761880 m!708795))

(assert (=> b!761883 m!708541))

(declare-fun m!708797 () Bool)

(assert (=> b!761883 m!708797))

(assert (=> b!761523 d!100825))

(assert (=> b!761524 d!100779))

(declare-fun b!761885 () Bool)

(declare-fun lt!339421 () SeekEntryResult!7742)

(assert (=> b!761885 (and (bvsge (index!33337 lt!339421) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339421) (size!20556 lt!339276)))))

(declare-fun e!424769 () Bool)

(assert (=> b!761885 (= e!424769 (= (select (arr!20135 lt!339276) (index!33337 lt!339421)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761886 () Bool)

(declare-fun e!424773 () Bool)

(assert (=> b!761886 (= e!424773 (bvsge (x!64266 lt!339421) #b01111111111111111111111111111110))))

(declare-fun b!761887 () Bool)

(declare-fun e!424771 () SeekEntryResult!7742)

(assert (=> b!761887 (= e!424771 (Intermediate!7742 false index!1321 x!1131))))

(declare-fun d!100827 () Bool)

(assert (=> d!100827 e!424773))

(declare-fun c!83723 () Bool)

(assert (=> d!100827 (= c!83723 (and (is-Intermediate!7742 lt!339421) (undefined!8554 lt!339421)))))

(declare-fun e!424770 () SeekEntryResult!7742)

(assert (=> d!100827 (= lt!339421 e!424770)))

(declare-fun c!83722 () Bool)

(assert (=> d!100827 (= c!83722 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339420 () (_ BitVec 64))

(assert (=> d!100827 (= lt!339420 (select (arr!20135 lt!339276) index!1321))))

(assert (=> d!100827 (validMask!0 mask!3328)))

(assert (=> d!100827 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339271 lt!339276 mask!3328) lt!339421)))

(declare-fun b!761888 () Bool)

(assert (=> b!761888 (= e!424770 (Intermediate!7742 true index!1321 x!1131))))

(declare-fun b!761889 () Bool)

(declare-fun e!424772 () Bool)

(assert (=> b!761889 (= e!424773 e!424772)))

(declare-fun res!515216 () Bool)

(assert (=> b!761889 (= res!515216 (and (is-Intermediate!7742 lt!339421) (not (undefined!8554 lt!339421)) (bvslt (x!64266 lt!339421) #b01111111111111111111111111111110) (bvsge (x!64266 lt!339421) #b00000000000000000000000000000000) (bvsge (x!64266 lt!339421) x!1131)))))

(assert (=> b!761889 (=> (not res!515216) (not e!424772))))

(declare-fun b!761890 () Bool)

(assert (=> b!761890 (= e!424771 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!339271 lt!339276 mask!3328))))

(declare-fun b!761891 () Bool)

(assert (=> b!761891 (and (bvsge (index!33337 lt!339421) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339421) (size!20556 lt!339276)))))

(declare-fun res!515217 () Bool)

(assert (=> b!761891 (= res!515217 (= (select (arr!20135 lt!339276) (index!33337 lt!339421)) lt!339271))))

(assert (=> b!761891 (=> res!515217 e!424769)))

(assert (=> b!761891 (= e!424772 e!424769)))

(declare-fun b!761892 () Bool)

(assert (=> b!761892 (= e!424770 e!424771)))

(declare-fun c!83721 () Bool)

(assert (=> b!761892 (= c!83721 (or (= lt!339420 lt!339271) (= (bvadd lt!339420 lt!339420) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761893 () Bool)

(assert (=> b!761893 (and (bvsge (index!33337 lt!339421) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339421) (size!20556 lt!339276)))))

(declare-fun res!515218 () Bool)

(assert (=> b!761893 (= res!515218 (= (select (arr!20135 lt!339276) (index!33337 lt!339421)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!761893 (=> res!515218 e!424769)))

(assert (= (and d!100827 c!83722) b!761888))

(assert (= (and d!100827 (not c!83722)) b!761892))

(assert (= (and b!761892 c!83721) b!761887))

(assert (= (and b!761892 (not c!83721)) b!761890))

(assert (= (and d!100827 c!83723) b!761886))

(assert (= (and d!100827 (not c!83723)) b!761889))

(assert (= (and b!761889 res!515216) b!761891))

(assert (= (and b!761891 (not res!515217)) b!761893))

(assert (= (and b!761893 (not res!515218)) b!761885))

(declare-fun m!708799 () Bool)

(assert (=> b!761885 m!708799))

(declare-fun m!708801 () Bool)

(assert (=> d!100827 m!708801))

(assert (=> d!100827 m!708575))

(assert (=> b!761893 m!708799))

(assert (=> b!761891 m!708799))

(assert (=> b!761890 m!708677))

(assert (=> b!761890 m!708677))

(declare-fun m!708803 () Bool)

(assert (=> b!761890 m!708803))

(assert (=> b!761535 d!100827))

(declare-fun b!761894 () Bool)

(declare-fun lt!339423 () SeekEntryResult!7742)

(assert (=> b!761894 (and (bvsge (index!33337 lt!339423) #b00000000000000000000000000000000) (bvslt (index!33337 lt!339423) (size!20556 lt!339276)))))

