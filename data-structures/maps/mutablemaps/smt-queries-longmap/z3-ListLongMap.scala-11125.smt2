; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130080 () Bool)

(assert start!130080)

(declare-fun b!1525767 () Bool)

(declare-fun res!1043943 () Bool)

(declare-fun e!850513 () Bool)

(assert (=> b!1525767 (=> (not res!1043943) (not e!850513))))

(declare-datatypes ((array!101420 0))(
  ( (array!101421 (arr!48932 (Array (_ BitVec 32) (_ BitVec 64))) (size!49483 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101420)

(declare-datatypes ((List!35595 0))(
  ( (Nil!35592) (Cons!35591 (h!37025 (_ BitVec 64)) (t!50296 List!35595)) )
))
(declare-fun arrayNoDuplicates!0 (array!101420 (_ BitVec 32) List!35595) Bool)

(assert (=> b!1525767 (= res!1043943 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35592))))

(declare-fun b!1525768 () Bool)

(declare-fun e!850516 () Bool)

(declare-fun e!850511 () Bool)

(assert (=> b!1525768 (= e!850516 e!850511)))

(declare-fun res!1043942 () Bool)

(assert (=> b!1525768 (=> (not res!1043942) (not e!850511))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13118 0))(
  ( (MissingZero!13118 (index!54866 (_ BitVec 32))) (Found!13118 (index!54867 (_ BitVec 32))) (Intermediate!13118 (undefined!13930 Bool) (index!54868 (_ BitVec 32)) (x!136575 (_ BitVec 32))) (Undefined!13118) (MissingVacant!13118 (index!54869 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101420 (_ BitVec 32)) SeekEntryResult!13118)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101420 (_ BitVec 32)) SeekEntryResult!13118)

(assert (=> b!1525768 (= res!1043942 (= (seekEntryOrOpen!0 (select (arr!48932 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48932 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525769 () Bool)

(declare-fun lt!660805 () (_ BitVec 64))

(declare-fun lt!660804 () array!101420)

(assert (=> b!1525769 (= e!850511 (= (seekEntryOrOpen!0 lt!660805 lt!660804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660805 lt!660804 mask!2512)))))

(declare-fun b!1525770 () Bool)

(declare-fun e!850515 () Bool)

(declare-fun e!850517 () Bool)

(assert (=> b!1525770 (= e!850515 e!850517)))

(declare-fun res!1043951 () Bool)

(assert (=> b!1525770 (=> (not res!1043951) (not e!850517))))

(declare-fun lt!660802 () SeekEntryResult!13118)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101420 (_ BitVec 32)) SeekEntryResult!13118)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525770 (= res!1043951 (= lt!660802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660805 mask!2512) lt!660805 lt!660804 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525770 (= lt!660805 (select (store (arr!48932 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525770 (= lt!660804 (array!101421 (store (arr!48932 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49483 a!2804)))))

(declare-fun res!1043940 () Bool)

(assert (=> start!130080 (=> (not res!1043940) (not e!850513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130080 (= res!1043940 (validMask!0 mask!2512))))

(assert (=> start!130080 e!850513))

(assert (=> start!130080 true))

(declare-fun array_inv!37877 (array!101420) Bool)

(assert (=> start!130080 (array_inv!37877 a!2804)))

(declare-fun b!1525771 () Bool)

(declare-fun res!1043939 () Bool)

(assert (=> b!1525771 (=> (not res!1043939) (not e!850513))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525771 (= res!1043939 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49483 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49483 a!2804))))))

(declare-fun b!1525772 () Bool)

(declare-fun res!1043949 () Bool)

(assert (=> b!1525772 (=> (not res!1043949) (not e!850513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525772 (= res!1043949 (validKeyInArray!0 (select (arr!48932 a!2804) j!70)))))

(declare-fun b!1525773 () Bool)

(assert (=> b!1525773 (= e!850517 (not true))))

(declare-fun e!850512 () Bool)

(assert (=> b!1525773 e!850512))

(declare-fun res!1043950 () Bool)

(assert (=> b!1525773 (=> (not res!1043950) (not e!850512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101420 (_ BitVec 32)) Bool)

(assert (=> b!1525773 (= res!1043950 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50976 0))(
  ( (Unit!50977) )
))
(declare-fun lt!660801 () Unit!50976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50976)

(assert (=> b!1525773 (= lt!660801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525774 () Bool)

(declare-fun res!1043941 () Bool)

(assert (=> b!1525774 (=> (not res!1043941) (not e!850513))))

(assert (=> b!1525774 (= res!1043941 (validKeyInArray!0 (select (arr!48932 a!2804) i!961)))))

(declare-fun b!1525775 () Bool)

(declare-fun res!1043947 () Bool)

(assert (=> b!1525775 (=> (not res!1043947) (not e!850513))))

(assert (=> b!1525775 (= res!1043947 (and (= (size!49483 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49483 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49483 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525776 () Bool)

(assert (=> b!1525776 (= e!850513 e!850515)))

(declare-fun res!1043945 () Bool)

(assert (=> b!1525776 (=> (not res!1043945) (not e!850515))))

(declare-fun lt!660803 () SeekEntryResult!13118)

(assert (=> b!1525776 (= res!1043945 (= lt!660802 lt!660803))))

(assert (=> b!1525776 (= lt!660803 (Intermediate!13118 false resIndex!21 resX!21))))

(assert (=> b!1525776 (= lt!660802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48932 a!2804) j!70) mask!2512) (select (arr!48932 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525777 () Bool)

(declare-fun res!1043952 () Bool)

(assert (=> b!1525777 (=> (not res!1043952) (not e!850513))))

(assert (=> b!1525777 (= res!1043952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525778 () Bool)

(declare-fun res!1043944 () Bool)

(assert (=> b!1525778 (=> (not res!1043944) (not e!850512))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101420 (_ BitVec 32)) SeekEntryResult!13118)

(assert (=> b!1525778 (= res!1043944 (= (seekEntry!0 (select (arr!48932 a!2804) j!70) a!2804 mask!2512) (Found!13118 j!70)))))

(declare-fun b!1525779 () Bool)

(declare-fun res!1043946 () Bool)

(assert (=> b!1525779 (=> (not res!1043946) (not e!850515))))

(assert (=> b!1525779 (= res!1043946 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48932 a!2804) j!70) a!2804 mask!2512) lt!660803))))

(declare-fun b!1525780 () Bool)

(assert (=> b!1525780 (= e!850512 e!850516)))

(declare-fun res!1043948 () Bool)

(assert (=> b!1525780 (=> res!1043948 e!850516)))

(assert (=> b!1525780 (= res!1043948 (or (not (= (select (arr!48932 a!2804) j!70) lt!660805)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48932 a!2804) index!487) (select (arr!48932 a!2804) j!70)) (not (= (select (arr!48932 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!130080 res!1043940) b!1525775))

(assert (= (and b!1525775 res!1043947) b!1525774))

(assert (= (and b!1525774 res!1043941) b!1525772))

(assert (= (and b!1525772 res!1043949) b!1525777))

(assert (= (and b!1525777 res!1043952) b!1525767))

(assert (= (and b!1525767 res!1043943) b!1525771))

(assert (= (and b!1525771 res!1043939) b!1525776))

(assert (= (and b!1525776 res!1043945) b!1525779))

(assert (= (and b!1525779 res!1043946) b!1525770))

(assert (= (and b!1525770 res!1043951) b!1525773))

(assert (= (and b!1525773 res!1043950) b!1525778))

(assert (= (and b!1525778 res!1043944) b!1525780))

(assert (= (and b!1525780 (not res!1043948)) b!1525768))

(assert (= (and b!1525768 res!1043942) b!1525769))

(declare-fun m!1408567 () Bool)

(assert (=> b!1525773 m!1408567))

(declare-fun m!1408569 () Bool)

(assert (=> b!1525773 m!1408569))

(declare-fun m!1408571 () Bool)

(assert (=> b!1525769 m!1408571))

(declare-fun m!1408573 () Bool)

(assert (=> b!1525769 m!1408573))

(declare-fun m!1408575 () Bool)

(assert (=> b!1525770 m!1408575))

(assert (=> b!1525770 m!1408575))

(declare-fun m!1408577 () Bool)

(assert (=> b!1525770 m!1408577))

(declare-fun m!1408579 () Bool)

(assert (=> b!1525770 m!1408579))

(declare-fun m!1408581 () Bool)

(assert (=> b!1525770 m!1408581))

(declare-fun m!1408583 () Bool)

(assert (=> b!1525779 m!1408583))

(assert (=> b!1525779 m!1408583))

(declare-fun m!1408585 () Bool)

(assert (=> b!1525779 m!1408585))

(assert (=> b!1525768 m!1408583))

(assert (=> b!1525768 m!1408583))

(declare-fun m!1408587 () Bool)

(assert (=> b!1525768 m!1408587))

(assert (=> b!1525768 m!1408583))

(declare-fun m!1408589 () Bool)

(assert (=> b!1525768 m!1408589))

(assert (=> b!1525778 m!1408583))

(assert (=> b!1525778 m!1408583))

(declare-fun m!1408591 () Bool)

(assert (=> b!1525778 m!1408591))

(declare-fun m!1408593 () Bool)

(assert (=> b!1525767 m!1408593))

(declare-fun m!1408595 () Bool)

(assert (=> start!130080 m!1408595))

(declare-fun m!1408597 () Bool)

(assert (=> start!130080 m!1408597))

(declare-fun m!1408599 () Bool)

(assert (=> b!1525777 m!1408599))

(assert (=> b!1525780 m!1408583))

(declare-fun m!1408601 () Bool)

(assert (=> b!1525780 m!1408601))

(assert (=> b!1525776 m!1408583))

(assert (=> b!1525776 m!1408583))

(declare-fun m!1408603 () Bool)

(assert (=> b!1525776 m!1408603))

(assert (=> b!1525776 m!1408603))

(assert (=> b!1525776 m!1408583))

(declare-fun m!1408605 () Bool)

(assert (=> b!1525776 m!1408605))

(declare-fun m!1408607 () Bool)

(assert (=> b!1525774 m!1408607))

(assert (=> b!1525774 m!1408607))

(declare-fun m!1408609 () Bool)

(assert (=> b!1525774 m!1408609))

(assert (=> b!1525772 m!1408583))

(assert (=> b!1525772 m!1408583))

(declare-fun m!1408611 () Bool)

(assert (=> b!1525772 m!1408611))

(check-sat (not b!1525773) (not b!1525779) (not b!1525774) (not b!1525768) (not b!1525770) (not start!130080) (not b!1525769) (not b!1525776) (not b!1525767) (not b!1525772) (not b!1525777) (not b!1525778))
(check-sat)
