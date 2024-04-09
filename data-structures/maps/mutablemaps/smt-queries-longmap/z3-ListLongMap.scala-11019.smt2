; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128994 () Bool)

(assert start!128994)

(declare-fun b!1511611 () Bool)

(declare-fun res!1031592 () Bool)

(declare-fun e!843914 () Bool)

(assert (=> b!1511611 (=> (not res!1031592) (not e!843914))))

(declare-datatypes ((array!100763 0))(
  ( (array!100764 (arr!48614 (Array (_ BitVec 32) (_ BitVec 64))) (size!49165 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100763)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511611 (= res!1031592 (validKeyInArray!0 (select (arr!48614 a!2804) j!70)))))

(declare-fun b!1511612 () Bool)

(declare-fun res!1031595 () Bool)

(declare-fun e!843913 () Bool)

(assert (=> b!1511612 (=> (not res!1031595) (not e!843913))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12806 0))(
  ( (MissingZero!12806 (index!53618 (_ BitVec 32))) (Found!12806 (index!53619 (_ BitVec 32))) (Intermediate!12806 (undefined!13618 Bool) (index!53620 (_ BitVec 32)) (x!135361 (_ BitVec 32))) (Undefined!12806) (MissingVacant!12806 (index!53621 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100763 (_ BitVec 32)) SeekEntryResult!12806)

(assert (=> b!1511612 (= res!1031595 (= (seekEntry!0 (select (arr!48614 a!2804) j!70) a!2804 mask!2512) (Found!12806 j!70)))))

(declare-fun b!1511613 () Bool)

(declare-fun e!843910 () Bool)

(assert (=> b!1511613 (= e!843913 e!843910)))

(declare-fun res!1031588 () Bool)

(assert (=> b!1511613 (=> res!1031588 e!843910)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511613 (= res!1031588 (or (not (= (select (arr!48614 a!2804) j!70) (select (store (arr!48614 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48614 a!2804) index!487) (select (arr!48614 a!2804) j!70)) (not (= (select (arr!48614 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1511615 () Bool)

(declare-fun res!1031590 () Bool)

(assert (=> b!1511615 (=> (not res!1031590) (not e!843914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100763 (_ BitVec 32)) Bool)

(assert (=> b!1511615 (= res!1031590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511616 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100763 (_ BitVec 32)) SeekEntryResult!12806)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100763 (_ BitVec 32)) SeekEntryResult!12806)

(assert (=> b!1511616 (= e!843910 (= (seekEntryOrOpen!0 (select (arr!48614 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48614 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511617 () Bool)

(declare-fun res!1031591 () Bool)

(assert (=> b!1511617 (=> (not res!1031591) (not e!843914))))

(assert (=> b!1511617 (= res!1031591 (and (= (size!49165 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49165 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49165 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511618 () Bool)

(declare-fun res!1031589 () Bool)

(declare-fun e!843912 () Bool)

(assert (=> b!1511618 (=> (not res!1031589) (not e!843912))))

(declare-fun lt!655459 () SeekEntryResult!12806)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100763 (_ BitVec 32)) SeekEntryResult!12806)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511618 (= res!1031589 (= lt!655459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48614 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48614 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100764 (store (arr!48614 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49165 a!2804)) mask!2512)))))

(declare-fun b!1511619 () Bool)

(declare-fun res!1031594 () Bool)

(assert (=> b!1511619 (=> (not res!1031594) (not e!843912))))

(declare-fun lt!655457 () SeekEntryResult!12806)

(assert (=> b!1511619 (= res!1031594 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48614 a!2804) j!70) a!2804 mask!2512) lt!655457))))

(declare-fun b!1511614 () Bool)

(assert (=> b!1511614 (= e!843914 e!843912)))

(declare-fun res!1031596 () Bool)

(assert (=> b!1511614 (=> (not res!1031596) (not e!843912))))

(assert (=> b!1511614 (= res!1031596 (= lt!655459 lt!655457))))

(assert (=> b!1511614 (= lt!655457 (Intermediate!12806 false resIndex!21 resX!21))))

(assert (=> b!1511614 (= lt!655459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48614 a!2804) j!70) mask!2512) (select (arr!48614 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1031593 () Bool)

(assert (=> start!128994 (=> (not res!1031593) (not e!843914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128994 (= res!1031593 (validMask!0 mask!2512))))

(assert (=> start!128994 e!843914))

(assert (=> start!128994 true))

(declare-fun array_inv!37559 (array!100763) Bool)

(assert (=> start!128994 (array_inv!37559 a!2804)))

(declare-fun b!1511620 () Bool)

(declare-fun res!1031587 () Bool)

(assert (=> b!1511620 (=> (not res!1031587) (not e!843914))))

(declare-datatypes ((List!35277 0))(
  ( (Nil!35274) (Cons!35273 (h!36686 (_ BitVec 64)) (t!49978 List!35277)) )
))
(declare-fun arrayNoDuplicates!0 (array!100763 (_ BitVec 32) List!35277) Bool)

(assert (=> b!1511620 (= res!1031587 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35274))))

(declare-fun b!1511621 () Bool)

(declare-fun res!1031586 () Bool)

(assert (=> b!1511621 (=> (not res!1031586) (not e!843914))))

(assert (=> b!1511621 (= res!1031586 (validKeyInArray!0 (select (arr!48614 a!2804) i!961)))))

(declare-fun b!1511622 () Bool)

(declare-fun res!1031597 () Bool)

(assert (=> b!1511622 (=> (not res!1031597) (not e!843914))))

(assert (=> b!1511622 (= res!1031597 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49165 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49165 a!2804))))))

(declare-fun b!1511623 () Bool)

(assert (=> b!1511623 (= e!843912 (not true))))

(assert (=> b!1511623 e!843913))

(declare-fun res!1031598 () Bool)

(assert (=> b!1511623 (=> (not res!1031598) (not e!843913))))

(assert (=> b!1511623 (= res!1031598 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50436 0))(
  ( (Unit!50437) )
))
(declare-fun lt!655458 () Unit!50436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100763 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50436)

(assert (=> b!1511623 (= lt!655458 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128994 res!1031593) b!1511617))

(assert (= (and b!1511617 res!1031591) b!1511621))

(assert (= (and b!1511621 res!1031586) b!1511611))

(assert (= (and b!1511611 res!1031592) b!1511615))

(assert (= (and b!1511615 res!1031590) b!1511620))

(assert (= (and b!1511620 res!1031587) b!1511622))

(assert (= (and b!1511622 res!1031597) b!1511614))

(assert (= (and b!1511614 res!1031596) b!1511619))

(assert (= (and b!1511619 res!1031594) b!1511618))

(assert (= (and b!1511618 res!1031589) b!1511623))

(assert (= (and b!1511623 res!1031598) b!1511612))

(assert (= (and b!1511612 res!1031595) b!1511613))

(assert (= (and b!1511613 (not res!1031588)) b!1511616))

(declare-fun m!1394379 () Bool)

(assert (=> b!1511619 m!1394379))

(assert (=> b!1511619 m!1394379))

(declare-fun m!1394381 () Bool)

(assert (=> b!1511619 m!1394381))

(declare-fun m!1394383 () Bool)

(assert (=> b!1511621 m!1394383))

(assert (=> b!1511621 m!1394383))

(declare-fun m!1394385 () Bool)

(assert (=> b!1511621 m!1394385))

(assert (=> b!1511616 m!1394379))

(assert (=> b!1511616 m!1394379))

(declare-fun m!1394387 () Bool)

(assert (=> b!1511616 m!1394387))

(assert (=> b!1511616 m!1394379))

(declare-fun m!1394389 () Bool)

(assert (=> b!1511616 m!1394389))

(declare-fun m!1394391 () Bool)

(assert (=> b!1511618 m!1394391))

(declare-fun m!1394393 () Bool)

(assert (=> b!1511618 m!1394393))

(assert (=> b!1511618 m!1394393))

(declare-fun m!1394395 () Bool)

(assert (=> b!1511618 m!1394395))

(assert (=> b!1511618 m!1394395))

(assert (=> b!1511618 m!1394393))

(declare-fun m!1394397 () Bool)

(assert (=> b!1511618 m!1394397))

(assert (=> b!1511611 m!1394379))

(assert (=> b!1511611 m!1394379))

(declare-fun m!1394399 () Bool)

(assert (=> b!1511611 m!1394399))

(declare-fun m!1394401 () Bool)

(assert (=> b!1511615 m!1394401))

(declare-fun m!1394403 () Bool)

(assert (=> start!128994 m!1394403))

(declare-fun m!1394405 () Bool)

(assert (=> start!128994 m!1394405))

(declare-fun m!1394407 () Bool)

(assert (=> b!1511620 m!1394407))

(declare-fun m!1394409 () Bool)

(assert (=> b!1511623 m!1394409))

(declare-fun m!1394411 () Bool)

(assert (=> b!1511623 m!1394411))

(assert (=> b!1511614 m!1394379))

(assert (=> b!1511614 m!1394379))

(declare-fun m!1394413 () Bool)

(assert (=> b!1511614 m!1394413))

(assert (=> b!1511614 m!1394413))

(assert (=> b!1511614 m!1394379))

(declare-fun m!1394415 () Bool)

(assert (=> b!1511614 m!1394415))

(assert (=> b!1511613 m!1394379))

(assert (=> b!1511613 m!1394391))

(assert (=> b!1511613 m!1394393))

(declare-fun m!1394417 () Bool)

(assert (=> b!1511613 m!1394417))

(assert (=> b!1511612 m!1394379))

(assert (=> b!1511612 m!1394379))

(declare-fun m!1394419 () Bool)

(assert (=> b!1511612 m!1394419))

(check-sat (not b!1511615) (not b!1511619) (not b!1511611) (not b!1511623) (not b!1511621) (not start!128994) (not b!1511616) (not b!1511612) (not b!1511618) (not b!1511620) (not b!1511614))
(check-sat)
