; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129000 () Bool)

(assert start!129000)

(declare-fun b!1511728 () Bool)

(declare-fun res!1031703 () Bool)

(declare-fun e!843955 () Bool)

(assert (=> b!1511728 (=> (not res!1031703) (not e!843955))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100769 0))(
  ( (array!100770 (arr!48617 (Array (_ BitVec 32) (_ BitVec 64))) (size!49168 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100769)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12809 0))(
  ( (MissingZero!12809 (index!53630 (_ BitVec 32))) (Found!12809 (index!53631 (_ BitVec 32))) (Intermediate!12809 (undefined!13621 Bool) (index!53632 (_ BitVec 32)) (x!135372 (_ BitVec 32))) (Undefined!12809) (MissingVacant!12809 (index!53633 (_ BitVec 32))) )
))
(declare-fun lt!655485 () SeekEntryResult!12809)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100769 (_ BitVec 32)) SeekEntryResult!12809)

(assert (=> b!1511728 (= res!1031703 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48617 a!2804) j!70) a!2804 mask!2512) lt!655485))))

(declare-fun b!1511729 () Bool)

(declare-fun res!1031710 () Bool)

(declare-fun e!843958 () Bool)

(assert (=> b!1511729 (=> (not res!1031710) (not e!843958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511729 (= res!1031710 (validKeyInArray!0 (select (arr!48617 a!2804) j!70)))))

(declare-fun b!1511730 () Bool)

(assert (=> b!1511730 (= e!843958 e!843955)))

(declare-fun res!1031706 () Bool)

(assert (=> b!1511730 (=> (not res!1031706) (not e!843955))))

(declare-fun lt!655484 () SeekEntryResult!12809)

(assert (=> b!1511730 (= res!1031706 (= lt!655484 lt!655485))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511730 (= lt!655485 (Intermediate!12809 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511730 (= lt!655484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48617 a!2804) j!70) mask!2512) (select (arr!48617 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511731 () Bool)

(declare-fun res!1031704 () Bool)

(assert (=> b!1511731 (=> (not res!1031704) (not e!843958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100769 (_ BitVec 32)) Bool)

(assert (=> b!1511731 (= res!1031704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!843959 () Bool)

(declare-fun b!1511732 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100769 (_ BitVec 32)) SeekEntryResult!12809)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100769 (_ BitVec 32)) SeekEntryResult!12809)

(assert (=> b!1511732 (= e!843959 (= (seekEntryOrOpen!0 (select (arr!48617 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48617 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1511733 () Bool)

(declare-fun res!1031715 () Bool)

(assert (=> b!1511733 (=> (not res!1031715) (not e!843955))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511733 (= res!1031715 (= lt!655484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48617 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48617 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100770 (store (arr!48617 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49168 a!2804)) mask!2512)))))

(declare-fun b!1511734 () Bool)

(declare-fun res!1031705 () Bool)

(assert (=> b!1511734 (=> (not res!1031705) (not e!843958))))

(assert (=> b!1511734 (= res!1031705 (and (= (size!49168 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49168 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49168 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511735 () Bool)

(declare-fun res!1031708 () Bool)

(declare-fun e!843957 () Bool)

(assert (=> b!1511735 (=> (not res!1031708) (not e!843957))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100769 (_ BitVec 32)) SeekEntryResult!12809)

(assert (=> b!1511735 (= res!1031708 (= (seekEntry!0 (select (arr!48617 a!2804) j!70) a!2804 mask!2512) (Found!12809 j!70)))))

(declare-fun b!1511736 () Bool)

(assert (=> b!1511736 (= e!843957 e!843959)))

(declare-fun res!1031711 () Bool)

(assert (=> b!1511736 (=> res!1031711 e!843959)))

(assert (=> b!1511736 (= res!1031711 (or (not (= (select (arr!48617 a!2804) j!70) (select (store (arr!48617 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48617 a!2804) index!487) (select (arr!48617 a!2804) j!70)) (not (= (select (arr!48617 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1031714 () Bool)

(assert (=> start!129000 (=> (not res!1031714) (not e!843958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129000 (= res!1031714 (validMask!0 mask!2512))))

(assert (=> start!129000 e!843958))

(assert (=> start!129000 true))

(declare-fun array_inv!37562 (array!100769) Bool)

(assert (=> start!129000 (array_inv!37562 a!2804)))

(declare-fun b!1511737 () Bool)

(declare-fun res!1031709 () Bool)

(assert (=> b!1511737 (=> (not res!1031709) (not e!843958))))

(assert (=> b!1511737 (= res!1031709 (validKeyInArray!0 (select (arr!48617 a!2804) i!961)))))

(declare-fun b!1511738 () Bool)

(declare-fun res!1031712 () Bool)

(assert (=> b!1511738 (=> (not res!1031712) (not e!843958))))

(assert (=> b!1511738 (= res!1031712 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49168 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49168 a!2804))))))

(declare-fun b!1511739 () Bool)

(declare-fun res!1031713 () Bool)

(assert (=> b!1511739 (=> (not res!1031713) (not e!843958))))

(declare-datatypes ((List!35280 0))(
  ( (Nil!35277) (Cons!35276 (h!36689 (_ BitVec 64)) (t!49981 List!35280)) )
))
(declare-fun arrayNoDuplicates!0 (array!100769 (_ BitVec 32) List!35280) Bool)

(assert (=> b!1511739 (= res!1031713 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35277))))

(declare-fun b!1511740 () Bool)

(assert (=> b!1511740 (= e!843955 (not (or (not (= (select (arr!48617 a!2804) j!70) (select (store (arr!48617 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48617 a!2804) index!487) (select (arr!48617 a!2804) j!70)) (not (= (select (arr!48617 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(assert (=> b!1511740 e!843957))

(declare-fun res!1031707 () Bool)

(assert (=> b!1511740 (=> (not res!1031707) (not e!843957))))

(assert (=> b!1511740 (= res!1031707 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50442 0))(
  ( (Unit!50443) )
))
(declare-fun lt!655486 () Unit!50442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100769 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50442)

(assert (=> b!1511740 (= lt!655486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129000 res!1031714) b!1511734))

(assert (= (and b!1511734 res!1031705) b!1511737))

(assert (= (and b!1511737 res!1031709) b!1511729))

(assert (= (and b!1511729 res!1031710) b!1511731))

(assert (= (and b!1511731 res!1031704) b!1511739))

(assert (= (and b!1511739 res!1031713) b!1511738))

(assert (= (and b!1511738 res!1031712) b!1511730))

(assert (= (and b!1511730 res!1031706) b!1511728))

(assert (= (and b!1511728 res!1031703) b!1511733))

(assert (= (and b!1511733 res!1031715) b!1511740))

(assert (= (and b!1511740 res!1031707) b!1511735))

(assert (= (and b!1511735 res!1031708) b!1511736))

(assert (= (and b!1511736 (not res!1031711)) b!1511732))

(declare-fun m!1394505 () Bool)

(assert (=> start!129000 m!1394505))

(declare-fun m!1394507 () Bool)

(assert (=> start!129000 m!1394507))

(declare-fun m!1394509 () Bool)

(assert (=> b!1511729 m!1394509))

(assert (=> b!1511729 m!1394509))

(declare-fun m!1394511 () Bool)

(assert (=> b!1511729 m!1394511))

(assert (=> b!1511728 m!1394509))

(assert (=> b!1511728 m!1394509))

(declare-fun m!1394513 () Bool)

(assert (=> b!1511728 m!1394513))

(assert (=> b!1511736 m!1394509))

(declare-fun m!1394515 () Bool)

(assert (=> b!1511736 m!1394515))

(declare-fun m!1394517 () Bool)

(assert (=> b!1511736 m!1394517))

(declare-fun m!1394519 () Bool)

(assert (=> b!1511736 m!1394519))

(assert (=> b!1511740 m!1394509))

(declare-fun m!1394521 () Bool)

(assert (=> b!1511740 m!1394521))

(assert (=> b!1511740 m!1394515))

(assert (=> b!1511740 m!1394519))

(assert (=> b!1511740 m!1394517))

(declare-fun m!1394523 () Bool)

(assert (=> b!1511740 m!1394523))

(declare-fun m!1394525 () Bool)

(assert (=> b!1511737 m!1394525))

(assert (=> b!1511737 m!1394525))

(declare-fun m!1394527 () Bool)

(assert (=> b!1511737 m!1394527))

(assert (=> b!1511733 m!1394515))

(assert (=> b!1511733 m!1394517))

(assert (=> b!1511733 m!1394517))

(declare-fun m!1394529 () Bool)

(assert (=> b!1511733 m!1394529))

(assert (=> b!1511733 m!1394529))

(assert (=> b!1511733 m!1394517))

(declare-fun m!1394531 () Bool)

(assert (=> b!1511733 m!1394531))

(assert (=> b!1511730 m!1394509))

(assert (=> b!1511730 m!1394509))

(declare-fun m!1394533 () Bool)

(assert (=> b!1511730 m!1394533))

(assert (=> b!1511730 m!1394533))

(assert (=> b!1511730 m!1394509))

(declare-fun m!1394535 () Bool)

(assert (=> b!1511730 m!1394535))

(declare-fun m!1394537 () Bool)

(assert (=> b!1511739 m!1394537))

(declare-fun m!1394539 () Bool)

(assert (=> b!1511731 m!1394539))

(assert (=> b!1511732 m!1394509))

(assert (=> b!1511732 m!1394509))

(declare-fun m!1394541 () Bool)

(assert (=> b!1511732 m!1394541))

(assert (=> b!1511732 m!1394509))

(declare-fun m!1394543 () Bool)

(assert (=> b!1511732 m!1394543))

(assert (=> b!1511735 m!1394509))

(assert (=> b!1511735 m!1394509))

(declare-fun m!1394545 () Bool)

(assert (=> b!1511735 m!1394545))

(check-sat (not b!1511732) (not b!1511730) (not b!1511729) (not b!1511731) (not b!1511739) (not b!1511728) (not b!1511740) (not start!129000) (not b!1511733) (not b!1511735) (not b!1511737))
(check-sat)
