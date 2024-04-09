; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128960 () Bool)

(assert start!128960)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun e!843703 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100729 0))(
  ( (array!100730 (arr!48597 (Array (_ BitVec 32) (_ BitVec 64))) (size!49148 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100729)

(declare-fun b!1511040 () Bool)

(declare-datatypes ((SeekEntryResult!12789 0))(
  ( (MissingZero!12789 (index!53550 (_ BitVec 32))) (Found!12789 (index!53551 (_ BitVec 32))) (Intermediate!12789 (undefined!13601 Bool) (index!53552 (_ BitVec 32)) (x!135296 (_ BitVec 32))) (Undefined!12789) (MissingVacant!12789 (index!53553 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100729 (_ BitVec 32)) SeekEntryResult!12789)

(assert (=> b!1511040 (= e!843703 (= (seekEntry!0 (select (arr!48597 a!2804) j!70) a!2804 mask!2512) (Found!12789 j!70)))))

(declare-fun b!1511041 () Bool)

(declare-fun res!1031023 () Bool)

(declare-fun e!843702 () Bool)

(assert (=> b!1511041 (=> (not res!1031023) (not e!843702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511041 (= res!1031023 (validKeyInArray!0 (select (arr!48597 a!2804) j!70)))))

(declare-fun b!1511043 () Bool)

(declare-fun res!1031015 () Bool)

(declare-fun e!843704 () Bool)

(assert (=> b!1511043 (=> (not res!1031015) (not e!843704))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655304 () SeekEntryResult!12789)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100729 (_ BitVec 32)) SeekEntryResult!12789)

(assert (=> b!1511043 (= res!1031015 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48597 a!2804) j!70) a!2804 mask!2512) lt!655304))))

(declare-fun b!1511044 () Bool)

(declare-fun res!1031017 () Bool)

(assert (=> b!1511044 (=> (not res!1031017) (not e!843702))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511044 (= res!1031017 (and (= (size!49148 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49148 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49148 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511045 () Bool)

(declare-fun res!1031025 () Bool)

(assert (=> b!1511045 (=> (not res!1031025) (not e!843704))))

(declare-fun lt!655305 () SeekEntryResult!12789)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511045 (= res!1031025 (= lt!655305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48597 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48597 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100730 (store (arr!48597 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49148 a!2804)) mask!2512)))))

(declare-fun b!1511046 () Bool)

(declare-fun res!1031018 () Bool)

(assert (=> b!1511046 (=> (not res!1031018) (not e!843702))))

(assert (=> b!1511046 (= res!1031018 (validKeyInArray!0 (select (arr!48597 a!2804) i!961)))))

(declare-fun b!1511047 () Bool)

(assert (=> b!1511047 (= e!843704 (not true))))

(assert (=> b!1511047 e!843703))

(declare-fun res!1031020 () Bool)

(assert (=> b!1511047 (=> (not res!1031020) (not e!843703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100729 (_ BitVec 32)) Bool)

(assert (=> b!1511047 (= res!1031020 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50402 0))(
  ( (Unit!50403) )
))
(declare-fun lt!655306 () Unit!50402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50402)

(assert (=> b!1511047 (= lt!655306 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1511048 () Bool)

(assert (=> b!1511048 (= e!843702 e!843704)))

(declare-fun res!1031019 () Bool)

(assert (=> b!1511048 (=> (not res!1031019) (not e!843704))))

(assert (=> b!1511048 (= res!1031019 (= lt!655305 lt!655304))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1511048 (= lt!655304 (Intermediate!12789 false resIndex!21 resX!21))))

(assert (=> b!1511048 (= lt!655305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48597 a!2804) j!70) mask!2512) (select (arr!48597 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511049 () Bool)

(declare-fun res!1031021 () Bool)

(assert (=> b!1511049 (=> (not res!1031021) (not e!843702))))

(assert (=> b!1511049 (= res!1031021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511050 () Bool)

(declare-fun res!1031022 () Bool)

(assert (=> b!1511050 (=> (not res!1031022) (not e!843702))))

(assert (=> b!1511050 (= res!1031022 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49148 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49148 a!2804))))))

(declare-fun b!1511042 () Bool)

(declare-fun res!1031024 () Bool)

(assert (=> b!1511042 (=> (not res!1031024) (not e!843702))))

(declare-datatypes ((List!35260 0))(
  ( (Nil!35257) (Cons!35256 (h!36669 (_ BitVec 64)) (t!49961 List!35260)) )
))
(declare-fun arrayNoDuplicates!0 (array!100729 (_ BitVec 32) List!35260) Bool)

(assert (=> b!1511042 (= res!1031024 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35257))))

(declare-fun res!1031016 () Bool)

(assert (=> start!128960 (=> (not res!1031016) (not e!843702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128960 (= res!1031016 (validMask!0 mask!2512))))

(assert (=> start!128960 e!843702))

(assert (=> start!128960 true))

(declare-fun array_inv!37542 (array!100729) Bool)

(assert (=> start!128960 (array_inv!37542 a!2804)))

(assert (= (and start!128960 res!1031016) b!1511044))

(assert (= (and b!1511044 res!1031017) b!1511046))

(assert (= (and b!1511046 res!1031018) b!1511041))

(assert (= (and b!1511041 res!1031023) b!1511049))

(assert (= (and b!1511049 res!1031021) b!1511042))

(assert (= (and b!1511042 res!1031024) b!1511050))

(assert (= (and b!1511050 res!1031022) b!1511048))

(assert (= (and b!1511048 res!1031019) b!1511043))

(assert (= (and b!1511043 res!1031015) b!1511045))

(assert (= (and b!1511045 res!1031025) b!1511047))

(assert (= (and b!1511047 res!1031020) b!1511040))

(declare-fun m!1393755 () Bool)

(assert (=> b!1511041 m!1393755))

(assert (=> b!1511041 m!1393755))

(declare-fun m!1393757 () Bool)

(assert (=> b!1511041 m!1393757))

(assert (=> b!1511043 m!1393755))

(assert (=> b!1511043 m!1393755))

(declare-fun m!1393759 () Bool)

(assert (=> b!1511043 m!1393759))

(assert (=> b!1511040 m!1393755))

(assert (=> b!1511040 m!1393755))

(declare-fun m!1393761 () Bool)

(assert (=> b!1511040 m!1393761))

(declare-fun m!1393763 () Bool)

(assert (=> b!1511046 m!1393763))

(assert (=> b!1511046 m!1393763))

(declare-fun m!1393765 () Bool)

(assert (=> b!1511046 m!1393765))

(declare-fun m!1393767 () Bool)

(assert (=> b!1511042 m!1393767))

(declare-fun m!1393769 () Bool)

(assert (=> b!1511047 m!1393769))

(declare-fun m!1393771 () Bool)

(assert (=> b!1511047 m!1393771))

(declare-fun m!1393773 () Bool)

(assert (=> b!1511045 m!1393773))

(declare-fun m!1393775 () Bool)

(assert (=> b!1511045 m!1393775))

(assert (=> b!1511045 m!1393775))

(declare-fun m!1393777 () Bool)

(assert (=> b!1511045 m!1393777))

(assert (=> b!1511045 m!1393777))

(assert (=> b!1511045 m!1393775))

(declare-fun m!1393779 () Bool)

(assert (=> b!1511045 m!1393779))

(declare-fun m!1393781 () Bool)

(assert (=> b!1511049 m!1393781))

(declare-fun m!1393783 () Bool)

(assert (=> start!128960 m!1393783))

(declare-fun m!1393785 () Bool)

(assert (=> start!128960 m!1393785))

(assert (=> b!1511048 m!1393755))

(assert (=> b!1511048 m!1393755))

(declare-fun m!1393787 () Bool)

(assert (=> b!1511048 m!1393787))

(assert (=> b!1511048 m!1393787))

(assert (=> b!1511048 m!1393755))

(declare-fun m!1393789 () Bool)

(assert (=> b!1511048 m!1393789))

(push 1)

(assert (not b!1511043))

