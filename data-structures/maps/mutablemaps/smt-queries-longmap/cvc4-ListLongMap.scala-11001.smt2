; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128888 () Bool)

(assert start!128888)

(declare-fun b!1509843 () Bool)

(declare-fun res!1029827 () Bool)

(declare-fun e!843260 () Bool)

(assert (=> b!1509843 (=> (not res!1029827) (not e!843260))))

(declare-datatypes ((array!100657 0))(
  ( (array!100658 (arr!48561 (Array (_ BitVec 32) (_ BitVec 64))) (size!49112 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100657)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100657 (_ BitVec 32)) Bool)

(assert (=> b!1509843 (= res!1029827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509844 () Bool)

(declare-fun res!1029819 () Bool)

(assert (=> b!1509844 (=> (not res!1029819) (not e!843260))))

(declare-datatypes ((List!35224 0))(
  ( (Nil!35221) (Cons!35220 (h!36633 (_ BitVec 64)) (t!49925 List!35224)) )
))
(declare-fun arrayNoDuplicates!0 (array!100657 (_ BitVec 32) List!35224) Bool)

(assert (=> b!1509844 (= res!1029819 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35221))))

(declare-fun b!1509845 () Bool)

(declare-fun e!843262 () Bool)

(assert (=> b!1509845 (= e!843262 (not true))))

(declare-fun e!843261 () Bool)

(assert (=> b!1509845 e!843261))

(declare-fun res!1029825 () Bool)

(assert (=> b!1509845 (=> (not res!1029825) (not e!843261))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1509845 (= res!1029825 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50330 0))(
  ( (Unit!50331) )
))
(declare-fun lt!654982 () Unit!50330)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50330)

(assert (=> b!1509845 (= lt!654982 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509846 () Bool)

(declare-datatypes ((SeekEntryResult!12753 0))(
  ( (MissingZero!12753 (index!53406 (_ BitVec 32))) (Found!12753 (index!53407 (_ BitVec 32))) (Intermediate!12753 (undefined!13565 Bool) (index!53408 (_ BitVec 32)) (x!135164 (_ BitVec 32))) (Undefined!12753) (MissingVacant!12753 (index!53409 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100657 (_ BitVec 32)) SeekEntryResult!12753)

(assert (=> b!1509846 (= e!843261 (= (seekEntry!0 (select (arr!48561 a!2804) j!70) a!2804 mask!2512) (Found!12753 j!70)))))

(declare-fun b!1509847 () Bool)

(declare-fun res!1029828 () Bool)

(assert (=> b!1509847 (=> (not res!1029828) (not e!843262))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!654981 () SeekEntryResult!12753)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100657 (_ BitVec 32)) SeekEntryResult!12753)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509847 (= res!1029828 (= lt!654981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48561 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48561 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100658 (store (arr!48561 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49112 a!2804)) mask!2512)))))

(declare-fun b!1509848 () Bool)

(declare-fun res!1029822 () Bool)

(assert (=> b!1509848 (=> (not res!1029822) (not e!843260))))

(assert (=> b!1509848 (= res!1029822 (and (= (size!49112 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49112 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49112 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509849 () Bool)

(declare-fun res!1029826 () Bool)

(assert (=> b!1509849 (=> (not res!1029826) (not e!843262))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!654980 () SeekEntryResult!12753)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509849 (= res!1029826 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48561 a!2804) j!70) a!2804 mask!2512) lt!654980))))

(declare-fun res!1029821 () Bool)

(assert (=> start!128888 (=> (not res!1029821) (not e!843260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128888 (= res!1029821 (validMask!0 mask!2512))))

(assert (=> start!128888 e!843260))

(assert (=> start!128888 true))

(declare-fun array_inv!37506 (array!100657) Bool)

(assert (=> start!128888 (array_inv!37506 a!2804)))

(declare-fun b!1509850 () Bool)

(declare-fun res!1029820 () Bool)

(assert (=> b!1509850 (=> (not res!1029820) (not e!843260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509850 (= res!1029820 (validKeyInArray!0 (select (arr!48561 a!2804) j!70)))))

(declare-fun b!1509851 () Bool)

(declare-fun res!1029818 () Bool)

(assert (=> b!1509851 (=> (not res!1029818) (not e!843260))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509851 (= res!1029818 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49112 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49112 a!2804))))))

(declare-fun b!1509852 () Bool)

(assert (=> b!1509852 (= e!843260 e!843262)))

(declare-fun res!1029824 () Bool)

(assert (=> b!1509852 (=> (not res!1029824) (not e!843262))))

(assert (=> b!1509852 (= res!1029824 (= lt!654981 lt!654980))))

(assert (=> b!1509852 (= lt!654980 (Intermediate!12753 false resIndex!21 resX!21))))

(assert (=> b!1509852 (= lt!654981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48561 a!2804) j!70) mask!2512) (select (arr!48561 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509853 () Bool)

(declare-fun res!1029823 () Bool)

(assert (=> b!1509853 (=> (not res!1029823) (not e!843260))))

(assert (=> b!1509853 (= res!1029823 (validKeyInArray!0 (select (arr!48561 a!2804) i!961)))))

(assert (= (and start!128888 res!1029821) b!1509848))

(assert (= (and b!1509848 res!1029822) b!1509853))

(assert (= (and b!1509853 res!1029823) b!1509850))

(assert (= (and b!1509850 res!1029820) b!1509843))

(assert (= (and b!1509843 res!1029827) b!1509844))

(assert (= (and b!1509844 res!1029819) b!1509851))

(assert (= (and b!1509851 res!1029818) b!1509852))

(assert (= (and b!1509852 res!1029824) b!1509849))

(assert (= (and b!1509849 res!1029826) b!1509847))

(assert (= (and b!1509847 res!1029828) b!1509845))

(assert (= (and b!1509845 res!1029825) b!1509846))

(declare-fun m!1392429 () Bool)

(assert (=> b!1509843 m!1392429))

(declare-fun m!1392431 () Bool)

(assert (=> b!1509852 m!1392431))

(assert (=> b!1509852 m!1392431))

(declare-fun m!1392433 () Bool)

(assert (=> b!1509852 m!1392433))

(assert (=> b!1509852 m!1392433))

(assert (=> b!1509852 m!1392431))

(declare-fun m!1392435 () Bool)

(assert (=> b!1509852 m!1392435))

(assert (=> b!1509846 m!1392431))

(assert (=> b!1509846 m!1392431))

(declare-fun m!1392437 () Bool)

(assert (=> b!1509846 m!1392437))

(assert (=> b!1509850 m!1392431))

(assert (=> b!1509850 m!1392431))

(declare-fun m!1392439 () Bool)

(assert (=> b!1509850 m!1392439))

(assert (=> b!1509849 m!1392431))

(assert (=> b!1509849 m!1392431))

(declare-fun m!1392441 () Bool)

(assert (=> b!1509849 m!1392441))

(declare-fun m!1392443 () Bool)

(assert (=> b!1509853 m!1392443))

(assert (=> b!1509853 m!1392443))

(declare-fun m!1392445 () Bool)

(assert (=> b!1509853 m!1392445))

(declare-fun m!1392447 () Bool)

(assert (=> b!1509847 m!1392447))

(declare-fun m!1392449 () Bool)

(assert (=> b!1509847 m!1392449))

(assert (=> b!1509847 m!1392449))

(declare-fun m!1392451 () Bool)

(assert (=> b!1509847 m!1392451))

(assert (=> b!1509847 m!1392451))

(assert (=> b!1509847 m!1392449))

(declare-fun m!1392453 () Bool)

(assert (=> b!1509847 m!1392453))

(declare-fun m!1392455 () Bool)

(assert (=> start!128888 m!1392455))

(declare-fun m!1392457 () Bool)

(assert (=> start!128888 m!1392457))

(declare-fun m!1392459 () Bool)

(assert (=> b!1509845 m!1392459))

(declare-fun m!1392461 () Bool)

(assert (=> b!1509845 m!1392461))

(declare-fun m!1392463 () Bool)

(assert (=> b!1509844 m!1392463))

(push 1)

(assert (not start!128888))

(assert (not b!1509849))

(assert (not b!1509844))

(assert (not b!1509846))

(assert (not b!1509843))

