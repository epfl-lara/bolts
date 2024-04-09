; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93204 () Bool)

(assert start!93204)

(declare-fun b!1056516 () Bool)

(declare-fun e!600707 () Bool)

(declare-fun e!600704 () Bool)

(assert (=> b!1056516 (= e!600707 e!600704)))

(declare-fun res!705368 () Bool)

(assert (=> b!1056516 (=> res!705368 e!600704)))

(declare-fun lt!466114 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056516 (= res!705368 (or (bvsgt lt!466114 i!1381) (bvsle i!1381 lt!466114)))))

(declare-fun b!1056517 () Bool)

(declare-fun res!705369 () Bool)

(declare-fun e!600708 () Bool)

(assert (=> b!1056517 (=> (not res!705369) (not e!600708))))

(declare-datatypes ((array!66623 0))(
  ( (array!66624 (arr!32032 (Array (_ BitVec 32) (_ BitVec 64))) (size!32569 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66623)

(declare-datatypes ((List!22475 0))(
  ( (Nil!22472) (Cons!22471 (h!23680 (_ BitVec 64)) (t!31789 List!22475)) )
))
(declare-fun arrayNoDuplicates!0 (array!66623 (_ BitVec 32) List!22475) Bool)

(assert (=> b!1056517 (= res!705369 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22472))))

(declare-fun res!705367 () Bool)

(assert (=> start!93204 (=> (not res!705367) (not e!600708))))

(assert (=> start!93204 (= res!705367 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32569 a!3488)) (bvslt (size!32569 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93204 e!600708))

(assert (=> start!93204 true))

(declare-fun array_inv!24654 (array!66623) Bool)

(assert (=> start!93204 (array_inv!24654 a!3488)))

(declare-fun b!1056518 () Bool)

(declare-fun e!600710 () Bool)

(assert (=> b!1056518 (= e!600708 e!600710)))

(declare-fun res!705372 () Bool)

(assert (=> b!1056518 (=> (not res!705372) (not e!600710))))

(declare-fun lt!466112 () array!66623)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056518 (= res!705372 (arrayContainsKey!0 lt!466112 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056518 (= lt!466112 (array!66624 (store (arr!32032 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32569 a!3488)))))

(declare-fun b!1056519 () Bool)

(declare-fun e!600705 () Bool)

(declare-fun e!600706 () Bool)

(assert (=> b!1056519 (= e!600705 (not e!600706))))

(declare-fun res!705370 () Bool)

(assert (=> b!1056519 (=> res!705370 e!600706)))

(assert (=> b!1056519 (= res!705370 (or (bvsgt lt!466114 i!1381) (bvsle i!1381 lt!466114)))))

(assert (=> b!1056519 e!600707))

(declare-fun res!705374 () Bool)

(assert (=> b!1056519 (=> (not res!705374) (not e!600707))))

(assert (=> b!1056519 (= res!705374 (= (select (store (arr!32032 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466114) k!2747))))

(declare-fun b!1056520 () Bool)

(assert (=> b!1056520 (= e!600706 true)))

(assert (=> b!1056520 (arrayNoDuplicates!0 a!3488 lt!466114 Nil!22472)))

(declare-datatypes ((Unit!34595 0))(
  ( (Unit!34596) )
))
(declare-fun lt!466113 () Unit!34595)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66623 (_ BitVec 32) (_ BitVec 32)) Unit!34595)

(assert (=> b!1056520 (= lt!466113 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466114))))

(declare-fun b!1056521 () Bool)

(assert (=> b!1056521 (= e!600710 e!600705)))

(declare-fun res!705375 () Bool)

(assert (=> b!1056521 (=> (not res!705375) (not e!600705))))

(assert (=> b!1056521 (= res!705375 (not (= lt!466114 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66623 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056521 (= lt!466114 (arrayScanForKey!0 lt!466112 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056522 () Bool)

(assert (=> b!1056522 (= e!600704 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056523 () Bool)

(declare-fun res!705373 () Bool)

(assert (=> b!1056523 (=> (not res!705373) (not e!600708))))

(assert (=> b!1056523 (= res!705373 (= (select (arr!32032 a!3488) i!1381) k!2747))))

(declare-fun b!1056524 () Bool)

(declare-fun res!705371 () Bool)

(assert (=> b!1056524 (=> (not res!705371) (not e!600708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056524 (= res!705371 (validKeyInArray!0 k!2747))))

(assert (= (and start!93204 res!705367) b!1056517))

(assert (= (and b!1056517 res!705369) b!1056524))

(assert (= (and b!1056524 res!705371) b!1056523))

(assert (= (and b!1056523 res!705373) b!1056518))

(assert (= (and b!1056518 res!705372) b!1056521))

(assert (= (and b!1056521 res!705375) b!1056519))

(assert (= (and b!1056519 res!705374) b!1056516))

(assert (= (and b!1056516 (not res!705368)) b!1056522))

(assert (= (and b!1056519 (not res!705370)) b!1056520))

(declare-fun m!976473 () Bool)

(assert (=> b!1056522 m!976473))

(declare-fun m!976475 () Bool)

(assert (=> b!1056524 m!976475))

(declare-fun m!976477 () Bool)

(assert (=> b!1056521 m!976477))

(declare-fun m!976479 () Bool)

(assert (=> b!1056520 m!976479))

(declare-fun m!976481 () Bool)

(assert (=> b!1056520 m!976481))

(declare-fun m!976483 () Bool)

(assert (=> start!93204 m!976483))

(declare-fun m!976485 () Bool)

(assert (=> b!1056518 m!976485))

(declare-fun m!976487 () Bool)

(assert (=> b!1056518 m!976487))

(declare-fun m!976489 () Bool)

(assert (=> b!1056517 m!976489))

(assert (=> b!1056519 m!976487))

(declare-fun m!976491 () Bool)

(assert (=> b!1056519 m!976491))

(declare-fun m!976493 () Bool)

(assert (=> b!1056523 m!976493))

(push 1)

