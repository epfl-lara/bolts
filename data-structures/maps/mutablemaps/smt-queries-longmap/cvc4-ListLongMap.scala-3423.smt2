; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47474 () Bool)

(assert start!47474)

(declare-fun b!522517 () Bool)

(declare-fun res!320283 () Bool)

(declare-fun e!304748 () Bool)

(assert (=> b!522517 (=> res!320283 e!304748)))

(declare-datatypes ((SeekEntryResult!4457 0))(
  ( (MissingZero!4457 (index!20031 (_ BitVec 32))) (Found!4457 (index!20032 (_ BitVec 32))) (Intermediate!4457 (undefined!5269 Bool) (index!20033 (_ BitVec 32)) (x!49030 (_ BitVec 32))) (Undefined!4457) (MissingVacant!4457 (index!20034 (_ BitVec 32))) )
))
(declare-fun lt!239741 () SeekEntryResult!4457)

(assert (=> b!522517 (= res!320283 (or (undefined!5269 lt!239741) (not (is-Intermediate!4457 lt!239741))))))

(declare-fun b!522518 () Bool)

(declare-datatypes ((Unit!16294 0))(
  ( (Unit!16295) )
))
(declare-fun e!304744 () Unit!16294)

(declare-fun Unit!16296 () Unit!16294)

(assert (=> b!522518 (= e!304744 Unit!16296)))

(declare-fun b!522519 () Bool)

(declare-fun res!320288 () Bool)

(declare-fun e!304749 () Bool)

(assert (=> b!522519 (=> (not res!320288) (not e!304749))))

(declare-datatypes ((array!33260 0))(
  ( (array!33261 (arr!15983 (Array (_ BitVec 32) (_ BitVec 64))) (size!16347 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33260)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522519 (= res!320288 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522520 () Bool)

(declare-fun res!320291 () Bool)

(declare-fun e!304747 () Bool)

(assert (=> b!522520 (=> (not res!320291) (not e!304747))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33260 (_ BitVec 32)) Bool)

(assert (=> b!522520 (= res!320291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!522521 () Bool)

(declare-fun res!320292 () Bool)

(assert (=> b!522521 (=> (not res!320292) (not e!304747))))

(declare-datatypes ((List!10194 0))(
  ( (Nil!10191) (Cons!10190 (h!11112 (_ BitVec 64)) (t!16430 List!10194)) )
))
(declare-fun arrayNoDuplicates!0 (array!33260 (_ BitVec 32) List!10194) Bool)

(assert (=> b!522521 (= res!320292 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10191))))

(declare-fun b!522522 () Bool)

(declare-fun e!304750 () Bool)

(assert (=> b!522522 (= e!304750 false)))

(declare-fun b!522523 () Bool)

(declare-fun res!320287 () Bool)

(assert (=> b!522523 (=> (not res!320287) (not e!304749))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522523 (= res!320287 (validKeyInArray!0 (select (arr!15983 a!3235) j!176)))))

(declare-fun b!522524 () Bool)

(declare-fun Unit!16297 () Unit!16294)

(assert (=> b!522524 (= e!304744 Unit!16297)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239747 () Unit!16294)

(declare-fun lt!239743 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16294)

(assert (=> b!522524 (= lt!239747 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239743 #b00000000000000000000000000000000 (index!20033 lt!239741) (x!49030 lt!239741) mask!3524))))

(declare-fun lt!239739 () array!33260)

(declare-fun res!320285 () Bool)

(declare-fun lt!239744 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33260 (_ BitVec 32)) SeekEntryResult!4457)

(assert (=> b!522524 (= res!320285 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239743 lt!239744 lt!239739 mask!3524) (Intermediate!4457 false (index!20033 lt!239741) (x!49030 lt!239741))))))

(assert (=> b!522524 (=> (not res!320285) (not e!304750))))

(assert (=> b!522524 e!304750))

(declare-fun b!522525 () Bool)

(assert (=> b!522525 (= e!304749 e!304747)))

(declare-fun res!320289 () Bool)

(assert (=> b!522525 (=> (not res!320289) (not e!304747))))

(declare-fun lt!239742 () SeekEntryResult!4457)

(assert (=> b!522525 (= res!320289 (or (= lt!239742 (MissingZero!4457 i!1204)) (= lt!239742 (MissingVacant!4457 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33260 (_ BitVec 32)) SeekEntryResult!4457)

(assert (=> b!522525 (= lt!239742 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!522526 () Bool)

(declare-fun e!304745 () Bool)

(assert (=> b!522526 (= e!304745 (= (seekEntryOrOpen!0 (select (arr!15983 a!3235) j!176) a!3235 mask!3524) (Found!4457 j!176)))))

(declare-fun b!522527 () Bool)

(declare-fun res!320290 () Bool)

(assert (=> b!522527 (=> (not res!320290) (not e!304749))))

(assert (=> b!522527 (= res!320290 (and (= (size!16347 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16347 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16347 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522528 () Bool)

(assert (=> b!522528 (= e!304747 (not e!304748))))

(declare-fun res!320286 () Bool)

(assert (=> b!522528 (=> res!320286 e!304748)))

(declare-fun lt!239740 () (_ BitVec 32))

(assert (=> b!522528 (= res!320286 (= lt!239741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239740 lt!239744 lt!239739 mask!3524)))))

(assert (=> b!522528 (= lt!239741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239743 (select (arr!15983 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522528 (= lt!239740 (toIndex!0 lt!239744 mask!3524))))

(assert (=> b!522528 (= lt!239744 (select (store (arr!15983 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522528 (= lt!239743 (toIndex!0 (select (arr!15983 a!3235) j!176) mask!3524))))

(assert (=> b!522528 (= lt!239739 (array!33261 (store (arr!15983 a!3235) i!1204 k!2280) (size!16347 a!3235)))))

(assert (=> b!522528 e!304745))

(declare-fun res!320293 () Bool)

(assert (=> b!522528 (=> (not res!320293) (not e!304745))))

(assert (=> b!522528 (= res!320293 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239746 () Unit!16294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16294)

(assert (=> b!522528 (= lt!239746 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522529 () Bool)

(declare-fun res!320294 () Bool)

(assert (=> b!522529 (=> (not res!320294) (not e!304749))))

(assert (=> b!522529 (= res!320294 (validKeyInArray!0 k!2280))))

(declare-fun res!320284 () Bool)

(assert (=> start!47474 (=> (not res!320284) (not e!304749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47474 (= res!320284 (validMask!0 mask!3524))))

(assert (=> start!47474 e!304749))

(assert (=> start!47474 true))

(declare-fun array_inv!11757 (array!33260) Bool)

(assert (=> start!47474 (array_inv!11757 a!3235)))

(declare-fun b!522530 () Bool)

(assert (=> b!522530 (= e!304748 (bvsle #b00000000000000000000000000000000 (x!49030 lt!239741)))))

(assert (=> b!522530 (and (or (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239745 () Unit!16294)

(assert (=> b!522530 (= lt!239745 e!304744)))

(declare-fun c!61418 () Bool)

(assert (=> b!522530 (= c!61418 (= (select (arr!15983 a!3235) (index!20033 lt!239741)) (select (arr!15983 a!3235) j!176)))))

(assert (=> b!522530 (and (bvslt (x!49030 lt!239741) #b01111111111111111111111111111110) (or (= (select (arr!15983 a!3235) (index!20033 lt!239741)) (select (arr!15983 a!3235) j!176)) (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15983 a!3235) (index!20033 lt!239741)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47474 res!320284) b!522527))

(assert (= (and b!522527 res!320290) b!522523))

(assert (= (and b!522523 res!320287) b!522529))

(assert (= (and b!522529 res!320294) b!522519))

(assert (= (and b!522519 res!320288) b!522525))

(assert (= (and b!522525 res!320289) b!522520))

(assert (= (and b!522520 res!320291) b!522521))

(assert (= (and b!522521 res!320292) b!522528))

(assert (= (and b!522528 res!320293) b!522526))

(assert (= (and b!522528 (not res!320286)) b!522517))

(assert (= (and b!522517 (not res!320283)) b!522530))

(assert (= (and b!522530 c!61418) b!522524))

(assert (= (and b!522530 (not c!61418)) b!522518))

(assert (= (and b!522524 res!320285) b!522522))

(declare-fun m!503467 () Bool)

(assert (=> b!522525 m!503467))

(declare-fun m!503469 () Bool)

(assert (=> start!47474 m!503469))

(declare-fun m!503471 () Bool)

(assert (=> start!47474 m!503471))

(declare-fun m!503473 () Bool)

(assert (=> b!522528 m!503473))

(declare-fun m!503475 () Bool)

(assert (=> b!522528 m!503475))

(declare-fun m!503477 () Bool)

(assert (=> b!522528 m!503477))

(declare-fun m!503479 () Bool)

(assert (=> b!522528 m!503479))

(declare-fun m!503481 () Bool)

(assert (=> b!522528 m!503481))

(declare-fun m!503483 () Bool)

(assert (=> b!522528 m!503483))

(assert (=> b!522528 m!503479))

(declare-fun m!503485 () Bool)

(assert (=> b!522528 m!503485))

(assert (=> b!522528 m!503479))

(declare-fun m!503487 () Bool)

(assert (=> b!522528 m!503487))

(declare-fun m!503489 () Bool)

(assert (=> b!522528 m!503489))

(declare-fun m!503491 () Bool)

(assert (=> b!522524 m!503491))

(declare-fun m!503493 () Bool)

(assert (=> b!522524 m!503493))

(declare-fun m!503495 () Bool)

(assert (=> b!522529 m!503495))

(assert (=> b!522523 m!503479))

(assert (=> b!522523 m!503479))

(declare-fun m!503497 () Bool)

(assert (=> b!522523 m!503497))

(assert (=> b!522526 m!503479))

(assert (=> b!522526 m!503479))

(declare-fun m!503499 () Bool)

(assert (=> b!522526 m!503499))

(declare-fun m!503501 () Bool)

(assert (=> b!522519 m!503501))

(declare-fun m!503503 () Bool)

(assert (=> b!522520 m!503503))

(declare-fun m!503505 () Bool)

(assert (=> b!522530 m!503505))

(assert (=> b!522530 m!503479))

(declare-fun m!503507 () Bool)

(assert (=> b!522521 m!503507))

(push 1)

(assert (not b!522519))

(assert (not b!522526))

(assert (not b!522529))

(assert (not b!522525))

(assert (not b!522520))

(assert (not b!522528))

(assert (not start!47474))

(assert (not b!522524))

(assert (not b!522523))

(assert (not b!522521))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80299 () Bool)

(assert (=> d!80299 (= (validKeyInArray!0 (select (arr!15983 a!3235) j!176)) (and (not (= (select (arr!15983 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15983 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!522523 d!80299))

(declare-fun d!80301 () Bool)

(declare-fun lt!239768 () (_ BitVec 32))

(declare-fun lt!239767 () (_ BitVec 32))

(assert (=> d!80301 (= lt!239768 (bvmul (bvxor lt!239767 (bvlshr lt!239767 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80301 (= lt!239767 ((_ extract 31 0) (bvand (bvxor (select (arr!15983 a!3235) j!176) (bvlshr (select (arr!15983 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80301 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320307 (let ((h!11113 ((_ extract 31 0) (bvand (bvxor (select (arr!15983 a!3235) j!176) (bvlshr (select (arr!15983 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49033 (bvmul (bvxor h!11113 (bvlshr h!11113 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49033 (bvlshr x!49033 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320307 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320307 #b00000000000000000000000000000000))))))

(assert (=> d!80301 (= (toIndex!0 (select (arr!15983 a!3235) j!176) mask!3524) (bvand (bvxor lt!239768 (bvlshr lt!239768 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522528 d!80301))

(declare-fun b!522599 () Bool)

(declare-fun e!304799 () Bool)

(declare-fun e!304801 () Bool)

(assert (=> b!522599 (= e!304799 e!304801)))

(declare-fun c!61436 () Bool)

(assert (=> b!522599 (= c!61436 (validKeyInArray!0 (select (arr!15983 a!3235) j!176)))))

(declare-fun b!522600 () Bool)

(declare-fun call!31814 () Bool)

(assert (=> b!522600 (= e!304801 call!31814)))

(declare-fun bm!31811 () Bool)

(assert (=> bm!31811 (= call!31814 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!522601 () Bool)

(declare-fun e!304800 () Bool)

(assert (=> b!522601 (= e!304800 call!31814)))

(declare-fun b!522602 () Bool)

(assert (=> b!522602 (= e!304801 e!304800)))

(declare-fun lt!239782 () (_ BitVec 64))

(assert (=> b!522602 (= lt!239782 (select (arr!15983 a!3235) j!176))))

(declare-fun lt!239781 () Unit!16294)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33260 (_ BitVec 64) (_ BitVec 32)) Unit!16294)

(assert (=> b!522602 (= lt!239781 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!239782 j!176))))

(assert (=> b!522602 (arrayContainsKey!0 a!3235 lt!239782 #b00000000000000000000000000000000)))

(declare-fun lt!239783 () Unit!16294)

(assert (=> b!522602 (= lt!239783 lt!239781)))

(declare-fun res!320331 () Bool)

(assert (=> b!522602 (= res!320331 (= (seekEntryOrOpen!0 (select (arr!15983 a!3235) j!176) a!3235 mask!3524) (Found!4457 j!176)))))

(assert (=> b!522602 (=> (not res!320331) (not e!304800))))

(declare-fun d!80303 () Bool)

(declare-fun res!320330 () Bool)

(assert (=> d!80303 (=> res!320330 e!304799)))

(assert (=> d!80303 (= res!320330 (bvsge j!176 (size!16347 a!3235)))))

(assert (=> d!80303 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!304799)))

(assert (= (and d!80303 (not res!320330)) b!522599))

(assert (= (and b!522599 c!61436) b!522602))

(assert (= (and b!522599 (not c!61436)) b!522600))

(assert (= (and b!522602 res!320331) b!522601))

(assert (= (or b!522601 b!522600) bm!31811))

(assert (=> b!522599 m!503479))

(assert (=> b!522599 m!503479))

(assert (=> b!522599 m!503497))

(declare-fun m!503541 () Bool)

(assert (=> bm!31811 m!503541))

(assert (=> b!522602 m!503479))

(declare-fun m!503543 () Bool)

(assert (=> b!522602 m!503543))

(declare-fun m!503545 () Bool)

(assert (=> b!522602 m!503545))

(assert (=> b!522602 m!503479))

(assert (=> b!522602 m!503499))

(assert (=> b!522528 d!80303))

(declare-fun b!522666 () Bool)

(declare-fun e!304837 () SeekEntryResult!4457)

(assert (=> b!522666 (= e!304837 (Intermediate!4457 true lt!239743 #b00000000000000000000000000000000))))

(declare-fun b!522667 () Bool)

(declare-fun e!304839 () SeekEntryResult!4457)

(assert (=> b!522667 (= e!304837 e!304839)))

(declare-fun c!61463 () Bool)

(declare-fun lt!239804 () (_ BitVec 64))

(assert (=> b!522667 (= c!61463 (or (= lt!239804 (select (arr!15983 a!3235) j!176)) (= (bvadd lt!239804 lt!239804) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522668 () Bool)

(declare-fun e!304840 () Bool)

(declare-fun e!304838 () Bool)

(assert (=> b!522668 (= e!304840 e!304838)))

(declare-fun res!320347 () Bool)

(declare-fun lt!239803 () SeekEntryResult!4457)

(assert (=> b!522668 (= res!320347 (and (is-Intermediate!4457 lt!239803) (not (undefined!5269 lt!239803)) (bvslt (x!49030 lt!239803) #b01111111111111111111111111111110) (bvsge (x!49030 lt!239803) #b00000000000000000000000000000000) (bvsge (x!49030 lt!239803) #b00000000000000000000000000000000)))))

(assert (=> b!522668 (=> (not res!320347) (not e!304838))))

(declare-fun b!522669 () Bool)

(assert (=> b!522669 (= e!304840 (bvsge (x!49030 lt!239803) #b01111111111111111111111111111110))))

(declare-fun b!522670 () Bool)

(assert (=> b!522670 (and (bvsge (index!20033 lt!239803) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239803) (size!16347 a!3235)))))

(declare-fun e!304836 () Bool)

(assert (=> b!522670 (= e!304836 (= (select (arr!15983 a!3235) (index!20033 lt!239803)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!522671 () Bool)

(assert (=> b!522671 (and (bvsge (index!20033 lt!239803) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239803) (size!16347 a!3235)))))

(declare-fun res!320348 () Bool)

(assert (=> b!522671 (= res!320348 (= (select (arr!15983 a!3235) (index!20033 lt!239803)) (select (arr!15983 a!3235) j!176)))))

(assert (=> b!522671 (=> res!320348 e!304836)))

(assert (=> b!522671 (= e!304838 e!304836)))

(declare-fun d!80311 () Bool)

(assert (=> d!80311 e!304840))

(declare-fun c!61461 () Bool)

(assert (=> d!80311 (= c!61461 (and (is-Intermediate!4457 lt!239803) (undefined!5269 lt!239803)))))

(assert (=> d!80311 (= lt!239803 e!304837)))

(declare-fun c!61462 () Bool)

(assert (=> d!80311 (= c!61462 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80311 (= lt!239804 (select (arr!15983 a!3235) lt!239743))))

(assert (=> d!80311 (validMask!0 mask!3524)))

(assert (=> d!80311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239743 (select (arr!15983 a!3235) j!176) a!3235 mask!3524) lt!239803)))

(declare-fun b!522672 () Bool)

(assert (=> b!522672 (= e!304839 (Intermediate!4457 false lt!239743 #b00000000000000000000000000000000))))

(declare-fun b!522673 () Bool)

(assert (=> b!522673 (and (bvsge (index!20033 lt!239803) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239803) (size!16347 a!3235)))))

(declare-fun res!320349 () Bool)

(assert (=> b!522673 (= res!320349 (= (select (arr!15983 a!3235) (index!20033 lt!239803)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522673 (=> res!320349 e!304836)))

(declare-fun b!522674 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522674 (= e!304839 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239743 #b00000000000000000000000000000000 mask!3524) (select (arr!15983 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80311 c!61462) b!522666))

(assert (= (and d!80311 (not c!61462)) b!522667))

(assert (= (and b!522667 c!61463) b!522672))

(assert (= (and b!522667 (not c!61463)) b!522674))

(assert (= (and d!80311 c!61461) b!522669))

(assert (= (and d!80311 (not c!61461)) b!522668))

(assert (= (and b!522668 res!320347) b!522671))

(assert (= (and b!522671 (not res!320348)) b!522673))

(assert (= (and b!522673 (not res!320349)) b!522670))

(declare-fun m!503567 () Bool)

(assert (=> b!522674 m!503567))

(assert (=> b!522674 m!503567))

(assert (=> b!522674 m!503479))

(declare-fun m!503569 () Bool)

(assert (=> b!522674 m!503569))

(declare-fun m!503571 () Bool)

(assert (=> d!80311 m!503571))

(assert (=> d!80311 m!503469))

(declare-fun m!503573 () Bool)

(assert (=> b!522671 m!503573))

(assert (=> b!522673 m!503573))

(assert (=> b!522670 m!503573))

(assert (=> b!522528 d!80311))

(declare-fun d!80319 () Bool)

(declare-fun lt!239806 () (_ BitVec 32))

(declare-fun lt!239805 () (_ BitVec 32))

(assert (=> d!80319 (= lt!239806 (bvmul (bvxor lt!239805 (bvlshr lt!239805 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80319 (= lt!239805 ((_ extract 31 0) (bvand (bvxor lt!239744 (bvlshr lt!239744 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80319 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!320307 (let ((h!11113 ((_ extract 31 0) (bvand (bvxor lt!239744 (bvlshr lt!239744 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49033 (bvmul (bvxor h!11113 (bvlshr h!11113 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49033 (bvlshr x!49033 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!320307 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!320307 #b00000000000000000000000000000000))))))

(assert (=> d!80319 (= (toIndex!0 lt!239744 mask!3524) (bvand (bvxor lt!239806 (bvlshr lt!239806 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!522528 d!80319))

(declare-fun d!80321 () Bool)

(assert (=> d!80321 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!239809 () Unit!16294)

(declare-fun choose!38 (array!33260 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16294)

(assert (=> d!80321 (= lt!239809 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80321 (validMask!0 mask!3524)))

(assert (=> d!80321 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!239809)))

(declare-fun bs!16434 () Bool)

(assert (= bs!16434 d!80321))

(assert (=> bs!16434 m!503485))

(declare-fun m!503577 () Bool)

(assert (=> bs!16434 m!503577))

(assert (=> bs!16434 m!503469))

(assert (=> b!522528 d!80321))

(declare-fun b!522681 () Bool)

(declare-fun e!304848 () SeekEntryResult!4457)

(assert (=> b!522681 (= e!304848 (Intermediate!4457 true lt!239740 #b00000000000000000000000000000000))))

(declare-fun b!522682 () Bool)

(declare-fun e!304850 () SeekEntryResult!4457)

(assert (=> b!522682 (= e!304848 e!304850)))

(declare-fun c!61466 () Bool)

(declare-fun lt!239811 () (_ BitVec 64))

(assert (=> b!522682 (= c!61466 (or (= lt!239811 lt!239744) (= (bvadd lt!239811 lt!239811) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522683 () Bool)

(declare-fun e!304851 () Bool)

(declare-fun e!304849 () Bool)

(assert (=> b!522683 (= e!304851 e!304849)))

(declare-fun res!320356 () Bool)

(declare-fun lt!239810 () SeekEntryResult!4457)

(assert (=> b!522683 (= res!320356 (and (is-Intermediate!4457 lt!239810) (not (undefined!5269 lt!239810)) (bvslt (x!49030 lt!239810) #b01111111111111111111111111111110) (bvsge (x!49030 lt!239810) #b00000000000000000000000000000000) (bvsge (x!49030 lt!239810) #b00000000000000000000000000000000)))))

(assert (=> b!522683 (=> (not res!320356) (not e!304849))))

(declare-fun b!522684 () Bool)

(assert (=> b!522684 (= e!304851 (bvsge (x!49030 lt!239810) #b01111111111111111111111111111110))))

(declare-fun b!522685 () Bool)

(assert (=> b!522685 (and (bvsge (index!20033 lt!239810) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239810) (size!16347 lt!239739)))))

(declare-fun e!304847 () Bool)

(assert (=> b!522685 (= e!304847 (= (select (arr!15983 lt!239739) (index!20033 lt!239810)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!522686 () Bool)

(assert (=> b!522686 (and (bvsge (index!20033 lt!239810) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239810) (size!16347 lt!239739)))))

(declare-fun res!320357 () Bool)

(assert (=> b!522686 (= res!320357 (= (select (arr!15983 lt!239739) (index!20033 lt!239810)) lt!239744))))

(assert (=> b!522686 (=> res!320357 e!304847)))

(assert (=> b!522686 (= e!304849 e!304847)))

(declare-fun d!80329 () Bool)

(assert (=> d!80329 e!304851))

(declare-fun c!61464 () Bool)

(assert (=> d!80329 (= c!61464 (and (is-Intermediate!4457 lt!239810) (undefined!5269 lt!239810)))))

(assert (=> d!80329 (= lt!239810 e!304848)))

(declare-fun c!61465 () Bool)

(assert (=> d!80329 (= c!61465 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80329 (= lt!239811 (select (arr!15983 lt!239739) lt!239740))))

(assert (=> d!80329 (validMask!0 mask!3524)))

(assert (=> d!80329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239740 lt!239744 lt!239739 mask!3524) lt!239810)))

(declare-fun b!522687 () Bool)

(assert (=> b!522687 (= e!304850 (Intermediate!4457 false lt!239740 #b00000000000000000000000000000000))))

(declare-fun b!522688 () Bool)

(assert (=> b!522688 (and (bvsge (index!20033 lt!239810) #b00000000000000000000000000000000) (bvslt (index!20033 lt!239810) (size!16347 lt!239739)))))

(declare-fun res!320358 () Bool)

(assert (=> b!522688 (= res!320358 (= (select (arr!15983 lt!239739) (index!20033 lt!239810)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522688 (=> res!320358 e!304847)))

(declare-fun b!522689 () Bool)

(assert (=> b!522689 (= e!304850 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!239740 #b00000000000000000000000000000000 mask!3524) lt!239744 lt!239739 mask!3524))))

(assert (= (and d!80329 c!61465) b!522681))

(assert (= (and d!80329 (not c!61465)) b!522682))

(assert (= (and b!522682 c!61466) b!522687))

(assert (= (and b!522682 (not c!61466)) b!522689))

(assert (= (and d!80329 c!61464) b!522684))

(assert (= (and d!80329 (not c!61464)) b!522683))

(assert (= (and b!522683 res!320356) b!522686))

(assert (= (and b!522686 (not res!320357)) b!522688))

(assert (= (and b!522688 (not res!320358)) b!522685))

(declare-fun m!503579 () Bool)

(assert (=> b!522689 m!503579))

(assert (=> b!522689 m!503579))

(declare-fun m!503581 () Bool)

(assert (=> b!522689 m!503581))

(declare-fun m!503583 () Bool)

(assert (=> d!80329 m!503583))

(assert (=> d!80329 m!503469))

(declare-fun m!503585 () Bool)

(assert (=> b!522686 m!503585))

(assert (=> b!522688 m!503585))

(assert (=> b!522685 m!503585))

(assert (=> b!522528 d!80329))

(declare-fun d!80331 () Bool)

(assert (=> d!80331 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47474 d!80331))

(declare-fun d!80339 () Bool)

(assert (=> d!80339 (= (array_inv!11757 a!3235) (bvsge (size!16347 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47474 d!80339))

(declare-fun b!522740 () Bool)

(declare-fun e!304888 () Bool)

(declare-fun call!31818 () Bool)

(assert (=> b!522740 (= e!304888 call!31818)))

(declare-fun b!522741 () Bool)

(declare-fun e!304886 () Bool)

(declare-fun contains!2771 (List!10194 (_ BitVec 64)) Bool)

(assert (=> b!522741 (= e!304886 (contains!2771 Nil!10191 (select (arr!15983 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80341 () Bool)

(declare-fun res!320382 () Bool)

(declare-fun e!304887 () Bool)

(assert (=> d!80341 (=> res!320382 e!304887)))

(assert (=> d!80341 (= res!320382 (bvsge #b00000000000000000000000000000000 (size!16347 a!3235)))))

(assert (=> d!80341 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10191) e!304887)))

(declare-fun b!522742 () Bool)

(declare-fun e!304885 () Bool)

(assert (=> b!522742 (= e!304887 e!304885)))

(declare-fun res!320380 () Bool)

(assert (=> b!522742 (=> (not res!320380) (not e!304885))))

(assert (=> b!522742 (= res!320380 (not e!304886))))

(declare-fun res!320381 () Bool)

(assert (=> b!522742 (=> (not res!320381) (not e!304886))))

(assert (=> b!522742 (= res!320381 (validKeyInArray!0 (select (arr!15983 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31815 () Bool)

(declare-fun c!61482 () Bool)

(assert (=> bm!31815 (= call!31818 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61482 (Cons!10190 (select (arr!15983 a!3235) #b00000000000000000000000000000000) Nil!10191) Nil!10191)))))

(declare-fun b!522743 () Bool)

(assert (=> b!522743 (= e!304885 e!304888)))

(assert (=> b!522743 (= c!61482 (validKeyInArray!0 (select (arr!15983 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522744 () Bool)

(assert (=> b!522744 (= e!304888 call!31818)))

(assert (= (and d!80341 (not res!320382)) b!522742))

(assert (= (and b!522742 res!320381) b!522741))

(assert (= (and b!522742 res!320380) b!522743))

(assert (= (and b!522743 c!61482) b!522744))

(assert (= (and b!522743 (not c!61482)) b!522740))

(assert (= (or b!522744 b!522740) bm!31815))

(declare-fun m!503611 () Bool)

(assert (=> b!522741 m!503611))

(assert (=> b!522741 m!503611))

(declare-fun m!503613 () Bool)

(assert (=> b!522741 m!503613))

(assert (=> b!522742 m!503611))

(assert (=> b!522742 m!503611))

(declare-fun m!503615 () Bool)

(assert (=> b!522742 m!503615))

(assert (=> bm!31815 m!503611))

(declare-fun m!503617 () Bool)

(assert (=> bm!31815 m!503617))

(assert (=> b!522743 m!503611))

(assert (=> b!522743 m!503611))

(assert (=> b!522743 m!503615))

(assert (=> b!522521 d!80341))

(declare-fun b!522811 () Bool)

(declare-fun e!304930 () SeekEntryResult!4457)

(declare-fun lt!239862 () SeekEntryResult!4457)

(assert (=> b!522811 (= e!304930 (Found!4457 (index!20033 lt!239862)))))

(declare-fun b!522812 () Bool)

(declare-fun e!304931 () SeekEntryResult!4457)

(assert (=> b!522812 (= e!304931 e!304930)))

(declare-fun lt!239864 () (_ BitVec 64))

(assert (=> b!522812 (= lt!239864 (select (arr!15983 a!3235) (index!20033 lt!239862)))))

(declare-fun c!61509 () Bool)

(assert (=> b!522812 (= c!61509 (= lt!239864 (select (arr!15983 a!3235) j!176)))))

(declare-fun d!80353 () Bool)

(declare-fun lt!239863 () SeekEntryResult!4457)

(assert (=> d!80353 (and (or (is-Undefined!4457 lt!239863) (not (is-Found!4457 lt!239863)) (and (bvsge (index!20032 lt!239863) #b00000000000000000000000000000000) (bvslt (index!20032 lt!239863) (size!16347 a!3235)))) (or (is-Undefined!4457 lt!239863) (is-Found!4457 lt!239863) (not (is-MissingZero!4457 lt!239863)) (and (bvsge (index!20031 lt!239863) #b00000000000000000000000000000000) (bvslt (index!20031 lt!239863) (size!16347 a!3235)))) (or (is-Undefined!4457 lt!239863) (is-Found!4457 lt!239863) (is-MissingZero!4457 lt!239863) (not (is-MissingVacant!4457 lt!239863)) (and (bvsge (index!20034 lt!239863) #b00000000000000000000000000000000) (bvslt (index!20034 lt!239863) (size!16347 a!3235)))) (or (is-Undefined!4457 lt!239863) (ite (is-Found!4457 lt!239863) (= (select (arr!15983 a!3235) (index!20032 lt!239863)) (select (arr!15983 a!3235) j!176)) (ite (is-MissingZero!4457 lt!239863) (= (select (arr!15983 a!3235) (index!20031 lt!239863)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4457 lt!239863) (= (select (arr!15983 a!3235) (index!20034 lt!239863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80353 (= lt!239863 e!304931)))

(declare-fun c!61507 () Bool)

(assert (=> d!80353 (= c!61507 (and (is-Intermediate!4457 lt!239862) (undefined!5269 lt!239862)))))

(assert (=> d!80353 (= lt!239862 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15983 a!3235) j!176) mask!3524) (select (arr!15983 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80353 (validMask!0 mask!3524)))

(assert (=> d!80353 (= (seekEntryOrOpen!0 (select (arr!15983 a!3235) j!176) a!3235 mask!3524) lt!239863)))

(declare-fun e!304932 () SeekEntryResult!4457)

(declare-fun b!522813 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33260 (_ BitVec 32)) SeekEntryResult!4457)

(assert (=> b!522813 (= e!304932 (seekKeyOrZeroReturnVacant!0 (x!49030 lt!239862) (index!20033 lt!239862) (index!20033 lt!239862) (select (arr!15983 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!522814 () Bool)

(assert (=> b!522814 (= e!304931 Undefined!4457)))

(declare-fun b!522815 () Bool)

(assert (=> b!522815 (= e!304932 (MissingZero!4457 (index!20033 lt!239862)))))

(declare-fun b!522816 () Bool)

(declare-fun c!61508 () Bool)

(assert (=> b!522816 (= c!61508 (= lt!239864 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!522816 (= e!304930 e!304932)))

(assert (= (and d!80353 c!61507) b!522814))

(assert (= (and d!80353 (not c!61507)) b!522812))

(assert (= (and b!522812 c!61509) b!522811))

(assert (= (and b!522812 (not c!61509)) b!522816))

(assert (= (and b!522816 c!61508) b!522815))

(assert (= (and b!522816 (not c!61508)) b!522813))

(declare-fun m!503683 () Bool)

(assert (=> b!522812 m!503683))

(declare-fun m!503685 () Bool)

(assert (=> d!80353 m!503685))

(assert (=> d!80353 m!503479))

(assert (=> d!80353 m!503481))

(assert (=> d!80353 m!503469))

(declare-fun m!503687 () Bool)

(assert (=> d!80353 m!503687))

(assert (=> d!80353 m!503481))

(assert (=> d!80353 m!503479))

(declare-fun m!503689 () Bool)

(assert (=> d!80353 m!503689))

(declare-fun m!503691 () Bool)

(assert (=> d!80353 m!503691))

(assert (=> b!522813 m!503479))

(declare-fun m!503693 () Bool)

(assert (=> b!522813 m!503693))

(assert (=> b!522526 d!80353))

(declare-fun b!522817 () Bool)

(declare-fun e!304933 () Bool)

(declare-fun e!304935 () Bool)

(assert (=> b!522817 (= e!304933 e!304935)))

(declare-fun c!61510 () Bool)

(assert (=> b!522817 (= c!61510 (validKeyInArray!0 (select (arr!15983 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!522818 () Bool)

(declare-fun call!31825 () Bool)

(assert (=> b!522818 (= e!304935 call!31825)))

(declare-fun bm!31822 () Bool)

(assert (=> bm!31822 (= call!31825 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!522819 () Bool)

(declare-fun e!304934 () Bool)

(assert (=> b!522819 (= e!304934 call!31825)))

(declare-fun b!522820 () Bool)

