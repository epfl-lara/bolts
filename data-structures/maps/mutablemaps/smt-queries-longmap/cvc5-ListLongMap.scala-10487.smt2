; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123394 () Bool)

(assert start!123394)

(declare-fun b!1430346 () Bool)

(declare-fun res!964891 () Bool)

(declare-fun e!807572 () Bool)

(assert (=> b!1430346 (=> (not res!964891) (not e!807572))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97422 0))(
  ( (array!97423 (arr!47017 (Array (_ BitVec 32) (_ BitVec 64))) (size!47568 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97422)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11318 0))(
  ( (MissingZero!11318 (index!47663 (_ BitVec 32))) (Found!11318 (index!47664 (_ BitVec 32))) (Intermediate!11318 (undefined!12130 Bool) (index!47665 (_ BitVec 32)) (x!129305 (_ BitVec 32))) (Undefined!11318) (MissingVacant!11318 (index!47666 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97422 (_ BitVec 32)) SeekEntryResult!11318)

(assert (=> b!1430346 (= res!964891 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) j!81) a!2831 mask!2608) (Found!11318 j!81)))))

(declare-fun b!1430347 () Bool)

(declare-fun res!964884 () Bool)

(declare-fun e!807570 () Bool)

(assert (=> b!1430347 (=> (not res!964884) (not e!807570))))

(declare-datatypes ((List!33707 0))(
  ( (Nil!33704) (Cons!33703 (h!35020 (_ BitVec 64)) (t!48408 List!33707)) )
))
(declare-fun arrayNoDuplicates!0 (array!97422 (_ BitVec 32) List!33707) Bool)

(assert (=> b!1430347 (= res!964884 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33704))))

(declare-fun res!964888 () Bool)

(assert (=> start!123394 (=> (not res!964888) (not e!807570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123394 (= res!964888 (validMask!0 mask!2608))))

(assert (=> start!123394 e!807570))

(assert (=> start!123394 true))

(declare-fun array_inv!35962 (array!97422) Bool)

(assert (=> start!123394 (array_inv!35962 a!2831)))

(declare-fun b!1430348 () Bool)

(declare-fun res!964885 () Bool)

(assert (=> b!1430348 (=> (not res!964885) (not e!807570))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1430348 (= res!964885 (validKeyInArray!0 (select (arr!47017 a!2831) i!982)))))

(declare-fun b!1430349 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1430349 (= e!807572 (or (= (select (arr!47017 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47017 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47017 a!2831) index!585) (select (arr!47017 a!2831) j!81)) (not (= (select (store (arr!47017 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1430350 () Bool)

(declare-fun res!964883 () Bool)

(declare-fun e!807571 () Bool)

(assert (=> b!1430350 (=> (not res!964883) (not e!807571))))

(declare-fun lt!629697 () SeekEntryResult!11318)

(declare-fun lt!629694 () array!97422)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!629696 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97422 (_ BitVec 32)) SeekEntryResult!11318)

(assert (=> b!1430350 (= res!964883 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629696 lt!629694 mask!2608) lt!629697))))

(declare-fun b!1430351 () Bool)

(declare-fun res!964896 () Bool)

(assert (=> b!1430351 (=> (not res!964896) (not e!807570))))

(assert (=> b!1430351 (= res!964896 (validKeyInArray!0 (select (arr!47017 a!2831) j!81)))))

(declare-fun b!1430352 () Bool)

(declare-fun res!964892 () Bool)

(assert (=> b!1430352 (=> (not res!964892) (not e!807570))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1430352 (= res!964892 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47568 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47568 a!2831))))))

(declare-fun b!1430353 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1430353 (= e!807571 (not (or (= (select (arr!47017 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47017 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47017 a!2831) index!585) (select (arr!47017 a!2831) j!81)) (not (= (select (store (arr!47017 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))))

(assert (=> b!1430353 e!807572))

(declare-fun res!964893 () Bool)

(assert (=> b!1430353 (=> (not res!964893) (not e!807572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97422 (_ BitVec 32)) Bool)

(assert (=> b!1430353 (= res!964893 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48330 0))(
  ( (Unit!48331) )
))
(declare-fun lt!629695 () Unit!48330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48330)

(assert (=> b!1430353 (= lt!629695 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1430354 () Bool)

(declare-fun e!807568 () Bool)

(assert (=> b!1430354 (= e!807568 e!807571)))

(declare-fun res!964889 () Bool)

(assert (=> b!1430354 (=> (not res!964889) (not e!807571))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430354 (= res!964889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629696 mask!2608) lt!629696 lt!629694 mask!2608) lt!629697))))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1430354 (= lt!629697 (Intermediate!11318 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1430354 (= lt!629696 (select (store (arr!47017 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1430354 (= lt!629694 (array!97423 (store (arr!47017 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47568 a!2831)))))

(declare-fun b!1430355 () Bool)

(declare-fun res!964890 () Bool)

(assert (=> b!1430355 (=> (not res!964890) (not e!807570))))

(assert (=> b!1430355 (= res!964890 (and (= (size!47568 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47568 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47568 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1430356 () Bool)

(declare-fun res!964894 () Bool)

(assert (=> b!1430356 (=> (not res!964894) (not e!807570))))

(assert (=> b!1430356 (= res!964894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1430357 () Bool)

(assert (=> b!1430357 (= e!807570 e!807568)))

(declare-fun res!964886 () Bool)

(assert (=> b!1430357 (=> (not res!964886) (not e!807568))))

(declare-fun lt!629698 () SeekEntryResult!11318)

(assert (=> b!1430357 (= res!964886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629698))))

(assert (=> b!1430357 (= lt!629698 (Intermediate!11318 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1430358 () Bool)

(declare-fun res!964895 () Bool)

(assert (=> b!1430358 (=> (not res!964895) (not e!807571))))

(assert (=> b!1430358 (= res!964895 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1430359 () Bool)

(declare-fun res!964887 () Bool)

(assert (=> b!1430359 (=> (not res!964887) (not e!807571))))

(assert (=> b!1430359 (= res!964887 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629698))))

(assert (= (and start!123394 res!964888) b!1430355))

(assert (= (and b!1430355 res!964890) b!1430348))

(assert (= (and b!1430348 res!964885) b!1430351))

(assert (= (and b!1430351 res!964896) b!1430356))

(assert (= (and b!1430356 res!964894) b!1430347))

(assert (= (and b!1430347 res!964884) b!1430352))

(assert (= (and b!1430352 res!964892) b!1430357))

(assert (= (and b!1430357 res!964886) b!1430354))

(assert (= (and b!1430354 res!964889) b!1430359))

(assert (= (and b!1430359 res!964887) b!1430350))

(assert (= (and b!1430350 res!964883) b!1430358))

(assert (= (and b!1430358 res!964895) b!1430353))

(assert (= (and b!1430353 res!964893) b!1430346))

(assert (= (and b!1430346 res!964891) b!1430349))

(declare-fun m!1320377 () Bool)

(assert (=> b!1430349 m!1320377))

(declare-fun m!1320379 () Bool)

(assert (=> b!1430349 m!1320379))

(declare-fun m!1320381 () Bool)

(assert (=> b!1430349 m!1320381))

(declare-fun m!1320383 () Bool)

(assert (=> b!1430349 m!1320383))

(assert (=> b!1430359 m!1320379))

(assert (=> b!1430359 m!1320379))

(declare-fun m!1320385 () Bool)

(assert (=> b!1430359 m!1320385))

(assert (=> b!1430346 m!1320379))

(assert (=> b!1430346 m!1320379))

(declare-fun m!1320387 () Bool)

(assert (=> b!1430346 m!1320387))

(declare-fun m!1320389 () Bool)

(assert (=> start!123394 m!1320389))

(declare-fun m!1320391 () Bool)

(assert (=> start!123394 m!1320391))

(declare-fun m!1320393 () Bool)

(assert (=> b!1430347 m!1320393))

(declare-fun m!1320395 () Bool)

(assert (=> b!1430354 m!1320395))

(assert (=> b!1430354 m!1320395))

(declare-fun m!1320397 () Bool)

(assert (=> b!1430354 m!1320397))

(assert (=> b!1430354 m!1320381))

(declare-fun m!1320399 () Bool)

(assert (=> b!1430354 m!1320399))

(assert (=> b!1430351 m!1320379))

(assert (=> b!1430351 m!1320379))

(declare-fun m!1320401 () Bool)

(assert (=> b!1430351 m!1320401))

(declare-fun m!1320403 () Bool)

(assert (=> b!1430348 m!1320403))

(assert (=> b!1430348 m!1320403))

(declare-fun m!1320405 () Bool)

(assert (=> b!1430348 m!1320405))

(assert (=> b!1430353 m!1320381))

(assert (=> b!1430353 m!1320383))

(assert (=> b!1430353 m!1320377))

(declare-fun m!1320407 () Bool)

(assert (=> b!1430353 m!1320407))

(assert (=> b!1430353 m!1320379))

(declare-fun m!1320409 () Bool)

(assert (=> b!1430353 m!1320409))

(assert (=> b!1430357 m!1320379))

(assert (=> b!1430357 m!1320379))

(declare-fun m!1320411 () Bool)

(assert (=> b!1430357 m!1320411))

(assert (=> b!1430357 m!1320411))

(assert (=> b!1430357 m!1320379))

(declare-fun m!1320413 () Bool)

(assert (=> b!1430357 m!1320413))

(declare-fun m!1320415 () Bool)

(assert (=> b!1430356 m!1320415))

(declare-fun m!1320417 () Bool)

(assert (=> b!1430350 m!1320417))

(push 1)

(assert (not b!1430356))

(assert (not b!1430351))

(assert (not b!1430353))

(assert (not b!1430346))

(assert (not b!1430350))

(assert (not b!1430354))

(assert (not b!1430348))

(assert (not b!1430357))

(assert (not start!123394))

(assert (not b!1430359))

(assert (not b!1430347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153609 () Bool)

(declare-fun res!964995 () Bool)

(declare-fun e!807630 () Bool)

(assert (=> d!153609 (=> res!964995 e!807630)))

(assert (=> d!153609 (= res!964995 (bvsge #b00000000000000000000000000000000 (size!47568 a!2831)))))

(assert (=> d!153609 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33704) e!807630)))

(declare-fun b!1430484 () Bool)

(declare-fun e!807631 () Bool)

(assert (=> b!1430484 (= e!807630 e!807631)))

(declare-fun res!964993 () Bool)

(assert (=> b!1430484 (=> (not res!964993) (not e!807631))))

(declare-fun e!807629 () Bool)

(assert (=> b!1430484 (= res!964993 (not e!807629))))

(declare-fun res!964994 () Bool)

(assert (=> b!1430484 (=> (not res!964994) (not e!807629))))

(assert (=> b!1430484 (= res!964994 (validKeyInArray!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430485 () Bool)

(declare-fun e!807632 () Bool)

(assert (=> b!1430485 (= e!807631 e!807632)))

(declare-fun c!132242 () Bool)

(assert (=> b!1430485 (= c!132242 (validKeyInArray!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67428 () Bool)

(declare-fun call!67431 () Bool)

(assert (=> bm!67428 (= call!67431 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132242 (Cons!33703 (select (arr!47017 a!2831) #b00000000000000000000000000000000) Nil!33704) Nil!33704)))))

(declare-fun b!1430486 () Bool)

(declare-fun contains!9872 (List!33707 (_ BitVec 64)) Bool)

(assert (=> b!1430486 (= e!807629 (contains!9872 Nil!33704 (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430487 () Bool)

(assert (=> b!1430487 (= e!807632 call!67431)))

(declare-fun b!1430488 () Bool)

(assert (=> b!1430488 (= e!807632 call!67431)))

(assert (= (and d!153609 (not res!964995)) b!1430484))

(assert (= (and b!1430484 res!964994) b!1430486))

(assert (= (and b!1430484 res!964993) b!1430485))

(assert (= (and b!1430485 c!132242) b!1430488))

(assert (= (and b!1430485 (not c!132242)) b!1430487))

(assert (= (or b!1430488 b!1430487) bm!67428))

(declare-fun m!1320525 () Bool)

(assert (=> b!1430484 m!1320525))

(assert (=> b!1430484 m!1320525))

(declare-fun m!1320527 () Bool)

(assert (=> b!1430484 m!1320527))

(assert (=> b!1430485 m!1320525))

(assert (=> b!1430485 m!1320525))

(assert (=> b!1430485 m!1320527))

(assert (=> bm!67428 m!1320525))

(declare-fun m!1320529 () Bool)

(assert (=> bm!67428 m!1320529))

(assert (=> b!1430486 m!1320525))

(assert (=> b!1430486 m!1320525))

(declare-fun m!1320531 () Bool)

(assert (=> b!1430486 m!1320531))

(assert (=> b!1430347 d!153609))

(declare-fun d!153613 () Bool)

(assert (=> d!153613 (= (validKeyInArray!0 (select (arr!47017 a!2831) i!982)) (and (not (= (select (arr!47017 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47017 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430348 d!153613))

(declare-fun d!153615 () Bool)

(declare-fun res!965016 () Bool)

(declare-fun e!807661 () Bool)

(assert (=> d!153615 (=> res!965016 e!807661)))

(assert (=> d!153615 (= res!965016 (bvsge j!81 (size!47568 a!2831)))))

(assert (=> d!153615 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807661)))

(declare-fun b!1430530 () Bool)

(declare-fun e!807663 () Bool)

(declare-fun call!67437 () Bool)

(assert (=> b!1430530 (= e!807663 call!67437)))

(declare-fun b!1430531 () Bool)

(assert (=> b!1430531 (= e!807661 e!807663)))

(declare-fun c!132254 () Bool)

(assert (=> b!1430531 (= c!132254 (validKeyInArray!0 (select (arr!47017 a!2831) j!81)))))

(declare-fun b!1430532 () Bool)

(declare-fun e!807662 () Bool)

(assert (=> b!1430532 (= e!807663 e!807662)))

(declare-fun lt!629757 () (_ BitVec 64))

(assert (=> b!1430532 (= lt!629757 (select (arr!47017 a!2831) j!81))))

(declare-fun lt!629759 () Unit!48330)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97422 (_ BitVec 64) (_ BitVec 32)) Unit!48330)

(assert (=> b!1430532 (= lt!629759 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629757 j!81))))

(declare-fun arrayContainsKey!0 (array!97422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1430532 (arrayContainsKey!0 a!2831 lt!629757 #b00000000000000000000000000000000)))

(declare-fun lt!629758 () Unit!48330)

(assert (=> b!1430532 (= lt!629758 lt!629759)))

(declare-fun res!965015 () Bool)

(assert (=> b!1430532 (= res!965015 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) j!81) a!2831 mask!2608) (Found!11318 j!81)))))

(assert (=> b!1430532 (=> (not res!965015) (not e!807662))))

(declare-fun bm!67434 () Bool)

(assert (=> bm!67434 (= call!67437 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430533 () Bool)

(assert (=> b!1430533 (= e!807662 call!67437)))

(assert (= (and d!153615 (not res!965016)) b!1430531))

(assert (= (and b!1430531 c!132254) b!1430532))

(assert (= (and b!1430531 (not c!132254)) b!1430530))

(assert (= (and b!1430532 res!965015) b!1430533))

(assert (= (or b!1430533 b!1430530) bm!67434))

(assert (=> b!1430531 m!1320379))

(assert (=> b!1430531 m!1320379))

(assert (=> b!1430531 m!1320401))

(assert (=> b!1430532 m!1320379))

(declare-fun m!1320537 () Bool)

(assert (=> b!1430532 m!1320537))

(declare-fun m!1320539 () Bool)

(assert (=> b!1430532 m!1320539))

(assert (=> b!1430532 m!1320379))

(assert (=> b!1430532 m!1320387))

(declare-fun m!1320541 () Bool)

(assert (=> bm!67434 m!1320541))

(assert (=> b!1430353 d!153615))

(declare-fun d!153621 () Bool)

(assert (=> d!153621 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629764 () Unit!48330)

(declare-fun choose!38 (array!97422 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48330)

(assert (=> d!153621 (= lt!629764 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153621 (validMask!0 mask!2608)))

(assert (=> d!153621 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629764)))

(declare-fun bs!41663 () Bool)

(assert (= bs!41663 d!153621))

(assert (=> bs!41663 m!1320407))

(declare-fun m!1320551 () Bool)

(assert (=> bs!41663 m!1320551))

(assert (=> bs!41663 m!1320389))

(assert (=> b!1430353 d!153621))

(declare-fun e!807722 () SeekEntryResult!11318)

(declare-fun b!1430631 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1430631 (= e!807722 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629696 lt!629694 mask!2608))))

(declare-fun b!1430632 () Bool)

(declare-fun e!807718 () SeekEntryResult!11318)

(assert (=> b!1430632 (= e!807718 (Intermediate!11318 true (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430633 () Bool)

(assert (=> b!1430633 (= e!807718 e!807722)))

(declare-fun c!132290 () Bool)

(declare-fun lt!629805 () (_ BitVec 64))

(assert (=> b!1430633 (= c!132290 (or (= lt!629805 lt!629696) (= (bvadd lt!629805 lt!629805) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430634 () Bool)

(declare-fun lt!629804 () SeekEntryResult!11318)

(assert (=> b!1430634 (and (bvsge (index!47665 lt!629804) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629804) (size!47568 lt!629694)))))

(declare-fun res!965049 () Bool)

(assert (=> b!1430634 (= res!965049 (= (select (arr!47017 lt!629694) (index!47665 lt!629804)) lt!629696))))

(declare-fun e!807719 () Bool)

(assert (=> b!1430634 (=> res!965049 e!807719)))

(declare-fun e!807721 () Bool)

(assert (=> b!1430634 (= e!807721 e!807719)))

(declare-fun b!1430635 () Bool)

(assert (=> b!1430635 (= e!807722 (Intermediate!11318 false (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430636 () Bool)

(declare-fun e!807720 () Bool)

(assert (=> b!1430636 (= e!807720 e!807721)))

(declare-fun res!965048 () Bool)

(assert (=> b!1430636 (= res!965048 (and (is-Intermediate!11318 lt!629804) (not (undefined!12130 lt!629804)) (bvslt (x!129305 lt!629804) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629804) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629804) #b00000000000000000000000000000000)))))

(assert (=> b!1430636 (=> (not res!965048) (not e!807721))))

(declare-fun b!1430637 () Bool)

(assert (=> b!1430637 (= e!807720 (bvsge (x!129305 lt!629804) #b01111111111111111111111111111110))))

(declare-fun d!153625 () Bool)

(assert (=> d!153625 e!807720))

(declare-fun c!132289 () Bool)

(assert (=> d!153625 (= c!132289 (and (is-Intermediate!11318 lt!629804) (undefined!12130 lt!629804)))))

(assert (=> d!153625 (= lt!629804 e!807718)))

(declare-fun c!132291 () Bool)

(assert (=> d!153625 (= c!132291 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153625 (= lt!629805 (select (arr!47017 lt!629694) (toIndex!0 lt!629696 mask!2608)))))

(assert (=> d!153625 (validMask!0 mask!2608)))

(assert (=> d!153625 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629696 mask!2608) lt!629696 lt!629694 mask!2608) lt!629804)))

(declare-fun b!1430638 () Bool)

(assert (=> b!1430638 (and (bvsge (index!47665 lt!629804) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629804) (size!47568 lt!629694)))))

(declare-fun res!965050 () Bool)

(assert (=> b!1430638 (= res!965050 (= (select (arr!47017 lt!629694) (index!47665 lt!629804)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430638 (=> res!965050 e!807719)))

(declare-fun b!1430639 () Bool)

(assert (=> b!1430639 (and (bvsge (index!47665 lt!629804) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629804) (size!47568 lt!629694)))))

(assert (=> b!1430639 (= e!807719 (= (select (arr!47017 lt!629694) (index!47665 lt!629804)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153625 c!132291) b!1430632))

(assert (= (and d!153625 (not c!132291)) b!1430633))

(assert (= (and b!1430633 c!132290) b!1430635))

(assert (= (and b!1430633 (not c!132290)) b!1430631))

(assert (= (and d!153625 c!132289) b!1430637))

(assert (= (and d!153625 (not c!132289)) b!1430636))

(assert (= (and b!1430636 res!965048) b!1430634))

(assert (= (and b!1430634 (not res!965049)) b!1430638))

(assert (= (and b!1430638 (not res!965050)) b!1430639))

(declare-fun m!1320587 () Bool)

(assert (=> b!1430639 m!1320587))

(assert (=> d!153625 m!1320395))

(declare-fun m!1320589 () Bool)

(assert (=> d!153625 m!1320589))

(assert (=> d!153625 m!1320389))

(assert (=> b!1430631 m!1320395))

(declare-fun m!1320591 () Bool)

(assert (=> b!1430631 m!1320591))

(assert (=> b!1430631 m!1320591))

(declare-fun m!1320593 () Bool)

(assert (=> b!1430631 m!1320593))

(assert (=> b!1430634 m!1320587))

(assert (=> b!1430638 m!1320587))

(assert (=> b!1430354 d!153625))

(declare-fun d!153645 () Bool)

(declare-fun lt!629817 () (_ BitVec 32))

(declare-fun lt!629816 () (_ BitVec 32))

(assert (=> d!153645 (= lt!629817 (bvmul (bvxor lt!629816 (bvlshr lt!629816 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153645 (= lt!629816 ((_ extract 31 0) (bvand (bvxor lt!629696 (bvlshr lt!629696 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153645 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965051 (let ((h!35025 ((_ extract 31 0) (bvand (bvxor lt!629696 (bvlshr lt!629696 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129313 (bvmul (bvxor h!35025 (bvlshr h!35025 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129313 (bvlshr x!129313 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965051 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965051 #b00000000000000000000000000000000))))))

(assert (=> d!153645 (= (toIndex!0 lt!629696 mask!2608) (bvand (bvxor lt!629817 (bvlshr lt!629817 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430354 d!153645))

(declare-fun e!807732 () SeekEntryResult!11318)

(declare-fun b!1430646 () Bool)

(assert (=> b!1430646 (= e!807732 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430647 () Bool)

(declare-fun e!807727 () SeekEntryResult!11318)

(assert (=> b!1430647 (= e!807727 (Intermediate!11318 true index!585 x!605))))

(declare-fun b!1430648 () Bool)

(assert (=> b!1430648 (= e!807727 e!807732)))

(declare-fun lt!629819 () (_ BitVec 64))

(declare-fun c!132296 () Bool)

(assert (=> b!1430648 (= c!132296 (or (= lt!629819 (select (arr!47017 a!2831) j!81)) (= (bvadd lt!629819 lt!629819) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430649 () Bool)

(declare-fun lt!629818 () SeekEntryResult!11318)

(assert (=> b!1430649 (and (bvsge (index!47665 lt!629818) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629818) (size!47568 a!2831)))))

(declare-fun res!965055 () Bool)

(assert (=> b!1430649 (= res!965055 (= (select (arr!47017 a!2831) (index!47665 lt!629818)) (select (arr!47017 a!2831) j!81)))))

(declare-fun e!807729 () Bool)

(assert (=> b!1430649 (=> res!965055 e!807729)))

(declare-fun e!807731 () Bool)

(assert (=> b!1430649 (= e!807731 e!807729)))

(declare-fun b!1430650 () Bool)

(assert (=> b!1430650 (= e!807732 (Intermediate!11318 false index!585 x!605))))

(declare-fun b!1430651 () Bool)

(declare-fun e!807730 () Bool)

(assert (=> b!1430651 (= e!807730 e!807731)))

(declare-fun res!965054 () Bool)

(assert (=> b!1430651 (= res!965054 (and (is-Intermediate!11318 lt!629818) (not (undefined!12130 lt!629818)) (bvslt (x!129305 lt!629818) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629818) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629818) x!605)))))

(assert (=> b!1430651 (=> (not res!965054) (not e!807731))))

(declare-fun b!1430652 () Bool)

(assert (=> b!1430652 (= e!807730 (bvsge (x!129305 lt!629818) #b01111111111111111111111111111110))))

(declare-fun d!153649 () Bool)

(assert (=> d!153649 e!807730))

(declare-fun c!132295 () Bool)

(assert (=> d!153649 (= c!132295 (and (is-Intermediate!11318 lt!629818) (undefined!12130 lt!629818)))))

(assert (=> d!153649 (= lt!629818 e!807727)))

(declare-fun c!132297 () Bool)

(assert (=> d!153649 (= c!132297 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153649 (= lt!629819 (select (arr!47017 a!2831) index!585))))

(assert (=> d!153649 (validMask!0 mask!2608)))

(assert (=> d!153649 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629818)))

(declare-fun b!1430653 () Bool)

(assert (=> b!1430653 (and (bvsge (index!47665 lt!629818) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629818) (size!47568 a!2831)))))

(declare-fun res!965056 () Bool)

(assert (=> b!1430653 (= res!965056 (= (select (arr!47017 a!2831) (index!47665 lt!629818)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430653 (=> res!965056 e!807729)))

(declare-fun b!1430654 () Bool)

(assert (=> b!1430654 (and (bvsge (index!47665 lt!629818) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629818) (size!47568 a!2831)))))

(assert (=> b!1430654 (= e!807729 (= (select (arr!47017 a!2831) (index!47665 lt!629818)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153649 c!132297) b!1430647))

(assert (= (and d!153649 (not c!132297)) b!1430648))

(assert (= (and b!1430648 c!132296) b!1430650))

(assert (= (and b!1430648 (not c!132296)) b!1430646))

(assert (= (and d!153649 c!132295) b!1430652))

(assert (= (and d!153649 (not c!132295)) b!1430651))

(assert (= (and b!1430651 res!965054) b!1430649))

(assert (= (and b!1430649 (not res!965055)) b!1430653))

(assert (= (and b!1430653 (not res!965056)) b!1430654))

(declare-fun m!1320607 () Bool)

(assert (=> b!1430654 m!1320607))

(assert (=> d!153649 m!1320377))

(assert (=> d!153649 m!1320389))

(declare-fun m!1320609 () Bool)

(assert (=> b!1430646 m!1320609))

(assert (=> b!1430646 m!1320609))

(assert (=> b!1430646 m!1320379))

(declare-fun m!1320611 () Bool)

(assert (=> b!1430646 m!1320611))

(assert (=> b!1430649 m!1320607))

(assert (=> b!1430653 m!1320607))

(assert (=> b!1430359 d!153649))

(declare-fun e!807743 () SeekEntryResult!11318)

(declare-fun b!1430665 () Bool)

(assert (=> b!1430665 (= e!807743 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629696 lt!629694 mask!2608))))

(declare-fun b!1430666 () Bool)

(declare-fun e!807739 () SeekEntryResult!11318)

(assert (=> b!1430666 (= e!807739 (Intermediate!11318 true index!585 x!605))))

(declare-fun b!1430667 () Bool)

(assert (=> b!1430667 (= e!807739 e!807743)))

(declare-fun c!132301 () Bool)

(declare-fun lt!629821 () (_ BitVec 64))

(assert (=> b!1430667 (= c!132301 (or (= lt!629821 lt!629696) (= (bvadd lt!629821 lt!629821) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430668 () Bool)

(declare-fun lt!629820 () SeekEntryResult!11318)

(assert (=> b!1430668 (and (bvsge (index!47665 lt!629820) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629820) (size!47568 lt!629694)))))

(declare-fun res!965062 () Bool)

(assert (=> b!1430668 (= res!965062 (= (select (arr!47017 lt!629694) (index!47665 lt!629820)) lt!629696))))

(declare-fun e!807740 () Bool)

(assert (=> b!1430668 (=> res!965062 e!807740)))

(declare-fun e!807742 () Bool)

(assert (=> b!1430668 (= e!807742 e!807740)))

(declare-fun b!1430669 () Bool)

(assert (=> b!1430669 (= e!807743 (Intermediate!11318 false index!585 x!605))))

(declare-fun b!1430670 () Bool)

(declare-fun e!807741 () Bool)

(assert (=> b!1430670 (= e!807741 e!807742)))

(declare-fun res!965061 () Bool)

(assert (=> b!1430670 (= res!965061 (and (is-Intermediate!11318 lt!629820) (not (undefined!12130 lt!629820)) (bvslt (x!129305 lt!629820) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629820) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629820) x!605)))))

(assert (=> b!1430670 (=> (not res!965061) (not e!807742))))

(declare-fun b!1430671 () Bool)

(assert (=> b!1430671 (= e!807741 (bvsge (x!129305 lt!629820) #b01111111111111111111111111111110))))

(declare-fun d!153651 () Bool)

(assert (=> d!153651 e!807741))

(declare-fun c!132300 () Bool)

(assert (=> d!153651 (= c!132300 (and (is-Intermediate!11318 lt!629820) (undefined!12130 lt!629820)))))

(assert (=> d!153651 (= lt!629820 e!807739)))

(declare-fun c!132302 () Bool)

(assert (=> d!153651 (= c!132302 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153651 (= lt!629821 (select (arr!47017 lt!629694) index!585))))

(assert (=> d!153651 (validMask!0 mask!2608)))

(assert (=> d!153651 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629696 lt!629694 mask!2608) lt!629820)))

(declare-fun b!1430672 () Bool)

(assert (=> b!1430672 (and (bvsge (index!47665 lt!629820) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629820) (size!47568 lt!629694)))))

(declare-fun res!965063 () Bool)

(assert (=> b!1430672 (= res!965063 (= (select (arr!47017 lt!629694) (index!47665 lt!629820)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430672 (=> res!965063 e!807740)))

(declare-fun b!1430673 () Bool)

(assert (=> b!1430673 (and (bvsge (index!47665 lt!629820) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629820) (size!47568 lt!629694)))))

(assert (=> b!1430673 (= e!807740 (= (select (arr!47017 lt!629694) (index!47665 lt!629820)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153651 c!132302) b!1430666))

(assert (= (and d!153651 (not c!132302)) b!1430667))

(assert (= (and b!1430667 c!132301) b!1430669))

(assert (= (and b!1430667 (not c!132301)) b!1430665))

(assert (= (and d!153651 c!132300) b!1430671))

(assert (= (and d!153651 (not c!132300)) b!1430670))

(assert (= (and b!1430670 res!965061) b!1430668))

(assert (= (and b!1430668 (not res!965062)) b!1430672))

(assert (= (and b!1430672 (not res!965063)) b!1430673))

(declare-fun m!1320613 () Bool)

(assert (=> b!1430673 m!1320613))

(declare-fun m!1320615 () Bool)

(assert (=> d!153651 m!1320615))

(assert (=> d!153651 m!1320389))

(assert (=> b!1430665 m!1320609))

(assert (=> b!1430665 m!1320609))

(declare-fun m!1320617 () Bool)

(assert (=> b!1430665 m!1320617))

(assert (=> b!1430668 m!1320613))

(assert (=> b!1430672 m!1320613))

(assert (=> b!1430350 d!153651))

(declare-fun d!153653 () Bool)

(declare-fun res!965065 () Bool)

(declare-fun e!807744 () Bool)

(assert (=> d!153653 (=> res!965065 e!807744)))

(assert (=> d!153653 (= res!965065 (bvsge #b00000000000000000000000000000000 (size!47568 a!2831)))))

(assert (=> d!153653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807744)))

(declare-fun b!1430674 () Bool)

(declare-fun e!807746 () Bool)

(declare-fun call!67441 () Bool)

(assert (=> b!1430674 (= e!807746 call!67441)))

(declare-fun b!1430675 () Bool)

(assert (=> b!1430675 (= e!807744 e!807746)))

(declare-fun c!132303 () Bool)

(assert (=> b!1430675 (= c!132303 (validKeyInArray!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430676 () Bool)

(declare-fun e!807745 () Bool)

(assert (=> b!1430676 (= e!807746 e!807745)))

(declare-fun lt!629822 () (_ BitVec 64))

(assert (=> b!1430676 (= lt!629822 (select (arr!47017 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629824 () Unit!48330)

(assert (=> b!1430676 (= lt!629824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629822 #b00000000000000000000000000000000))))

(assert (=> b!1430676 (arrayContainsKey!0 a!2831 lt!629822 #b00000000000000000000000000000000)))

(declare-fun lt!629823 () Unit!48330)

(assert (=> b!1430676 (= lt!629823 lt!629824)))

(declare-fun res!965064 () Bool)

(assert (=> b!1430676 (= res!965064 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11318 #b00000000000000000000000000000000)))))

(assert (=> b!1430676 (=> (not res!965064) (not e!807745))))

(declare-fun bm!67438 () Bool)

(assert (=> bm!67438 (= call!67441 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430677 () Bool)

(assert (=> b!1430677 (= e!807745 call!67441)))

(assert (= (and d!153653 (not res!965065)) b!1430675))

(assert (= (and b!1430675 c!132303) b!1430676))

(assert (= (and b!1430675 (not c!132303)) b!1430674))

(assert (= (and b!1430676 res!965064) b!1430677))

(assert (= (or b!1430677 b!1430674) bm!67438))

(assert (=> b!1430675 m!1320525))

(assert (=> b!1430675 m!1320525))

(assert (=> b!1430675 m!1320527))

(assert (=> b!1430676 m!1320525))

(declare-fun m!1320619 () Bool)

(assert (=> b!1430676 m!1320619))

(declare-fun m!1320621 () Bool)

(assert (=> b!1430676 m!1320621))

(assert (=> b!1430676 m!1320525))

(declare-fun m!1320623 () Bool)

(assert (=> b!1430676 m!1320623))

(declare-fun m!1320625 () Bool)

(assert (=> bm!67438 m!1320625))

(assert (=> b!1430356 d!153653))

(declare-fun d!153655 () Bool)

(assert (=> d!153655 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123394 d!153655))

(declare-fun d!153661 () Bool)

(assert (=> d!153661 (= (array_inv!35962 a!2831) (bvsge (size!47568 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123394 d!153661))

(declare-fun b!1430738 () Bool)

(declare-fun c!132326 () Bool)

(declare-fun lt!629855 () (_ BitVec 64))

(assert (=> b!1430738 (= c!132326 (= lt!629855 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807785 () SeekEntryResult!11318)

(declare-fun e!807784 () SeekEntryResult!11318)

(assert (=> b!1430738 (= e!807785 e!807784)))

(declare-fun d!153663 () Bool)

(declare-fun lt!629854 () SeekEntryResult!11318)

(assert (=> d!153663 (and (or (is-Undefined!11318 lt!629854) (not (is-Found!11318 lt!629854)) (and (bvsge (index!47664 lt!629854) #b00000000000000000000000000000000) (bvslt (index!47664 lt!629854) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629854) (is-Found!11318 lt!629854) (not (is-MissingZero!11318 lt!629854)) (and (bvsge (index!47663 lt!629854) #b00000000000000000000000000000000) (bvslt (index!47663 lt!629854) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629854) (is-Found!11318 lt!629854) (is-MissingZero!11318 lt!629854) (not (is-MissingVacant!11318 lt!629854)) (and (bvsge (index!47666 lt!629854) #b00000000000000000000000000000000) (bvslt (index!47666 lt!629854) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629854) (ite (is-Found!11318 lt!629854) (= (select (arr!47017 a!2831) (index!47664 lt!629854)) (select (arr!47017 a!2831) j!81)) (ite (is-MissingZero!11318 lt!629854) (= (select (arr!47017 a!2831) (index!47663 lt!629854)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11318 lt!629854) (= (select (arr!47017 a!2831) (index!47666 lt!629854)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!807786 () SeekEntryResult!11318)

(assert (=> d!153663 (= lt!629854 e!807786)))

(declare-fun c!132325 () Bool)

(declare-fun lt!629856 () SeekEntryResult!11318)

(assert (=> d!153663 (= c!132325 (and (is-Intermediate!11318 lt!629856) (undefined!12130 lt!629856)))))

(assert (=> d!153663 (= lt!629856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153663 (validMask!0 mask!2608)))

(assert (=> d!153663 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629854)))

(declare-fun b!1430739 () Bool)

(assert (=> b!1430739 (= e!807784 (MissingZero!11318 (index!47665 lt!629856)))))

(declare-fun b!1430740 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97422 (_ BitVec 32)) SeekEntryResult!11318)

(assert (=> b!1430740 (= e!807784 (seekKeyOrZeroReturnVacant!0 (x!129305 lt!629856) (index!47665 lt!629856) (index!47665 lt!629856) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430741 () Bool)

(assert (=> b!1430741 (= e!807786 e!807785)))

(assert (=> b!1430741 (= lt!629855 (select (arr!47017 a!2831) (index!47665 lt!629856)))))

(declare-fun c!132324 () Bool)

(assert (=> b!1430741 (= c!132324 (= lt!629855 (select (arr!47017 a!2831) j!81)))))

(declare-fun b!1430742 () Bool)

(assert (=> b!1430742 (= e!807785 (Found!11318 (index!47665 lt!629856)))))

(declare-fun b!1430743 () Bool)

(assert (=> b!1430743 (= e!807786 Undefined!11318)))

(assert (= (and d!153663 c!132325) b!1430743))

(assert (= (and d!153663 (not c!132325)) b!1430741))

(assert (= (and b!1430741 c!132324) b!1430742))

(assert (= (and b!1430741 (not c!132324)) b!1430738))

(assert (= (and b!1430738 c!132326) b!1430739))

(assert (= (and b!1430738 (not c!132326)) b!1430740))

(assert (=> d!153663 m!1320379))

(assert (=> d!153663 m!1320411))

(assert (=> d!153663 m!1320411))

(assert (=> d!153663 m!1320379))

(assert (=> d!153663 m!1320413))

(declare-fun m!1320671 () Bool)

(assert (=> d!153663 m!1320671))

(assert (=> d!153663 m!1320389))

(declare-fun m!1320673 () Bool)

(assert (=> d!153663 m!1320673))

(declare-fun m!1320675 () Bool)

(assert (=> d!153663 m!1320675))

(assert (=> b!1430740 m!1320379))

(declare-fun m!1320677 () Bool)

(assert (=> b!1430740 m!1320677))

(declare-fun m!1320679 () Bool)

(assert (=> b!1430741 m!1320679))

(assert (=> b!1430346 d!153663))

(declare-fun d!153679 () Bool)

(assert (=> d!153679 (= (validKeyInArray!0 (select (arr!47017 a!2831) j!81)) (and (not (= (select (arr!47017 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47017 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430351 d!153679))

(declare-fun b!1430744 () Bool)

(declare-fun e!807791 () SeekEntryResult!11318)

(assert (=> b!1430744 (= e!807791 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430745 () Bool)

(declare-fun e!807787 () SeekEntryResult!11318)

(assert (=> b!1430745 (= e!807787 (Intermediate!11318 true (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430746 () Bool)

(assert (=> b!1430746 (= e!807787 e!807791)))

(declare-fun c!132328 () Bool)

(declare-fun lt!629858 () (_ BitVec 64))

(assert (=> b!1430746 (= c!132328 (or (= lt!629858 (select (arr!47017 a!2831) j!81)) (= (bvadd lt!629858 lt!629858) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430747 () Bool)

(declare-fun lt!629857 () SeekEntryResult!11318)

(assert (=> b!1430747 (and (bvsge (index!47665 lt!629857) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629857) (size!47568 a!2831)))))

(declare-fun res!965087 () Bool)

(assert (=> b!1430747 (= res!965087 (= (select (arr!47017 a!2831) (index!47665 lt!629857)) (select (arr!47017 a!2831) j!81)))))

(declare-fun e!807788 () Bool)

(assert (=> b!1430747 (=> res!965087 e!807788)))

(declare-fun e!807790 () Bool)

(assert (=> b!1430747 (= e!807790 e!807788)))

(declare-fun b!1430748 () Bool)

(assert (=> b!1430748 (= e!807791 (Intermediate!11318 false (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430749 () Bool)

(declare-fun e!807789 () Bool)

(assert (=> b!1430749 (= e!807789 e!807790)))

(declare-fun res!965086 () Bool)

(assert (=> b!1430749 (= res!965086 (and (is-Intermediate!11318 lt!629857) (not (undefined!12130 lt!629857)) (bvslt (x!129305 lt!629857) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629857) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629857) #b00000000000000000000000000000000)))))

(assert (=> b!1430749 (=> (not res!965086) (not e!807790))))

(declare-fun b!1430750 () Bool)

(assert (=> b!1430750 (= e!807789 (bvsge (x!129305 lt!629857) #b01111111111111111111111111111110))))

(declare-fun d!153681 () Bool)

(assert (=> d!153681 e!807789))

(declare-fun c!132327 () Bool)

(assert (=> d!153681 (= c!132327 (and (is-Intermediate!11318 lt!629857) (undefined!12130 lt!629857)))))

(assert (=> d!153681 (= lt!629857 e!807787)))

(declare-fun c!132329 () Bool)

(assert (=> d!153681 (= c!132329 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153681 (= lt!629858 (select (arr!47017 a!2831) (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608)))))

(assert (=> d!153681 (validMask!0 mask!2608)))

(assert (=> d!153681 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629857)))

(declare-fun b!1430751 () Bool)

(assert (=> b!1430751 (and (bvsge (index!47665 lt!629857) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629857) (size!47568 a!2831)))))

(declare-fun res!965088 () Bool)

(assert (=> b!1430751 (= res!965088 (= (select (arr!47017 a!2831) (index!47665 lt!629857)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430751 (=> res!965088 e!807788)))

(declare-fun b!1430752 () Bool)

(assert (=> b!1430752 (and (bvsge (index!47665 lt!629857) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629857) (size!47568 a!2831)))))

(assert (=> b!1430752 (= e!807788 (= (select (arr!47017 a!2831) (index!47665 lt!629857)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153681 c!132329) b!1430745))

(assert (= (and d!153681 (not c!132329)) b!1430746))

(assert (= (and b!1430746 c!132328) b!1430748))

(assert (= (and b!1430746 (not c!132328)) b!1430744))

(assert (= (and d!153681 c!132327) b!1430750))

(assert (= (and d!153681 (not c!132327)) b!1430749))

(assert (= (and b!1430749 res!965086) b!1430747))

(assert (= (and b!1430747 (not res!965087)) b!1430751))

(assert (= (and b!1430751 (not res!965088)) b!1430752))

(declare-fun m!1320681 () Bool)

(assert (=> b!1430752 m!1320681))

(assert (=> d!153681 m!1320411))

(declare-fun m!1320683 () Bool)

(assert (=> d!153681 m!1320683))

(assert (=> d!153681 m!1320389))

(assert (=> b!1430744 m!1320411))

(declare-fun m!1320685 () Bool)

(assert (=> b!1430744 m!1320685))

(assert (=> b!1430744 m!1320685))

(assert (=> b!1430744 m!1320379))

(declare-fun m!1320687 () Bool)

(assert (=> b!1430744 m!1320687))

(assert (=> b!1430747 m!1320681))

(assert (=> b!1430751 m!1320681))

(assert (=> b!1430357 d!153681))

(declare-fun d!153683 () Bool)

(declare-fun lt!629860 () (_ BitVec 32))

(declare-fun lt!629859 () (_ BitVec 32))

(assert (=> d!153683 (= lt!629860 (bvmul (bvxor lt!629859 (bvlshr lt!629859 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153683 (= lt!629859 ((_ extract 31 0) (bvand (bvxor (select (arr!47017 a!2831) j!81) (bvlshr (select (arr!47017 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153683 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965051 (let ((h!35025 ((_ extract 31 0) (bvand (bvxor (select (arr!47017 a!2831) j!81) (bvlshr (select (arr!47017 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129313 (bvmul (bvxor h!35025 (bvlshr h!35025 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129313 (bvlshr x!129313 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965051 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965051 #b00000000000000000000000000000000))))))

(assert (=> d!153683 (= (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) (bvand (bvxor lt!629860 (bvlshr lt!629860 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1430357 d!153683))

(push 1)

(assert (not b!1430646))

(assert (not bm!67428))

(assert (not b!1430665))

(assert (not d!153651))

(assert (not b!1430631))

(assert (not d!153649))

(assert (not d!153621))

(assert (not b!1430675))

(assert (not d!153625))

(assert (not d!153663))

(assert (not b!1430740))

(assert (not bm!67434))

(assert (not d!153681))

(assert (not b!1430744))

(assert (not bm!67438))

(assert (not b!1430486))

(assert (not b!1430531))

(assert (not b!1430484))

(assert (not b!1430676))

(assert (not b!1430532))

(assert (not b!1430485))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!153681 d!153655))

(assert (=> d!153663 d!153681))

(assert (=> d!153663 d!153683))

(assert (=> d!153663 d!153655))

(declare-fun b!1430753 () Bool)

(declare-fun e!807796 () SeekEntryResult!11318)

(assert (=> b!1430753 (= e!807796 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) lt!629696 lt!629694 mask!2608))))

(declare-fun b!1430754 () Bool)

(declare-fun e!807792 () SeekEntryResult!11318)

(assert (=> b!1430754 (= e!807792 (Intermediate!11318 true (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430755 () Bool)

(assert (=> b!1430755 (= e!807792 e!807796)))

(declare-fun c!132331 () Bool)

(declare-fun lt!629862 () (_ BitVec 64))

(assert (=> b!1430755 (= c!132331 (or (= lt!629862 lt!629696) (= (bvadd lt!629862 lt!629862) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430756 () Bool)

(declare-fun lt!629861 () SeekEntryResult!11318)

(assert (=> b!1430756 (and (bvsge (index!47665 lt!629861) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629861) (size!47568 lt!629694)))))

(declare-fun res!965090 () Bool)

(assert (=> b!1430756 (= res!965090 (= (select (arr!47017 lt!629694) (index!47665 lt!629861)) lt!629696))))

(declare-fun e!807793 () Bool)

(assert (=> b!1430756 (=> res!965090 e!807793)))

(declare-fun e!807795 () Bool)

(assert (=> b!1430756 (= e!807795 e!807793)))

(declare-fun b!1430757 () Bool)

(assert (=> b!1430757 (= e!807796 (Intermediate!11318 false (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430758 () Bool)

(declare-fun e!807794 () Bool)

(assert (=> b!1430758 (= e!807794 e!807795)))

(declare-fun res!965089 () Bool)

(assert (=> b!1430758 (= res!965089 (and (is-Intermediate!11318 lt!629861) (not (undefined!12130 lt!629861)) (bvslt (x!129305 lt!629861) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629861) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629861) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430758 (=> (not res!965089) (not e!807795))))

(declare-fun b!1430759 () Bool)

(assert (=> b!1430759 (= e!807794 (bvsge (x!129305 lt!629861) #b01111111111111111111111111111110))))

(declare-fun d!153685 () Bool)

(assert (=> d!153685 e!807794))

(declare-fun c!132330 () Bool)

(assert (=> d!153685 (= c!132330 (and (is-Intermediate!11318 lt!629861) (undefined!12130 lt!629861)))))

(assert (=> d!153685 (= lt!629861 e!807792)))

(declare-fun c!132332 () Bool)

(assert (=> d!153685 (= c!132332 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!153685 (= lt!629862 (select (arr!47017 lt!629694) (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153685 (validMask!0 mask!2608)))

(assert (=> d!153685 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629696 lt!629694 mask!2608) lt!629861)))

(declare-fun b!1430760 () Bool)

(assert (=> b!1430760 (and (bvsge (index!47665 lt!629861) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629861) (size!47568 lt!629694)))))

(declare-fun res!965091 () Bool)

(assert (=> b!1430760 (= res!965091 (= (select (arr!47017 lt!629694) (index!47665 lt!629861)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430760 (=> res!965091 e!807793)))

(declare-fun b!1430761 () Bool)

(assert (=> b!1430761 (and (bvsge (index!47665 lt!629861) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629861) (size!47568 lt!629694)))))

(assert (=> b!1430761 (= e!807793 (= (select (arr!47017 lt!629694) (index!47665 lt!629861)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153685 c!132332) b!1430754))

(assert (= (and d!153685 (not c!132332)) b!1430755))

(assert (= (and b!1430755 c!132331) b!1430757))

(assert (= (and b!1430755 (not c!132331)) b!1430753))

(assert (= (and d!153685 c!132330) b!1430759))

(assert (= (and d!153685 (not c!132330)) b!1430758))

(assert (= (and b!1430758 res!965089) b!1430756))

(assert (= (and b!1430756 (not res!965090)) b!1430760))

(assert (= (and b!1430760 (not res!965091)) b!1430761))

(declare-fun m!1320689 () Bool)

(assert (=> b!1430761 m!1320689))

(assert (=> d!153685 m!1320591))

(declare-fun m!1320691 () Bool)

(assert (=> d!153685 m!1320691))

(assert (=> d!153685 m!1320389))

(assert (=> b!1430753 m!1320591))

(declare-fun m!1320693 () Bool)

(assert (=> b!1430753 m!1320693))

(assert (=> b!1430753 m!1320693))

(declare-fun m!1320695 () Bool)

(assert (=> b!1430753 m!1320695))

(assert (=> b!1430756 m!1320689))

(assert (=> b!1430760 m!1320689))

(assert (=> b!1430631 d!153685))

(declare-fun d!153687 () Bool)

(declare-fun lt!629865 () (_ BitVec 32))

(assert (=> d!153687 (and (bvsge lt!629865 #b00000000000000000000000000000000) (bvslt lt!629865 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!153687 (= lt!629865 (choose!52 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153687 (validMask!0 mask!2608)))

(assert (=> d!153687 (= (nextIndex!0 (toIndex!0 lt!629696 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629865)))

(declare-fun bs!41666 () Bool)

(assert (= bs!41666 d!153687))

(assert (=> bs!41666 m!1320395))

(declare-fun m!1320697 () Bool)

(assert (=> bs!41666 m!1320697))

(assert (=> bs!41666 m!1320389))

(assert (=> b!1430631 d!153687))

(assert (=> d!153625 d!153655))

(declare-fun d!153689 () Bool)

(assert (=> d!153689 (= (validKeyInArray!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000)) (and (not (= (select (arr!47017 a!2831) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47017 a!2831) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1430484 d!153689))

(assert (=> b!1430675 d!153689))

(assert (=> b!1430485 d!153689))

(declare-fun e!807801 () SeekEntryResult!11318)

(declare-fun b!1430762 () Bool)

(assert (=> b!1430762 (= e!807801 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430763 () Bool)

(declare-fun e!807797 () SeekEntryResult!11318)

(assert (=> b!1430763 (= e!807797 (Intermediate!11318 true (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430764 () Bool)

(assert (=> b!1430764 (= e!807797 e!807801)))

(declare-fun lt!629867 () (_ BitVec 64))

(declare-fun c!132334 () Bool)

(assert (=> b!1430764 (= c!132334 (or (= lt!629867 (select (arr!47017 a!2831) j!81)) (= (bvadd lt!629867 lt!629867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430765 () Bool)

(declare-fun lt!629866 () SeekEntryResult!11318)

(assert (=> b!1430765 (and (bvsge (index!47665 lt!629866) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629866) (size!47568 a!2831)))))

(declare-fun res!965093 () Bool)

(assert (=> b!1430765 (= res!965093 (= (select (arr!47017 a!2831) (index!47665 lt!629866)) (select (arr!47017 a!2831) j!81)))))

(declare-fun e!807798 () Bool)

(assert (=> b!1430765 (=> res!965093 e!807798)))

(declare-fun e!807800 () Bool)

(assert (=> b!1430765 (= e!807800 e!807798)))

(declare-fun b!1430766 () Bool)

(assert (=> b!1430766 (= e!807801 (Intermediate!11318 false (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1430767 () Bool)

(declare-fun e!807799 () Bool)

(assert (=> b!1430767 (= e!807799 e!807800)))

(declare-fun res!965092 () Bool)

(assert (=> b!1430767 (= res!965092 (and (is-Intermediate!11318 lt!629866) (not (undefined!12130 lt!629866)) (bvslt (x!129305 lt!629866) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629866) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629866) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430767 (=> (not res!965092) (not e!807800))))

(declare-fun b!1430768 () Bool)

(assert (=> b!1430768 (= e!807799 (bvsge (x!129305 lt!629866) #b01111111111111111111111111111110))))

(declare-fun d!153691 () Bool)

(assert (=> d!153691 e!807799))

(declare-fun c!132333 () Bool)

(assert (=> d!153691 (= c!132333 (and (is-Intermediate!11318 lt!629866) (undefined!12130 lt!629866)))))

(assert (=> d!153691 (= lt!629866 e!807797)))

(declare-fun c!132335 () Bool)

(assert (=> d!153691 (= c!132335 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!153691 (= lt!629867 (select (arr!47017 a!2831) (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608)))))

(assert (=> d!153691 (validMask!0 mask!2608)))

(assert (=> d!153691 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629866)))

(declare-fun b!1430769 () Bool)

(assert (=> b!1430769 (and (bvsge (index!47665 lt!629866) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629866) (size!47568 a!2831)))))

(declare-fun res!965094 () Bool)

(assert (=> b!1430769 (= res!965094 (= (select (arr!47017 a!2831) (index!47665 lt!629866)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430769 (=> res!965094 e!807798)))

(declare-fun b!1430770 () Bool)

(assert (=> b!1430770 (and (bvsge (index!47665 lt!629866) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629866) (size!47568 a!2831)))))

(assert (=> b!1430770 (= e!807798 (= (select (arr!47017 a!2831) (index!47665 lt!629866)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153691 c!132335) b!1430763))

(assert (= (and d!153691 (not c!132335)) b!1430764))

(assert (= (and b!1430764 c!132334) b!1430766))

(assert (= (and b!1430764 (not c!132334)) b!1430762))

(assert (= (and d!153691 c!132333) b!1430768))

(assert (= (and d!153691 (not c!132333)) b!1430767))

(assert (= (and b!1430767 res!965092) b!1430765))

(assert (= (and b!1430765 (not res!965093)) b!1430769))

(assert (= (and b!1430769 (not res!965094)) b!1430770))

(declare-fun m!1320699 () Bool)

(assert (=> b!1430770 m!1320699))

(assert (=> d!153691 m!1320685))

(declare-fun m!1320701 () Bool)

(assert (=> d!153691 m!1320701))

(assert (=> d!153691 m!1320389))

(assert (=> b!1430762 m!1320685))

(declare-fun m!1320703 () Bool)

(assert (=> b!1430762 m!1320703))

(assert (=> b!1430762 m!1320703))

(assert (=> b!1430762 m!1320379))

(declare-fun m!1320705 () Bool)

(assert (=> b!1430762 m!1320705))

(assert (=> b!1430765 m!1320699))

(assert (=> b!1430769 m!1320699))

(assert (=> b!1430744 d!153691))

(declare-fun d!153693 () Bool)

(declare-fun lt!629868 () (_ BitVec 32))

(assert (=> d!153693 (and (bvsge lt!629868 #b00000000000000000000000000000000) (bvslt lt!629868 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153693 (= lt!629868 (choose!52 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608))))

(assert (=> d!153693 (validMask!0 mask!2608)))

(assert (=> d!153693 (= (nextIndex!0 (toIndex!0 (select (arr!47017 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629868)))

(declare-fun bs!41667 () Bool)

(assert (= bs!41667 d!153693))

(assert (=> bs!41667 m!1320411))

(declare-fun m!1320707 () Bool)

(assert (=> bs!41667 m!1320707))

(assert (=> bs!41667 m!1320389))

(assert (=> b!1430744 d!153693))

(assert (=> d!153651 d!153655))

(declare-fun d!153695 () Bool)

(assert (=> d!153695 (arrayContainsKey!0 a!2831 lt!629822 #b00000000000000000000000000000000)))

(declare-fun lt!629871 () Unit!48330)

(declare-fun choose!13 (array!97422 (_ BitVec 64) (_ BitVec 32)) Unit!48330)

(assert (=> d!153695 (= lt!629871 (choose!13 a!2831 lt!629822 #b00000000000000000000000000000000))))

(assert (=> d!153695 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!153695 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629822 #b00000000000000000000000000000000) lt!629871)))

(declare-fun bs!41668 () Bool)

(assert (= bs!41668 d!153695))

(assert (=> bs!41668 m!1320621))

(declare-fun m!1320709 () Bool)

(assert (=> bs!41668 m!1320709))

(assert (=> b!1430676 d!153695))

(declare-fun d!153697 () Bool)

(declare-fun res!965099 () Bool)

(declare-fun e!807806 () Bool)

(assert (=> d!153697 (=> res!965099 e!807806)))

(assert (=> d!153697 (= res!965099 (= (select (arr!47017 a!2831) #b00000000000000000000000000000000) lt!629822))))

(assert (=> d!153697 (= (arrayContainsKey!0 a!2831 lt!629822 #b00000000000000000000000000000000) e!807806)))

(declare-fun b!1430775 () Bool)

(declare-fun e!807807 () Bool)

(assert (=> b!1430775 (= e!807806 e!807807)))

(declare-fun res!965100 () Bool)

(assert (=> b!1430775 (=> (not res!965100) (not e!807807))))

(assert (=> b!1430775 (= res!965100 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47568 a!2831)))))

(declare-fun b!1430776 () Bool)

(assert (=> b!1430776 (= e!807807 (arrayContainsKey!0 a!2831 lt!629822 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153697 (not res!965099)) b!1430775))

(assert (= (and b!1430775 res!965100) b!1430776))

(assert (=> d!153697 m!1320525))

(declare-fun m!1320711 () Bool)

(assert (=> b!1430776 m!1320711))

(assert (=> b!1430676 d!153697))

(declare-fun b!1430777 () Bool)

(declare-fun c!132338 () Bool)

(declare-fun lt!629873 () (_ BitVec 64))

(assert (=> b!1430777 (= c!132338 (= lt!629873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!807809 () SeekEntryResult!11318)

(declare-fun e!807808 () SeekEntryResult!11318)

(assert (=> b!1430777 (= e!807809 e!807808)))

(declare-fun d!153699 () Bool)

(declare-fun lt!629872 () SeekEntryResult!11318)

(assert (=> d!153699 (and (or (is-Undefined!11318 lt!629872) (not (is-Found!11318 lt!629872)) (and (bvsge (index!47664 lt!629872) #b00000000000000000000000000000000) (bvslt (index!47664 lt!629872) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629872) (is-Found!11318 lt!629872) (not (is-MissingZero!11318 lt!629872)) (and (bvsge (index!47663 lt!629872) #b00000000000000000000000000000000) (bvslt (index!47663 lt!629872) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629872) (is-Found!11318 lt!629872) (is-MissingZero!11318 lt!629872) (not (is-MissingVacant!11318 lt!629872)) (and (bvsge (index!47666 lt!629872) #b00000000000000000000000000000000) (bvslt (index!47666 lt!629872) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629872) (ite (is-Found!11318 lt!629872) (= (select (arr!47017 a!2831) (index!47664 lt!629872)) (select (arr!47017 a!2831) #b00000000000000000000000000000000)) (ite (is-MissingZero!11318 lt!629872) (= (select (arr!47017 a!2831) (index!47663 lt!629872)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11318 lt!629872) (= (select (arr!47017 a!2831) (index!47666 lt!629872)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!807810 () SeekEntryResult!11318)

(assert (=> d!153699 (= lt!629872 e!807810)))

(declare-fun c!132337 () Bool)

(declare-fun lt!629874 () SeekEntryResult!11318)

(assert (=> d!153699 (= c!132337 (and (is-Intermediate!11318 lt!629874) (undefined!12130 lt!629874)))))

(assert (=> d!153699 (= lt!629874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000) mask!2608) (select (arr!47017 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(assert (=> d!153699 (validMask!0 mask!2608)))

(assert (=> d!153699 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) lt!629872)))

(declare-fun b!1430778 () Bool)

(assert (=> b!1430778 (= e!807808 (MissingZero!11318 (index!47665 lt!629874)))))

(declare-fun b!1430779 () Bool)

(assert (=> b!1430779 (= e!807808 (seekKeyOrZeroReturnVacant!0 (x!129305 lt!629874) (index!47665 lt!629874) (index!47665 lt!629874) (select (arr!47017 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608))))

(declare-fun b!1430780 () Bool)

(assert (=> b!1430780 (= e!807810 e!807809)))

(assert (=> b!1430780 (= lt!629873 (select (arr!47017 a!2831) (index!47665 lt!629874)))))

(declare-fun c!132336 () Bool)

(assert (=> b!1430780 (= c!132336 (= lt!629873 (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430781 () Bool)

(assert (=> b!1430781 (= e!807809 (Found!11318 (index!47665 lt!629874)))))

(declare-fun b!1430782 () Bool)

(assert (=> b!1430782 (= e!807810 Undefined!11318)))

(assert (= (and d!153699 c!132337) b!1430782))

(assert (= (and d!153699 (not c!132337)) b!1430780))

(assert (= (and b!1430780 c!132336) b!1430781))

(assert (= (and b!1430780 (not c!132336)) b!1430777))

(assert (= (and b!1430777 c!132338) b!1430778))

(assert (= (and b!1430777 (not c!132338)) b!1430779))

(assert (=> d!153699 m!1320525))

(declare-fun m!1320713 () Bool)

(assert (=> d!153699 m!1320713))

(assert (=> d!153699 m!1320713))

(assert (=> d!153699 m!1320525))

(declare-fun m!1320715 () Bool)

(assert (=> d!153699 m!1320715))

(declare-fun m!1320717 () Bool)

(assert (=> d!153699 m!1320717))

(assert (=> d!153699 m!1320389))

(declare-fun m!1320719 () Bool)

(assert (=> d!153699 m!1320719))

(declare-fun m!1320721 () Bool)

(assert (=> d!153699 m!1320721))

(assert (=> b!1430779 m!1320525))

(declare-fun m!1320723 () Bool)

(assert (=> b!1430779 m!1320723))

(declare-fun m!1320725 () Bool)

(assert (=> b!1430780 m!1320725))

(assert (=> b!1430676 d!153699))

(declare-fun e!807815 () SeekEntryResult!11318)

(declare-fun b!1430783 () Bool)

(assert (=> b!1430783 (= e!807815 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430784 () Bool)

(declare-fun e!807811 () SeekEntryResult!11318)

(assert (=> b!1430784 (= e!807811 (Intermediate!11318 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430785 () Bool)

(assert (=> b!1430785 (= e!807811 e!807815)))

(declare-fun c!132340 () Bool)

(declare-fun lt!629876 () (_ BitVec 64))

(assert (=> b!1430785 (= c!132340 (or (= lt!629876 (select (arr!47017 a!2831) j!81)) (= (bvadd lt!629876 lt!629876) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430786 () Bool)

(declare-fun lt!629875 () SeekEntryResult!11318)

(assert (=> b!1430786 (and (bvsge (index!47665 lt!629875) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629875) (size!47568 a!2831)))))

(declare-fun res!965102 () Bool)

(assert (=> b!1430786 (= res!965102 (= (select (arr!47017 a!2831) (index!47665 lt!629875)) (select (arr!47017 a!2831) j!81)))))

(declare-fun e!807812 () Bool)

(assert (=> b!1430786 (=> res!965102 e!807812)))

(declare-fun e!807814 () Bool)

(assert (=> b!1430786 (= e!807814 e!807812)))

(declare-fun b!1430787 () Bool)

(assert (=> b!1430787 (= e!807815 (Intermediate!11318 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430788 () Bool)

(declare-fun e!807813 () Bool)

(assert (=> b!1430788 (= e!807813 e!807814)))

(declare-fun res!965101 () Bool)

(assert (=> b!1430788 (= res!965101 (and (is-Intermediate!11318 lt!629875) (not (undefined!12130 lt!629875)) (bvslt (x!129305 lt!629875) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629875) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629875) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430788 (=> (not res!965101) (not e!807814))))

(declare-fun b!1430789 () Bool)

(assert (=> b!1430789 (= e!807813 (bvsge (x!129305 lt!629875) #b01111111111111111111111111111110))))

(declare-fun d!153701 () Bool)

(assert (=> d!153701 e!807813))

(declare-fun c!132339 () Bool)

(assert (=> d!153701 (= c!132339 (and (is-Intermediate!11318 lt!629875) (undefined!12130 lt!629875)))))

(assert (=> d!153701 (= lt!629875 e!807811)))

(declare-fun c!132341 () Bool)

(assert (=> d!153701 (= c!132341 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!153701 (= lt!629876 (select (arr!47017 a!2831) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153701 (validMask!0 mask!2608)))

(assert (=> d!153701 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629875)))

(declare-fun b!1430790 () Bool)

(assert (=> b!1430790 (and (bvsge (index!47665 lt!629875) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629875) (size!47568 a!2831)))))

(declare-fun res!965103 () Bool)

(assert (=> b!1430790 (= res!965103 (= (select (arr!47017 a!2831) (index!47665 lt!629875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430790 (=> res!965103 e!807812)))

(declare-fun b!1430791 () Bool)

(assert (=> b!1430791 (and (bvsge (index!47665 lt!629875) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629875) (size!47568 a!2831)))))

(assert (=> b!1430791 (= e!807812 (= (select (arr!47017 a!2831) (index!47665 lt!629875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153701 c!132341) b!1430784))

(assert (= (and d!153701 (not c!132341)) b!1430785))

(assert (= (and b!1430785 c!132340) b!1430787))

(assert (= (and b!1430785 (not c!132340)) b!1430783))

(assert (= (and d!153701 c!132339) b!1430789))

(assert (= (and d!153701 (not c!132339)) b!1430788))

(assert (= (and b!1430788 res!965101) b!1430786))

(assert (= (and b!1430786 (not res!965102)) b!1430790))

(assert (= (and b!1430790 (not res!965103)) b!1430791))

(declare-fun m!1320727 () Bool)

(assert (=> b!1430791 m!1320727))

(assert (=> d!153701 m!1320609))

(declare-fun m!1320729 () Bool)

(assert (=> d!153701 m!1320729))

(assert (=> d!153701 m!1320389))

(assert (=> b!1430783 m!1320609))

(declare-fun m!1320731 () Bool)

(assert (=> b!1430783 m!1320731))

(assert (=> b!1430783 m!1320731))

(assert (=> b!1430783 m!1320379))

(declare-fun m!1320733 () Bool)

(assert (=> b!1430783 m!1320733))

(assert (=> b!1430786 m!1320727))

(assert (=> b!1430790 m!1320727))

(assert (=> b!1430646 d!153701))

(declare-fun d!153703 () Bool)

(declare-fun lt!629877 () (_ BitVec 32))

(assert (=> d!153703 (and (bvsge lt!629877 #b00000000000000000000000000000000) (bvslt lt!629877 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(assert (=> d!153703 (= lt!629877 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!153703 (validMask!0 mask!2608)))

(assert (=> d!153703 (= (nextIndex!0 index!585 x!605 mask!2608) lt!629877)))

(declare-fun bs!41669 () Bool)

(assert (= bs!41669 d!153703))

(declare-fun m!1320735 () Bool)

(assert (=> bs!41669 m!1320735))

(assert (=> bs!41669 m!1320389))

(assert (=> b!1430646 d!153703))

(declare-fun b!1430804 () Bool)

(declare-fun e!807823 () SeekEntryResult!11318)

(declare-fun e!807822 () SeekEntryResult!11318)

(assert (=> b!1430804 (= e!807823 e!807822)))

(declare-fun lt!629882 () (_ BitVec 64))

(declare-fun c!132349 () Bool)

(assert (=> b!1430804 (= c!132349 (= lt!629882 (select (arr!47017 a!2831) j!81)))))

(declare-fun lt!629883 () SeekEntryResult!11318)

(declare-fun d!153705 () Bool)

(assert (=> d!153705 (and (or (is-Undefined!11318 lt!629883) (not (is-Found!11318 lt!629883)) (and (bvsge (index!47664 lt!629883) #b00000000000000000000000000000000) (bvslt (index!47664 lt!629883) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629883) (is-Found!11318 lt!629883) (not (is-MissingVacant!11318 lt!629883)) (not (= (index!47666 lt!629883) (index!47665 lt!629856))) (and (bvsge (index!47666 lt!629883) #b00000000000000000000000000000000) (bvslt (index!47666 lt!629883) (size!47568 a!2831)))) (or (is-Undefined!11318 lt!629883) (ite (is-Found!11318 lt!629883) (= (select (arr!47017 a!2831) (index!47664 lt!629883)) (select (arr!47017 a!2831) j!81)) (and (is-MissingVacant!11318 lt!629883) (= (index!47666 lt!629883) (index!47665 lt!629856)) (= (select (arr!47017 a!2831) (index!47666 lt!629883)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!153705 (= lt!629883 e!807823)))

(declare-fun c!132348 () Bool)

(assert (=> d!153705 (= c!132348 (bvsge (x!129305 lt!629856) #b01111111111111111111111111111110))))

(assert (=> d!153705 (= lt!629882 (select (arr!47017 a!2831) (index!47665 lt!629856)))))

(assert (=> d!153705 (validMask!0 mask!2608)))

(assert (=> d!153705 (= (seekKeyOrZeroReturnVacant!0 (x!129305 lt!629856) (index!47665 lt!629856) (index!47665 lt!629856) (select (arr!47017 a!2831) j!81) a!2831 mask!2608) lt!629883)))

(declare-fun b!1430805 () Bool)

(declare-fun e!807824 () SeekEntryResult!11318)

(assert (=> b!1430805 (= e!807824 (seekKeyOrZeroReturnVacant!0 (bvadd (x!129305 lt!629856) #b00000000000000000000000000000001) (nextIndex!0 (index!47665 lt!629856) (x!129305 lt!629856) mask!2608) (index!47665 lt!629856) (select (arr!47017 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430806 () Bool)

(assert (=> b!1430806 (= e!807823 Undefined!11318)))

(declare-fun b!1430807 () Bool)

(assert (=> b!1430807 (= e!807822 (Found!11318 (index!47665 lt!629856)))))

(declare-fun b!1430808 () Bool)

(assert (=> b!1430808 (= e!807824 (MissingVacant!11318 (index!47665 lt!629856)))))

(declare-fun b!1430809 () Bool)

(declare-fun c!132350 () Bool)

(assert (=> b!1430809 (= c!132350 (= lt!629882 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430809 (= e!807822 e!807824)))

(assert (= (and d!153705 c!132348) b!1430806))

(assert (= (and d!153705 (not c!132348)) b!1430804))

(assert (= (and b!1430804 c!132349) b!1430807))

(assert (= (and b!1430804 (not c!132349)) b!1430809))

(assert (= (and b!1430809 c!132350) b!1430808))

(assert (= (and b!1430809 (not c!132350)) b!1430805))

(declare-fun m!1320737 () Bool)

(assert (=> d!153705 m!1320737))

(declare-fun m!1320739 () Bool)

(assert (=> d!153705 m!1320739))

(assert (=> d!153705 m!1320679))

(assert (=> d!153705 m!1320389))

(declare-fun m!1320741 () Bool)

(assert (=> b!1430805 m!1320741))

(assert (=> b!1430805 m!1320741))

(assert (=> b!1430805 m!1320379))

(declare-fun m!1320743 () Bool)

(assert (=> b!1430805 m!1320743))

(assert (=> b!1430740 d!153705))

(declare-fun d!153707 () Bool)

(declare-fun res!965106 () Bool)

(declare-fun e!807826 () Bool)

(assert (=> d!153707 (=> res!965106 e!807826)))

(assert (=> d!153707 (= res!965106 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47568 a!2831)))))

(assert (=> d!153707 (= (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132242 (Cons!33703 (select (arr!47017 a!2831) #b00000000000000000000000000000000) Nil!33704) Nil!33704)) e!807826)))

(declare-fun b!1430810 () Bool)

(declare-fun e!807827 () Bool)

(assert (=> b!1430810 (= e!807826 e!807827)))

(declare-fun res!965104 () Bool)

(assert (=> b!1430810 (=> (not res!965104) (not e!807827))))

(declare-fun e!807825 () Bool)

(assert (=> b!1430810 (= res!965104 (not e!807825))))

(declare-fun res!965105 () Bool)

(assert (=> b!1430810 (=> (not res!965105) (not e!807825))))

(assert (=> b!1430810 (= res!965105 (validKeyInArray!0 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430811 () Bool)

(declare-fun e!807828 () Bool)

(assert (=> b!1430811 (= e!807827 e!807828)))

(declare-fun c!132351 () Bool)

(assert (=> b!1430811 (= c!132351 (validKeyInArray!0 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!67444 () Bool)

(declare-fun call!67447 () Bool)

(assert (=> bm!67444 (= call!67447 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!132351 (Cons!33703 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!132242 (Cons!33703 (select (arr!47017 a!2831) #b00000000000000000000000000000000) Nil!33704) Nil!33704)) (ite c!132242 (Cons!33703 (select (arr!47017 a!2831) #b00000000000000000000000000000000) Nil!33704) Nil!33704))))))

(declare-fun b!1430812 () Bool)

(assert (=> b!1430812 (= e!807825 (contains!9872 (ite c!132242 (Cons!33703 (select (arr!47017 a!2831) #b00000000000000000000000000000000) Nil!33704) Nil!33704) (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430813 () Bool)

(assert (=> b!1430813 (= e!807828 call!67447)))

(declare-fun b!1430814 () Bool)

(assert (=> b!1430814 (= e!807828 call!67447)))

(assert (= (and d!153707 (not res!965106)) b!1430810))

(assert (= (and b!1430810 res!965105) b!1430812))

(assert (= (and b!1430810 res!965104) b!1430811))

(assert (= (and b!1430811 c!132351) b!1430814))

(assert (= (and b!1430811 (not c!132351)) b!1430813))

(assert (= (or b!1430814 b!1430813) bm!67444))

(declare-fun m!1320745 () Bool)

(assert (=> b!1430810 m!1320745))

(assert (=> b!1430810 m!1320745))

(declare-fun m!1320747 () Bool)

(assert (=> b!1430810 m!1320747))

(assert (=> b!1430811 m!1320745))

(assert (=> b!1430811 m!1320745))

(assert (=> b!1430811 m!1320747))

(assert (=> bm!67444 m!1320745))

(declare-fun m!1320749 () Bool)

(assert (=> bm!67444 m!1320749))

(assert (=> b!1430812 m!1320745))

(assert (=> b!1430812 m!1320745))

(declare-fun m!1320751 () Bool)

(assert (=> b!1430812 m!1320751))

(assert (=> bm!67428 d!153707))

(declare-fun d!153709 () Bool)

(declare-fun res!965108 () Bool)

(declare-fun e!807829 () Bool)

(assert (=> d!153709 (=> res!965108 e!807829)))

(assert (=> d!153709 (= res!965108 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47568 a!2831)))))

(assert (=> d!153709 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608) e!807829)))

(declare-fun b!1430815 () Bool)

(declare-fun e!807831 () Bool)

(declare-fun call!67448 () Bool)

(assert (=> b!1430815 (= e!807831 call!67448)))

(declare-fun b!1430816 () Bool)

(assert (=> b!1430816 (= e!807829 e!807831)))

(declare-fun c!132352 () Bool)

(assert (=> b!1430816 (= c!132352 (validKeyInArray!0 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1430817 () Bool)

(declare-fun e!807830 () Bool)

(assert (=> b!1430817 (= e!807831 e!807830)))

(declare-fun lt!629884 () (_ BitVec 64))

(assert (=> b!1430817 (= lt!629884 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!629886 () Unit!48330)

(assert (=> b!1430817 (= lt!629886 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629884 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1430817 (arrayContainsKey!0 a!2831 lt!629884 #b00000000000000000000000000000000)))

(declare-fun lt!629885 () Unit!48330)

(assert (=> b!1430817 (= lt!629885 lt!629886)))

(declare-fun res!965107 () Bool)

(assert (=> b!1430817 (= res!965107 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11318 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1430817 (=> (not res!965107) (not e!807830))))

(declare-fun bm!67445 () Bool)

(assert (=> bm!67445 (= call!67448 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430818 () Bool)

(assert (=> b!1430818 (= e!807830 call!67448)))

(assert (= (and d!153709 (not res!965108)) b!1430816))

(assert (= (and b!1430816 c!132352) b!1430817))

(assert (= (and b!1430816 (not c!132352)) b!1430815))

(assert (= (and b!1430817 res!965107) b!1430818))

(assert (= (or b!1430818 b!1430815) bm!67445))

(assert (=> b!1430816 m!1320745))

(assert (=> b!1430816 m!1320745))

(assert (=> b!1430816 m!1320747))

(assert (=> b!1430817 m!1320745))

(declare-fun m!1320753 () Bool)

(assert (=> b!1430817 m!1320753))

(declare-fun m!1320755 () Bool)

(assert (=> b!1430817 m!1320755))

(assert (=> b!1430817 m!1320745))

(declare-fun m!1320757 () Bool)

(assert (=> b!1430817 m!1320757))

(declare-fun m!1320759 () Bool)

(assert (=> bm!67445 m!1320759))

(assert (=> bm!67438 d!153709))

(declare-fun d!153711 () Bool)

(declare-fun lt!629889 () Bool)

(declare-fun content!775 (List!33707) (Set (_ BitVec 64)))

(assert (=> d!153711 (= lt!629889 (set.member (select (arr!47017 a!2831) #b00000000000000000000000000000000) (content!775 Nil!33704)))))

(declare-fun e!807836 () Bool)

(assert (=> d!153711 (= lt!629889 e!807836)))

(declare-fun res!965114 () Bool)

(assert (=> d!153711 (=> (not res!965114) (not e!807836))))

(assert (=> d!153711 (= res!965114 (is-Cons!33703 Nil!33704))))

(assert (=> d!153711 (= (contains!9872 Nil!33704 (select (arr!47017 a!2831) #b00000000000000000000000000000000)) lt!629889)))

(declare-fun b!1430823 () Bool)

(declare-fun e!807837 () Bool)

(assert (=> b!1430823 (= e!807836 e!807837)))

(declare-fun res!965113 () Bool)

(assert (=> b!1430823 (=> res!965113 e!807837)))

(assert (=> b!1430823 (= res!965113 (= (h!35020 Nil!33704) (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430824 () Bool)

(assert (=> b!1430824 (= e!807837 (contains!9872 (t!48408 Nil!33704) (select (arr!47017 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153711 res!965114) b!1430823))

(assert (= (and b!1430823 (not res!965113)) b!1430824))

(declare-fun m!1320761 () Bool)

(assert (=> d!153711 m!1320761))

(assert (=> d!153711 m!1320525))

(declare-fun m!1320763 () Bool)

(assert (=> d!153711 m!1320763))

(assert (=> b!1430824 m!1320525))

(declare-fun m!1320765 () Bool)

(assert (=> b!1430824 m!1320765))

(assert (=> b!1430486 d!153711))

(assert (=> d!153649 d!153655))

(assert (=> d!153621 d!153615))

(declare-fun d!153713 () Bool)

(assert (=> d!153713 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(assert (=> d!153713 true))

(declare-fun _$72!143 () Unit!48330)

(assert (=> d!153713 (= (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) _$72!143)))

(declare-fun bs!41670 () Bool)

(assert (= bs!41670 d!153713))

(assert (=> bs!41670 m!1320407))

(assert (=> d!153621 d!153713))

(assert (=> d!153621 d!153655))

(assert (=> b!1430531 d!153679))

(declare-fun d!153715 () Bool)

(assert (=> d!153715 (arrayContainsKey!0 a!2831 lt!629757 #b00000000000000000000000000000000)))

(declare-fun lt!629890 () Unit!48330)

(assert (=> d!153715 (= lt!629890 (choose!13 a!2831 lt!629757 j!81))))

(assert (=> d!153715 (bvsge j!81 #b00000000000000000000000000000000)))

(assert (=> d!153715 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629757 j!81) lt!629890)))

(declare-fun bs!41671 () Bool)

(assert (= bs!41671 d!153715))

(assert (=> bs!41671 m!1320539))

(declare-fun m!1320767 () Bool)

(assert (=> bs!41671 m!1320767))

(assert (=> b!1430532 d!153715))

(declare-fun d!153717 () Bool)

(declare-fun res!965115 () Bool)

(declare-fun e!807838 () Bool)

(assert (=> d!153717 (=> res!965115 e!807838)))

(assert (=> d!153717 (= res!965115 (= (select (arr!47017 a!2831) #b00000000000000000000000000000000) lt!629757))))

(assert (=> d!153717 (= (arrayContainsKey!0 a!2831 lt!629757 #b00000000000000000000000000000000) e!807838)))

(declare-fun b!1430825 () Bool)

(declare-fun e!807839 () Bool)

(assert (=> b!1430825 (= e!807838 e!807839)))

(declare-fun res!965116 () Bool)

(assert (=> b!1430825 (=> (not res!965116) (not e!807839))))

(assert (=> b!1430825 (= res!965116 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!47568 a!2831)))))

(declare-fun b!1430826 () Bool)

(assert (=> b!1430826 (= e!807839 (arrayContainsKey!0 a!2831 lt!629757 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!153717 (not res!965115)) b!1430825))

(assert (= (and b!1430825 res!965116) b!1430826))

(assert (=> d!153717 m!1320525))

(declare-fun m!1320769 () Bool)

(assert (=> b!1430826 m!1320769))

(assert (=> b!1430532 d!153717))

(assert (=> b!1430532 d!153663))

(declare-fun e!807844 () SeekEntryResult!11318)

(declare-fun b!1430827 () Bool)

(assert (=> b!1430827 (= e!807844 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001) mask!2608) lt!629696 lt!629694 mask!2608))))

(declare-fun e!807840 () SeekEntryResult!11318)

(declare-fun b!1430828 () Bool)

(assert (=> b!1430828 (= e!807840 (Intermediate!11318 true (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430829 () Bool)

(assert (=> b!1430829 (= e!807840 e!807844)))

(declare-fun c!132354 () Bool)

(declare-fun lt!629892 () (_ BitVec 64))

(assert (=> b!1430829 (= c!132354 (or (= lt!629892 lt!629696) (= (bvadd lt!629892 lt!629892) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430830 () Bool)

(declare-fun lt!629891 () SeekEntryResult!11318)

(assert (=> b!1430830 (and (bvsge (index!47665 lt!629891) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629891) (size!47568 lt!629694)))))

(declare-fun res!965118 () Bool)

(assert (=> b!1430830 (= res!965118 (= (select (arr!47017 lt!629694) (index!47665 lt!629891)) lt!629696))))

(declare-fun e!807841 () Bool)

(assert (=> b!1430830 (=> res!965118 e!807841)))

(declare-fun e!807843 () Bool)

(assert (=> b!1430830 (= e!807843 e!807841)))

(declare-fun b!1430831 () Bool)

(assert (=> b!1430831 (= e!807844 (Intermediate!11318 false (nextIndex!0 index!585 x!605 mask!2608) (bvadd x!605 #b00000000000000000000000000000001)))))

(declare-fun b!1430832 () Bool)

(declare-fun e!807842 () Bool)

(assert (=> b!1430832 (= e!807842 e!807843)))

(declare-fun res!965117 () Bool)

(assert (=> b!1430832 (= res!965117 (and (is-Intermediate!11318 lt!629891) (not (undefined!12130 lt!629891)) (bvslt (x!129305 lt!629891) #b01111111111111111111111111111110) (bvsge (x!129305 lt!629891) #b00000000000000000000000000000000) (bvsge (x!129305 lt!629891) (bvadd x!605 #b00000000000000000000000000000001))))))

(assert (=> b!1430832 (=> (not res!965117) (not e!807843))))

(declare-fun b!1430833 () Bool)

(assert (=> b!1430833 (= e!807842 (bvsge (x!129305 lt!629891) #b01111111111111111111111111111110))))

(declare-fun d!153719 () Bool)

(assert (=> d!153719 e!807842))

(declare-fun c!132353 () Bool)

(assert (=> d!153719 (= c!132353 (and (is-Intermediate!11318 lt!629891) (undefined!12130 lt!629891)))))

(assert (=> d!153719 (= lt!629891 e!807840)))

(declare-fun c!132355 () Bool)

(assert (=> d!153719 (= c!132355 (bvsge (bvadd x!605 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!153719 (= lt!629892 (select (arr!47017 lt!629694) (nextIndex!0 index!585 x!605 mask!2608)))))

(assert (=> d!153719 (validMask!0 mask!2608)))

(assert (=> d!153719 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629696 lt!629694 mask!2608) lt!629891)))

(declare-fun b!1430834 () Bool)

(assert (=> b!1430834 (and (bvsge (index!47665 lt!629891) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629891) (size!47568 lt!629694)))))

(declare-fun res!965119 () Bool)

(assert (=> b!1430834 (= res!965119 (= (select (arr!47017 lt!629694) (index!47665 lt!629891)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430834 (=> res!965119 e!807841)))

(declare-fun b!1430835 () Bool)

(assert (=> b!1430835 (and (bvsge (index!47665 lt!629891) #b00000000000000000000000000000000) (bvslt (index!47665 lt!629891) (size!47568 lt!629694)))))

(assert (=> b!1430835 (= e!807841 (= (select (arr!47017 lt!629694) (index!47665 lt!629891)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153719 c!132355) b!1430828))

(assert (= (and d!153719 (not c!132355)) b!1430829))

(assert (= (and b!1430829 c!132354) b!1430831))

(assert (= (and b!1430829 (not c!132354)) b!1430827))

(assert (= (and d!153719 c!132353) b!1430833))

(assert (= (and d!153719 (not c!132353)) b!1430832))

(assert (= (and b!1430832 res!965117) b!1430830))

(assert (= (and b!1430830 (not res!965118)) b!1430834))

(assert (= (and b!1430834 (not res!965119)) b!1430835))

(declare-fun m!1320771 () Bool)

(assert (=> b!1430835 m!1320771))

(assert (=> d!153719 m!1320609))

(declare-fun m!1320773 () Bool)

(assert (=> d!153719 m!1320773))

(assert (=> d!153719 m!1320389))

(assert (=> b!1430827 m!1320609))

(assert (=> b!1430827 m!1320731))

(assert (=> b!1430827 m!1320731))

(declare-fun m!1320775 () Bool)

(assert (=> b!1430827 m!1320775))

(assert (=> b!1430830 m!1320771))

(assert (=> b!1430834 m!1320771))

(assert (=> b!1430665 d!153719))

(assert (=> b!1430665 d!153703))

(declare-fun d!153721 () Bool)

(declare-fun res!965121 () Bool)

(declare-fun e!807845 () Bool)

(assert (=> d!153721 (=> res!965121 e!807845)))

(assert (=> d!153721 (= res!965121 (bvsge (bvadd j!81 #b00000000000000000000000000000001) (size!47568 a!2831)))))

(assert (=> d!153721 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608) e!807845)))

(declare-fun b!1430836 () Bool)

(declare-fun e!807847 () Bool)

(declare-fun call!67449 () Bool)

(assert (=> b!1430836 (= e!807847 call!67449)))

(declare-fun b!1430837 () Bool)

(assert (=> b!1430837 (= e!807845 e!807847)))

(declare-fun c!132356 () Bool)

(assert (=> b!1430837 (= c!132356 (validKeyInArray!0 (select (arr!47017 a!2831) (bvadd j!81 #b00000000000000000000000000000001))))))

(declare-fun b!1430838 () Bool)

(declare-fun e!807846 () Bool)

(assert (=> b!1430838 (= e!807847 e!807846)))

(declare-fun lt!629893 () (_ BitVec 64))

(assert (=> b!1430838 (= lt!629893 (select (arr!47017 a!2831) (bvadd j!81 #b00000000000000000000000000000001)))))

(declare-fun lt!629895 () Unit!48330)

(assert (=> b!1430838 (= lt!629895 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629893 (bvadd j!81 #b00000000000000000000000000000001)))))

(assert (=> b!1430838 (arrayContainsKey!0 a!2831 lt!629893 #b00000000000000000000000000000000)))

(declare-fun lt!629894 () Unit!48330)

(assert (=> b!1430838 (= lt!629894 lt!629895)))

(declare-fun res!965120 () Bool)

(assert (=> b!1430838 (= res!965120 (= (seekEntryOrOpen!0 (select (arr!47017 a!2831) (bvadd j!81 #b00000000000000000000000000000001)) a!2831 mask!2608) (Found!11318 (bvadd j!81 #b00000000000000000000000000000001))))))

(assert (=> b!1430838 (=> (not res!965120) (not e!807846))))

(declare-fun bm!67446 () Bool)

(assert (=> bm!67446 (= call!67449 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1430839 () Bool)

(assert (=> b!1430839 (= e!807846 call!67449)))

(assert (= (and d!153721 (not res!965121)) b!1430837))

(assert (= (and b!1430837 c!132356) b!1430838))

(assert (= (and b!1430837 (not c!132356)) b!1430836))

(assert (= (and b!1430838 res!965120) b!1430839))

(assert (= (or b!1430839 b!1430836) bm!67446))

(declare-fun m!1320777 () Bool)

(assert (=> b!1430837 m!1320777))

(assert (=> b!1430837 m!1320777))

(declare-fun m!1320779 () Bool)

(assert (=> b!1430837 m!1320779))

(assert (=> b!1430838 m!1320777))

(declare-fun m!1320781 () Bool)

(assert (=> b!1430838 m!1320781))

(declare-fun m!1320783 () Bool)

(assert (=> b!1430838 m!1320783))

(assert (=> b!1430838 m!1320777))

(declare-fun m!1320785 () Bool)

(assert (=> b!1430838 m!1320785))

(declare-fun m!1320787 () Bool)

(assert (=> bm!67446 m!1320787))

(assert (=> bm!67434 d!153721))

(push 1)

(assert (not b!1430817))

(assert (not d!153715))

(assert (not b!1430776))

(assert (not b!1430779))

(assert (not d!153713))

(assert (not bm!67444))

(assert (not d!153705))

(assert (not b!1430753))

(assert (not b!1430827))

(assert (not b!1430812))

(assert (not d!153693))

(assert (not b!1430762))

(assert (not d!153701))

(assert (not b!1430824))

(assert (not d!153711))

(assert (not d!153685))

(assert (not bm!67446))

(assert (not b!1430838))

(assert (not b!1430811))

(assert (not d!153699))

(assert (not b!1430816))

(assert (not b!1430810))

(assert (not b!1430783))

(assert (not d!153687))

(assert (not b!1430837))

(assert (not d!153719))

(assert (not bm!67445))

(assert (not b!1430826))

(assert (not d!153691))

(assert (not b!1430805))

(assert (not d!153695))

(assert (not d!153703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

