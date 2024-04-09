; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129240 () Bool)

(assert start!129240)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1516507 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun e!846213 () Bool)

(declare-datatypes ((array!101009 0))(
  ( (array!101010 (arr!48737 (Array (_ BitVec 32) (_ BitVec 64))) (size!49288 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101009)

(declare-datatypes ((SeekEntryResult!12929 0))(
  ( (MissingZero!12929 (index!54110 (_ BitVec 32))) (Found!12929 (index!54111 (_ BitVec 32))) (Intermediate!12929 (undefined!13741 Bool) (index!54112 (_ BitVec 32)) (x!135812 (_ BitVec 32))) (Undefined!12929) (MissingVacant!12929 (index!54113 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101009 (_ BitVec 32)) SeekEntryResult!12929)

(assert (=> b!1516507 (= e!846213 (= (seekEntry!0 (select (arr!48737 a!2804) j!70) a!2804 mask!2512) (Found!12929 j!70)))))

(declare-fun b!1516508 () Bool)

(declare-fun res!1036487 () Bool)

(declare-fun e!846211 () Bool)

(assert (=> b!1516508 (=> (not res!1036487) (not e!846211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516508 (= res!1036487 (validKeyInArray!0 (select (arr!48737 a!2804) j!70)))))

(declare-fun b!1516509 () Bool)

(declare-fun res!1036490 () Bool)

(assert (=> b!1516509 (=> (not res!1036490) (not e!846211))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516509 (= res!1036490 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49288 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49288 a!2804))))))

(declare-fun b!1516510 () Bool)

(declare-fun res!1036485 () Bool)

(declare-fun e!846215 () Bool)

(assert (=> b!1516510 (=> (not res!1036485) (not e!846215))))

(declare-fun lt!657402 () SeekEntryResult!12929)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101009 (_ BitVec 32)) SeekEntryResult!12929)

(assert (=> b!1516510 (= res!1036485 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48737 a!2804) j!70) a!2804 mask!2512) lt!657402))))

(declare-fun res!1036483 () Bool)

(assert (=> start!129240 (=> (not res!1036483) (not e!846211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129240 (= res!1036483 (validMask!0 mask!2512))))

(assert (=> start!129240 e!846211))

(assert (=> start!129240 true))

(declare-fun array_inv!37682 (array!101009) Bool)

(assert (=> start!129240 (array_inv!37682 a!2804)))

(declare-fun b!1516511 () Bool)

(declare-fun res!1036484 () Bool)

(assert (=> b!1516511 (=> (not res!1036484) (not e!846211))))

(declare-datatypes ((List!35400 0))(
  ( (Nil!35397) (Cons!35396 (h!36809 (_ BitVec 64)) (t!50101 List!35400)) )
))
(declare-fun arrayNoDuplicates!0 (array!101009 (_ BitVec 32) List!35400) Bool)

(assert (=> b!1516511 (= res!1036484 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35397))))

(declare-fun b!1516512 () Bool)

(declare-fun e!846210 () Bool)

(assert (=> b!1516512 (= e!846215 (not e!846210))))

(declare-fun res!1036486 () Bool)

(assert (=> b!1516512 (=> res!1036486 e!846210)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1516512 (= res!1036486 (or (not (= (select (arr!48737 a!2804) j!70) (select (store (arr!48737 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516512 e!846213))

(declare-fun res!1036494 () Bool)

(assert (=> b!1516512 (=> (not res!1036494) (not e!846213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101009 (_ BitVec 32)) Bool)

(assert (=> b!1516512 (= res!1036494 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50682 0))(
  ( (Unit!50683) )
))
(declare-fun lt!657403 () Unit!50682)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50682)

(assert (=> b!1516512 (= lt!657403 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516513 () Bool)

(assert (=> b!1516513 (= e!846211 e!846215)))

(declare-fun res!1036489 () Bool)

(assert (=> b!1516513 (=> (not res!1036489) (not e!846215))))

(declare-fun lt!657406 () SeekEntryResult!12929)

(assert (=> b!1516513 (= res!1036489 (= lt!657406 lt!657402))))

(assert (=> b!1516513 (= lt!657402 (Intermediate!12929 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516513 (= lt!657406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48737 a!2804) j!70) mask!2512) (select (arr!48737 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516514 () Bool)

(declare-fun e!846212 () Bool)

(assert (=> b!1516514 (= e!846210 e!846212)))

(declare-fun res!1036492 () Bool)

(assert (=> b!1516514 (=> res!1036492 e!846212)))

(declare-fun lt!657405 () (_ BitVec 32))

(assert (=> b!1516514 (= res!1036492 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657405 #b00000000000000000000000000000000) (bvsge lt!657405 (size!49288 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516514 (= lt!657405 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516515 () Bool)

(assert (=> b!1516515 (= e!846212 true)))

(declare-fun lt!657404 () SeekEntryResult!12929)

(assert (=> b!1516515 (= lt!657404 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657405 (select (arr!48737 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516516 () Bool)

(declare-fun res!1036482 () Bool)

(assert (=> b!1516516 (=> (not res!1036482) (not e!846211))))

(assert (=> b!1516516 (= res!1036482 (validKeyInArray!0 (select (arr!48737 a!2804) i!961)))))

(declare-fun b!1516517 () Bool)

(declare-fun res!1036491 () Bool)

(assert (=> b!1516517 (=> (not res!1036491) (not e!846211))))

(assert (=> b!1516517 (= res!1036491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516518 () Bool)

(declare-fun res!1036493 () Bool)

(assert (=> b!1516518 (=> (not res!1036493) (not e!846215))))

(assert (=> b!1516518 (= res!1036493 (= lt!657406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48737 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48737 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101010 (store (arr!48737 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49288 a!2804)) mask!2512)))))

(declare-fun b!1516519 () Bool)

(declare-fun res!1036488 () Bool)

(assert (=> b!1516519 (=> (not res!1036488) (not e!846211))))

(assert (=> b!1516519 (= res!1036488 (and (= (size!49288 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49288 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49288 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129240 res!1036483) b!1516519))

(assert (= (and b!1516519 res!1036488) b!1516516))

(assert (= (and b!1516516 res!1036482) b!1516508))

(assert (= (and b!1516508 res!1036487) b!1516517))

(assert (= (and b!1516517 res!1036491) b!1516511))

(assert (= (and b!1516511 res!1036484) b!1516509))

(assert (= (and b!1516509 res!1036490) b!1516513))

(assert (= (and b!1516513 res!1036489) b!1516510))

(assert (= (and b!1516510 res!1036485) b!1516518))

(assert (= (and b!1516518 res!1036493) b!1516512))

(assert (= (and b!1516512 res!1036494) b!1516507))

(assert (= (and b!1516512 (not res!1036486)) b!1516514))

(assert (= (and b!1516514 (not res!1036492)) b!1516515))

(declare-fun m!1399831 () Bool)

(assert (=> b!1516518 m!1399831))

(declare-fun m!1399833 () Bool)

(assert (=> b!1516518 m!1399833))

(assert (=> b!1516518 m!1399833))

(declare-fun m!1399835 () Bool)

(assert (=> b!1516518 m!1399835))

(assert (=> b!1516518 m!1399835))

(assert (=> b!1516518 m!1399833))

(declare-fun m!1399837 () Bool)

(assert (=> b!1516518 m!1399837))

(declare-fun m!1399839 () Bool)

(assert (=> start!129240 m!1399839))

(declare-fun m!1399841 () Bool)

(assert (=> start!129240 m!1399841))

(declare-fun m!1399843 () Bool)

(assert (=> b!1516515 m!1399843))

(assert (=> b!1516515 m!1399843))

(declare-fun m!1399845 () Bool)

(assert (=> b!1516515 m!1399845))

(declare-fun m!1399847 () Bool)

(assert (=> b!1516514 m!1399847))

(assert (=> b!1516512 m!1399843))

(declare-fun m!1399849 () Bool)

(assert (=> b!1516512 m!1399849))

(assert (=> b!1516512 m!1399831))

(assert (=> b!1516512 m!1399833))

(declare-fun m!1399851 () Bool)

(assert (=> b!1516512 m!1399851))

(declare-fun m!1399853 () Bool)

(assert (=> b!1516517 m!1399853))

(declare-fun m!1399855 () Bool)

(assert (=> b!1516516 m!1399855))

(assert (=> b!1516516 m!1399855))

(declare-fun m!1399857 () Bool)

(assert (=> b!1516516 m!1399857))

(declare-fun m!1399859 () Bool)

(assert (=> b!1516511 m!1399859))

(assert (=> b!1516510 m!1399843))

(assert (=> b!1516510 m!1399843))

(declare-fun m!1399861 () Bool)

(assert (=> b!1516510 m!1399861))

(assert (=> b!1516508 m!1399843))

(assert (=> b!1516508 m!1399843))

(declare-fun m!1399863 () Bool)

(assert (=> b!1516508 m!1399863))

(assert (=> b!1516507 m!1399843))

(assert (=> b!1516507 m!1399843))

(declare-fun m!1399865 () Bool)

(assert (=> b!1516507 m!1399865))

(assert (=> b!1516513 m!1399843))

(assert (=> b!1516513 m!1399843))

(declare-fun m!1399867 () Bool)

(assert (=> b!1516513 m!1399867))

(assert (=> b!1516513 m!1399867))

(assert (=> b!1516513 m!1399843))

(declare-fun m!1399869 () Bool)

(assert (=> b!1516513 m!1399869))

(check-sat (not b!1516511) (not b!1516507) (not start!129240) (not b!1516516) (not b!1516517) (not b!1516518) (not b!1516514) (not b!1516515) (not b!1516513) (not b!1516508) (not b!1516512) (not b!1516510))
(check-sat)
