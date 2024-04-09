; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130314 () Bool)

(assert start!130314)

(declare-fun b!1529513 () Bool)

(declare-fun res!1047368 () Bool)

(declare-fun e!852370 () Bool)

(assert (=> b!1529513 (=> (not res!1047368) (not e!852370))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101591 0))(
  ( (array!101592 (arr!49016 (Array (_ BitVec 32) (_ BitVec 64))) (size!49567 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101591)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529513 (= res!1047368 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49567 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49567 a!2804))))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!852368 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun b!1529514 () Bool)

(declare-datatypes ((SeekEntryResult!13202 0))(
  ( (MissingZero!13202 (index!55202 (_ BitVec 32))) (Found!13202 (index!55203 (_ BitVec 32))) (Intermediate!13202 (undefined!14014 Bool) (index!55204 (_ BitVec 32)) (x!136892 (_ BitVec 32))) (Undefined!13202) (MissingVacant!13202 (index!55205 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101591 (_ BitVec 32)) SeekEntryResult!13202)

(assert (=> b!1529514 (= e!852368 (= (seekEntry!0 (select (arr!49016 a!2804) j!70) a!2804 mask!2512) (Found!13202 j!70)))))

(declare-fun b!1529515 () Bool)

(declare-fun res!1047363 () Bool)

(assert (=> b!1529515 (=> (not res!1047363) (not e!852370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529515 (= res!1047363 (validKeyInArray!0 (select (arr!49016 a!2804) j!70)))))

(declare-fun b!1529516 () Bool)

(declare-fun res!1047364 () Bool)

(assert (=> b!1529516 (=> (not res!1047364) (not e!852370))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1529516 (= res!1047364 (and (= (size!49567 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49567 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49567 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529517 () Bool)

(declare-fun res!1047365 () Bool)

(declare-fun e!852367 () Bool)

(assert (=> b!1529517 (=> (not res!1047365) (not e!852367))))

(declare-fun lt!662422 () SeekEntryResult!13202)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101591 (_ BitVec 32)) SeekEntryResult!13202)

(assert (=> b!1529517 (= res!1047365 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49016 a!2804) j!70) a!2804 mask!2512) lt!662422))))

(declare-fun b!1529518 () Bool)

(declare-fun res!1047362 () Bool)

(assert (=> b!1529518 (=> (not res!1047362) (not e!852367))))

(declare-fun lt!662424 () SeekEntryResult!13202)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529518 (= res!1047362 (= lt!662424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49016 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49016 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101592 (store (arr!49016 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49567 a!2804)) mask!2512)))))

(declare-fun b!1529519 () Bool)

(declare-fun res!1047366 () Bool)

(assert (=> b!1529519 (=> (not res!1047366) (not e!852370))))

(declare-datatypes ((List!35679 0))(
  ( (Nil!35676) (Cons!35675 (h!37112 (_ BitVec 64)) (t!50380 List!35679)) )
))
(declare-fun arrayNoDuplicates!0 (array!101591 (_ BitVec 32) List!35679) Bool)

(assert (=> b!1529519 (= res!1047366 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35676))))

(declare-fun b!1529521 () Bool)

(declare-fun e!852369 () Bool)

(assert (=> b!1529521 (= e!852367 (not e!852369))))

(declare-fun res!1047367 () Bool)

(assert (=> b!1529521 (=> res!1047367 e!852369)))

(assert (=> b!1529521 (= res!1047367 (or (not (= (select (arr!49016 a!2804) j!70) (select (store (arr!49016 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529521 e!852368))

(declare-fun res!1047361 () Bool)

(assert (=> b!1529521 (=> (not res!1047361) (not e!852368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101591 (_ BitVec 32)) Bool)

(assert (=> b!1529521 (= res!1047361 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51144 0))(
  ( (Unit!51145) )
))
(declare-fun lt!662425 () Unit!51144)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51144)

(assert (=> b!1529521 (= lt!662425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529522 () Bool)

(assert (=> b!1529522 (= e!852370 e!852367)))

(declare-fun res!1047360 () Bool)

(assert (=> b!1529522 (=> (not res!1047360) (not e!852367))))

(assert (=> b!1529522 (= res!1047360 (= lt!662424 lt!662422))))

(assert (=> b!1529522 (= lt!662422 (Intermediate!13202 false resIndex!21 resX!21))))

(assert (=> b!1529522 (= lt!662424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49016 a!2804) j!70) mask!2512) (select (arr!49016 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529523 () Bool)

(declare-fun res!1047369 () Bool)

(assert (=> b!1529523 (=> (not res!1047369) (not e!852370))))

(assert (=> b!1529523 (= res!1047369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529524 () Bool)

(declare-fun res!1047358 () Bool)

(assert (=> b!1529524 (=> (not res!1047358) (not e!852370))))

(assert (=> b!1529524 (= res!1047358 (validKeyInArray!0 (select (arr!49016 a!2804) i!961)))))

(declare-fun b!1529520 () Bool)

(assert (=> b!1529520 (= e!852369 true)))

(declare-fun lt!662423 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529520 (= lt!662423 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1047359 () Bool)

(assert (=> start!130314 (=> (not res!1047359) (not e!852370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130314 (= res!1047359 (validMask!0 mask!2512))))

(assert (=> start!130314 e!852370))

(assert (=> start!130314 true))

(declare-fun array_inv!37961 (array!101591) Bool)

(assert (=> start!130314 (array_inv!37961 a!2804)))

(assert (= (and start!130314 res!1047359) b!1529516))

(assert (= (and b!1529516 res!1047364) b!1529524))

(assert (= (and b!1529524 res!1047358) b!1529515))

(assert (= (and b!1529515 res!1047363) b!1529523))

(assert (= (and b!1529523 res!1047369) b!1529519))

(assert (= (and b!1529519 res!1047366) b!1529513))

(assert (= (and b!1529513 res!1047368) b!1529522))

(assert (= (and b!1529522 res!1047360) b!1529517))

(assert (= (and b!1529517 res!1047365) b!1529518))

(assert (= (and b!1529518 res!1047362) b!1529521))

(assert (= (and b!1529521 res!1047361) b!1529514))

(assert (= (and b!1529521 (not res!1047367)) b!1529520))

(declare-fun m!1412519 () Bool)

(assert (=> start!130314 m!1412519))

(declare-fun m!1412521 () Bool)

(assert (=> start!130314 m!1412521))

(declare-fun m!1412523 () Bool)

(assert (=> b!1529522 m!1412523))

(assert (=> b!1529522 m!1412523))

(declare-fun m!1412525 () Bool)

(assert (=> b!1529522 m!1412525))

(assert (=> b!1529522 m!1412525))

(assert (=> b!1529522 m!1412523))

(declare-fun m!1412527 () Bool)

(assert (=> b!1529522 m!1412527))

(declare-fun m!1412529 () Bool)

(assert (=> b!1529519 m!1412529))

(assert (=> b!1529517 m!1412523))

(assert (=> b!1529517 m!1412523))

(declare-fun m!1412531 () Bool)

(assert (=> b!1529517 m!1412531))

(declare-fun m!1412533 () Bool)

(assert (=> b!1529518 m!1412533))

(declare-fun m!1412535 () Bool)

(assert (=> b!1529518 m!1412535))

(assert (=> b!1529518 m!1412535))

(declare-fun m!1412537 () Bool)

(assert (=> b!1529518 m!1412537))

(assert (=> b!1529518 m!1412537))

(assert (=> b!1529518 m!1412535))

(declare-fun m!1412539 () Bool)

(assert (=> b!1529518 m!1412539))

(declare-fun m!1412541 () Bool)

(assert (=> b!1529523 m!1412541))

(declare-fun m!1412543 () Bool)

(assert (=> b!1529524 m!1412543))

(assert (=> b!1529524 m!1412543))

(declare-fun m!1412545 () Bool)

(assert (=> b!1529524 m!1412545))

(declare-fun m!1412547 () Bool)

(assert (=> b!1529520 m!1412547))

(assert (=> b!1529514 m!1412523))

(assert (=> b!1529514 m!1412523))

(declare-fun m!1412549 () Bool)

(assert (=> b!1529514 m!1412549))

(assert (=> b!1529521 m!1412523))

(declare-fun m!1412551 () Bool)

(assert (=> b!1529521 m!1412551))

(assert (=> b!1529521 m!1412533))

(assert (=> b!1529521 m!1412535))

(declare-fun m!1412553 () Bool)

(assert (=> b!1529521 m!1412553))

(assert (=> b!1529515 m!1412523))

(assert (=> b!1529515 m!1412523))

(declare-fun m!1412555 () Bool)

(assert (=> b!1529515 m!1412555))

(check-sat (not b!1529524) (not b!1529514) (not b!1529519) (not b!1529521) (not start!130314) (not b!1529515) (not b!1529520) (not b!1529518) (not b!1529517) (not b!1529523) (not b!1529522))
(check-sat)
