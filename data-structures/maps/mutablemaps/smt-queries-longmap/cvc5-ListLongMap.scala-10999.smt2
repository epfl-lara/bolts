; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128872 () Bool)

(assert start!128872)

(declare-fun b!1509579 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100641 0))(
  ( (array!100642 (arr!48553 (Array (_ BitVec 32) (_ BitVec 64))) (size!49104 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100641)

(declare-fun e!843166 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12745 0))(
  ( (MissingZero!12745 (index!53374 (_ BitVec 32))) (Found!12745 (index!53375 (_ BitVec 32))) (Intermediate!12745 (undefined!13557 Bool) (index!53376 (_ BitVec 32)) (x!135140 (_ BitVec 32))) (Undefined!12745) (MissingVacant!12745 (index!53377 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100641 (_ BitVec 32)) SeekEntryResult!12745)

(assert (=> b!1509579 (= e!843166 (= (seekEntry!0 (select (arr!48553 a!2804) j!70) a!2804 mask!2512) (Found!12745 j!70)))))

(declare-fun b!1509580 () Bool)

(declare-fun res!1029563 () Bool)

(declare-fun e!843165 () Bool)

(assert (=> b!1509580 (=> (not res!1029563) (not e!843165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100641 (_ BitVec 32)) Bool)

(assert (=> b!1509580 (= res!1029563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509581 () Bool)

(declare-fun res!1029562 () Bool)

(declare-fun e!843167 () Bool)

(assert (=> b!1509581 (=> (not res!1029562) (not e!843167))))

(declare-fun lt!654908 () SeekEntryResult!12745)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100641 (_ BitVec 32)) SeekEntryResult!12745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509581 (= res!1029562 (= lt!654908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48553 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48553 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100642 (store (arr!48553 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49104 a!2804)) mask!2512)))))

(declare-fun b!1509582 () Bool)

(declare-fun res!1029556 () Bool)

(assert (=> b!1509582 (=> (not res!1029556) (not e!843165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509582 (= res!1029556 (validKeyInArray!0 (select (arr!48553 a!2804) i!961)))))

(declare-fun b!1509583 () Bool)

(assert (=> b!1509583 (= e!843165 e!843167)))

(declare-fun res!1029560 () Bool)

(assert (=> b!1509583 (=> (not res!1029560) (not e!843167))))

(declare-fun lt!654910 () SeekEntryResult!12745)

(assert (=> b!1509583 (= res!1029560 (= lt!654908 lt!654910))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509583 (= lt!654910 (Intermediate!12745 false resIndex!21 resX!21))))

(assert (=> b!1509583 (= lt!654908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48553 a!2804) j!70) mask!2512) (select (arr!48553 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509584 () Bool)

(declare-fun res!1029558 () Bool)

(assert (=> b!1509584 (=> (not res!1029558) (not e!843165))))

(declare-datatypes ((List!35216 0))(
  ( (Nil!35213) (Cons!35212 (h!36625 (_ BitVec 64)) (t!49917 List!35216)) )
))
(declare-fun arrayNoDuplicates!0 (array!100641 (_ BitVec 32) List!35216) Bool)

(assert (=> b!1509584 (= res!1029558 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35213))))

(declare-fun b!1509585 () Bool)

(declare-fun res!1029561 () Bool)

(assert (=> b!1509585 (=> (not res!1029561) (not e!843165))))

(assert (=> b!1509585 (= res!1029561 (and (= (size!49104 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49104 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49104 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509586 () Bool)

(assert (=> b!1509586 (= e!843167 (not true))))

(assert (=> b!1509586 e!843166))

(declare-fun res!1029559 () Bool)

(assert (=> b!1509586 (=> (not res!1029559) (not e!843166))))

(assert (=> b!1509586 (= res!1029559 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50314 0))(
  ( (Unit!50315) )
))
(declare-fun lt!654909 () Unit!50314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100641 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50314)

(assert (=> b!1509586 (= lt!654909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509587 () Bool)

(declare-fun res!1029554 () Bool)

(assert (=> b!1509587 (=> (not res!1029554) (not e!843165))))

(assert (=> b!1509587 (= res!1029554 (validKeyInArray!0 (select (arr!48553 a!2804) j!70)))))

(declare-fun res!1029564 () Bool)

(assert (=> start!128872 (=> (not res!1029564) (not e!843165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128872 (= res!1029564 (validMask!0 mask!2512))))

(assert (=> start!128872 e!843165))

(assert (=> start!128872 true))

(declare-fun array_inv!37498 (array!100641) Bool)

(assert (=> start!128872 (array_inv!37498 a!2804)))

(declare-fun b!1509588 () Bool)

(declare-fun res!1029555 () Bool)

(assert (=> b!1509588 (=> (not res!1029555) (not e!843165))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1509588 (= res!1029555 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49104 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49104 a!2804))))))

(declare-fun b!1509589 () Bool)

(declare-fun res!1029557 () Bool)

(assert (=> b!1509589 (=> (not res!1029557) (not e!843167))))

(assert (=> b!1509589 (= res!1029557 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48553 a!2804) j!70) a!2804 mask!2512) lt!654910))))

(assert (= (and start!128872 res!1029564) b!1509585))

(assert (= (and b!1509585 res!1029561) b!1509582))

(assert (= (and b!1509582 res!1029556) b!1509587))

(assert (= (and b!1509587 res!1029554) b!1509580))

(assert (= (and b!1509580 res!1029563) b!1509584))

(assert (= (and b!1509584 res!1029558) b!1509588))

(assert (= (and b!1509588 res!1029555) b!1509583))

(assert (= (and b!1509583 res!1029560) b!1509589))

(assert (= (and b!1509589 res!1029557) b!1509581))

(assert (= (and b!1509581 res!1029562) b!1509586))

(assert (= (and b!1509586 res!1029559) b!1509579))

(declare-fun m!1392135 () Bool)

(assert (=> start!128872 m!1392135))

(declare-fun m!1392137 () Bool)

(assert (=> start!128872 m!1392137))

(declare-fun m!1392139 () Bool)

(assert (=> b!1509583 m!1392139))

(assert (=> b!1509583 m!1392139))

(declare-fun m!1392141 () Bool)

(assert (=> b!1509583 m!1392141))

(assert (=> b!1509583 m!1392141))

(assert (=> b!1509583 m!1392139))

(declare-fun m!1392143 () Bool)

(assert (=> b!1509583 m!1392143))

(declare-fun m!1392145 () Bool)

(assert (=> b!1509584 m!1392145))

(assert (=> b!1509589 m!1392139))

(assert (=> b!1509589 m!1392139))

(declare-fun m!1392147 () Bool)

(assert (=> b!1509589 m!1392147))

(declare-fun m!1392149 () Bool)

(assert (=> b!1509582 m!1392149))

(assert (=> b!1509582 m!1392149))

(declare-fun m!1392151 () Bool)

(assert (=> b!1509582 m!1392151))

(declare-fun m!1392153 () Bool)

(assert (=> b!1509586 m!1392153))

(declare-fun m!1392155 () Bool)

(assert (=> b!1509586 m!1392155))

(assert (=> b!1509579 m!1392139))

(assert (=> b!1509579 m!1392139))

(declare-fun m!1392157 () Bool)

(assert (=> b!1509579 m!1392157))

(assert (=> b!1509587 m!1392139))

(assert (=> b!1509587 m!1392139))

(declare-fun m!1392159 () Bool)

(assert (=> b!1509587 m!1392159))

(declare-fun m!1392161 () Bool)

(assert (=> b!1509580 m!1392161))

(declare-fun m!1392163 () Bool)

(assert (=> b!1509581 m!1392163))

(declare-fun m!1392165 () Bool)

(assert (=> b!1509581 m!1392165))

(assert (=> b!1509581 m!1392165))

(declare-fun m!1392167 () Bool)

(assert (=> b!1509581 m!1392167))

(assert (=> b!1509581 m!1392167))

(assert (=> b!1509581 m!1392165))

(declare-fun m!1392169 () Bool)

(assert (=> b!1509581 m!1392169))

(push 1)

