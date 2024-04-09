; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129366 () Bool)

(assert start!129366)

(declare-fun b!1519005 () Bool)

(declare-fun e!847387 () Bool)

(declare-fun e!847391 () Bool)

(assert (=> b!1519005 (= e!847387 e!847391)))

(declare-fun res!1038986 () Bool)

(assert (=> b!1519005 (=> res!1038986 e!847391)))

(declare-fun lt!658430 () (_ BitVec 32))

(declare-datatypes ((array!101135 0))(
  ( (array!101136 (arr!48800 (Array (_ BitVec 32) (_ BitVec 64))) (size!49351 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101135)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519005 (= res!1038986 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658430 #b00000000000000000000000000000000) (bvsge lt!658430 (size!49351 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519005 (= lt!658430 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519006 () Bool)

(declare-fun e!847390 () Bool)

(declare-fun e!847385 () Bool)

(assert (=> b!1519006 (= e!847390 e!847385)))

(declare-fun res!1038988 () Bool)

(assert (=> b!1519006 (=> (not res!1038988) (not e!847385))))

(declare-datatypes ((SeekEntryResult!12992 0))(
  ( (MissingZero!12992 (index!54362 (_ BitVec 32))) (Found!12992 (index!54363 (_ BitVec 32))) (Intermediate!12992 (undefined!13804 Bool) (index!54364 (_ BitVec 32)) (x!136043 (_ BitVec 32))) (Undefined!12992) (MissingVacant!12992 (index!54365 (_ BitVec 32))) )
))
(declare-fun lt!658431 () SeekEntryResult!12992)

(declare-fun lt!658434 () SeekEntryResult!12992)

(assert (=> b!1519006 (= res!1038988 (= lt!658431 lt!658434))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519006 (= lt!658434 (Intermediate!12992 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101135 (_ BitVec 32)) SeekEntryResult!12992)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519006 (= lt!658431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48800 a!2804) j!70) mask!2512) (select (arr!48800 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519007 () Bool)

(declare-fun res!1038982 () Bool)

(assert (=> b!1519007 (=> (not res!1038982) (not e!847390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101135 (_ BitVec 32)) Bool)

(assert (=> b!1519007 (= res!1038982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519008 () Bool)

(declare-fun e!847389 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101135 (_ BitVec 32)) SeekEntryResult!12992)

(assert (=> b!1519008 (= e!847389 (= (seekEntry!0 (select (arr!48800 a!2804) j!70) a!2804 mask!2512) (Found!12992 j!70)))))

(declare-fun b!1519009 () Bool)

(declare-fun res!1038993 () Bool)

(assert (=> b!1519009 (=> (not res!1038993) (not e!847390))))

(declare-datatypes ((List!35463 0))(
  ( (Nil!35460) (Cons!35459 (h!36872 (_ BitVec 64)) (t!50164 List!35463)) )
))
(declare-fun arrayNoDuplicates!0 (array!101135 (_ BitVec 32) List!35463) Bool)

(assert (=> b!1519009 (= res!1038993 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35460))))

(declare-fun b!1519010 () Bool)

(declare-fun res!1038989 () Bool)

(assert (=> b!1519010 (=> (not res!1038989) (not e!847390))))

(assert (=> b!1519010 (= res!1038989 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49351 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49351 a!2804))))))

(declare-fun b!1519011 () Bool)

(declare-fun res!1038985 () Bool)

(assert (=> b!1519011 (=> (not res!1038985) (not e!847390))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519011 (= res!1038985 (and (= (size!49351 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49351 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49351 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519012 () Bool)

(assert (=> b!1519012 (= e!847391 true)))

(declare-fun lt!658435 () (_ BitVec 64))

(declare-fun lt!658432 () array!101135)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101135 (_ BitVec 32)) SeekEntryResult!12992)

(assert (=> b!1519012 (= (seekEntryOrOpen!0 (select (arr!48800 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658435 lt!658432 mask!2512))))

(declare-datatypes ((Unit!50808 0))(
  ( (Unit!50809) )
))
(declare-fun lt!658433 () Unit!50808)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50808)

(assert (=> b!1519012 (= lt!658433 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658430 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1519013 () Bool)

(declare-fun res!1038992 () Bool)

(assert (=> b!1519013 (=> (not res!1038992) (not e!847390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519013 (= res!1038992 (validKeyInArray!0 (select (arr!48800 a!2804) j!70)))))

(declare-fun b!1519014 () Bool)

(declare-fun e!847386 () Bool)

(assert (=> b!1519014 (= e!847386 (not e!847387))))

(declare-fun res!1038991 () Bool)

(assert (=> b!1519014 (=> res!1038991 e!847387)))

(assert (=> b!1519014 (= res!1038991 (or (not (= (select (arr!48800 a!2804) j!70) lt!658435)) (= x!534 resX!21)))))

(assert (=> b!1519014 e!847389))

(declare-fun res!1038981 () Bool)

(assert (=> b!1519014 (=> (not res!1038981) (not e!847389))))

(assert (=> b!1519014 (= res!1038981 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658429 () Unit!50808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50808)

(assert (=> b!1519014 (= lt!658429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519015 () Bool)

(assert (=> b!1519015 (= e!847385 e!847386)))

(declare-fun res!1038983 () Bool)

(assert (=> b!1519015 (=> (not res!1038983) (not e!847386))))

(assert (=> b!1519015 (= res!1038983 (= lt!658431 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658435 mask!2512) lt!658435 lt!658432 mask!2512)))))

(assert (=> b!1519015 (= lt!658435 (select (store (arr!48800 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519015 (= lt!658432 (array!101136 (store (arr!48800 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49351 a!2804)))))

(declare-fun res!1038987 () Bool)

(assert (=> start!129366 (=> (not res!1038987) (not e!847390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129366 (= res!1038987 (validMask!0 mask!2512))))

(assert (=> start!129366 e!847390))

(assert (=> start!129366 true))

(declare-fun array_inv!37745 (array!101135) Bool)

(assert (=> start!129366 (array_inv!37745 a!2804)))

(declare-fun b!1519016 () Bool)

(declare-fun res!1038990 () Bool)

(assert (=> b!1519016 (=> (not res!1038990) (not e!847385))))

(assert (=> b!1519016 (= res!1038990 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48800 a!2804) j!70) a!2804 mask!2512) lt!658434))))

(declare-fun b!1519017 () Bool)

(declare-fun res!1038984 () Bool)

(assert (=> b!1519017 (=> (not res!1038984) (not e!847390))))

(assert (=> b!1519017 (= res!1038984 (validKeyInArray!0 (select (arr!48800 a!2804) i!961)))))

(declare-fun b!1519018 () Bool)

(declare-fun res!1038980 () Bool)

(assert (=> b!1519018 (=> res!1038980 e!847391)))

(assert (=> b!1519018 (= res!1038980 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658430 (select (arr!48800 a!2804) j!70) a!2804 mask!2512) lt!658434)))))

(assert (= (and start!129366 res!1038987) b!1519011))

(assert (= (and b!1519011 res!1038985) b!1519017))

(assert (= (and b!1519017 res!1038984) b!1519013))

(assert (= (and b!1519013 res!1038992) b!1519007))

(assert (= (and b!1519007 res!1038982) b!1519009))

(assert (= (and b!1519009 res!1038993) b!1519010))

(assert (= (and b!1519010 res!1038989) b!1519006))

(assert (= (and b!1519006 res!1038988) b!1519016))

(assert (= (and b!1519016 res!1038990) b!1519015))

(assert (= (and b!1519015 res!1038983) b!1519014))

(assert (= (and b!1519014 res!1038981) b!1519008))

(assert (= (and b!1519014 (not res!1038991)) b!1519005))

(assert (= (and b!1519005 (not res!1038986)) b!1519018))

(assert (= (and b!1519018 (not res!1038980)) b!1519012))

(declare-fun m!1402429 () Bool)

(assert (=> b!1519014 m!1402429))

(declare-fun m!1402431 () Bool)

(assert (=> b!1519014 m!1402431))

(declare-fun m!1402433 () Bool)

(assert (=> b!1519014 m!1402433))

(assert (=> b!1519012 m!1402429))

(assert (=> b!1519012 m!1402429))

(declare-fun m!1402435 () Bool)

(assert (=> b!1519012 m!1402435))

(declare-fun m!1402437 () Bool)

(assert (=> b!1519012 m!1402437))

(declare-fun m!1402439 () Bool)

(assert (=> b!1519012 m!1402439))

(declare-fun m!1402441 () Bool)

(assert (=> b!1519007 m!1402441))

(assert (=> b!1519016 m!1402429))

(assert (=> b!1519016 m!1402429))

(declare-fun m!1402443 () Bool)

(assert (=> b!1519016 m!1402443))

(assert (=> b!1519018 m!1402429))

(assert (=> b!1519018 m!1402429))

(declare-fun m!1402445 () Bool)

(assert (=> b!1519018 m!1402445))

(assert (=> b!1519013 m!1402429))

(assert (=> b!1519013 m!1402429))

(declare-fun m!1402447 () Bool)

(assert (=> b!1519013 m!1402447))

(declare-fun m!1402449 () Bool)

(assert (=> b!1519015 m!1402449))

(assert (=> b!1519015 m!1402449))

(declare-fun m!1402451 () Bool)

(assert (=> b!1519015 m!1402451))

(declare-fun m!1402453 () Bool)

(assert (=> b!1519015 m!1402453))

(declare-fun m!1402455 () Bool)

(assert (=> b!1519015 m!1402455))

(declare-fun m!1402457 () Bool)

(assert (=> b!1519009 m!1402457))

(assert (=> b!1519006 m!1402429))

(assert (=> b!1519006 m!1402429))

(declare-fun m!1402459 () Bool)

(assert (=> b!1519006 m!1402459))

(assert (=> b!1519006 m!1402459))

(assert (=> b!1519006 m!1402429))

(declare-fun m!1402461 () Bool)

(assert (=> b!1519006 m!1402461))

(declare-fun m!1402463 () Bool)

(assert (=> b!1519017 m!1402463))

(assert (=> b!1519017 m!1402463))

(declare-fun m!1402465 () Bool)

(assert (=> b!1519017 m!1402465))

(declare-fun m!1402467 () Bool)

(assert (=> start!129366 m!1402467))

(declare-fun m!1402469 () Bool)

(assert (=> start!129366 m!1402469))

(declare-fun m!1402471 () Bool)

(assert (=> b!1519005 m!1402471))

(assert (=> b!1519008 m!1402429))

(assert (=> b!1519008 m!1402429))

(declare-fun m!1402473 () Bool)

(assert (=> b!1519008 m!1402473))

(check-sat (not b!1519017) (not b!1519007) (not b!1519014) (not b!1519005) (not b!1519016) (not b!1519018) (not b!1519008) (not b!1519009) (not b!1519013) (not start!129366) (not b!1519015) (not b!1519006) (not b!1519012))
