; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129242 () Bool)

(assert start!129242)

(declare-fun b!1516546 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101011 0))(
  ( (array!101012 (arr!48738 (Array (_ BitVec 32) (_ BitVec 64))) (size!49289 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101011)

(declare-fun e!846231 () Bool)

(declare-datatypes ((SeekEntryResult!12930 0))(
  ( (MissingZero!12930 (index!54114 (_ BitVec 32))) (Found!12930 (index!54115 (_ BitVec 32))) (Intermediate!12930 (undefined!13742 Bool) (index!54116 (_ BitVec 32)) (x!135813 (_ BitVec 32))) (Undefined!12930) (MissingVacant!12930 (index!54117 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101011 (_ BitVec 32)) SeekEntryResult!12930)

(assert (=> b!1516546 (= e!846231 (= (seekEntry!0 (select (arr!48738 a!2804) j!70) a!2804 mask!2512) (Found!12930 j!70)))))

(declare-fun b!1516547 () Bool)

(declare-fun res!1036529 () Bool)

(declare-fun e!846229 () Bool)

(assert (=> b!1516547 (=> (not res!1036529) (not e!846229))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516547 (= res!1036529 (validKeyInArray!0 (select (arr!48738 a!2804) i!961)))))

(declare-fun b!1516549 () Bool)

(declare-fun res!1036525 () Bool)

(assert (=> b!1516549 (=> (not res!1036525) (not e!846229))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516549 (= res!1036525 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49289 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49289 a!2804))))))

(declare-fun b!1516550 () Bool)

(declare-fun res!1036531 () Bool)

(assert (=> b!1516550 (=> (not res!1036531) (not e!846229))))

(assert (=> b!1516550 (= res!1036531 (and (= (size!49289 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49289 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49289 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516551 () Bool)

(declare-fun e!846230 () Bool)

(declare-fun e!846233 () Bool)

(assert (=> b!1516551 (= e!846230 (not e!846233))))

(declare-fun res!1036532 () Bool)

(assert (=> b!1516551 (=> res!1036532 e!846233)))

(assert (=> b!1516551 (= res!1036532 (or (not (= (select (arr!48738 a!2804) j!70) (select (store (arr!48738 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516551 e!846231))

(declare-fun res!1036521 () Bool)

(assert (=> b!1516551 (=> (not res!1036521) (not e!846231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101011 (_ BitVec 32)) Bool)

(assert (=> b!1516551 (= res!1036521 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50684 0))(
  ( (Unit!50685) )
))
(declare-fun lt!657421 () Unit!50684)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50684)

(assert (=> b!1516551 (= lt!657421 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516552 () Bool)

(declare-fun e!846232 () Bool)

(assert (=> b!1516552 (= e!846232 true)))

(declare-fun lt!657418 () SeekEntryResult!12930)

(declare-fun lt!657417 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101011 (_ BitVec 32)) SeekEntryResult!12930)

(assert (=> b!1516552 (= lt!657418 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657417 (select (arr!48738 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516553 () Bool)

(declare-fun res!1036524 () Bool)

(assert (=> b!1516553 (=> (not res!1036524) (not e!846229))))

(assert (=> b!1516553 (= res!1036524 (validKeyInArray!0 (select (arr!48738 a!2804) j!70)))))

(declare-fun b!1516554 () Bool)

(declare-fun res!1036533 () Bool)

(assert (=> b!1516554 (=> (not res!1036533) (not e!846229))))

(assert (=> b!1516554 (= res!1036533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1036522 () Bool)

(assert (=> start!129242 (=> (not res!1036522) (not e!846229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129242 (= res!1036522 (validMask!0 mask!2512))))

(assert (=> start!129242 e!846229))

(assert (=> start!129242 true))

(declare-fun array_inv!37683 (array!101011) Bool)

(assert (=> start!129242 (array_inv!37683 a!2804)))

(declare-fun b!1516548 () Bool)

(declare-fun res!1036527 () Bool)

(assert (=> b!1516548 (=> (not res!1036527) (not e!846230))))

(declare-fun lt!657419 () SeekEntryResult!12930)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516548 (= res!1036527 (= lt!657419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48738 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48738 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101012 (store (arr!48738 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49289 a!2804)) mask!2512)))))

(declare-fun b!1516555 () Bool)

(declare-fun res!1036528 () Bool)

(assert (=> b!1516555 (=> (not res!1036528) (not e!846229))))

(declare-datatypes ((List!35401 0))(
  ( (Nil!35398) (Cons!35397 (h!36810 (_ BitVec 64)) (t!50102 List!35401)) )
))
(declare-fun arrayNoDuplicates!0 (array!101011 (_ BitVec 32) List!35401) Bool)

(assert (=> b!1516555 (= res!1036528 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35398))))

(declare-fun b!1516556 () Bool)

(declare-fun res!1036530 () Bool)

(assert (=> b!1516556 (=> (not res!1036530) (not e!846230))))

(declare-fun lt!657420 () SeekEntryResult!12930)

(assert (=> b!1516556 (= res!1036530 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48738 a!2804) j!70) a!2804 mask!2512) lt!657420))))

(declare-fun b!1516557 () Bool)

(assert (=> b!1516557 (= e!846229 e!846230)))

(declare-fun res!1036523 () Bool)

(assert (=> b!1516557 (=> (not res!1036523) (not e!846230))))

(assert (=> b!1516557 (= res!1036523 (= lt!657419 lt!657420))))

(assert (=> b!1516557 (= lt!657420 (Intermediate!12930 false resIndex!21 resX!21))))

(assert (=> b!1516557 (= lt!657419 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48738 a!2804) j!70) mask!2512) (select (arr!48738 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516558 () Bool)

(assert (=> b!1516558 (= e!846233 e!846232)))

(declare-fun res!1036526 () Bool)

(assert (=> b!1516558 (=> res!1036526 e!846232)))

(assert (=> b!1516558 (= res!1036526 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657417 #b00000000000000000000000000000000) (bvsge lt!657417 (size!49289 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516558 (= lt!657417 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129242 res!1036522) b!1516550))

(assert (= (and b!1516550 res!1036531) b!1516547))

(assert (= (and b!1516547 res!1036529) b!1516553))

(assert (= (and b!1516553 res!1036524) b!1516554))

(assert (= (and b!1516554 res!1036533) b!1516555))

(assert (= (and b!1516555 res!1036528) b!1516549))

(assert (= (and b!1516549 res!1036525) b!1516557))

(assert (= (and b!1516557 res!1036523) b!1516556))

(assert (= (and b!1516556 res!1036530) b!1516548))

(assert (= (and b!1516548 res!1036527) b!1516551))

(assert (= (and b!1516551 res!1036521) b!1516546))

(assert (= (and b!1516551 (not res!1036532)) b!1516558))

(assert (= (and b!1516558 (not res!1036526)) b!1516552))

(declare-fun m!1399871 () Bool)

(assert (=> b!1516558 m!1399871))

(declare-fun m!1399873 () Bool)

(assert (=> start!129242 m!1399873))

(declare-fun m!1399875 () Bool)

(assert (=> start!129242 m!1399875))

(declare-fun m!1399877 () Bool)

(assert (=> b!1516556 m!1399877))

(assert (=> b!1516556 m!1399877))

(declare-fun m!1399879 () Bool)

(assert (=> b!1516556 m!1399879))

(assert (=> b!1516551 m!1399877))

(declare-fun m!1399881 () Bool)

(assert (=> b!1516551 m!1399881))

(declare-fun m!1399883 () Bool)

(assert (=> b!1516551 m!1399883))

(declare-fun m!1399885 () Bool)

(assert (=> b!1516551 m!1399885))

(declare-fun m!1399887 () Bool)

(assert (=> b!1516551 m!1399887))

(assert (=> b!1516557 m!1399877))

(assert (=> b!1516557 m!1399877))

(declare-fun m!1399889 () Bool)

(assert (=> b!1516557 m!1399889))

(assert (=> b!1516557 m!1399889))

(assert (=> b!1516557 m!1399877))

(declare-fun m!1399891 () Bool)

(assert (=> b!1516557 m!1399891))

(assert (=> b!1516546 m!1399877))

(assert (=> b!1516546 m!1399877))

(declare-fun m!1399893 () Bool)

(assert (=> b!1516546 m!1399893))

(declare-fun m!1399895 () Bool)

(assert (=> b!1516555 m!1399895))

(declare-fun m!1399897 () Bool)

(assert (=> b!1516554 m!1399897))

(declare-fun m!1399899 () Bool)

(assert (=> b!1516547 m!1399899))

(assert (=> b!1516547 m!1399899))

(declare-fun m!1399901 () Bool)

(assert (=> b!1516547 m!1399901))

(assert (=> b!1516553 m!1399877))

(assert (=> b!1516553 m!1399877))

(declare-fun m!1399903 () Bool)

(assert (=> b!1516553 m!1399903))

(assert (=> b!1516548 m!1399883))

(assert (=> b!1516548 m!1399885))

(assert (=> b!1516548 m!1399885))

(declare-fun m!1399905 () Bool)

(assert (=> b!1516548 m!1399905))

(assert (=> b!1516548 m!1399905))

(assert (=> b!1516548 m!1399885))

(declare-fun m!1399907 () Bool)

(assert (=> b!1516548 m!1399907))

(assert (=> b!1516552 m!1399877))

(assert (=> b!1516552 m!1399877))

(declare-fun m!1399909 () Bool)

(assert (=> b!1516552 m!1399909))

(push 1)

