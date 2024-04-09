; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128870 () Bool)

(assert start!128870)

(declare-fun b!1509547 () Bool)

(declare-fun e!843153 () Bool)

(declare-fun e!843154 () Bool)

(assert (=> b!1509547 (= e!843153 e!843154)))

(declare-fun res!1029530 () Bool)

(assert (=> b!1509547 (=> (not res!1029530) (not e!843154))))

(declare-datatypes ((SeekEntryResult!12744 0))(
  ( (MissingZero!12744 (index!53370 (_ BitVec 32))) (Found!12744 (index!53371 (_ BitVec 32))) (Intermediate!12744 (undefined!13556 Bool) (index!53372 (_ BitVec 32)) (x!135131 (_ BitVec 32))) (Undefined!12744) (MissingVacant!12744 (index!53373 (_ BitVec 32))) )
))
(declare-fun lt!654899 () SeekEntryResult!12744)

(declare-fun lt!654901 () SeekEntryResult!12744)

(assert (=> b!1509547 (= res!1029530 (= lt!654899 lt!654901))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509547 (= lt!654901 (Intermediate!12744 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100639 0))(
  ( (array!100640 (arr!48552 (Array (_ BitVec 32) (_ BitVec 64))) (size!49103 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100639)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100639 (_ BitVec 32)) SeekEntryResult!12744)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509547 (= lt!654899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48552 a!2804) j!70) mask!2512) (select (arr!48552 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509548 () Bool)

(declare-fun res!1029527 () Bool)

(assert (=> b!1509548 (=> (not res!1029527) (not e!843153))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509548 (= res!1029527 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49103 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49103 a!2804))))))

(declare-fun b!1509549 () Bool)

(declare-fun res!1029526 () Bool)

(assert (=> b!1509549 (=> (not res!1029526) (not e!843153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100639 (_ BitVec 32)) Bool)

(assert (=> b!1509549 (= res!1029526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509550 () Bool)

(declare-fun res!1029531 () Bool)

(assert (=> b!1509550 (=> (not res!1029531) (not e!843153))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509550 (= res!1029531 (validKeyInArray!0 (select (arr!48552 a!2804) i!961)))))

(declare-fun b!1509551 () Bool)

(declare-fun res!1029524 () Bool)

(assert (=> b!1509551 (=> (not res!1029524) (not e!843154))))

(assert (=> b!1509551 (= res!1029524 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48552 a!2804) j!70) a!2804 mask!2512) lt!654901))))

(declare-fun b!1509552 () Bool)

(declare-fun res!1029529 () Bool)

(assert (=> b!1509552 (=> (not res!1029529) (not e!843153))))

(assert (=> b!1509552 (= res!1029529 (and (= (size!49103 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49103 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49103 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1029528 () Bool)

(assert (=> start!128870 (=> (not res!1029528) (not e!843153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128870 (= res!1029528 (validMask!0 mask!2512))))

(assert (=> start!128870 e!843153))

(assert (=> start!128870 true))

(declare-fun array_inv!37497 (array!100639) Bool)

(assert (=> start!128870 (array_inv!37497 a!2804)))

(declare-fun b!1509553 () Bool)

(declare-fun res!1029525 () Bool)

(assert (=> b!1509553 (=> (not res!1029525) (not e!843153))))

(assert (=> b!1509553 (= res!1029525 (validKeyInArray!0 (select (arr!48552 a!2804) j!70)))))

(declare-fun b!1509554 () Bool)

(declare-fun res!1029523 () Bool)

(assert (=> b!1509554 (=> (not res!1029523) (not e!843154))))

(assert (=> b!1509554 (= res!1029523 (= lt!654899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48552 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48552 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100640 (store (arr!48552 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49103 a!2804)) mask!2512)))))

(declare-fun b!1509555 () Bool)

(assert (=> b!1509555 (= e!843154 (not true))))

(assert (=> b!1509555 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50312 0))(
  ( (Unit!50313) )
))
(declare-fun lt!654900 () Unit!50312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50312)

(assert (=> b!1509555 (= lt!654900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509556 () Bool)

(declare-fun res!1029522 () Bool)

(assert (=> b!1509556 (=> (not res!1029522) (not e!843153))))

(declare-datatypes ((List!35215 0))(
  ( (Nil!35212) (Cons!35211 (h!36624 (_ BitVec 64)) (t!49916 List!35215)) )
))
(declare-fun arrayNoDuplicates!0 (array!100639 (_ BitVec 32) List!35215) Bool)

(assert (=> b!1509556 (= res!1029522 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35212))))

(assert (= (and start!128870 res!1029528) b!1509552))

(assert (= (and b!1509552 res!1029529) b!1509550))

(assert (= (and b!1509550 res!1029531) b!1509553))

(assert (= (and b!1509553 res!1029525) b!1509549))

(assert (= (and b!1509549 res!1029526) b!1509556))

(assert (= (and b!1509556 res!1029522) b!1509548))

(assert (= (and b!1509548 res!1029527) b!1509547))

(assert (= (and b!1509547 res!1029530) b!1509551))

(assert (= (and b!1509551 res!1029524) b!1509554))

(assert (= (and b!1509554 res!1029523) b!1509555))

(declare-fun m!1392101 () Bool)

(assert (=> b!1509556 m!1392101))

(declare-fun m!1392103 () Bool)

(assert (=> b!1509549 m!1392103))

(declare-fun m!1392105 () Bool)

(assert (=> start!128870 m!1392105))

(declare-fun m!1392107 () Bool)

(assert (=> start!128870 m!1392107))

(declare-fun m!1392109 () Bool)

(assert (=> b!1509555 m!1392109))

(declare-fun m!1392111 () Bool)

(assert (=> b!1509555 m!1392111))

(declare-fun m!1392113 () Bool)

(assert (=> b!1509554 m!1392113))

(declare-fun m!1392115 () Bool)

(assert (=> b!1509554 m!1392115))

(assert (=> b!1509554 m!1392115))

(declare-fun m!1392117 () Bool)

(assert (=> b!1509554 m!1392117))

(assert (=> b!1509554 m!1392117))

(assert (=> b!1509554 m!1392115))

(declare-fun m!1392119 () Bool)

(assert (=> b!1509554 m!1392119))

(declare-fun m!1392121 () Bool)

(assert (=> b!1509553 m!1392121))

(assert (=> b!1509553 m!1392121))

(declare-fun m!1392123 () Bool)

(assert (=> b!1509553 m!1392123))

(assert (=> b!1509551 m!1392121))

(assert (=> b!1509551 m!1392121))

(declare-fun m!1392125 () Bool)

(assert (=> b!1509551 m!1392125))

(assert (=> b!1509547 m!1392121))

(assert (=> b!1509547 m!1392121))

(declare-fun m!1392127 () Bool)

(assert (=> b!1509547 m!1392127))

(assert (=> b!1509547 m!1392127))

(assert (=> b!1509547 m!1392121))

(declare-fun m!1392129 () Bool)

(assert (=> b!1509547 m!1392129))

(declare-fun m!1392131 () Bool)

(assert (=> b!1509550 m!1392131))

(assert (=> b!1509550 m!1392131))

(declare-fun m!1392133 () Bool)

(assert (=> b!1509550 m!1392133))

(push 1)

(assert (not b!1509547))

(assert (not b!1509555))

(assert (not b!1509554))

