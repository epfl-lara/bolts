; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129184 () Bool)

(assert start!129184)

(declare-fun b!1515478 () Bool)

(declare-fun e!845736 () Bool)

(declare-fun e!845738 () Bool)

(assert (=> b!1515478 (= e!845736 e!845738)))

(declare-fun res!1035456 () Bool)

(assert (=> b!1515478 (=> res!1035456 e!845738)))

(declare-datatypes ((SeekEntryResult!12901 0))(
  ( (MissingZero!12901 (index!53998 (_ BitVec 32))) (Found!12901 (index!53999 (_ BitVec 32))) (Intermediate!12901 (undefined!13713 Bool) (index!54000 (_ BitVec 32)) (x!135712 (_ BitVec 32))) (Undefined!12901) (MissingVacant!12901 (index!54001 (_ BitVec 32))) )
))
(declare-fun lt!656890 () SeekEntryResult!12901)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1515478 (= res!1035456 (not (= lt!656890 (Found!12901 j!70))))))

(declare-fun lt!656891 () SeekEntryResult!12901)

(declare-fun lt!656885 () SeekEntryResult!12901)

(assert (=> b!1515478 (= lt!656891 lt!656885)))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!656886 () (_ BitVec 64))

(declare-datatypes ((array!100953 0))(
  ( (array!100954 (arr!48709 (Array (_ BitVec 32) (_ BitVec 64))) (size!49260 (_ BitVec 32))) )
))
(declare-fun lt!656893 () array!100953)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100953 (_ BitVec 32)) SeekEntryResult!12901)

(assert (=> b!1515478 (= lt!656885 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656886 lt!656893 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100953 (_ BitVec 32)) SeekEntryResult!12901)

(assert (=> b!1515478 (= lt!656891 (seekEntryOrOpen!0 lt!656886 lt!656893 mask!2512))))

(declare-fun lt!656887 () SeekEntryResult!12901)

(assert (=> b!1515478 (= lt!656887 lt!656890)))

(declare-fun a!2804 () array!100953)

(assert (=> b!1515478 (= lt!656890 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48709 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515478 (= lt!656887 (seekEntryOrOpen!0 (select (arr!48709 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515479 () Bool)

(declare-fun res!1035463 () Bool)

(declare-fun e!845741 () Bool)

(assert (=> b!1515479 (=> (not res!1035463) (not e!845741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515479 (= res!1035463 (validKeyInArray!0 (select (arr!48709 a!2804) j!70)))))

(declare-fun b!1515480 () Bool)

(assert (=> b!1515480 (= e!845738 true)))

(assert (=> b!1515480 (= lt!656885 lt!656890)))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((Unit!50626 0))(
  ( (Unit!50627) )
))
(declare-fun lt!656892 () Unit!50626)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50626)

(assert (=> b!1515480 (= lt!656892 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515481 () Bool)

(declare-fun e!845737 () Bool)

(declare-fun e!845740 () Bool)

(assert (=> b!1515481 (= e!845737 e!845740)))

(declare-fun res!1035465 () Bool)

(assert (=> b!1515481 (=> (not res!1035465) (not e!845740))))

(declare-fun lt!656884 () SeekEntryResult!12901)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100953 (_ BitVec 32)) SeekEntryResult!12901)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515481 (= res!1035465 (= lt!656884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656886 mask!2512) lt!656886 lt!656893 mask!2512)))))

(assert (=> b!1515481 (= lt!656886 (select (store (arr!48709 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515481 (= lt!656893 (array!100954 (store (arr!48709 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49260 a!2804)))))

(declare-fun b!1515482 () Bool)

(declare-fun res!1035459 () Bool)

(assert (=> b!1515482 (=> (not res!1035459) (not e!845741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100953 (_ BitVec 32)) Bool)

(assert (=> b!1515482 (= res!1035459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515483 () Bool)

(assert (=> b!1515483 (= e!845740 (not e!845736))))

(declare-fun res!1035457 () Bool)

(assert (=> b!1515483 (=> res!1035457 e!845736)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515483 (= res!1035457 (or (not (= (select (arr!48709 a!2804) j!70) lt!656886)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48709 a!2804) index!487) (select (arr!48709 a!2804) j!70)) (not (= (select (arr!48709 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845739 () Bool)

(assert (=> b!1515483 e!845739))

(declare-fun res!1035453 () Bool)

(assert (=> b!1515483 (=> (not res!1035453) (not e!845739))))

(assert (=> b!1515483 (= res!1035453 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656888 () Unit!50626)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50626)

(assert (=> b!1515483 (= lt!656888 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515485 () Bool)

(declare-fun res!1035458 () Bool)

(assert (=> b!1515485 (=> (not res!1035458) (not e!845741))))

(assert (=> b!1515485 (= res!1035458 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49260 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49260 a!2804))))))

(declare-fun b!1515486 () Bool)

(assert (=> b!1515486 (= e!845741 e!845737)))

(declare-fun res!1035464 () Bool)

(assert (=> b!1515486 (=> (not res!1035464) (not e!845737))))

(declare-fun lt!656889 () SeekEntryResult!12901)

(assert (=> b!1515486 (= res!1035464 (= lt!656884 lt!656889))))

(assert (=> b!1515486 (= lt!656889 (Intermediate!12901 false resIndex!21 resX!21))))

(assert (=> b!1515486 (= lt!656884 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48709 a!2804) j!70) mask!2512) (select (arr!48709 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515487 () Bool)

(declare-fun res!1035455 () Bool)

(assert (=> b!1515487 (=> (not res!1035455) (not e!845741))))

(assert (=> b!1515487 (= res!1035455 (and (= (size!49260 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49260 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49260 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515488 () Bool)

(declare-fun res!1035454 () Bool)

(assert (=> b!1515488 (=> (not res!1035454) (not e!845737))))

(assert (=> b!1515488 (= res!1035454 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48709 a!2804) j!70) a!2804 mask!2512) lt!656889))))

(declare-fun res!1035461 () Bool)

(assert (=> start!129184 (=> (not res!1035461) (not e!845741))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129184 (= res!1035461 (validMask!0 mask!2512))))

(assert (=> start!129184 e!845741))

(assert (=> start!129184 true))

(declare-fun array_inv!37654 (array!100953) Bool)

(assert (=> start!129184 (array_inv!37654 a!2804)))

(declare-fun b!1515484 () Bool)

(declare-fun res!1035462 () Bool)

(assert (=> b!1515484 (=> (not res!1035462) (not e!845741))))

(assert (=> b!1515484 (= res!1035462 (validKeyInArray!0 (select (arr!48709 a!2804) i!961)))))

(declare-fun b!1515489 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100953 (_ BitVec 32)) SeekEntryResult!12901)

(assert (=> b!1515489 (= e!845739 (= (seekEntry!0 (select (arr!48709 a!2804) j!70) a!2804 mask!2512) (Found!12901 j!70)))))

(declare-fun b!1515490 () Bool)

(declare-fun res!1035460 () Bool)

(assert (=> b!1515490 (=> (not res!1035460) (not e!845741))))

(declare-datatypes ((List!35372 0))(
  ( (Nil!35369) (Cons!35368 (h!36781 (_ BitVec 64)) (t!50073 List!35372)) )
))
(declare-fun arrayNoDuplicates!0 (array!100953 (_ BitVec 32) List!35372) Bool)

(assert (=> b!1515490 (= res!1035460 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35369))))

(assert (= (and start!129184 res!1035461) b!1515487))

(assert (= (and b!1515487 res!1035455) b!1515484))

(assert (= (and b!1515484 res!1035462) b!1515479))

(assert (= (and b!1515479 res!1035463) b!1515482))

(assert (= (and b!1515482 res!1035459) b!1515490))

(assert (= (and b!1515490 res!1035460) b!1515485))

(assert (= (and b!1515485 res!1035458) b!1515486))

(assert (= (and b!1515486 res!1035464) b!1515488))

(assert (= (and b!1515488 res!1035454) b!1515481))

(assert (= (and b!1515481 res!1035465) b!1515483))

(assert (= (and b!1515483 res!1035453) b!1515489))

(assert (= (and b!1515483 (not res!1035457)) b!1515478))

(assert (= (and b!1515478 (not res!1035456)) b!1515480))

(declare-fun m!1398657 () Bool)

(assert (=> b!1515486 m!1398657))

(assert (=> b!1515486 m!1398657))

(declare-fun m!1398659 () Bool)

(assert (=> b!1515486 m!1398659))

(assert (=> b!1515486 m!1398659))

(assert (=> b!1515486 m!1398657))

(declare-fun m!1398661 () Bool)

(assert (=> b!1515486 m!1398661))

(declare-fun m!1398663 () Bool)

(assert (=> b!1515490 m!1398663))

(assert (=> b!1515479 m!1398657))

(assert (=> b!1515479 m!1398657))

(declare-fun m!1398665 () Bool)

(assert (=> b!1515479 m!1398665))

(assert (=> b!1515488 m!1398657))

(assert (=> b!1515488 m!1398657))

(declare-fun m!1398667 () Bool)

(assert (=> b!1515488 m!1398667))

(assert (=> b!1515489 m!1398657))

(assert (=> b!1515489 m!1398657))

(declare-fun m!1398669 () Bool)

(assert (=> b!1515489 m!1398669))

(declare-fun m!1398671 () Bool)

(assert (=> b!1515484 m!1398671))

(assert (=> b!1515484 m!1398671))

(declare-fun m!1398673 () Bool)

(assert (=> b!1515484 m!1398673))

(declare-fun m!1398675 () Bool)

(assert (=> b!1515481 m!1398675))

(assert (=> b!1515481 m!1398675))

(declare-fun m!1398677 () Bool)

(assert (=> b!1515481 m!1398677))

(declare-fun m!1398679 () Bool)

(assert (=> b!1515481 m!1398679))

(declare-fun m!1398681 () Bool)

(assert (=> b!1515481 m!1398681))

(declare-fun m!1398683 () Bool)

(assert (=> b!1515482 m!1398683))

(declare-fun m!1398685 () Bool)

(assert (=> b!1515480 m!1398685))

(assert (=> b!1515478 m!1398657))

(declare-fun m!1398687 () Bool)

(assert (=> b!1515478 m!1398687))

(assert (=> b!1515478 m!1398657))

(declare-fun m!1398689 () Bool)

(assert (=> b!1515478 m!1398689))

(declare-fun m!1398691 () Bool)

(assert (=> b!1515478 m!1398691))

(declare-fun m!1398693 () Bool)

(assert (=> b!1515478 m!1398693))

(assert (=> b!1515478 m!1398657))

(assert (=> b!1515483 m!1398657))

(declare-fun m!1398695 () Bool)

(assert (=> b!1515483 m!1398695))

(declare-fun m!1398697 () Bool)

(assert (=> b!1515483 m!1398697))

(declare-fun m!1398699 () Bool)

(assert (=> b!1515483 m!1398699))

(declare-fun m!1398701 () Bool)

(assert (=> start!129184 m!1398701))

(declare-fun m!1398703 () Bool)

(assert (=> start!129184 m!1398703))

(push 1)

