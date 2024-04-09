; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130164 () Bool)

(assert start!130164)

(declare-fun b!1527526 () Bool)

(declare-datatypes ((array!101504 0))(
  ( (array!101505 (arr!48974 (Array (_ BitVec 32) (_ BitVec 64))) (size!49525 (_ BitVec 32))) )
))
(declare-fun lt!661445 () array!101504)

(declare-fun lt!661446 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun e!851399 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13160 0))(
  ( (MissingZero!13160 (index!55034 (_ BitVec 32))) (Found!13160 (index!55035 (_ BitVec 32))) (Intermediate!13160 (undefined!13972 Bool) (index!55036 (_ BitVec 32)) (x!136729 (_ BitVec 32))) (Undefined!13160) (MissingVacant!13160 (index!55037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101504 (_ BitVec 32)) SeekEntryResult!13160)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101504 (_ BitVec 32)) SeekEntryResult!13160)

(assert (=> b!1527526 (= e!851399 (= (seekEntryOrOpen!0 lt!661446 lt!661445 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661446 lt!661445 mask!2512)))))

(declare-fun b!1527527 () Bool)

(declare-fun e!851393 () Bool)

(declare-fun e!851398 () Bool)

(assert (=> b!1527527 (= e!851393 e!851398)))

(declare-fun res!1045704 () Bool)

(assert (=> b!1527527 (=> (not res!1045704) (not e!851398))))

(declare-fun lt!661447 () SeekEntryResult!13160)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101504 (_ BitVec 32)) SeekEntryResult!13160)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527527 (= res!1045704 (= lt!661447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661446 mask!2512) lt!661446 lt!661445 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101504)

(assert (=> b!1527527 (= lt!661446 (select (store (arr!48974 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527527 (= lt!661445 (array!101505 (store (arr!48974 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49525 a!2804)))))

(declare-fun res!1045707 () Bool)

(declare-fun e!851395 () Bool)

(assert (=> start!130164 (=> (not res!1045707) (not e!851395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130164 (= res!1045707 (validMask!0 mask!2512))))

(assert (=> start!130164 e!851395))

(assert (=> start!130164 true))

(declare-fun array_inv!37919 (array!101504) Bool)

(assert (=> start!130164 (array_inv!37919 a!2804)))

(declare-fun b!1527528 () Bool)

(declare-fun res!1045698 () Bool)

(assert (=> b!1527528 (=> (not res!1045698) (not e!851393))))

(declare-fun lt!661444 () SeekEntryResult!13160)

(assert (=> b!1527528 (= res!1045698 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661444))))

(declare-fun b!1527529 () Bool)

(declare-fun res!1045709 () Bool)

(assert (=> b!1527529 (=> (not res!1045709) (not e!851395))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527529 (= res!1045709 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49525 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49525 a!2804))))))

(declare-fun b!1527530 () Bool)

(declare-fun res!1045699 () Bool)

(assert (=> b!1527530 (=> (not res!1045699) (not e!851395))))

(assert (=> b!1527530 (= res!1045699 (and (= (size!49525 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49525 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49525 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527531 () Bool)

(declare-fun res!1045703 () Bool)

(assert (=> b!1527531 (=> (not res!1045703) (not e!851395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527531 (= res!1045703 (validKeyInArray!0 (select (arr!48974 a!2804) j!70)))))

(declare-fun b!1527532 () Bool)

(declare-fun res!1045700 () Bool)

(assert (=> b!1527532 (=> (not res!1045700) (not e!851395))))

(assert (=> b!1527532 (= res!1045700 (validKeyInArray!0 (select (arr!48974 a!2804) i!961)))))

(declare-fun b!1527533 () Bool)

(declare-fun res!1045710 () Bool)

(assert (=> b!1527533 (=> (not res!1045710) (not e!851395))))

(declare-datatypes ((List!35637 0))(
  ( (Nil!35634) (Cons!35633 (h!37067 (_ BitVec 64)) (t!50338 List!35637)) )
))
(declare-fun arrayNoDuplicates!0 (array!101504 (_ BitVec 32) List!35637) Bool)

(assert (=> b!1527533 (= res!1045710 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35634))))

(declare-fun b!1527534 () Bool)

(declare-fun e!851396 () Bool)

(declare-fun lt!661441 () SeekEntryResult!13160)

(assert (=> b!1527534 (= e!851396 (= lt!661441 (Found!13160 j!70)))))

(assert (=> b!1527534 e!851399))

(declare-fun res!1045706 () Bool)

(assert (=> b!1527534 (=> (not res!1045706) (not e!851399))))

(declare-fun lt!661443 () SeekEntryResult!13160)

(assert (=> b!1527534 (= res!1045706 (= lt!661443 lt!661441))))

(assert (=> b!1527534 (= lt!661441 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1527534 (= lt!661443 (seekEntryOrOpen!0 (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!851397 () Bool)

(declare-fun b!1527535 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101504 (_ BitVec 32)) SeekEntryResult!13160)

(assert (=> b!1527535 (= e!851397 (= (seekEntry!0 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) (Found!13160 j!70)))))

(declare-fun b!1527536 () Bool)

(assert (=> b!1527536 (= e!851395 e!851393)))

(declare-fun res!1045708 () Bool)

(assert (=> b!1527536 (=> (not res!1045708) (not e!851393))))

(assert (=> b!1527536 (= res!1045708 (= lt!661447 lt!661444))))

(assert (=> b!1527536 (= lt!661444 (Intermediate!13160 false resIndex!21 resX!21))))

(assert (=> b!1527536 (= lt!661447 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527537 () Bool)

(assert (=> b!1527537 (= e!851398 (not e!851396))))

(declare-fun res!1045701 () Bool)

(assert (=> b!1527537 (=> res!1045701 e!851396)))

(assert (=> b!1527537 (= res!1045701 (or (not (= (select (arr!48974 a!2804) j!70) lt!661446)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48974 a!2804) index!487) (select (arr!48974 a!2804) j!70)) (not (= (select (arr!48974 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527537 e!851397))

(declare-fun res!1045705 () Bool)

(assert (=> b!1527537 (=> (not res!1045705) (not e!851397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101504 (_ BitVec 32)) Bool)

(assert (=> b!1527537 (= res!1045705 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51060 0))(
  ( (Unit!51061) )
))
(declare-fun lt!661442 () Unit!51060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51060)

(assert (=> b!1527537 (= lt!661442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527538 () Bool)

(declare-fun res!1045702 () Bool)

(assert (=> b!1527538 (=> (not res!1045702) (not e!851395))))

(assert (=> b!1527538 (= res!1045702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130164 res!1045707) b!1527530))

(assert (= (and b!1527530 res!1045699) b!1527532))

(assert (= (and b!1527532 res!1045700) b!1527531))

(assert (= (and b!1527531 res!1045703) b!1527538))

(assert (= (and b!1527538 res!1045702) b!1527533))

(assert (= (and b!1527533 res!1045710) b!1527529))

(assert (= (and b!1527529 res!1045709) b!1527536))

(assert (= (and b!1527536 res!1045708) b!1527528))

(assert (= (and b!1527528 res!1045698) b!1527527))

(assert (= (and b!1527527 res!1045704) b!1527537))

(assert (= (and b!1527537 res!1045705) b!1527535))

(assert (= (and b!1527537 (not res!1045701)) b!1527534))

(assert (= (and b!1527534 res!1045706) b!1527526))

(declare-fun m!1410499 () Bool)

(assert (=> b!1527536 m!1410499))

(assert (=> b!1527536 m!1410499))

(declare-fun m!1410501 () Bool)

(assert (=> b!1527536 m!1410501))

(assert (=> b!1527536 m!1410501))

(assert (=> b!1527536 m!1410499))

(declare-fun m!1410503 () Bool)

(assert (=> b!1527536 m!1410503))

(assert (=> b!1527537 m!1410499))

(declare-fun m!1410505 () Bool)

(assert (=> b!1527537 m!1410505))

(declare-fun m!1410507 () Bool)

(assert (=> b!1527537 m!1410507))

(declare-fun m!1410509 () Bool)

(assert (=> b!1527537 m!1410509))

(assert (=> b!1527531 m!1410499))

(assert (=> b!1527531 m!1410499))

(declare-fun m!1410511 () Bool)

(assert (=> b!1527531 m!1410511))

(assert (=> b!1527535 m!1410499))

(assert (=> b!1527535 m!1410499))

(declare-fun m!1410513 () Bool)

(assert (=> b!1527535 m!1410513))

(assert (=> b!1527534 m!1410499))

(assert (=> b!1527534 m!1410499))

(declare-fun m!1410515 () Bool)

(assert (=> b!1527534 m!1410515))

(assert (=> b!1527534 m!1410499))

(declare-fun m!1410517 () Bool)

(assert (=> b!1527534 m!1410517))

(declare-fun m!1410519 () Bool)

(assert (=> start!130164 m!1410519))

(declare-fun m!1410521 () Bool)

(assert (=> start!130164 m!1410521))

(declare-fun m!1410523 () Bool)

(assert (=> b!1527527 m!1410523))

(assert (=> b!1527527 m!1410523))

(declare-fun m!1410525 () Bool)

(assert (=> b!1527527 m!1410525))

(declare-fun m!1410527 () Bool)

(assert (=> b!1527527 m!1410527))

(declare-fun m!1410529 () Bool)

(assert (=> b!1527527 m!1410529))

(declare-fun m!1410531 () Bool)

(assert (=> b!1527533 m!1410531))

(declare-fun m!1410533 () Bool)

(assert (=> b!1527526 m!1410533))

(declare-fun m!1410535 () Bool)

(assert (=> b!1527526 m!1410535))

(declare-fun m!1410537 () Bool)

(assert (=> b!1527532 m!1410537))

(assert (=> b!1527532 m!1410537))

(declare-fun m!1410539 () Bool)

(assert (=> b!1527532 m!1410539))

(declare-fun m!1410541 () Bool)

(assert (=> b!1527538 m!1410541))

(assert (=> b!1527528 m!1410499))

(assert (=> b!1527528 m!1410499))

(declare-fun m!1410543 () Bool)

(assert (=> b!1527528 m!1410543))

(check-sat (not b!1527535) (not b!1527527) (not b!1527536) (not b!1527537) (not b!1527534) (not b!1527533) (not b!1527532) (not b!1527538) (not start!130164) (not b!1527526) (not b!1527531) (not b!1527528))
(check-sat)
(get-model)

(declare-fun d!159513 () Bool)

(assert (=> d!159513 (= (validKeyInArray!0 (select (arr!48974 a!2804) j!70)) (and (not (= (select (arr!48974 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48974 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527531 d!159513))

(declare-fun d!159515 () Bool)

(declare-fun res!1045755 () Bool)

(declare-fun e!851428 () Bool)

(assert (=> d!159515 (=> res!1045755 e!851428)))

(assert (=> d!159515 (= res!1045755 (bvsge j!70 (size!49525 a!2804)))))

(assert (=> d!159515 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!851428)))

(declare-fun b!1527586 () Bool)

(declare-fun e!851429 () Bool)

(assert (=> b!1527586 (= e!851428 e!851429)))

(declare-fun c!140471 () Bool)

(assert (=> b!1527586 (= c!140471 (validKeyInArray!0 (select (arr!48974 a!2804) j!70)))))

(declare-fun b!1527587 () Bool)

(declare-fun e!851427 () Bool)

(assert (=> b!1527587 (= e!851429 e!851427)))

(declare-fun lt!661476 () (_ BitVec 64))

(assert (=> b!1527587 (= lt!661476 (select (arr!48974 a!2804) j!70))))

(declare-fun lt!661477 () Unit!51060)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101504 (_ BitVec 64) (_ BitVec 32)) Unit!51060)

(assert (=> b!1527587 (= lt!661477 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661476 j!70))))

(declare-fun arrayContainsKey!0 (array!101504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1527587 (arrayContainsKey!0 a!2804 lt!661476 #b00000000000000000000000000000000)))

(declare-fun lt!661475 () Unit!51060)

(assert (=> b!1527587 (= lt!661475 lt!661477)))

(declare-fun res!1045754 () Bool)

(assert (=> b!1527587 (= res!1045754 (= (seekEntryOrOpen!0 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) (Found!13160 j!70)))))

(assert (=> b!1527587 (=> (not res!1045754) (not e!851427))))

(declare-fun bm!68466 () Bool)

(declare-fun call!68469 () Bool)

(assert (=> bm!68466 (= call!68469 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1527588 () Bool)

(assert (=> b!1527588 (= e!851427 call!68469)))

(declare-fun b!1527589 () Bool)

(assert (=> b!1527589 (= e!851429 call!68469)))

(assert (= (and d!159515 (not res!1045755)) b!1527586))

(assert (= (and b!1527586 c!140471) b!1527587))

(assert (= (and b!1527586 (not c!140471)) b!1527589))

(assert (= (and b!1527587 res!1045754) b!1527588))

(assert (= (or b!1527588 b!1527589) bm!68466))

(assert (=> b!1527586 m!1410499))

(assert (=> b!1527586 m!1410499))

(assert (=> b!1527586 m!1410511))

(assert (=> b!1527587 m!1410499))

(declare-fun m!1410591 () Bool)

(assert (=> b!1527587 m!1410591))

(declare-fun m!1410593 () Bool)

(assert (=> b!1527587 m!1410593))

(assert (=> b!1527587 m!1410499))

(assert (=> b!1527587 m!1410517))

(declare-fun m!1410595 () Bool)

(assert (=> bm!68466 m!1410595))

(assert (=> b!1527537 d!159515))

(declare-fun d!159517 () Bool)

(assert (=> d!159517 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!661480 () Unit!51060)

(declare-fun choose!38 (array!101504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51060)

(assert (=> d!159517 (= lt!661480 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159517 (validMask!0 mask!2512)))

(assert (=> d!159517 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!661480)))

(declare-fun bs!43808 () Bool)

(assert (= bs!43808 d!159517))

(assert (=> bs!43808 m!1410507))

(declare-fun m!1410597 () Bool)

(assert (=> bs!43808 m!1410597))

(assert (=> bs!43808 m!1410519))

(assert (=> b!1527537 d!159517))

(declare-fun d!159523 () Bool)

(declare-fun res!1045757 () Bool)

(declare-fun e!851431 () Bool)

(assert (=> d!159523 (=> res!1045757 e!851431)))

(assert (=> d!159523 (= res!1045757 (bvsge #b00000000000000000000000000000000 (size!49525 a!2804)))))

(assert (=> d!159523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!851431)))

(declare-fun b!1527590 () Bool)

(declare-fun e!851432 () Bool)

(assert (=> b!1527590 (= e!851431 e!851432)))

(declare-fun c!140472 () Bool)

(assert (=> b!1527590 (= c!140472 (validKeyInArray!0 (select (arr!48974 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1527591 () Bool)

(declare-fun e!851430 () Bool)

(assert (=> b!1527591 (= e!851432 e!851430)))

(declare-fun lt!661482 () (_ BitVec 64))

(assert (=> b!1527591 (= lt!661482 (select (arr!48974 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!661483 () Unit!51060)

(assert (=> b!1527591 (= lt!661483 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661482 #b00000000000000000000000000000000))))

(assert (=> b!1527591 (arrayContainsKey!0 a!2804 lt!661482 #b00000000000000000000000000000000)))

(declare-fun lt!661481 () Unit!51060)

(assert (=> b!1527591 (= lt!661481 lt!661483)))

(declare-fun res!1045756 () Bool)

(assert (=> b!1527591 (= res!1045756 (= (seekEntryOrOpen!0 (select (arr!48974 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13160 #b00000000000000000000000000000000)))))

(assert (=> b!1527591 (=> (not res!1045756) (not e!851430))))

(declare-fun bm!68467 () Bool)

(declare-fun call!68470 () Bool)

(assert (=> bm!68467 (= call!68470 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1527592 () Bool)

(assert (=> b!1527592 (= e!851430 call!68470)))

(declare-fun b!1527593 () Bool)

(assert (=> b!1527593 (= e!851432 call!68470)))

(assert (= (and d!159523 (not res!1045757)) b!1527590))

(assert (= (and b!1527590 c!140472) b!1527591))

(assert (= (and b!1527590 (not c!140472)) b!1527593))

(assert (= (and b!1527591 res!1045756) b!1527592))

(assert (= (or b!1527592 b!1527593) bm!68467))

(declare-fun m!1410599 () Bool)

(assert (=> b!1527590 m!1410599))

(assert (=> b!1527590 m!1410599))

(declare-fun m!1410601 () Bool)

(assert (=> b!1527590 m!1410601))

(assert (=> b!1527591 m!1410599))

(declare-fun m!1410603 () Bool)

(assert (=> b!1527591 m!1410603))

(declare-fun m!1410605 () Bool)

(assert (=> b!1527591 m!1410605))

(assert (=> b!1527591 m!1410599))

(declare-fun m!1410607 () Bool)

(assert (=> b!1527591 m!1410607))

(declare-fun m!1410609 () Bool)

(assert (=> bm!68467 m!1410609))

(assert (=> b!1527538 d!159523))

(declare-fun b!1527642 () Bool)

(declare-fun lt!661501 () SeekEntryResult!13160)

(assert (=> b!1527642 (and (bvsge (index!55036 lt!661501) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661501) (size!49525 lt!661445)))))

(declare-fun res!1045764 () Bool)

(assert (=> b!1527642 (= res!1045764 (= (select (arr!48974 lt!661445) (index!55036 lt!661501)) lt!661446))))

(declare-fun e!851461 () Bool)

(assert (=> b!1527642 (=> res!1045764 e!851461)))

(declare-fun e!851458 () Bool)

(assert (=> b!1527642 (= e!851458 e!851461)))

(declare-fun b!1527643 () Bool)

(declare-fun e!851459 () Bool)

(assert (=> b!1527643 (= e!851459 (bvsge (x!136729 lt!661501) #b01111111111111111111111111111110))))

(declare-fun b!1527644 () Bool)

(assert (=> b!1527644 (and (bvsge (index!55036 lt!661501) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661501) (size!49525 lt!661445)))))

(assert (=> b!1527644 (= e!851461 (= (select (arr!48974 lt!661445) (index!55036 lt!661501)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527645 () Bool)

(declare-fun e!851462 () SeekEntryResult!13160)

(assert (=> b!1527645 (= e!851462 (Intermediate!13160 false (toIndex!0 lt!661446 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527646 () Bool)

(assert (=> b!1527646 (= e!851459 e!851458)))

(declare-fun res!1045766 () Bool)

(get-info :version)

(assert (=> b!1527646 (= res!1045766 (and ((_ is Intermediate!13160) lt!661501) (not (undefined!13972 lt!661501)) (bvslt (x!136729 lt!661501) #b01111111111111111111111111111110) (bvsge (x!136729 lt!661501) #b00000000000000000000000000000000) (bvsge (x!136729 lt!661501) #b00000000000000000000000000000000)))))

(assert (=> b!1527646 (=> (not res!1045766) (not e!851458))))

(declare-fun d!159525 () Bool)

(assert (=> d!159525 e!851459))

(declare-fun c!140496 () Bool)

(assert (=> d!159525 (= c!140496 (and ((_ is Intermediate!13160) lt!661501) (undefined!13972 lt!661501)))))

(declare-fun e!851460 () SeekEntryResult!13160)

(assert (=> d!159525 (= lt!661501 e!851460)))

(declare-fun c!140494 () Bool)

(assert (=> d!159525 (= c!140494 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!661500 () (_ BitVec 64))

(assert (=> d!159525 (= lt!661500 (select (arr!48974 lt!661445) (toIndex!0 lt!661446 mask!2512)))))

(assert (=> d!159525 (validMask!0 mask!2512)))

(assert (=> d!159525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661446 mask!2512) lt!661446 lt!661445 mask!2512) lt!661501)))

(declare-fun b!1527647 () Bool)

(assert (=> b!1527647 (and (bvsge (index!55036 lt!661501) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661501) (size!49525 lt!661445)))))

(declare-fun res!1045765 () Bool)

(assert (=> b!1527647 (= res!1045765 (= (select (arr!48974 lt!661445) (index!55036 lt!661501)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527647 (=> res!1045765 e!851461)))

(declare-fun b!1527648 () Bool)

(assert (=> b!1527648 (= e!851460 e!851462)))

(declare-fun c!140495 () Bool)

(assert (=> b!1527648 (= c!140495 (or (= lt!661500 lt!661446) (= (bvadd lt!661500 lt!661500) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527649 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527649 (= e!851462 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!661446 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!661446 lt!661445 mask!2512))))

(declare-fun b!1527650 () Bool)

(assert (=> b!1527650 (= e!851460 (Intermediate!13160 true (toIndex!0 lt!661446 mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159525 c!140494) b!1527650))

(assert (= (and d!159525 (not c!140494)) b!1527648))

(assert (= (and b!1527648 c!140495) b!1527645))

(assert (= (and b!1527648 (not c!140495)) b!1527649))

(assert (= (and d!159525 c!140496) b!1527643))

(assert (= (and d!159525 (not c!140496)) b!1527646))

(assert (= (and b!1527646 res!1045766) b!1527642))

(assert (= (and b!1527642 (not res!1045764)) b!1527647))

(assert (= (and b!1527647 (not res!1045765)) b!1527644))

(assert (=> b!1527649 m!1410523))

(declare-fun m!1410619 () Bool)

(assert (=> b!1527649 m!1410619))

(assert (=> b!1527649 m!1410619))

(declare-fun m!1410621 () Bool)

(assert (=> b!1527649 m!1410621))

(assert (=> d!159525 m!1410523))

(declare-fun m!1410623 () Bool)

(assert (=> d!159525 m!1410623))

(assert (=> d!159525 m!1410519))

(declare-fun m!1410625 () Bool)

(assert (=> b!1527647 m!1410625))

(assert (=> b!1527644 m!1410625))

(assert (=> b!1527642 m!1410625))

(assert (=> b!1527527 d!159525))

(declare-fun d!159533 () Bool)

(declare-fun lt!661510 () (_ BitVec 32))

(declare-fun lt!661509 () (_ BitVec 32))

(assert (=> d!159533 (= lt!661510 (bvmul (bvxor lt!661509 (bvlshr lt!661509 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159533 (= lt!661509 ((_ extract 31 0) (bvand (bvxor lt!661446 (bvlshr lt!661446 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159533 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1045767 (let ((h!37069 ((_ extract 31 0) (bvand (bvxor lt!661446 (bvlshr lt!661446 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136733 (bvmul (bvxor h!37069 (bvlshr h!37069 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136733 (bvlshr x!136733 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1045767 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1045767 #b00000000000000000000000000000000))))))

(assert (=> d!159533 (= (toIndex!0 lt!661446 mask!2512) (bvand (bvxor lt!661510 (bvlshr lt!661510 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1527527 d!159533))

(declare-fun b!1527661 () Bool)

(declare-fun lt!661512 () SeekEntryResult!13160)

(assert (=> b!1527661 (and (bvsge (index!55036 lt!661512) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661512) (size!49525 a!2804)))))

(declare-fun res!1045770 () Bool)

(assert (=> b!1527661 (= res!1045770 (= (select (arr!48974 a!2804) (index!55036 lt!661512)) (select (arr!48974 a!2804) j!70)))))

(declare-fun e!851471 () Bool)

(assert (=> b!1527661 (=> res!1045770 e!851471)))

(declare-fun e!851468 () Bool)

(assert (=> b!1527661 (= e!851468 e!851471)))

(declare-fun b!1527662 () Bool)

(declare-fun e!851469 () Bool)

(assert (=> b!1527662 (= e!851469 (bvsge (x!136729 lt!661512) #b01111111111111111111111111111110))))

(declare-fun b!1527663 () Bool)

(assert (=> b!1527663 (and (bvsge (index!55036 lt!661512) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661512) (size!49525 a!2804)))))

(assert (=> b!1527663 (= e!851471 (= (select (arr!48974 a!2804) (index!55036 lt!661512)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527664 () Bool)

(declare-fun e!851472 () SeekEntryResult!13160)

(assert (=> b!1527664 (= e!851472 (Intermediate!13160 false index!487 x!534))))

(declare-fun b!1527665 () Bool)

(assert (=> b!1527665 (= e!851469 e!851468)))

(declare-fun res!1045772 () Bool)

(assert (=> b!1527665 (= res!1045772 (and ((_ is Intermediate!13160) lt!661512) (not (undefined!13972 lt!661512)) (bvslt (x!136729 lt!661512) #b01111111111111111111111111111110) (bvsge (x!136729 lt!661512) #b00000000000000000000000000000000) (bvsge (x!136729 lt!661512) x!534)))))

(assert (=> b!1527665 (=> (not res!1045772) (not e!851468))))

(declare-fun d!159539 () Bool)

(assert (=> d!159539 e!851469))

(declare-fun c!140502 () Bool)

(assert (=> d!159539 (= c!140502 (and ((_ is Intermediate!13160) lt!661512) (undefined!13972 lt!661512)))))

(declare-fun e!851470 () SeekEntryResult!13160)

(assert (=> d!159539 (= lt!661512 e!851470)))

(declare-fun c!140500 () Bool)

(assert (=> d!159539 (= c!140500 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661511 () (_ BitVec 64))

(assert (=> d!159539 (= lt!661511 (select (arr!48974 a!2804) index!487))))

(assert (=> d!159539 (validMask!0 mask!2512)))

(assert (=> d!159539 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661512)))

(declare-fun b!1527666 () Bool)

(assert (=> b!1527666 (and (bvsge (index!55036 lt!661512) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661512) (size!49525 a!2804)))))

(declare-fun res!1045771 () Bool)

(assert (=> b!1527666 (= res!1045771 (= (select (arr!48974 a!2804) (index!55036 lt!661512)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527666 (=> res!1045771 e!851471)))

(declare-fun b!1527667 () Bool)

(assert (=> b!1527667 (= e!851470 e!851472)))

(declare-fun c!140501 () Bool)

(assert (=> b!1527667 (= c!140501 (or (= lt!661511 (select (arr!48974 a!2804) j!70)) (= (bvadd lt!661511 lt!661511) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527668 () Bool)

(assert (=> b!1527668 (= e!851472 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527669 () Bool)

(assert (=> b!1527669 (= e!851470 (Intermediate!13160 true index!487 x!534))))

(assert (= (and d!159539 c!140500) b!1527669))

(assert (= (and d!159539 (not c!140500)) b!1527667))

(assert (= (and b!1527667 c!140501) b!1527664))

(assert (= (and b!1527667 (not c!140501)) b!1527668))

(assert (= (and d!159539 c!140502) b!1527662))

(assert (= (and d!159539 (not c!140502)) b!1527665))

(assert (= (and b!1527665 res!1045772) b!1527661))

(assert (= (and b!1527661 (not res!1045770)) b!1527666))

(assert (= (and b!1527666 (not res!1045771)) b!1527663))

(declare-fun m!1410637 () Bool)

(assert (=> b!1527668 m!1410637))

(assert (=> b!1527668 m!1410637))

(assert (=> b!1527668 m!1410499))

(declare-fun m!1410639 () Bool)

(assert (=> b!1527668 m!1410639))

(assert (=> d!159539 m!1410505))

(assert (=> d!159539 m!1410519))

(declare-fun m!1410641 () Bool)

(assert (=> b!1527666 m!1410641))

(assert (=> b!1527663 m!1410641))

(assert (=> b!1527661 m!1410641))

(assert (=> b!1527528 d!159539))

(declare-fun d!159541 () Bool)

(assert (=> d!159541 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130164 d!159541))

(declare-fun d!159545 () Bool)

(assert (=> d!159545 (= (array_inv!37919 a!2804) (bvsge (size!49525 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130164 d!159545))

(declare-fun b!1527747 () Bool)

(declare-fun e!851517 () SeekEntryResult!13160)

(declare-fun lt!661553 () SeekEntryResult!13160)

(assert (=> b!1527747 (= e!851517 (ite ((_ is MissingVacant!13160) lt!661553) (MissingZero!13160 (index!55037 lt!661553)) lt!661553))))

(declare-fun lt!661555 () SeekEntryResult!13160)

(assert (=> b!1527747 (= lt!661553 (seekKeyOrZeroReturnVacant!0 (x!136729 lt!661555) (index!55036 lt!661555) (index!55036 lt!661555) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527748 () Bool)

(assert (=> b!1527748 (= e!851517 (MissingZero!13160 (index!55036 lt!661555)))))

(declare-fun b!1527749 () Bool)

(declare-fun e!851518 () SeekEntryResult!13160)

(assert (=> b!1527749 (= e!851518 (Found!13160 (index!55036 lt!661555)))))

(declare-fun b!1527750 () Bool)

(declare-fun e!851516 () SeekEntryResult!13160)

(assert (=> b!1527750 (= e!851516 Undefined!13160)))

(declare-fun b!1527751 () Bool)

(assert (=> b!1527751 (= e!851516 e!851518)))

(declare-fun lt!661554 () (_ BitVec 64))

(assert (=> b!1527751 (= lt!661554 (select (arr!48974 a!2804) (index!55036 lt!661555)))))

(declare-fun c!140538 () Bool)

(assert (=> b!1527751 (= c!140538 (= lt!661554 (select (arr!48974 a!2804) j!70)))))

(declare-fun b!1527752 () Bool)

(declare-fun c!140536 () Bool)

(assert (=> b!1527752 (= c!140536 (= lt!661554 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527752 (= e!851518 e!851517)))

(declare-fun d!159547 () Bool)

(declare-fun lt!661556 () SeekEntryResult!13160)

(assert (=> d!159547 (and (or ((_ is MissingVacant!13160) lt!661556) (not ((_ is Found!13160) lt!661556)) (and (bvsge (index!55035 lt!661556) #b00000000000000000000000000000000) (bvslt (index!55035 lt!661556) (size!49525 a!2804)))) (not ((_ is MissingVacant!13160) lt!661556)) (or (not ((_ is Found!13160) lt!661556)) (= (select (arr!48974 a!2804) (index!55035 lt!661556)) (select (arr!48974 a!2804) j!70))))))

(assert (=> d!159547 (= lt!661556 e!851516)))

(declare-fun c!140537 () Bool)

(assert (=> d!159547 (= c!140537 (and ((_ is Intermediate!13160) lt!661555) (undefined!13972 lt!661555)))))

(assert (=> d!159547 (= lt!661555 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159547 (validMask!0 mask!2512)))

(assert (=> d!159547 (= (seekEntry!0 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661556)))

(assert (= (and d!159547 c!140537) b!1527750))

(assert (= (and d!159547 (not c!140537)) b!1527751))

(assert (= (and b!1527751 c!140538) b!1527749))

(assert (= (and b!1527751 (not c!140538)) b!1527752))

(assert (= (and b!1527752 c!140536) b!1527748))

(assert (= (and b!1527752 (not c!140536)) b!1527747))

(assert (=> b!1527747 m!1410499))

(declare-fun m!1410689 () Bool)

(assert (=> b!1527747 m!1410689))

(declare-fun m!1410691 () Bool)

(assert (=> b!1527751 m!1410691))

(declare-fun m!1410693 () Bool)

(assert (=> d!159547 m!1410693))

(assert (=> d!159547 m!1410499))

(assert (=> d!159547 m!1410501))

(assert (=> d!159547 m!1410501))

(assert (=> d!159547 m!1410499))

(assert (=> d!159547 m!1410503))

(assert (=> d!159547 m!1410519))

(assert (=> b!1527535 d!159547))

(declare-fun b!1527753 () Bool)

(declare-fun lt!661558 () SeekEntryResult!13160)

(assert (=> b!1527753 (and (bvsge (index!55036 lt!661558) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661558) (size!49525 a!2804)))))

(declare-fun res!1045787 () Bool)

(assert (=> b!1527753 (= res!1045787 (= (select (arr!48974 a!2804) (index!55036 lt!661558)) (select (arr!48974 a!2804) j!70)))))

(declare-fun e!851522 () Bool)

(assert (=> b!1527753 (=> res!1045787 e!851522)))

(declare-fun e!851519 () Bool)

(assert (=> b!1527753 (= e!851519 e!851522)))

(declare-fun b!1527754 () Bool)

(declare-fun e!851520 () Bool)

(assert (=> b!1527754 (= e!851520 (bvsge (x!136729 lt!661558) #b01111111111111111111111111111110))))

(declare-fun b!1527755 () Bool)

(assert (=> b!1527755 (and (bvsge (index!55036 lt!661558) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661558) (size!49525 a!2804)))))

(assert (=> b!1527755 (= e!851522 (= (select (arr!48974 a!2804) (index!55036 lt!661558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527756 () Bool)

(declare-fun e!851523 () SeekEntryResult!13160)

(assert (=> b!1527756 (= e!851523 (Intermediate!13160 false (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527757 () Bool)

(assert (=> b!1527757 (= e!851520 e!851519)))

(declare-fun res!1045789 () Bool)

(assert (=> b!1527757 (= res!1045789 (and ((_ is Intermediate!13160) lt!661558) (not (undefined!13972 lt!661558)) (bvslt (x!136729 lt!661558) #b01111111111111111111111111111110) (bvsge (x!136729 lt!661558) #b00000000000000000000000000000000) (bvsge (x!136729 lt!661558) #b00000000000000000000000000000000)))))

(assert (=> b!1527757 (=> (not res!1045789) (not e!851519))))

(declare-fun d!159559 () Bool)

(assert (=> d!159559 e!851520))

(declare-fun c!140541 () Bool)

(assert (=> d!159559 (= c!140541 (and ((_ is Intermediate!13160) lt!661558) (undefined!13972 lt!661558)))))

(declare-fun e!851521 () SeekEntryResult!13160)

(assert (=> d!159559 (= lt!661558 e!851521)))

(declare-fun c!140539 () Bool)

(assert (=> d!159559 (= c!140539 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!661557 () (_ BitVec 64))

(assert (=> d!159559 (= lt!661557 (select (arr!48974 a!2804) (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512)))))

(assert (=> d!159559 (validMask!0 mask!2512)))

(assert (=> d!159559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661558)))

(declare-fun b!1527758 () Bool)

(assert (=> b!1527758 (and (bvsge (index!55036 lt!661558) #b00000000000000000000000000000000) (bvslt (index!55036 lt!661558) (size!49525 a!2804)))))

(declare-fun res!1045788 () Bool)

(assert (=> b!1527758 (= res!1045788 (= (select (arr!48974 a!2804) (index!55036 lt!661558)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527758 (=> res!1045788 e!851522)))

(declare-fun b!1527759 () Bool)

(assert (=> b!1527759 (= e!851521 e!851523)))

(declare-fun c!140540 () Bool)

(assert (=> b!1527759 (= c!140540 (or (= lt!661557 (select (arr!48974 a!2804) j!70)) (= (bvadd lt!661557 lt!661557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527760 () Bool)

(assert (=> b!1527760 (= e!851523 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527761 () Bool)

(assert (=> b!1527761 (= e!851521 (Intermediate!13160 true (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159559 c!140539) b!1527761))

(assert (= (and d!159559 (not c!140539)) b!1527759))

(assert (= (and b!1527759 c!140540) b!1527756))

(assert (= (and b!1527759 (not c!140540)) b!1527760))

(assert (= (and d!159559 c!140541) b!1527754))

(assert (= (and d!159559 (not c!140541)) b!1527757))

(assert (= (and b!1527757 res!1045789) b!1527753))

(assert (= (and b!1527753 (not res!1045787)) b!1527758))

(assert (= (and b!1527758 (not res!1045788)) b!1527755))

(assert (=> b!1527760 m!1410501))

(declare-fun m!1410695 () Bool)

(assert (=> b!1527760 m!1410695))

(assert (=> b!1527760 m!1410695))

(assert (=> b!1527760 m!1410499))

(declare-fun m!1410697 () Bool)

(assert (=> b!1527760 m!1410697))

(assert (=> d!159559 m!1410501))

(declare-fun m!1410699 () Bool)

(assert (=> d!159559 m!1410699))

(assert (=> d!159559 m!1410519))

(declare-fun m!1410701 () Bool)

(assert (=> b!1527758 m!1410701))

(assert (=> b!1527755 m!1410701))

(assert (=> b!1527753 m!1410701))

(assert (=> b!1527536 d!159559))

(declare-fun d!159561 () Bool)

(declare-fun lt!661560 () (_ BitVec 32))

(declare-fun lt!661559 () (_ BitVec 32))

(assert (=> d!159561 (= lt!661560 (bvmul (bvxor lt!661559 (bvlshr lt!661559 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159561 (= lt!661559 ((_ extract 31 0) (bvand (bvxor (select (arr!48974 a!2804) j!70) (bvlshr (select (arr!48974 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159561 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1045767 (let ((h!37069 ((_ extract 31 0) (bvand (bvxor (select (arr!48974 a!2804) j!70) (bvlshr (select (arr!48974 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136733 (bvmul (bvxor h!37069 (bvlshr h!37069 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136733 (bvlshr x!136733 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1045767 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1045767 #b00000000000000000000000000000000))))))

(assert (=> d!159561 (= (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) (bvand (bvxor lt!661560 (bvlshr lt!661560 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1527536 d!159561))

(declare-fun b!1527841 () Bool)

(declare-fun e!851574 () SeekEntryResult!13160)

(declare-fun lt!661602 () SeekEntryResult!13160)

(assert (=> b!1527841 (= e!851574 (Found!13160 (index!55036 lt!661602)))))

(declare-fun b!1527842 () Bool)

(declare-fun e!851575 () SeekEntryResult!13160)

(assert (=> b!1527842 (= e!851575 (MissingZero!13160 (index!55036 lt!661602)))))

(declare-fun b!1527843 () Bool)

(assert (=> b!1527843 (= e!851575 (seekKeyOrZeroReturnVacant!0 (x!136729 lt!661602) (index!55036 lt!661602) (index!55036 lt!661602) lt!661446 lt!661445 mask!2512))))

(declare-fun b!1527844 () Bool)

(declare-fun e!851573 () SeekEntryResult!13160)

(assert (=> b!1527844 (= e!851573 Undefined!13160)))

(declare-fun d!159563 () Bool)

(declare-fun lt!661601 () SeekEntryResult!13160)

(assert (=> d!159563 (and (or ((_ is Undefined!13160) lt!661601) (not ((_ is Found!13160) lt!661601)) (and (bvsge (index!55035 lt!661601) #b00000000000000000000000000000000) (bvslt (index!55035 lt!661601) (size!49525 lt!661445)))) (or ((_ is Undefined!13160) lt!661601) ((_ is Found!13160) lt!661601) (not ((_ is MissingZero!13160) lt!661601)) (and (bvsge (index!55034 lt!661601) #b00000000000000000000000000000000) (bvslt (index!55034 lt!661601) (size!49525 lt!661445)))) (or ((_ is Undefined!13160) lt!661601) ((_ is Found!13160) lt!661601) ((_ is MissingZero!13160) lt!661601) (not ((_ is MissingVacant!13160) lt!661601)) (and (bvsge (index!55037 lt!661601) #b00000000000000000000000000000000) (bvslt (index!55037 lt!661601) (size!49525 lt!661445)))) (or ((_ is Undefined!13160) lt!661601) (ite ((_ is Found!13160) lt!661601) (= (select (arr!48974 lt!661445) (index!55035 lt!661601)) lt!661446) (ite ((_ is MissingZero!13160) lt!661601) (= (select (arr!48974 lt!661445) (index!55034 lt!661601)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13160) lt!661601) (= (select (arr!48974 lt!661445) (index!55037 lt!661601)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159563 (= lt!661601 e!851573)))

(declare-fun c!140571 () Bool)

(assert (=> d!159563 (= c!140571 (and ((_ is Intermediate!13160) lt!661602) (undefined!13972 lt!661602)))))

(assert (=> d!159563 (= lt!661602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661446 mask!2512) lt!661446 lt!661445 mask!2512))))

(assert (=> d!159563 (validMask!0 mask!2512)))

(assert (=> d!159563 (= (seekEntryOrOpen!0 lt!661446 lt!661445 mask!2512) lt!661601)))

(declare-fun b!1527845 () Bool)

(declare-fun c!140572 () Bool)

(declare-fun lt!661600 () (_ BitVec 64))

(assert (=> b!1527845 (= c!140572 (= lt!661600 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527845 (= e!851574 e!851575)))

(declare-fun b!1527846 () Bool)

(assert (=> b!1527846 (= e!851573 e!851574)))

(assert (=> b!1527846 (= lt!661600 (select (arr!48974 lt!661445) (index!55036 lt!661602)))))

(declare-fun c!140570 () Bool)

(assert (=> b!1527846 (= c!140570 (= lt!661600 lt!661446))))

(assert (= (and d!159563 c!140571) b!1527844))

(assert (= (and d!159563 (not c!140571)) b!1527846))

(assert (= (and b!1527846 c!140570) b!1527841))

(assert (= (and b!1527846 (not c!140570)) b!1527845))

(assert (= (and b!1527845 c!140572) b!1527842))

(assert (= (and b!1527845 (not c!140572)) b!1527843))

(declare-fun m!1410749 () Bool)

(assert (=> b!1527843 m!1410749))

(assert (=> d!159563 m!1410519))

(assert (=> d!159563 m!1410523))

(assert (=> d!159563 m!1410525))

(declare-fun m!1410757 () Bool)

(assert (=> d!159563 m!1410757))

(assert (=> d!159563 m!1410523))

(declare-fun m!1410761 () Bool)

(assert (=> d!159563 m!1410761))

(declare-fun m!1410763 () Bool)

(assert (=> d!159563 m!1410763))

(declare-fun m!1410765 () Bool)

(assert (=> b!1527846 m!1410765))

(assert (=> b!1527526 d!159563))

(declare-fun b!1527878 () Bool)

(declare-fun e!851597 () SeekEntryResult!13160)

(assert (=> b!1527878 (= e!851597 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 lt!661446 lt!661445 mask!2512))))

(declare-fun lt!661611 () SeekEntryResult!13160)

(declare-fun d!159585 () Bool)

(assert (=> d!159585 (and (or ((_ is Undefined!13160) lt!661611) (not ((_ is Found!13160) lt!661611)) (and (bvsge (index!55035 lt!661611) #b00000000000000000000000000000000) (bvslt (index!55035 lt!661611) (size!49525 lt!661445)))) (or ((_ is Undefined!13160) lt!661611) ((_ is Found!13160) lt!661611) (not ((_ is MissingVacant!13160) lt!661611)) (not (= (index!55037 lt!661611) index!487)) (and (bvsge (index!55037 lt!661611) #b00000000000000000000000000000000) (bvslt (index!55037 lt!661611) (size!49525 lt!661445)))) (or ((_ is Undefined!13160) lt!661611) (ite ((_ is Found!13160) lt!661611) (= (select (arr!48974 lt!661445) (index!55035 lt!661611)) lt!661446) (and ((_ is MissingVacant!13160) lt!661611) (= (index!55037 lt!661611) index!487) (= (select (arr!48974 lt!661445) (index!55037 lt!661611)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!851598 () SeekEntryResult!13160)

(assert (=> d!159585 (= lt!661611 e!851598)))

(declare-fun c!140584 () Bool)

(assert (=> d!159585 (= c!140584 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661610 () (_ BitVec 64))

(assert (=> d!159585 (= lt!661610 (select (arr!48974 lt!661445) index!487))))

(assert (=> d!159585 (validMask!0 mask!2512)))

(assert (=> d!159585 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661446 lt!661445 mask!2512) lt!661611)))

(declare-fun b!1527879 () Bool)

(declare-fun e!851599 () SeekEntryResult!13160)

(assert (=> b!1527879 (= e!851598 e!851599)))

(declare-fun c!140585 () Bool)

(assert (=> b!1527879 (= c!140585 (= lt!661610 lt!661446))))

(declare-fun b!1527880 () Bool)

(assert (=> b!1527880 (= e!851597 (MissingVacant!13160 index!487))))

(declare-fun b!1527881 () Bool)

(assert (=> b!1527881 (= e!851599 (Found!13160 index!487))))

(declare-fun b!1527882 () Bool)

(declare-fun c!140583 () Bool)

(assert (=> b!1527882 (= c!140583 (= lt!661610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527882 (= e!851599 e!851597)))

(declare-fun b!1527883 () Bool)

(assert (=> b!1527883 (= e!851598 Undefined!13160)))

(assert (= (and d!159585 c!140584) b!1527883))

(assert (= (and d!159585 (not c!140584)) b!1527879))

(assert (= (and b!1527879 c!140585) b!1527881))

(assert (= (and b!1527879 (not c!140585)) b!1527882))

(assert (= (and b!1527882 c!140583) b!1527880))

(assert (= (and b!1527882 (not c!140583)) b!1527878))

(assert (=> b!1527878 m!1410637))

(assert (=> b!1527878 m!1410637))

(declare-fun m!1410771 () Bool)

(assert (=> b!1527878 m!1410771))

(declare-fun m!1410773 () Bool)

(assert (=> d!159585 m!1410773))

(declare-fun m!1410775 () Bool)

(assert (=> d!159585 m!1410775))

(declare-fun m!1410777 () Bool)

(assert (=> d!159585 m!1410777))

(assert (=> d!159585 m!1410519))

(assert (=> b!1527526 d!159585))

(declare-fun d!159593 () Bool)

(assert (=> d!159593 (= (validKeyInArray!0 (select (arr!48974 a!2804) i!961)) (and (not (= (select (arr!48974 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48974 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527532 d!159593))

(declare-fun b!1527924 () Bool)

(declare-fun e!851627 () Bool)

(declare-fun call!68487 () Bool)

(assert (=> b!1527924 (= e!851627 call!68487)))

(declare-fun b!1527925 () Bool)

(assert (=> b!1527925 (= e!851627 call!68487)))

(declare-fun b!1527926 () Bool)

(declare-fun e!851624 () Bool)

(declare-fun contains!10007 (List!35637 (_ BitVec 64)) Bool)

(assert (=> b!1527926 (= e!851624 (contains!10007 Nil!35634 (select (arr!48974 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159595 () Bool)

(declare-fun res!1045837 () Bool)

(declare-fun e!851626 () Bool)

(assert (=> d!159595 (=> res!1045837 e!851626)))

(assert (=> d!159595 (= res!1045837 (bvsge #b00000000000000000000000000000000 (size!49525 a!2804)))))

(assert (=> d!159595 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35634) e!851626)))

(declare-fun b!1527927 () Bool)

(declare-fun e!851625 () Bool)

(assert (=> b!1527927 (= e!851625 e!851627)))

(declare-fun c!140600 () Bool)

(assert (=> b!1527927 (= c!140600 (validKeyInArray!0 (select (arr!48974 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68484 () Bool)

(assert (=> bm!68484 (= call!68487 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140600 (Cons!35633 (select (arr!48974 a!2804) #b00000000000000000000000000000000) Nil!35634) Nil!35634)))))

(declare-fun b!1527928 () Bool)

(assert (=> b!1527928 (= e!851626 e!851625)))

(declare-fun res!1045838 () Bool)

(assert (=> b!1527928 (=> (not res!1045838) (not e!851625))))

(assert (=> b!1527928 (= res!1045838 (not e!851624))))

(declare-fun res!1045836 () Bool)

(assert (=> b!1527928 (=> (not res!1045836) (not e!851624))))

(assert (=> b!1527928 (= res!1045836 (validKeyInArray!0 (select (arr!48974 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159595 (not res!1045837)) b!1527928))

(assert (= (and b!1527928 res!1045836) b!1527926))

(assert (= (and b!1527928 res!1045838) b!1527927))

(assert (= (and b!1527927 c!140600) b!1527924))

(assert (= (and b!1527927 (not c!140600)) b!1527925))

(assert (= (or b!1527924 b!1527925) bm!68484))

(assert (=> b!1527926 m!1410599))

(assert (=> b!1527926 m!1410599))

(declare-fun m!1410779 () Bool)

(assert (=> b!1527926 m!1410779))

(assert (=> b!1527927 m!1410599))

(assert (=> b!1527927 m!1410599))

(assert (=> b!1527927 m!1410601))

(assert (=> bm!68484 m!1410599))

(declare-fun m!1410781 () Bool)

(assert (=> bm!68484 m!1410781))

(assert (=> b!1527928 m!1410599))

(assert (=> b!1527928 m!1410599))

(assert (=> b!1527928 m!1410601))

(assert (=> b!1527533 d!159595))

(declare-fun e!851628 () SeekEntryResult!13160)

(declare-fun b!1527929 () Bool)

(assert (=> b!1527929 (= e!851628 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun lt!661625 () SeekEntryResult!13160)

(declare-fun d!159597 () Bool)

(assert (=> d!159597 (and (or ((_ is Undefined!13160) lt!661625) (not ((_ is Found!13160) lt!661625)) (and (bvsge (index!55035 lt!661625) #b00000000000000000000000000000000) (bvslt (index!55035 lt!661625) (size!49525 a!2804)))) (or ((_ is Undefined!13160) lt!661625) ((_ is Found!13160) lt!661625) (not ((_ is MissingVacant!13160) lt!661625)) (not (= (index!55037 lt!661625) index!487)) (and (bvsge (index!55037 lt!661625) #b00000000000000000000000000000000) (bvslt (index!55037 lt!661625) (size!49525 a!2804)))) (or ((_ is Undefined!13160) lt!661625) (ite ((_ is Found!13160) lt!661625) (= (select (arr!48974 a!2804) (index!55035 lt!661625)) (select (arr!48974 a!2804) j!70)) (and ((_ is MissingVacant!13160) lt!661625) (= (index!55037 lt!661625) index!487) (= (select (arr!48974 a!2804) (index!55037 lt!661625)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!851629 () SeekEntryResult!13160)

(assert (=> d!159597 (= lt!661625 e!851629)))

(declare-fun c!140602 () Bool)

(assert (=> d!159597 (= c!140602 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661624 () (_ BitVec 64))

(assert (=> d!159597 (= lt!661624 (select (arr!48974 a!2804) index!487))))

(assert (=> d!159597 (validMask!0 mask!2512)))

(assert (=> d!159597 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661625)))

(declare-fun b!1527930 () Bool)

(declare-fun e!851630 () SeekEntryResult!13160)

(assert (=> b!1527930 (= e!851629 e!851630)))

(declare-fun c!140603 () Bool)

(assert (=> b!1527930 (= c!140603 (= lt!661624 (select (arr!48974 a!2804) j!70)))))

(declare-fun b!1527931 () Bool)

(assert (=> b!1527931 (= e!851628 (MissingVacant!13160 index!487))))

(declare-fun b!1527932 () Bool)

(assert (=> b!1527932 (= e!851630 (Found!13160 index!487))))

(declare-fun b!1527933 () Bool)

(declare-fun c!140601 () Bool)

(assert (=> b!1527933 (= c!140601 (= lt!661624 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527933 (= e!851630 e!851628)))

(declare-fun b!1527934 () Bool)

(assert (=> b!1527934 (= e!851629 Undefined!13160)))

(assert (= (and d!159597 c!140602) b!1527934))

(assert (= (and d!159597 (not c!140602)) b!1527930))

(assert (= (and b!1527930 c!140603) b!1527932))

(assert (= (and b!1527930 (not c!140603)) b!1527933))

(assert (= (and b!1527933 c!140601) b!1527931))

(assert (= (and b!1527933 (not c!140601)) b!1527929))

(assert (=> b!1527929 m!1410637))

(assert (=> b!1527929 m!1410637))

(assert (=> b!1527929 m!1410499))

(declare-fun m!1410783 () Bool)

(assert (=> b!1527929 m!1410783))

(declare-fun m!1410785 () Bool)

(assert (=> d!159597 m!1410785))

(declare-fun m!1410787 () Bool)

(assert (=> d!159597 m!1410787))

(assert (=> d!159597 m!1410505))

(assert (=> d!159597 m!1410519))

(assert (=> b!1527534 d!159597))

(declare-fun b!1527944 () Bool)

(declare-fun e!851637 () SeekEntryResult!13160)

(declare-fun lt!661630 () SeekEntryResult!13160)

(assert (=> b!1527944 (= e!851637 (Found!13160 (index!55036 lt!661630)))))

(declare-fun b!1527945 () Bool)

(declare-fun e!851638 () SeekEntryResult!13160)

(assert (=> b!1527945 (= e!851638 (MissingZero!13160 (index!55036 lt!661630)))))

(declare-fun b!1527946 () Bool)

(assert (=> b!1527946 (= e!851638 (seekKeyOrZeroReturnVacant!0 (x!136729 lt!661630) (index!55036 lt!661630) (index!55036 lt!661630) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527947 () Bool)

(declare-fun e!851636 () SeekEntryResult!13160)

(assert (=> b!1527947 (= e!851636 Undefined!13160)))

(declare-fun d!159599 () Bool)

(declare-fun lt!661629 () SeekEntryResult!13160)

(assert (=> d!159599 (and (or ((_ is Undefined!13160) lt!661629) (not ((_ is Found!13160) lt!661629)) (and (bvsge (index!55035 lt!661629) #b00000000000000000000000000000000) (bvslt (index!55035 lt!661629) (size!49525 a!2804)))) (or ((_ is Undefined!13160) lt!661629) ((_ is Found!13160) lt!661629) (not ((_ is MissingZero!13160) lt!661629)) (and (bvsge (index!55034 lt!661629) #b00000000000000000000000000000000) (bvslt (index!55034 lt!661629) (size!49525 a!2804)))) (or ((_ is Undefined!13160) lt!661629) ((_ is Found!13160) lt!661629) ((_ is MissingZero!13160) lt!661629) (not ((_ is MissingVacant!13160) lt!661629)) (and (bvsge (index!55037 lt!661629) #b00000000000000000000000000000000) (bvslt (index!55037 lt!661629) (size!49525 a!2804)))) (or ((_ is Undefined!13160) lt!661629) (ite ((_ is Found!13160) lt!661629) (= (select (arr!48974 a!2804) (index!55035 lt!661629)) (select (arr!48974 a!2804) j!70)) (ite ((_ is MissingZero!13160) lt!661629) (= (select (arr!48974 a!2804) (index!55034 lt!661629)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13160) lt!661629) (= (select (arr!48974 a!2804) (index!55037 lt!661629)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159599 (= lt!661629 e!851636)))

(declare-fun c!140608 () Bool)

(assert (=> d!159599 (= c!140608 (and ((_ is Intermediate!13160) lt!661630) (undefined!13972 lt!661630)))))

(assert (=> d!159599 (= lt!661630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48974 a!2804) j!70) mask!2512) (select (arr!48974 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159599 (validMask!0 mask!2512)))

(assert (=> d!159599 (= (seekEntryOrOpen!0 (select (arr!48974 a!2804) j!70) a!2804 mask!2512) lt!661629)))

(declare-fun b!1527948 () Bool)

(declare-fun c!140609 () Bool)

(declare-fun lt!661628 () (_ BitVec 64))

(assert (=> b!1527948 (= c!140609 (= lt!661628 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527948 (= e!851637 e!851638)))

(declare-fun b!1527949 () Bool)

(assert (=> b!1527949 (= e!851636 e!851637)))

(assert (=> b!1527949 (= lt!661628 (select (arr!48974 a!2804) (index!55036 lt!661630)))))

(declare-fun c!140607 () Bool)

(assert (=> b!1527949 (= c!140607 (= lt!661628 (select (arr!48974 a!2804) j!70)))))

(assert (= (and d!159599 c!140608) b!1527947))

(assert (= (and d!159599 (not c!140608)) b!1527949))

(assert (= (and b!1527949 c!140607) b!1527944))

(assert (= (and b!1527949 (not c!140607)) b!1527948))

(assert (= (and b!1527948 c!140609) b!1527945))

(assert (= (and b!1527948 (not c!140609)) b!1527946))

(assert (=> b!1527946 m!1410499))

(declare-fun m!1410791 () Bool)

(assert (=> b!1527946 m!1410791))

(assert (=> d!159599 m!1410519))

(assert (=> d!159599 m!1410501))

(assert (=> d!159599 m!1410499))

(assert (=> d!159599 m!1410503))

(declare-fun m!1410795 () Bool)

(assert (=> d!159599 m!1410795))

(assert (=> d!159599 m!1410499))

(assert (=> d!159599 m!1410501))

(declare-fun m!1410799 () Bool)

(assert (=> d!159599 m!1410799))

(declare-fun m!1410801 () Bool)

(assert (=> d!159599 m!1410801))

(declare-fun m!1410805 () Bool)

(assert (=> b!1527949 m!1410805))

(assert (=> b!1527534 d!159599))

(check-sat (not b!1527878) (not b!1527747) (not d!159525) (not b!1527760) (not d!159559) (not d!159539) (not bm!68466) (not bm!68467) (not b!1527586) (not b!1527591) (not b!1527929) (not b!1527668) (not b!1527590) (not d!159597) (not b!1527946) (not d!159585) (not d!159599) (not b!1527843) (not b!1527649) (not b!1527587) (not b!1527928) (not bm!68484) (not b!1527927) (not d!159547) (not b!1527926) (not d!159563) (not d!159517))
(check-sat)
