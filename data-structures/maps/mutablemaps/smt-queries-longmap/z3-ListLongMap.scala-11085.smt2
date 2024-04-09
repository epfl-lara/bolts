; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129390 () Bool)

(assert start!129390)

(declare-fun b!1519503 () Bool)

(declare-fun res!1039479 () Bool)

(declare-fun e!847633 () Bool)

(assert (=> b!1519503 (=> (not res!1039479) (not e!847633))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101159 0))(
  ( (array!101160 (arr!48812 (Array (_ BitVec 32) (_ BitVec 64))) (size!49363 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101159)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1519503 (= res!1039479 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49363 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49363 a!2804))))))

(declare-fun b!1519504 () Bool)

(declare-fun res!1039487 () Bool)

(assert (=> b!1519504 (=> (not res!1039487) (not e!847633))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519504 (= res!1039487 (validKeyInArray!0 (select (arr!48812 a!2804) i!961)))))

(declare-fun b!1519505 () Bool)

(declare-fun res!1039481 () Bool)

(assert (=> b!1519505 (=> (not res!1039481) (not e!847633))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1519505 (= res!1039481 (and (= (size!49363 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49363 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49363 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519506 () Bool)

(declare-fun e!847634 () Bool)

(assert (=> b!1519506 (= e!847633 e!847634)))

(declare-fun res!1039478 () Bool)

(assert (=> b!1519506 (=> (not res!1039478) (not e!847634))))

(declare-datatypes ((SeekEntryResult!13004 0))(
  ( (MissingZero!13004 (index!54410 (_ BitVec 32))) (Found!13004 (index!54411 (_ BitVec 32))) (Intermediate!13004 (undefined!13816 Bool) (index!54412 (_ BitVec 32)) (x!136087 (_ BitVec 32))) (Undefined!13004) (MissingVacant!13004 (index!54413 (_ BitVec 32))) )
))
(declare-fun lt!658661 () SeekEntryResult!13004)

(declare-fun lt!658663 () SeekEntryResult!13004)

(assert (=> b!1519506 (= res!1039478 (= lt!658661 lt!658663))))

(assert (=> b!1519506 (= lt!658663 (Intermediate!13004 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101159 (_ BitVec 32)) SeekEntryResult!13004)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519506 (= lt!658661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48812 a!2804) j!70) mask!2512) (select (arr!48812 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1039482 () Bool)

(assert (=> start!129390 (=> (not res!1039482) (not e!847633))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129390 (= res!1039482 (validMask!0 mask!2512))))

(assert (=> start!129390 e!847633))

(assert (=> start!129390 true))

(declare-fun array_inv!37757 (array!101159) Bool)

(assert (=> start!129390 (array_inv!37757 a!2804)))

(declare-fun b!1519507 () Bool)

(declare-fun res!1039484 () Bool)

(assert (=> b!1519507 (=> (not res!1039484) (not e!847634))))

(assert (=> b!1519507 (= res!1039484 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48812 a!2804) j!70) a!2804 mask!2512) lt!658663))))

(declare-fun b!1519508 () Bool)

(assert (=> b!1519508 (= e!847634 (not (= (select (arr!48812 a!2804) j!70) (select (store (arr!48812 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(declare-fun e!847632 () Bool)

(assert (=> b!1519508 e!847632))

(declare-fun res!1039480 () Bool)

(assert (=> b!1519508 (=> (not res!1039480) (not e!847632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101159 (_ BitVec 32)) Bool)

(assert (=> b!1519508 (= res!1039480 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50832 0))(
  ( (Unit!50833) )
))
(declare-fun lt!658662 () Unit!50832)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50832)

(assert (=> b!1519508 (= lt!658662 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519509 () Bool)

(declare-fun res!1039483 () Bool)

(assert (=> b!1519509 (=> (not res!1039483) (not e!847633))))

(assert (=> b!1519509 (= res!1039483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519510 () Bool)

(declare-fun res!1039486 () Bool)

(assert (=> b!1519510 (=> (not res!1039486) (not e!847633))))

(declare-datatypes ((List!35475 0))(
  ( (Nil!35472) (Cons!35471 (h!36884 (_ BitVec 64)) (t!50176 List!35475)) )
))
(declare-fun arrayNoDuplicates!0 (array!101159 (_ BitVec 32) List!35475) Bool)

(assert (=> b!1519510 (= res!1039486 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35472))))

(declare-fun b!1519511 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101159 (_ BitVec 32)) SeekEntryResult!13004)

(assert (=> b!1519511 (= e!847632 (= (seekEntry!0 (select (arr!48812 a!2804) j!70) a!2804 mask!2512) (Found!13004 j!70)))))

(declare-fun b!1519512 () Bool)

(declare-fun res!1039488 () Bool)

(assert (=> b!1519512 (=> (not res!1039488) (not e!847633))))

(assert (=> b!1519512 (= res!1039488 (validKeyInArray!0 (select (arr!48812 a!2804) j!70)))))

(declare-fun b!1519513 () Bool)

(declare-fun res!1039485 () Bool)

(assert (=> b!1519513 (=> (not res!1039485) (not e!847634))))

(assert (=> b!1519513 (= res!1039485 (= lt!658661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48812 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48812 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101160 (store (arr!48812 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49363 a!2804)) mask!2512)))))

(assert (= (and start!129390 res!1039482) b!1519505))

(assert (= (and b!1519505 res!1039481) b!1519504))

(assert (= (and b!1519504 res!1039487) b!1519512))

(assert (= (and b!1519512 res!1039488) b!1519509))

(assert (= (and b!1519509 res!1039483) b!1519510))

(assert (= (and b!1519510 res!1039486) b!1519503))

(assert (= (and b!1519503 res!1039479) b!1519506))

(assert (= (and b!1519506 res!1039478) b!1519507))

(assert (= (and b!1519507 res!1039484) b!1519513))

(assert (= (and b!1519513 res!1039485) b!1519508))

(assert (= (and b!1519508 res!1039480) b!1519511))

(declare-fun m!1402977 () Bool)

(assert (=> b!1519512 m!1402977))

(assert (=> b!1519512 m!1402977))

(declare-fun m!1402979 () Bool)

(assert (=> b!1519512 m!1402979))

(declare-fun m!1402981 () Bool)

(assert (=> b!1519504 m!1402981))

(assert (=> b!1519504 m!1402981))

(declare-fun m!1402983 () Bool)

(assert (=> b!1519504 m!1402983))

(assert (=> b!1519508 m!1402977))

(declare-fun m!1402985 () Bool)

(assert (=> b!1519508 m!1402985))

(declare-fun m!1402987 () Bool)

(assert (=> b!1519508 m!1402987))

(declare-fun m!1402989 () Bool)

(assert (=> b!1519508 m!1402989))

(declare-fun m!1402991 () Bool)

(assert (=> b!1519508 m!1402991))

(assert (=> b!1519506 m!1402977))

(assert (=> b!1519506 m!1402977))

(declare-fun m!1402993 () Bool)

(assert (=> b!1519506 m!1402993))

(assert (=> b!1519506 m!1402993))

(assert (=> b!1519506 m!1402977))

(declare-fun m!1402995 () Bool)

(assert (=> b!1519506 m!1402995))

(declare-fun m!1402997 () Bool)

(assert (=> b!1519510 m!1402997))

(declare-fun m!1402999 () Bool)

(assert (=> b!1519509 m!1402999))

(declare-fun m!1403001 () Bool)

(assert (=> start!129390 m!1403001))

(declare-fun m!1403003 () Bool)

(assert (=> start!129390 m!1403003))

(assert (=> b!1519513 m!1402987))

(assert (=> b!1519513 m!1402989))

(assert (=> b!1519513 m!1402989))

(declare-fun m!1403005 () Bool)

(assert (=> b!1519513 m!1403005))

(assert (=> b!1519513 m!1403005))

(assert (=> b!1519513 m!1402989))

(declare-fun m!1403007 () Bool)

(assert (=> b!1519513 m!1403007))

(assert (=> b!1519511 m!1402977))

(assert (=> b!1519511 m!1402977))

(declare-fun m!1403009 () Bool)

(assert (=> b!1519511 m!1403009))

(assert (=> b!1519507 m!1402977))

(assert (=> b!1519507 m!1402977))

(declare-fun m!1403011 () Bool)

(assert (=> b!1519507 m!1403011))

(check-sat (not b!1519511) (not b!1519504) (not start!129390) (not b!1519513) (not b!1519507) (not b!1519512) (not b!1519506) (not b!1519509) (not b!1519510) (not b!1519508))
(check-sat)
