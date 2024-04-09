; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130118 () Bool)

(assert start!130118)

(declare-fun b!1526565 () Bool)

(declare-fun res!1044746 () Bool)

(declare-fun e!850912 () Bool)

(assert (=> b!1526565 (=> (not res!1044746) (not e!850912))))

(declare-datatypes ((array!101458 0))(
  ( (array!101459 (arr!48951 (Array (_ BitVec 32) (_ BitVec 64))) (size!49502 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101458)

(declare-datatypes ((List!35614 0))(
  ( (Nil!35611) (Cons!35610 (h!37044 (_ BitVec 64)) (t!50315 List!35614)) )
))
(declare-fun arrayNoDuplicates!0 (array!101458 (_ BitVec 32) List!35614) Bool)

(assert (=> b!1526565 (= res!1044746 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35611))))

(declare-fun res!1044738 () Bool)

(assert (=> start!130118 (=> (not res!1044738) (not e!850912))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130118 (= res!1044738 (validMask!0 mask!2512))))

(assert (=> start!130118 e!850912))

(assert (=> start!130118 true))

(declare-fun array_inv!37896 (array!101458) Bool)

(assert (=> start!130118 (array_inv!37896 a!2804)))

(declare-fun b!1526566 () Bool)

(declare-fun res!1044741 () Bool)

(declare-fun e!850915 () Bool)

(assert (=> b!1526566 (=> (not res!1044741) (not e!850915))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13137 0))(
  ( (MissingZero!13137 (index!54942 (_ BitVec 32))) (Found!13137 (index!54943 (_ BitVec 32))) (Intermediate!13137 (undefined!13949 Bool) (index!54944 (_ BitVec 32)) (x!136642 (_ BitVec 32))) (Undefined!13137) (MissingVacant!13137 (index!54945 (_ BitVec 32))) )
))
(declare-fun lt!661090 () SeekEntryResult!13137)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101458 (_ BitVec 32)) SeekEntryResult!13137)

(assert (=> b!1526566 (= res!1044741 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48951 a!2804) j!70) a!2804 mask!2512) lt!661090))))

(declare-fun b!1526567 () Bool)

(declare-fun e!850916 () Bool)

(declare-fun e!850914 () Bool)

(assert (=> b!1526567 (= e!850916 e!850914)))

(declare-fun res!1044748 () Bool)

(assert (=> b!1526567 (=> (not res!1044748) (not e!850914))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101458 (_ BitVec 32)) SeekEntryResult!13137)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101458 (_ BitVec 32)) SeekEntryResult!13137)

(assert (=> b!1526567 (= res!1044748 (= (seekEntryOrOpen!0 (select (arr!48951 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48951 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526568 () Bool)

(declare-fun e!850913 () Bool)

(assert (=> b!1526568 (= e!850913 e!850916)))

(declare-fun res!1044750 () Bool)

(assert (=> b!1526568 (=> res!1044750 e!850916)))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!661087 () (_ BitVec 64))

(assert (=> b!1526568 (= res!1044750 (or (not (= (select (arr!48951 a!2804) j!70) lt!661087)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48951 a!2804) index!487) (select (arr!48951 a!2804) j!70)) (not (= (select (arr!48951 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526569 () Bool)

(declare-fun res!1044740 () Bool)

(assert (=> b!1526569 (=> (not res!1044740) (not e!850912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526569 (= res!1044740 (validKeyInArray!0 (select (arr!48951 a!2804) j!70)))))

(declare-fun b!1526570 () Bool)

(declare-fun e!850910 () Bool)

(assert (=> b!1526570 (= e!850915 e!850910)))

(declare-fun res!1044745 () Bool)

(assert (=> b!1526570 (=> (not res!1044745) (not e!850910))))

(declare-fun lt!661088 () SeekEntryResult!13137)

(declare-fun lt!661086 () array!101458)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526570 (= res!1044745 (= lt!661088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661087 mask!2512) lt!661087 lt!661086 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526570 (= lt!661087 (select (store (arr!48951 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526570 (= lt!661086 (array!101459 (store (arr!48951 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49502 a!2804)))))

(declare-fun b!1526571 () Bool)

(declare-fun res!1044742 () Bool)

(assert (=> b!1526571 (=> (not res!1044742) (not e!850913))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101458 (_ BitVec 32)) SeekEntryResult!13137)

(assert (=> b!1526571 (= res!1044742 (= (seekEntry!0 (select (arr!48951 a!2804) j!70) a!2804 mask!2512) (Found!13137 j!70)))))

(declare-fun b!1526572 () Bool)

(assert (=> b!1526572 (= e!850912 e!850915)))

(declare-fun res!1044743 () Bool)

(assert (=> b!1526572 (=> (not res!1044743) (not e!850915))))

(assert (=> b!1526572 (= res!1044743 (= lt!661088 lt!661090))))

(assert (=> b!1526572 (= lt!661090 (Intermediate!13137 false resIndex!21 resX!21))))

(assert (=> b!1526572 (= lt!661088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48951 a!2804) j!70) mask!2512) (select (arr!48951 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526573 () Bool)

(declare-fun res!1044747 () Bool)

(assert (=> b!1526573 (=> (not res!1044747) (not e!850912))))

(assert (=> b!1526573 (= res!1044747 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49502 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49502 a!2804))))))

(declare-fun b!1526574 () Bool)

(assert (=> b!1526574 (= e!850914 (= (seekEntryOrOpen!0 lt!661087 lt!661086 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661087 lt!661086 mask!2512)))))

(declare-fun b!1526575 () Bool)

(declare-fun res!1044737 () Bool)

(assert (=> b!1526575 (=> (not res!1044737) (not e!850912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101458 (_ BitVec 32)) Bool)

(assert (=> b!1526575 (= res!1044737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526576 () Bool)

(declare-fun res!1044744 () Bool)

(assert (=> b!1526576 (=> (not res!1044744) (not e!850912))))

(assert (=> b!1526576 (= res!1044744 (and (= (size!49502 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49502 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49502 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526577 () Bool)

(declare-fun res!1044739 () Bool)

(assert (=> b!1526577 (=> (not res!1044739) (not e!850912))))

(assert (=> b!1526577 (= res!1044739 (validKeyInArray!0 (select (arr!48951 a!2804) i!961)))))

(declare-fun b!1526578 () Bool)

(assert (=> b!1526578 (= e!850910 (not true))))

(assert (=> b!1526578 e!850913))

(declare-fun res!1044749 () Bool)

(assert (=> b!1526578 (=> (not res!1044749) (not e!850913))))

(assert (=> b!1526578 (= res!1044749 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51014 0))(
  ( (Unit!51015) )
))
(declare-fun lt!661089 () Unit!51014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51014)

(assert (=> b!1526578 (= lt!661089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130118 res!1044738) b!1526576))

(assert (= (and b!1526576 res!1044744) b!1526577))

(assert (= (and b!1526577 res!1044739) b!1526569))

(assert (= (and b!1526569 res!1044740) b!1526575))

(assert (= (and b!1526575 res!1044737) b!1526565))

(assert (= (and b!1526565 res!1044746) b!1526573))

(assert (= (and b!1526573 res!1044747) b!1526572))

(assert (= (and b!1526572 res!1044743) b!1526566))

(assert (= (and b!1526566 res!1044741) b!1526570))

(assert (= (and b!1526570 res!1044745) b!1526578))

(assert (= (and b!1526578 res!1044749) b!1526571))

(assert (= (and b!1526571 res!1044742) b!1526568))

(assert (= (and b!1526568 (not res!1044750)) b!1526567))

(assert (= (and b!1526567 res!1044748) b!1526574))

(declare-fun m!1409441 () Bool)

(assert (=> b!1526575 m!1409441))

(declare-fun m!1409443 () Bool)

(assert (=> b!1526572 m!1409443))

(assert (=> b!1526572 m!1409443))

(declare-fun m!1409445 () Bool)

(assert (=> b!1526572 m!1409445))

(assert (=> b!1526572 m!1409445))

(assert (=> b!1526572 m!1409443))

(declare-fun m!1409447 () Bool)

(assert (=> b!1526572 m!1409447))

(declare-fun m!1409449 () Bool)

(assert (=> b!1526574 m!1409449))

(declare-fun m!1409451 () Bool)

(assert (=> b!1526574 m!1409451))

(assert (=> b!1526566 m!1409443))

(assert (=> b!1526566 m!1409443))

(declare-fun m!1409453 () Bool)

(assert (=> b!1526566 m!1409453))

(assert (=> b!1526568 m!1409443))

(declare-fun m!1409455 () Bool)

(assert (=> b!1526568 m!1409455))

(assert (=> b!1526569 m!1409443))

(assert (=> b!1526569 m!1409443))

(declare-fun m!1409457 () Bool)

(assert (=> b!1526569 m!1409457))

(assert (=> b!1526571 m!1409443))

(assert (=> b!1526571 m!1409443))

(declare-fun m!1409459 () Bool)

(assert (=> b!1526571 m!1409459))

(declare-fun m!1409461 () Bool)

(assert (=> b!1526570 m!1409461))

(assert (=> b!1526570 m!1409461))

(declare-fun m!1409463 () Bool)

(assert (=> b!1526570 m!1409463))

(declare-fun m!1409465 () Bool)

(assert (=> b!1526570 m!1409465))

(declare-fun m!1409467 () Bool)

(assert (=> b!1526570 m!1409467))

(declare-fun m!1409469 () Bool)

(assert (=> b!1526578 m!1409469))

(declare-fun m!1409471 () Bool)

(assert (=> b!1526578 m!1409471))

(declare-fun m!1409473 () Bool)

(assert (=> b!1526565 m!1409473))

(declare-fun m!1409475 () Bool)

(assert (=> b!1526577 m!1409475))

(assert (=> b!1526577 m!1409475))

(declare-fun m!1409477 () Bool)

(assert (=> b!1526577 m!1409477))

(declare-fun m!1409479 () Bool)

(assert (=> start!130118 m!1409479))

(declare-fun m!1409481 () Bool)

(assert (=> start!130118 m!1409481))

(assert (=> b!1526567 m!1409443))

(assert (=> b!1526567 m!1409443))

(declare-fun m!1409483 () Bool)

(assert (=> b!1526567 m!1409483))

(assert (=> b!1526567 m!1409443))

(declare-fun m!1409485 () Bool)

(assert (=> b!1526567 m!1409485))

(push 1)

(assert (not b!1526572))

(assert (not b!1526575))

(assert (not start!130118))

(assert (not b!1526565))

(assert (not b!1526570))

(assert (not b!1526578))

(assert (not b!1526571))

(assert (not b!1526569))

(assert (not b!1526566))

(assert (not b!1526577))

(assert (not b!1526567))

(assert (not b!1526574))

(check-sat)

(pop 1)

(push 1)

