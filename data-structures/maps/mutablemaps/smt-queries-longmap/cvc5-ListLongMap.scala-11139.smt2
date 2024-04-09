; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130162 () Bool)

(assert start!130162)

(declare-fun b!1527487 () Bool)

(declare-fun res!1045669 () Bool)

(declare-fun e!851378 () Bool)

(assert (=> b!1527487 (=> (not res!1045669) (not e!851378))))

(declare-datatypes ((SeekEntryResult!13159 0))(
  ( (MissingZero!13159 (index!55030 (_ BitVec 32))) (Found!13159 (index!55031 (_ BitVec 32))) (Intermediate!13159 (undefined!13971 Bool) (index!55032 (_ BitVec 32)) (x!136728 (_ BitVec 32))) (Undefined!13159) (MissingVacant!13159 (index!55033 (_ BitVec 32))) )
))
(declare-fun lt!661421 () SeekEntryResult!13159)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101502 0))(
  ( (array!101503 (arr!48973 (Array (_ BitVec 32) (_ BitVec 64))) (size!49524 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101502)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101502 (_ BitVec 32)) SeekEntryResult!13159)

(assert (=> b!1527487 (= res!1045669 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661421))))

(declare-fun b!1527488 () Bool)

(declare-fun res!1045663 () Bool)

(declare-fun e!851377 () Bool)

(assert (=> b!1527488 (=> (not res!1045663) (not e!851377))))

(declare-datatypes ((List!35636 0))(
  ( (Nil!35633) (Cons!35632 (h!37066 (_ BitVec 64)) (t!50337 List!35636)) )
))
(declare-fun arrayNoDuplicates!0 (array!101502 (_ BitVec 32) List!35636) Bool)

(assert (=> b!1527488 (= res!1045663 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35633))))

(declare-fun b!1527489 () Bool)

(declare-fun e!851373 () Bool)

(assert (=> b!1527489 (= e!851378 e!851373)))

(declare-fun res!1045668 () Bool)

(assert (=> b!1527489 (=> (not res!1045668) (not e!851373))))

(declare-fun lt!661420 () SeekEntryResult!13159)

(declare-fun lt!661426 () (_ BitVec 64))

(declare-fun lt!661425 () array!101502)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527489 (= res!1045668 (= lt!661420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661426 mask!2512) lt!661426 lt!661425 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527489 (= lt!661426 (select (store (arr!48973 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527489 (= lt!661425 (array!101503 (store (arr!48973 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49524 a!2804)))))

(declare-fun e!851372 () Bool)

(declare-fun b!1527490 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101502 (_ BitVec 32)) SeekEntryResult!13159)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101502 (_ BitVec 32)) SeekEntryResult!13159)

(assert (=> b!1527490 (= e!851372 (= (seekEntryOrOpen!0 lt!661426 lt!661425 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661426 lt!661425 mask!2512)))))

(declare-fun b!1527491 () Bool)

(declare-fun res!1045671 () Bool)

(assert (=> b!1527491 (=> (not res!1045671) (not e!851377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527491 (= res!1045671 (validKeyInArray!0 (select (arr!48973 a!2804) i!961)))))

(declare-fun b!1527492 () Bool)

(declare-fun e!851376 () Bool)

(declare-fun lt!661423 () SeekEntryResult!13159)

(assert (=> b!1527492 (= e!851376 (= lt!661423 (Found!13159 j!70)))))

(assert (=> b!1527492 e!851372))

(declare-fun res!1045665 () Bool)

(assert (=> b!1527492 (=> (not res!1045665) (not e!851372))))

(declare-fun lt!661424 () SeekEntryResult!13159)

(assert (=> b!1527492 (= res!1045665 (= lt!661424 lt!661423))))

(assert (=> b!1527492 (= lt!661423 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1527492 (= lt!661424 (seekEntryOrOpen!0 (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527493 () Bool)

(declare-fun res!1045667 () Bool)

(assert (=> b!1527493 (=> (not res!1045667) (not e!851377))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1527493 (= res!1045667 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49524 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49524 a!2804))))))

(declare-fun b!1527494 () Bool)

(declare-fun res!1045659 () Bool)

(assert (=> b!1527494 (=> (not res!1045659) (not e!851377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101502 (_ BitVec 32)) Bool)

(assert (=> b!1527494 (= res!1045659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527495 () Bool)

(declare-fun e!851375 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101502 (_ BitVec 32)) SeekEntryResult!13159)

(assert (=> b!1527495 (= e!851375 (= (seekEntry!0 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) (Found!13159 j!70)))))

(declare-fun res!1045670 () Bool)

(assert (=> start!130162 (=> (not res!1045670) (not e!851377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130162 (= res!1045670 (validMask!0 mask!2512))))

(assert (=> start!130162 e!851377))

(assert (=> start!130162 true))

(declare-fun array_inv!37918 (array!101502) Bool)

(assert (=> start!130162 (array_inv!37918 a!2804)))

(declare-fun b!1527496 () Bool)

(declare-fun res!1045660 () Bool)

(assert (=> b!1527496 (=> (not res!1045660) (not e!851377))))

(assert (=> b!1527496 (= res!1045660 (and (= (size!49524 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49524 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49524 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527497 () Bool)

(assert (=> b!1527497 (= e!851373 (not e!851376))))

(declare-fun res!1045661 () Bool)

(assert (=> b!1527497 (=> res!1045661 e!851376)))

(assert (=> b!1527497 (= res!1045661 (or (not (= (select (arr!48973 a!2804) j!70) lt!661426)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48973 a!2804) index!487) (select (arr!48973 a!2804) j!70)) (not (= (select (arr!48973 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527497 e!851375))

(declare-fun res!1045666 () Bool)

(assert (=> b!1527497 (=> (not res!1045666) (not e!851375))))

(assert (=> b!1527497 (= res!1045666 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51058 0))(
  ( (Unit!51059) )
))
(declare-fun lt!661422 () Unit!51058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51058)

(assert (=> b!1527497 (= lt!661422 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527498 () Bool)

(assert (=> b!1527498 (= e!851377 e!851378)))

(declare-fun res!1045662 () Bool)

(assert (=> b!1527498 (=> (not res!1045662) (not e!851378))))

(assert (=> b!1527498 (= res!1045662 (= lt!661420 lt!661421))))

(assert (=> b!1527498 (= lt!661421 (Intermediate!13159 false resIndex!21 resX!21))))

(assert (=> b!1527498 (= lt!661420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527499 () Bool)

(declare-fun res!1045664 () Bool)

(assert (=> b!1527499 (=> (not res!1045664) (not e!851377))))

(assert (=> b!1527499 (= res!1045664 (validKeyInArray!0 (select (arr!48973 a!2804) j!70)))))

(assert (= (and start!130162 res!1045670) b!1527496))

(assert (= (and b!1527496 res!1045660) b!1527491))

(assert (= (and b!1527491 res!1045671) b!1527499))

(assert (= (and b!1527499 res!1045664) b!1527494))

(assert (= (and b!1527494 res!1045659) b!1527488))

(assert (= (and b!1527488 res!1045663) b!1527493))

(assert (= (and b!1527493 res!1045667) b!1527498))

(assert (= (and b!1527498 res!1045662) b!1527487))

(assert (= (and b!1527487 res!1045669) b!1527489))

(assert (= (and b!1527489 res!1045668) b!1527497))

(assert (= (and b!1527497 res!1045666) b!1527495))

(assert (= (and b!1527497 (not res!1045661)) b!1527492))

(assert (= (and b!1527492 res!1045665) b!1527490))

(declare-fun m!1410453 () Bool)

(assert (=> b!1527490 m!1410453))

(declare-fun m!1410455 () Bool)

(assert (=> b!1527490 m!1410455))

(declare-fun m!1410457 () Bool)

(assert (=> b!1527491 m!1410457))

(assert (=> b!1527491 m!1410457))

(declare-fun m!1410459 () Bool)

(assert (=> b!1527491 m!1410459))

(declare-fun m!1410461 () Bool)

(assert (=> b!1527489 m!1410461))

(assert (=> b!1527489 m!1410461))

(declare-fun m!1410463 () Bool)

(assert (=> b!1527489 m!1410463))

(declare-fun m!1410465 () Bool)

(assert (=> b!1527489 m!1410465))

(declare-fun m!1410467 () Bool)

(assert (=> b!1527489 m!1410467))

(declare-fun m!1410469 () Bool)

(assert (=> b!1527488 m!1410469))

(declare-fun m!1410471 () Bool)

(assert (=> b!1527492 m!1410471))

(assert (=> b!1527492 m!1410471))

(declare-fun m!1410473 () Bool)

(assert (=> b!1527492 m!1410473))

(assert (=> b!1527492 m!1410471))

(declare-fun m!1410475 () Bool)

(assert (=> b!1527492 m!1410475))

(assert (=> b!1527498 m!1410471))

(assert (=> b!1527498 m!1410471))

(declare-fun m!1410477 () Bool)

(assert (=> b!1527498 m!1410477))

(assert (=> b!1527498 m!1410477))

(assert (=> b!1527498 m!1410471))

(declare-fun m!1410479 () Bool)

(assert (=> b!1527498 m!1410479))

(assert (=> b!1527497 m!1410471))

(declare-fun m!1410481 () Bool)

(assert (=> b!1527497 m!1410481))

(declare-fun m!1410483 () Bool)

(assert (=> b!1527497 m!1410483))

(declare-fun m!1410485 () Bool)

(assert (=> b!1527497 m!1410485))

(assert (=> b!1527499 m!1410471))

(assert (=> b!1527499 m!1410471))

(declare-fun m!1410487 () Bool)

(assert (=> b!1527499 m!1410487))

(assert (=> b!1527487 m!1410471))

(assert (=> b!1527487 m!1410471))

(declare-fun m!1410489 () Bool)

(assert (=> b!1527487 m!1410489))

(assert (=> b!1527495 m!1410471))

(assert (=> b!1527495 m!1410471))

(declare-fun m!1410491 () Bool)

(assert (=> b!1527495 m!1410491))

(declare-fun m!1410493 () Bool)

(assert (=> start!130162 m!1410493))

(declare-fun m!1410495 () Bool)

(assert (=> start!130162 m!1410495))

(declare-fun m!1410497 () Bool)

(assert (=> b!1527494 m!1410497))

(push 1)

(assert (not b!1527494))

(assert (not b!1527499))

(assert (not b!1527490))

(assert (not b!1527488))

(assert (not b!1527497))

(assert (not b!1527498))

(assert (not b!1527491))

(assert (not b!1527492))

(assert (not b!1527489))

(assert (not b!1527495))

(assert (not b!1527487))

(assert (not start!130162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159519 () Bool)

(assert (=> d!159519 (= (validKeyInArray!0 (select (arr!48973 a!2804) i!961)) (and (not (= (select (arr!48973 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48973 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527491 d!159519))

(declare-fun b!1527606 () Bool)

(declare-fun e!851441 () SeekEntryResult!13159)

(assert (=> b!1527606 (= e!851441 (Found!13159 index!487))))

(declare-fun d!159521 () Bool)

(declare-fun lt!661489 () SeekEntryResult!13159)

(assert (=> d!159521 (and (or (is-Undefined!13159 lt!661489) (not (is-Found!13159 lt!661489)) (and (bvsge (index!55031 lt!661489) #b00000000000000000000000000000000) (bvslt (index!55031 lt!661489) (size!49524 a!2804)))) (or (is-Undefined!13159 lt!661489) (is-Found!13159 lt!661489) (not (is-MissingVacant!13159 lt!661489)) (not (= (index!55033 lt!661489) index!487)) (and (bvsge (index!55033 lt!661489) #b00000000000000000000000000000000) (bvslt (index!55033 lt!661489) (size!49524 a!2804)))) (or (is-Undefined!13159 lt!661489) (ite (is-Found!13159 lt!661489) (= (select (arr!48973 a!2804) (index!55031 lt!661489)) (select (arr!48973 a!2804) j!70)) (and (is-MissingVacant!13159 lt!661489) (= (index!55033 lt!661489) index!487) (= (select (arr!48973 a!2804) (index!55033 lt!661489)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!851439 () SeekEntryResult!13159)

(assert (=> d!159521 (= lt!661489 e!851439)))

(declare-fun c!140480 () Bool)

(assert (=> d!159521 (= c!140480 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661488 () (_ BitVec 64))

(assert (=> d!159521 (= lt!661488 (select (arr!48973 a!2804) index!487))))

(assert (=> d!159521 (validMask!0 mask!2512)))

(assert (=> d!159521 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661489)))

(declare-fun b!1527607 () Bool)

(declare-fun e!851440 () SeekEntryResult!13159)

(assert (=> b!1527607 (= e!851440 (MissingVacant!13159 index!487))))

(declare-fun b!1527608 () Bool)

(assert (=> b!1527608 (= e!851439 e!851441)))

(declare-fun c!140481 () Bool)

(assert (=> b!1527608 (= c!140481 (= lt!661488 (select (arr!48973 a!2804) j!70)))))

(declare-fun b!1527609 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527609 (= e!851440 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527610 () Bool)

(declare-fun c!140479 () Bool)

(assert (=> b!1527610 (= c!140479 (= lt!661488 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527610 (= e!851441 e!851440)))

(declare-fun b!1527611 () Bool)

(assert (=> b!1527611 (= e!851439 Undefined!13159)))

(assert (= (and d!159521 c!140480) b!1527611))

(assert (= (and d!159521 (not c!140480)) b!1527608))

(assert (= (and b!1527608 c!140481) b!1527606))

(assert (= (and b!1527608 (not c!140481)) b!1527610))

(assert (= (and b!1527610 c!140479) b!1527607))

(assert (= (and b!1527610 (not c!140479)) b!1527609))

(declare-fun m!1410611 () Bool)

(assert (=> d!159521 m!1410611))

(declare-fun m!1410613 () Bool)

(assert (=> d!159521 m!1410613))

(assert (=> d!159521 m!1410481))

(assert (=> d!159521 m!1410493))

(declare-fun m!1410615 () Bool)

(assert (=> b!1527609 m!1410615))

(assert (=> b!1527609 m!1410615))

(assert (=> b!1527609 m!1410471))

(declare-fun m!1410617 () Bool)

(assert (=> b!1527609 m!1410617))

(assert (=> b!1527492 d!159521))

(declare-fun b!1527651 () Bool)

(declare-fun c!140499 () Bool)

(declare-fun lt!661504 () (_ BitVec 64))

(assert (=> b!1527651 (= c!140499 (= lt!661504 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!851464 () SeekEntryResult!13159)

(declare-fun e!851465 () SeekEntryResult!13159)

(assert (=> b!1527651 (= e!851464 e!851465)))

(declare-fun d!159527 () Bool)

(declare-fun lt!661503 () SeekEntryResult!13159)

(assert (=> d!159527 (and (or (is-Undefined!13159 lt!661503) (not (is-Found!13159 lt!661503)) (and (bvsge (index!55031 lt!661503) #b00000000000000000000000000000000) (bvslt (index!55031 lt!661503) (size!49524 a!2804)))) (or (is-Undefined!13159 lt!661503) (is-Found!13159 lt!661503) (not (is-MissingZero!13159 lt!661503)) (and (bvsge (index!55030 lt!661503) #b00000000000000000000000000000000) (bvslt (index!55030 lt!661503) (size!49524 a!2804)))) (or (is-Undefined!13159 lt!661503) (is-Found!13159 lt!661503) (is-MissingZero!13159 lt!661503) (not (is-MissingVacant!13159 lt!661503)) (and (bvsge (index!55033 lt!661503) #b00000000000000000000000000000000) (bvslt (index!55033 lt!661503) (size!49524 a!2804)))) (or (is-Undefined!13159 lt!661503) (ite (is-Found!13159 lt!661503) (= (select (arr!48973 a!2804) (index!55031 lt!661503)) (select (arr!48973 a!2804) j!70)) (ite (is-MissingZero!13159 lt!661503) (= (select (arr!48973 a!2804) (index!55030 lt!661503)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13159 lt!661503) (= (select (arr!48973 a!2804) (index!55033 lt!661503)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!851463 () SeekEntryResult!13159)

(assert (=> d!159527 (= lt!661503 e!851463)))

(declare-fun c!140498 () Bool)

(declare-fun lt!661502 () SeekEntryResult!13159)

(assert (=> d!159527 (= c!140498 (and (is-Intermediate!13159 lt!661502) (undefined!13971 lt!661502)))))

(assert (=> d!159527 (= lt!661502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159527 (validMask!0 mask!2512)))

(assert (=> d!159527 (= (seekEntryOrOpen!0 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661503)))

(declare-fun b!1527652 () Bool)

(assert (=> b!1527652 (= e!851465 (MissingZero!13159 (index!55032 lt!661502)))))

(declare-fun b!1527653 () Bool)

(assert (=> b!1527653 (= e!851465 (seekKeyOrZeroReturnVacant!0 (x!136728 lt!661502) (index!55032 lt!661502) (index!55032 lt!661502) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527654 () Bool)

(assert (=> b!1527654 (= e!851464 (Found!13159 (index!55032 lt!661502)))))

(declare-fun b!1527655 () Bool)

(assert (=> b!1527655 (= e!851463 Undefined!13159)))

(declare-fun b!1527656 () Bool)

(assert (=> b!1527656 (= e!851463 e!851464)))

(assert (=> b!1527656 (= lt!661504 (select (arr!48973 a!2804) (index!55032 lt!661502)))))

(declare-fun c!140497 () Bool)

(assert (=> b!1527656 (= c!140497 (= lt!661504 (select (arr!48973 a!2804) j!70)))))

(assert (= (and d!159527 c!140498) b!1527655))

(assert (= (and d!159527 (not c!140498)) b!1527656))

(assert (= (and b!1527656 c!140497) b!1527654))

(assert (= (and b!1527656 (not c!140497)) b!1527651))

(assert (= (and b!1527651 c!140499) b!1527652))

(assert (= (and b!1527651 (not c!140499)) b!1527653))

(assert (=> d!159527 m!1410477))

(assert (=> d!159527 m!1410471))

(assert (=> d!159527 m!1410479))

(assert (=> d!159527 m!1410493))

(declare-fun m!1410627 () Bool)

(assert (=> d!159527 m!1410627))

(declare-fun m!1410629 () Bool)

(assert (=> d!159527 m!1410629))

(assert (=> d!159527 m!1410471))

(assert (=> d!159527 m!1410477))

(declare-fun m!1410631 () Bool)

(assert (=> d!159527 m!1410631))

(assert (=> b!1527653 m!1410471))

(declare-fun m!1410633 () Bool)

(assert (=> b!1527653 m!1410633))

(declare-fun m!1410635 () Bool)

(assert (=> b!1527656 m!1410635))

(assert (=> b!1527492 d!159527))

(declare-fun d!159535 () Bool)

(assert (=> d!159535 (= (validKeyInArray!0 (select (arr!48973 a!2804) j!70)) (and (not (= (select (arr!48973 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48973 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1527499 d!159535))

(declare-fun b!1527708 () Bool)

(declare-fun e!851500 () SeekEntryResult!13159)

(assert (=> b!1527708 (= e!851500 (Intermediate!13159 false (toIndex!0 lt!661426 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527709 () Bool)

(assert (=> b!1527709 (= e!851500 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!661426 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!661426 lt!661425 mask!2512))))

(declare-fun b!1527710 () Bool)

(declare-fun e!851498 () Bool)

(declare-fun lt!661531 () SeekEntryResult!13159)

(assert (=> b!1527710 (= e!851498 (bvsge (x!136728 lt!661531) #b01111111111111111111111111111110))))

(declare-fun d!159537 () Bool)

(assert (=> d!159537 e!851498))

(declare-fun c!140520 () Bool)

(assert (=> d!159537 (= c!140520 (and (is-Intermediate!13159 lt!661531) (undefined!13971 lt!661531)))))

(declare-fun e!851497 () SeekEntryResult!13159)

(assert (=> d!159537 (= lt!661531 e!851497)))

(declare-fun c!140518 () Bool)

(assert (=> d!159537 (= c!140518 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!661530 () (_ BitVec 64))

(assert (=> d!159537 (= lt!661530 (select (arr!48973 lt!661425) (toIndex!0 lt!661426 mask!2512)))))

(assert (=> d!159537 (validMask!0 mask!2512)))

(assert (=> d!159537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661426 mask!2512) lt!661426 lt!661425 mask!2512) lt!661531)))

(declare-fun b!1527711 () Bool)

(assert (=> b!1527711 (and (bvsge (index!55032 lt!661531) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661531) (size!49524 lt!661425)))))

(declare-fun res!1045785 () Bool)

(assert (=> b!1527711 (= res!1045785 (= (select (arr!48973 lt!661425) (index!55032 lt!661531)) lt!661426))))

(declare-fun e!851496 () Bool)

(assert (=> b!1527711 (=> res!1045785 e!851496)))

(declare-fun e!851499 () Bool)

(assert (=> b!1527711 (= e!851499 e!851496)))

(declare-fun b!1527712 () Bool)

(assert (=> b!1527712 (and (bvsge (index!55032 lt!661531) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661531) (size!49524 lt!661425)))))

(declare-fun res!1045784 () Bool)

(assert (=> b!1527712 (= res!1045784 (= (select (arr!48973 lt!661425) (index!55032 lt!661531)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527712 (=> res!1045784 e!851496)))

(declare-fun b!1527713 () Bool)

(assert (=> b!1527713 (= e!851498 e!851499)))

(declare-fun res!1045783 () Bool)

(assert (=> b!1527713 (= res!1045783 (and (is-Intermediate!13159 lt!661531) (not (undefined!13971 lt!661531)) (bvslt (x!136728 lt!661531) #b01111111111111111111111111111110) (bvsge (x!136728 lt!661531) #b00000000000000000000000000000000) (bvsge (x!136728 lt!661531) #b00000000000000000000000000000000)))))

(assert (=> b!1527713 (=> (not res!1045783) (not e!851499))))

(declare-fun b!1527714 () Bool)

(assert (=> b!1527714 (and (bvsge (index!55032 lt!661531) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661531) (size!49524 lt!661425)))))

(assert (=> b!1527714 (= e!851496 (= (select (arr!48973 lt!661425) (index!55032 lt!661531)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527715 () Bool)

(assert (=> b!1527715 (= e!851497 e!851500)))

(declare-fun c!140519 () Bool)

(assert (=> b!1527715 (= c!140519 (or (= lt!661530 lt!661426) (= (bvadd lt!661530 lt!661530) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527716 () Bool)

(assert (=> b!1527716 (= e!851497 (Intermediate!13159 true (toIndex!0 lt!661426 mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159537 c!140518) b!1527716))

(assert (= (and d!159537 (not c!140518)) b!1527715))

(assert (= (and b!1527715 c!140519) b!1527708))

(assert (= (and b!1527715 (not c!140519)) b!1527709))

(assert (= (and d!159537 c!140520) b!1527710))

(assert (= (and d!159537 (not c!140520)) b!1527713))

(assert (= (and b!1527713 res!1045783) b!1527711))

(assert (= (and b!1527711 (not res!1045785)) b!1527712))

(assert (= (and b!1527712 (not res!1045784)) b!1527714))

(declare-fun m!1410655 () Bool)

(assert (=> b!1527711 m!1410655))

(assert (=> d!159537 m!1410461))

(declare-fun m!1410657 () Bool)

(assert (=> d!159537 m!1410657))

(assert (=> d!159537 m!1410493))

(assert (=> b!1527714 m!1410655))

(assert (=> b!1527709 m!1410461))

(declare-fun m!1410659 () Bool)

(assert (=> b!1527709 m!1410659))

(assert (=> b!1527709 m!1410659))

(declare-fun m!1410661 () Bool)

(assert (=> b!1527709 m!1410661))

(assert (=> b!1527712 m!1410655))

(assert (=> b!1527489 d!159537))

(declare-fun d!159549 () Bool)

(declare-fun lt!661545 () (_ BitVec 32))

(declare-fun lt!661544 () (_ BitVec 32))

(assert (=> d!159549 (= lt!661545 (bvmul (bvxor lt!661544 (bvlshr lt!661544 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159549 (= lt!661544 ((_ extract 31 0) (bvand (bvxor lt!661426 (bvlshr lt!661426 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159549 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1045786 (let ((h!37070 ((_ extract 31 0) (bvand (bvxor lt!661426 (bvlshr lt!661426 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136736 (bvmul (bvxor h!37070 (bvlshr h!37070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136736 (bvlshr x!136736 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1045786 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1045786 #b00000000000000000000000000000000))))))

(assert (=> d!159549 (= (toIndex!0 lt!661426 mask!2512) (bvand (bvxor lt!661545 (bvlshr lt!661545 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1527489 d!159549))

(declare-fun b!1527735 () Bool)

(declare-fun c!140532 () Bool)

(declare-fun lt!661550 () (_ BitVec 64))

(assert (=> b!1527735 (= c!140532 (= lt!661550 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!851511 () SeekEntryResult!13159)

(declare-fun e!851512 () SeekEntryResult!13159)

(assert (=> b!1527735 (= e!851511 e!851512)))

(declare-fun d!159553 () Bool)

(declare-fun lt!661549 () SeekEntryResult!13159)

(assert (=> d!159553 (and (or (is-Undefined!13159 lt!661549) (not (is-Found!13159 lt!661549)) (and (bvsge (index!55031 lt!661549) #b00000000000000000000000000000000) (bvslt (index!55031 lt!661549) (size!49524 lt!661425)))) (or (is-Undefined!13159 lt!661549) (is-Found!13159 lt!661549) (not (is-MissingZero!13159 lt!661549)) (and (bvsge (index!55030 lt!661549) #b00000000000000000000000000000000) (bvslt (index!55030 lt!661549) (size!49524 lt!661425)))) (or (is-Undefined!13159 lt!661549) (is-Found!13159 lt!661549) (is-MissingZero!13159 lt!661549) (not (is-MissingVacant!13159 lt!661549)) (and (bvsge (index!55033 lt!661549) #b00000000000000000000000000000000) (bvslt (index!55033 lt!661549) (size!49524 lt!661425)))) (or (is-Undefined!13159 lt!661549) (ite (is-Found!13159 lt!661549) (= (select (arr!48973 lt!661425) (index!55031 lt!661549)) lt!661426) (ite (is-MissingZero!13159 lt!661549) (= (select (arr!48973 lt!661425) (index!55030 lt!661549)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13159 lt!661549) (= (select (arr!48973 lt!661425) (index!55033 lt!661549)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!851510 () SeekEntryResult!13159)

(assert (=> d!159553 (= lt!661549 e!851510)))

(declare-fun c!140531 () Bool)

(declare-fun lt!661548 () SeekEntryResult!13159)

(assert (=> d!159553 (= c!140531 (and (is-Intermediate!13159 lt!661548) (undefined!13971 lt!661548)))))

(assert (=> d!159553 (= lt!661548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661426 mask!2512) lt!661426 lt!661425 mask!2512))))

(assert (=> d!159553 (validMask!0 mask!2512)))

(assert (=> d!159553 (= (seekEntryOrOpen!0 lt!661426 lt!661425 mask!2512) lt!661549)))

(declare-fun b!1527736 () Bool)

(assert (=> b!1527736 (= e!851512 (MissingZero!13159 (index!55032 lt!661548)))))

(declare-fun b!1527737 () Bool)

(assert (=> b!1527737 (= e!851512 (seekKeyOrZeroReturnVacant!0 (x!136728 lt!661548) (index!55032 lt!661548) (index!55032 lt!661548) lt!661426 lt!661425 mask!2512))))

(declare-fun b!1527738 () Bool)

(assert (=> b!1527738 (= e!851511 (Found!13159 (index!55032 lt!661548)))))

(declare-fun b!1527739 () Bool)

(assert (=> b!1527739 (= e!851510 Undefined!13159)))

(declare-fun b!1527740 () Bool)

(assert (=> b!1527740 (= e!851510 e!851511)))

(assert (=> b!1527740 (= lt!661550 (select (arr!48973 lt!661425) (index!55032 lt!661548)))))

(declare-fun c!140530 () Bool)

(assert (=> b!1527740 (= c!140530 (= lt!661550 lt!661426))))

(assert (= (and d!159553 c!140531) b!1527739))

(assert (= (and d!159553 (not c!140531)) b!1527740))

(assert (= (and b!1527740 c!140530) b!1527738))

(assert (= (and b!1527740 (not c!140530)) b!1527735))

(assert (= (and b!1527735 c!140532) b!1527736))

(assert (= (and b!1527735 (not c!140532)) b!1527737))

(assert (=> d!159553 m!1410461))

(assert (=> d!159553 m!1410463))

(assert (=> d!159553 m!1410493))

(declare-fun m!1410671 () Bool)

(assert (=> d!159553 m!1410671))

(declare-fun m!1410673 () Bool)

(assert (=> d!159553 m!1410673))

(assert (=> d!159553 m!1410461))

(declare-fun m!1410675 () Bool)

(assert (=> d!159553 m!1410675))

(declare-fun m!1410677 () Bool)

(assert (=> b!1527737 m!1410677))

(declare-fun m!1410679 () Bool)

(assert (=> b!1527740 m!1410679))

(assert (=> b!1527490 d!159553))

(declare-fun b!1527741 () Bool)

(declare-fun e!851515 () SeekEntryResult!13159)

(assert (=> b!1527741 (= e!851515 (Found!13159 index!487))))

(declare-fun lt!661552 () SeekEntryResult!13159)

(declare-fun d!159555 () Bool)

(assert (=> d!159555 (and (or (is-Undefined!13159 lt!661552) (not (is-Found!13159 lt!661552)) (and (bvsge (index!55031 lt!661552) #b00000000000000000000000000000000) (bvslt (index!55031 lt!661552) (size!49524 lt!661425)))) (or (is-Undefined!13159 lt!661552) (is-Found!13159 lt!661552) (not (is-MissingVacant!13159 lt!661552)) (not (= (index!55033 lt!661552) index!487)) (and (bvsge (index!55033 lt!661552) #b00000000000000000000000000000000) (bvslt (index!55033 lt!661552) (size!49524 lt!661425)))) (or (is-Undefined!13159 lt!661552) (ite (is-Found!13159 lt!661552) (= (select (arr!48973 lt!661425) (index!55031 lt!661552)) lt!661426) (and (is-MissingVacant!13159 lt!661552) (= (index!55033 lt!661552) index!487) (= (select (arr!48973 lt!661425) (index!55033 lt!661552)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!851513 () SeekEntryResult!13159)

(assert (=> d!159555 (= lt!661552 e!851513)))

(declare-fun c!140534 () Bool)

(assert (=> d!159555 (= c!140534 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661551 () (_ BitVec 64))

(assert (=> d!159555 (= lt!661551 (select (arr!48973 lt!661425) index!487))))

(assert (=> d!159555 (validMask!0 mask!2512)))

(assert (=> d!159555 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661426 lt!661425 mask!2512) lt!661552)))

(declare-fun b!1527742 () Bool)

(declare-fun e!851514 () SeekEntryResult!13159)

(assert (=> b!1527742 (= e!851514 (MissingVacant!13159 index!487))))

(declare-fun b!1527743 () Bool)

(assert (=> b!1527743 (= e!851513 e!851515)))

(declare-fun c!140535 () Bool)

(assert (=> b!1527743 (= c!140535 (= lt!661551 lt!661426))))

(declare-fun b!1527744 () Bool)

(assert (=> b!1527744 (= e!851514 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 lt!661426 lt!661425 mask!2512))))

(declare-fun b!1527745 () Bool)

(declare-fun c!140533 () Bool)

(assert (=> b!1527745 (= c!140533 (= lt!661551 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527745 (= e!851515 e!851514)))

(declare-fun b!1527746 () Bool)

(assert (=> b!1527746 (= e!851513 Undefined!13159)))

(assert (= (and d!159555 c!140534) b!1527746))

(assert (= (and d!159555 (not c!140534)) b!1527743))

(assert (= (and b!1527743 c!140535) b!1527741))

(assert (= (and b!1527743 (not c!140535)) b!1527745))

(assert (= (and b!1527745 c!140533) b!1527742))

(assert (= (and b!1527745 (not c!140533)) b!1527744))

(declare-fun m!1410681 () Bool)

(assert (=> d!159555 m!1410681))

(declare-fun m!1410683 () Bool)

(assert (=> d!159555 m!1410683))

(declare-fun m!1410685 () Bool)

(assert (=> d!159555 m!1410685))

(assert (=> d!159555 m!1410493))

(assert (=> b!1527744 m!1410615))

(assert (=> b!1527744 m!1410615))

(declare-fun m!1410687 () Bool)

(assert (=> b!1527744 m!1410687))

(assert (=> b!1527490 d!159555))

(declare-fun b!1527770 () Bool)

(declare-fun e!851532 () Bool)

(declare-fun call!68476 () Bool)

(assert (=> b!1527770 (= e!851532 call!68476)))

(declare-fun b!1527771 () Bool)

(declare-fun e!851530 () Bool)

(assert (=> b!1527771 (= e!851530 e!851532)))

(declare-fun lt!661567 () (_ BitVec 64))

(assert (=> b!1527771 (= lt!661567 (select (arr!48973 a!2804) j!70))))

(declare-fun lt!661569 () Unit!51058)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101502 (_ BitVec 64) (_ BitVec 32)) Unit!51058)

(assert (=> b!1527771 (= lt!661569 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661567 j!70))))

(declare-fun arrayContainsKey!0 (array!101502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1527771 (arrayContainsKey!0 a!2804 lt!661567 #b00000000000000000000000000000000)))

(declare-fun lt!661568 () Unit!51058)

(assert (=> b!1527771 (= lt!661568 lt!661569)))

(declare-fun res!1045794 () Bool)

(assert (=> b!1527771 (= res!1045794 (= (seekEntryOrOpen!0 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) (Found!13159 j!70)))))

(assert (=> b!1527771 (=> (not res!1045794) (not e!851532))))

(declare-fun b!1527772 () Bool)

(assert (=> b!1527772 (= e!851530 call!68476)))

(declare-fun bm!68473 () Bool)

(assert (=> bm!68473 (= call!68476 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159557 () Bool)

(declare-fun res!1045795 () Bool)

(declare-fun e!851531 () Bool)

(assert (=> d!159557 (=> res!1045795 e!851531)))

(assert (=> d!159557 (= res!1045795 (bvsge j!70 (size!49524 a!2804)))))

(assert (=> d!159557 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!851531)))

(declare-fun b!1527773 () Bool)

(assert (=> b!1527773 (= e!851531 e!851530)))

(declare-fun c!140544 () Bool)

(assert (=> b!1527773 (= c!140544 (validKeyInArray!0 (select (arr!48973 a!2804) j!70)))))

(assert (= (and d!159557 (not res!1045795)) b!1527773))

(assert (= (and b!1527773 c!140544) b!1527771))

(assert (= (and b!1527773 (not c!140544)) b!1527772))

(assert (= (and b!1527771 res!1045794) b!1527770))

(assert (= (or b!1527770 b!1527772) bm!68473))

(assert (=> b!1527771 m!1410471))

(declare-fun m!1410703 () Bool)

(assert (=> b!1527771 m!1410703))

(declare-fun m!1410705 () Bool)

(assert (=> b!1527771 m!1410705))

(assert (=> b!1527771 m!1410471))

(assert (=> b!1527771 m!1410475))

(declare-fun m!1410707 () Bool)

(assert (=> bm!68473 m!1410707))

(assert (=> b!1527773 m!1410471))

(assert (=> b!1527773 m!1410471))

(assert (=> b!1527773 m!1410487))

(assert (=> b!1527497 d!159557))

(declare-fun d!159565 () Bool)

(assert (=> d!159565 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!661578 () Unit!51058)

(declare-fun choose!38 (array!101502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51058)

(assert (=> d!159565 (= lt!661578 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159565 (validMask!0 mask!2512)))

(assert (=> d!159565 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!661578)))

(declare-fun bs!43809 () Bool)

(assert (= bs!43809 d!159565))

(assert (=> bs!43809 m!1410483))

(declare-fun m!1410709 () Bool)

(assert (=> bs!43809 m!1410709))

(assert (=> bs!43809 m!1410493))

(assert (=> b!1527497 d!159565))

(declare-fun b!1527786 () Bool)

(declare-fun e!851543 () SeekEntryResult!13159)

(assert (=> b!1527786 (= e!851543 (Intermediate!13159 false (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1527787 () Bool)

(assert (=> b!1527787 (= e!851543 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527788 () Bool)

(declare-fun e!851541 () Bool)

(declare-fun lt!661580 () SeekEntryResult!13159)

(assert (=> b!1527788 (= e!851541 (bvsge (x!136728 lt!661580) #b01111111111111111111111111111110))))

(declare-fun d!159567 () Bool)

(assert (=> d!159567 e!851541))

(declare-fun c!140553 () Bool)

(assert (=> d!159567 (= c!140553 (and (is-Intermediate!13159 lt!661580) (undefined!13971 lt!661580)))))

(declare-fun e!851540 () SeekEntryResult!13159)

(assert (=> d!159567 (= lt!661580 e!851540)))

(declare-fun c!140551 () Bool)

(assert (=> d!159567 (= c!140551 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!661579 () (_ BitVec 64))

(assert (=> d!159567 (= lt!661579 (select (arr!48973 a!2804) (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512)))))

(assert (=> d!159567 (validMask!0 mask!2512)))

(assert (=> d!159567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661580)))

(declare-fun b!1527789 () Bool)

(assert (=> b!1527789 (and (bvsge (index!55032 lt!661580) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661580) (size!49524 a!2804)))))

(declare-fun res!1045798 () Bool)

(assert (=> b!1527789 (= res!1045798 (= (select (arr!48973 a!2804) (index!55032 lt!661580)) (select (arr!48973 a!2804) j!70)))))

(declare-fun e!851539 () Bool)

(assert (=> b!1527789 (=> res!1045798 e!851539)))

(declare-fun e!851542 () Bool)

(assert (=> b!1527789 (= e!851542 e!851539)))

(declare-fun b!1527790 () Bool)

(assert (=> b!1527790 (and (bvsge (index!55032 lt!661580) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661580) (size!49524 a!2804)))))

(declare-fun res!1045797 () Bool)

(assert (=> b!1527790 (= res!1045797 (= (select (arr!48973 a!2804) (index!55032 lt!661580)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527790 (=> res!1045797 e!851539)))

(declare-fun b!1527791 () Bool)

(assert (=> b!1527791 (= e!851541 e!851542)))

(declare-fun res!1045796 () Bool)

(assert (=> b!1527791 (= res!1045796 (and (is-Intermediate!13159 lt!661580) (not (undefined!13971 lt!661580)) (bvslt (x!136728 lt!661580) #b01111111111111111111111111111110) (bvsge (x!136728 lt!661580) #b00000000000000000000000000000000) (bvsge (x!136728 lt!661580) #b00000000000000000000000000000000)))))

(assert (=> b!1527791 (=> (not res!1045796) (not e!851542))))

(declare-fun b!1527792 () Bool)

(assert (=> b!1527792 (and (bvsge (index!55032 lt!661580) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661580) (size!49524 a!2804)))))

(assert (=> b!1527792 (= e!851539 (= (select (arr!48973 a!2804) (index!55032 lt!661580)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527793 () Bool)

(assert (=> b!1527793 (= e!851540 e!851543)))

(declare-fun c!140552 () Bool)

(assert (=> b!1527793 (= c!140552 (or (= lt!661579 (select (arr!48973 a!2804) j!70)) (= (bvadd lt!661579 lt!661579) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527794 () Bool)

(assert (=> b!1527794 (= e!851540 (Intermediate!13159 true (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(assert (= (and d!159567 c!140551) b!1527794))

(assert (= (and d!159567 (not c!140551)) b!1527793))

(assert (= (and b!1527793 c!140552) b!1527786))

(assert (= (and b!1527793 (not c!140552)) b!1527787))

(assert (= (and d!159567 c!140553) b!1527788))

(assert (= (and d!159567 (not c!140553)) b!1527791))

(assert (= (and b!1527791 res!1045796) b!1527789))

(assert (= (and b!1527789 (not res!1045798)) b!1527790))

(assert (= (and b!1527790 (not res!1045797)) b!1527792))

(declare-fun m!1410711 () Bool)

(assert (=> b!1527789 m!1410711))

(assert (=> d!159567 m!1410477))

(declare-fun m!1410713 () Bool)

(assert (=> d!159567 m!1410713))

(assert (=> d!159567 m!1410493))

(assert (=> b!1527792 m!1410711))

(assert (=> b!1527787 m!1410477))

(declare-fun m!1410715 () Bool)

(assert (=> b!1527787 m!1410715))

(assert (=> b!1527787 m!1410715))

(assert (=> b!1527787 m!1410471))

(declare-fun m!1410717 () Bool)

(assert (=> b!1527787 m!1410717))

(assert (=> b!1527790 m!1410711))

(assert (=> b!1527498 d!159567))

(declare-fun d!159569 () Bool)

(declare-fun lt!661582 () (_ BitVec 32))

(declare-fun lt!661581 () (_ BitVec 32))

(assert (=> d!159569 (= lt!661582 (bvmul (bvxor lt!661581 (bvlshr lt!661581 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159569 (= lt!661581 ((_ extract 31 0) (bvand (bvxor (select (arr!48973 a!2804) j!70) (bvlshr (select (arr!48973 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159569 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1045786 (let ((h!37070 ((_ extract 31 0) (bvand (bvxor (select (arr!48973 a!2804) j!70) (bvlshr (select (arr!48973 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136736 (bvmul (bvxor h!37070 (bvlshr h!37070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136736 (bvlshr x!136736 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1045786 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1045786 #b00000000000000000000000000000000))))))

(assert (=> d!159569 (= (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) (bvand (bvxor lt!661582 (bvlshr lt!661582 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1527498 d!159569))

(declare-fun b!1527795 () Bool)

(declare-fun e!851548 () SeekEntryResult!13159)

(assert (=> b!1527795 (= e!851548 (Intermediate!13159 false index!487 x!534))))

(declare-fun b!1527796 () Bool)

(assert (=> b!1527796 (= e!851548 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527797 () Bool)

(declare-fun e!851546 () Bool)

(declare-fun lt!661584 () SeekEntryResult!13159)

(assert (=> b!1527797 (= e!851546 (bvsge (x!136728 lt!661584) #b01111111111111111111111111111110))))

(declare-fun d!159571 () Bool)

(assert (=> d!159571 e!851546))

(declare-fun c!140556 () Bool)

(assert (=> d!159571 (= c!140556 (and (is-Intermediate!13159 lt!661584) (undefined!13971 lt!661584)))))

(declare-fun e!851545 () SeekEntryResult!13159)

(assert (=> d!159571 (= lt!661584 e!851545)))

(declare-fun c!140554 () Bool)

(assert (=> d!159571 (= c!140554 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!661583 () (_ BitVec 64))

(assert (=> d!159571 (= lt!661583 (select (arr!48973 a!2804) index!487))))

(assert (=> d!159571 (validMask!0 mask!2512)))

(assert (=> d!159571 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661584)))

(declare-fun b!1527798 () Bool)

(assert (=> b!1527798 (and (bvsge (index!55032 lt!661584) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661584) (size!49524 a!2804)))))

(declare-fun res!1045801 () Bool)

(assert (=> b!1527798 (= res!1045801 (= (select (arr!48973 a!2804) (index!55032 lt!661584)) (select (arr!48973 a!2804) j!70)))))

(declare-fun e!851544 () Bool)

(assert (=> b!1527798 (=> res!1045801 e!851544)))

(declare-fun e!851547 () Bool)

(assert (=> b!1527798 (= e!851547 e!851544)))

(declare-fun b!1527799 () Bool)

(assert (=> b!1527799 (and (bvsge (index!55032 lt!661584) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661584) (size!49524 a!2804)))))

(declare-fun res!1045800 () Bool)

(assert (=> b!1527799 (= res!1045800 (= (select (arr!48973 a!2804) (index!55032 lt!661584)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527799 (=> res!1045800 e!851544)))

(declare-fun b!1527800 () Bool)

(assert (=> b!1527800 (= e!851546 e!851547)))

(declare-fun res!1045799 () Bool)

(assert (=> b!1527800 (= res!1045799 (and (is-Intermediate!13159 lt!661584) (not (undefined!13971 lt!661584)) (bvslt (x!136728 lt!661584) #b01111111111111111111111111111110) (bvsge (x!136728 lt!661584) #b00000000000000000000000000000000) (bvsge (x!136728 lt!661584) x!534)))))

(assert (=> b!1527800 (=> (not res!1045799) (not e!851547))))

(declare-fun b!1527801 () Bool)

(assert (=> b!1527801 (and (bvsge (index!55032 lt!661584) #b00000000000000000000000000000000) (bvslt (index!55032 lt!661584) (size!49524 a!2804)))))

(assert (=> b!1527801 (= e!851544 (= (select (arr!48973 a!2804) (index!55032 lt!661584)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1527802 () Bool)

(assert (=> b!1527802 (= e!851545 e!851548)))

(declare-fun c!140555 () Bool)

(assert (=> b!1527802 (= c!140555 (or (= lt!661583 (select (arr!48973 a!2804) j!70)) (= (bvadd lt!661583 lt!661583) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1527803 () Bool)

(assert (=> b!1527803 (= e!851545 (Intermediate!13159 true index!487 x!534))))

(assert (= (and d!159571 c!140554) b!1527803))

(assert (= (and d!159571 (not c!140554)) b!1527802))

(assert (= (and b!1527802 c!140555) b!1527795))

(assert (= (and b!1527802 (not c!140555)) b!1527796))

(assert (= (and d!159571 c!140556) b!1527797))

(assert (= (and d!159571 (not c!140556)) b!1527800))

(assert (= (and b!1527800 res!1045799) b!1527798))

(assert (= (and b!1527798 (not res!1045801)) b!1527799))

(assert (= (and b!1527799 (not res!1045800)) b!1527801))

(declare-fun m!1410719 () Bool)

(assert (=> b!1527798 m!1410719))

(assert (=> d!159571 m!1410481))

(assert (=> d!159571 m!1410493))

(assert (=> b!1527801 m!1410719))

(assert (=> b!1527796 m!1410615))

(assert (=> b!1527796 m!1410615))

(assert (=> b!1527796 m!1410471))

(declare-fun m!1410721 () Bool)

(assert (=> b!1527796 m!1410721))

(assert (=> b!1527799 m!1410719))

(assert (=> b!1527487 d!159571))

(declare-fun b!1527836 () Bool)

(declare-fun e!851570 () Bool)

(declare-fun e!851569 () Bool)

(assert (=> b!1527836 (= e!851570 e!851569)))

(declare-fun c!140569 () Bool)

(assert (=> b!1527836 (= c!140569 (validKeyInArray!0 (select (arr!48973 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1527837 () Bool)

(declare-fun call!68480 () Bool)

(assert (=> b!1527837 (= e!851569 call!68480)))

(declare-fun b!1527838 () Bool)

(declare-fun e!851571 () Bool)

(assert (=> b!1527838 (= e!851571 e!851570)))

(declare-fun res!1045812 () Bool)

(assert (=> b!1527838 (=> (not res!1045812) (not e!851570))))

(declare-fun e!851572 () Bool)

(assert (=> b!1527838 (= res!1045812 (not e!851572))))

(declare-fun res!1045811 () Bool)

(assert (=> b!1527838 (=> (not res!1045811) (not e!851572))))

(assert (=> b!1527838 (= res!1045811 (validKeyInArray!0 (select (arr!48973 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1527839 () Bool)

(assert (=> b!1527839 (= e!851569 call!68480)))

(declare-fun b!1527840 () Bool)

(declare-fun contains!10009 (List!35636 (_ BitVec 64)) Bool)

(assert (=> b!1527840 (= e!851572 (contains!10009 Nil!35633 (select (arr!48973 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159573 () Bool)

(declare-fun res!1045810 () Bool)

(assert (=> d!159573 (=> res!1045810 e!851571)))

(assert (=> d!159573 (= res!1045810 (bvsge #b00000000000000000000000000000000 (size!49524 a!2804)))))

(assert (=> d!159573 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35633) e!851571)))

(declare-fun bm!68477 () Bool)

(assert (=> bm!68477 (= call!68480 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140569 (Cons!35632 (select (arr!48973 a!2804) #b00000000000000000000000000000000) Nil!35633) Nil!35633)))))

(assert (= (and d!159573 (not res!1045810)) b!1527838))

(assert (= (and b!1527838 res!1045811) b!1527840))

(assert (= (and b!1527838 res!1045812) b!1527836))

(assert (= (and b!1527836 c!140569) b!1527839))

(assert (= (and b!1527836 (not c!140569)) b!1527837))

(assert (= (or b!1527839 b!1527837) bm!68477))

(declare-fun m!1410741 () Bool)

(assert (=> b!1527836 m!1410741))

(assert (=> b!1527836 m!1410741))

(declare-fun m!1410743 () Bool)

(assert (=> b!1527836 m!1410743))

(assert (=> b!1527838 m!1410741))

(assert (=> b!1527838 m!1410741))

(assert (=> b!1527838 m!1410743))

(assert (=> b!1527840 m!1410741))

(assert (=> b!1527840 m!1410741))

(declare-fun m!1410745 () Bool)

(assert (=> b!1527840 m!1410745))

(assert (=> bm!68477 m!1410741))

(declare-fun m!1410747 () Bool)

(assert (=> bm!68477 m!1410747))

(assert (=> b!1527488 d!159573))

(declare-fun b!1527847 () Bool)

(declare-fun e!851578 () Bool)

(declare-fun call!68481 () Bool)

(assert (=> b!1527847 (= e!851578 call!68481)))

(declare-fun b!1527848 () Bool)

(declare-fun e!851576 () Bool)

(assert (=> b!1527848 (= e!851576 e!851578)))

(declare-fun lt!661603 () (_ BitVec 64))

(assert (=> b!1527848 (= lt!661603 (select (arr!48973 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!661605 () Unit!51058)

(assert (=> b!1527848 (= lt!661605 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!661603 #b00000000000000000000000000000000))))

(assert (=> b!1527848 (arrayContainsKey!0 a!2804 lt!661603 #b00000000000000000000000000000000)))

(declare-fun lt!661604 () Unit!51058)

(assert (=> b!1527848 (= lt!661604 lt!661605)))

(declare-fun res!1045813 () Bool)

(assert (=> b!1527848 (= res!1045813 (= (seekEntryOrOpen!0 (select (arr!48973 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13159 #b00000000000000000000000000000000)))))

(assert (=> b!1527848 (=> (not res!1045813) (not e!851578))))

(declare-fun b!1527849 () Bool)

(assert (=> b!1527849 (= e!851576 call!68481)))

(declare-fun bm!68478 () Bool)

(assert (=> bm!68478 (= call!68481 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159581 () Bool)

(declare-fun res!1045814 () Bool)

(declare-fun e!851577 () Bool)

(assert (=> d!159581 (=> res!1045814 e!851577)))

(assert (=> d!159581 (= res!1045814 (bvsge #b00000000000000000000000000000000 (size!49524 a!2804)))))

(assert (=> d!159581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!851577)))

(declare-fun b!1527850 () Bool)

(assert (=> b!1527850 (= e!851577 e!851576)))

(declare-fun c!140573 () Bool)

(assert (=> b!1527850 (= c!140573 (validKeyInArray!0 (select (arr!48973 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159581 (not res!1045814)) b!1527850))

(assert (= (and b!1527850 c!140573) b!1527848))

(assert (= (and b!1527850 (not c!140573)) b!1527849))

(assert (= (and b!1527848 res!1045813) b!1527847))

(assert (= (or b!1527847 b!1527849) bm!68478))

(assert (=> b!1527848 m!1410741))

(declare-fun m!1410751 () Bool)

(assert (=> b!1527848 m!1410751))

(declare-fun m!1410753 () Bool)

(assert (=> b!1527848 m!1410753))

(assert (=> b!1527848 m!1410741))

(declare-fun m!1410755 () Bool)

(assert (=> b!1527848 m!1410755))

(declare-fun m!1410759 () Bool)

(assert (=> bm!68478 m!1410759))

(assert (=> b!1527850 m!1410741))

(assert (=> b!1527850 m!1410741))

(assert (=> b!1527850 m!1410743))

(assert (=> b!1527494 d!159581))

(declare-fun d!159583 () Bool)

(assert (=> d!159583 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130162 d!159583))

(declare-fun d!159589 () Bool)

(assert (=> d!159589 (= (array_inv!37918 a!2804) (bvsge (size!49524 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130162 d!159589))

(declare-fun b!1527950 () Bool)

(declare-fun e!851641 () SeekEntryResult!13159)

(declare-fun lt!661631 () SeekEntryResult!13159)

(assert (=> b!1527950 (= e!851641 (ite (is-MissingVacant!13159 lt!661631) (MissingZero!13159 (index!55033 lt!661631)) lt!661631))))

(declare-fun lt!661634 () SeekEntryResult!13159)

(assert (=> b!1527950 (= lt!661631 (seekKeyOrZeroReturnVacant!0 (x!136728 lt!661634) (index!55032 lt!661634) (index!55032 lt!661634) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527951 () Bool)

(declare-fun e!851640 () SeekEntryResult!13159)

(declare-fun e!851639 () SeekEntryResult!13159)

(assert (=> b!1527951 (= e!851640 e!851639)))

(declare-fun lt!661633 () (_ BitVec 64))

(assert (=> b!1527951 (= lt!661633 (select (arr!48973 a!2804) (index!55032 lt!661634)))))

(declare-fun c!140611 () Bool)

(assert (=> b!1527951 (= c!140611 (= lt!661633 (select (arr!48973 a!2804) j!70)))))

(declare-fun b!1527952 () Bool)

(assert (=> b!1527952 (= e!851639 (Found!13159 (index!55032 lt!661634)))))

(declare-fun d!159591 () Bool)

(declare-fun lt!661632 () SeekEntryResult!13159)

(assert (=> d!159591 (and (or (is-MissingVacant!13159 lt!661632) (not (is-Found!13159 lt!661632)) (and (bvsge (index!55031 lt!661632) #b00000000000000000000000000000000) (bvslt (index!55031 lt!661632) (size!49524 a!2804)))) (not (is-MissingVacant!13159 lt!661632)) (or (not (is-Found!13159 lt!661632)) (= (select (arr!48973 a!2804) (index!55031 lt!661632)) (select (arr!48973 a!2804) j!70))))))

(assert (=> d!159591 (= lt!661632 e!851640)))

(declare-fun c!140612 () Bool)

(assert (=> d!159591 (= c!140612 (and (is-Intermediate!13159 lt!661634) (undefined!13971 lt!661634)))))

(assert (=> d!159591 (= lt!661634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48973 a!2804) j!70) mask!2512) (select (arr!48973 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159591 (validMask!0 mask!2512)))

(assert (=> d!159591 (= (seekEntry!0 (select (arr!48973 a!2804) j!70) a!2804 mask!2512) lt!661632)))

(declare-fun b!1527953 () Bool)

(declare-fun c!140610 () Bool)

(assert (=> b!1527953 (= c!140610 (= lt!661633 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1527953 (= e!851639 e!851641)))

(declare-fun b!1527954 () Bool)

(assert (=> b!1527954 (= e!851640 Undefined!13159)))

(declare-fun b!1527955 () Bool)

(assert (=> b!1527955 (= e!851641 (MissingZero!13159 (index!55032 lt!661634)))))

(assert (= (and d!159591 c!140612) b!1527954))

(assert (= (and d!159591 (not c!140612)) b!1527951))

(assert (= (and b!1527951 c!140611) b!1527952))

(assert (= (and b!1527951 (not c!140611)) b!1527953))

(assert (= (and b!1527953 c!140610) b!1527955))

(assert (= (and b!1527953 (not c!140610)) b!1527950))

(assert (=> b!1527950 m!1410471))

(declare-fun m!1410807 () Bool)

(assert (=> b!1527950 m!1410807))

(declare-fun m!1410809 () Bool)

(assert (=> b!1527951 m!1410809))

(declare-fun m!1410811 () Bool)

(assert (=> d!159591 m!1410811))

(assert (=> d!159591 m!1410471))

(assert (=> d!159591 m!1410477))

(assert (=> d!159591 m!1410477))

(assert (=> d!159591 m!1410471))

(assert (=> d!159591 m!1410479))

(assert (=> d!159591 m!1410493))

(assert (=> b!1527495 d!159591))

(push 1)

