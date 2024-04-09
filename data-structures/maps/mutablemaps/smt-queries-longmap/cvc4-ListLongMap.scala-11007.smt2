; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128924 () Bool)

(assert start!128924)

(declare-fun res!1030428 () Bool)

(declare-fun e!843486 () Bool)

(assert (=> start!128924 (=> (not res!1030428) (not e!843486))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128924 (= res!1030428 (validMask!0 mask!2512))))

(assert (=> start!128924 e!843486))

(assert (=> start!128924 true))

(declare-datatypes ((array!100693 0))(
  ( (array!100694 (arr!48579 (Array (_ BitVec 32) (_ BitVec 64))) (size!49130 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100693)

(declare-fun array_inv!37524 (array!100693) Bool)

(assert (=> start!128924 (array_inv!37524 a!2804)))

(declare-fun b!1510446 () Bool)

(declare-fun e!843485 () Bool)

(assert (=> b!1510446 (= e!843485 (not true))))

(declare-fun e!843488 () Bool)

(assert (=> b!1510446 e!843488))

(declare-fun res!1030422 () Bool)

(assert (=> b!1510446 (=> (not res!1030422) (not e!843488))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100693 (_ BitVec 32)) Bool)

(assert (=> b!1510446 (= res!1030422 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50366 0))(
  ( (Unit!50367) )
))
(declare-fun lt!655144 () Unit!50366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50366)

(assert (=> b!1510446 (= lt!655144 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510447 () Bool)

(declare-fun res!1030424 () Bool)

(assert (=> b!1510447 (=> (not res!1030424) (not e!843485))))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12771 0))(
  ( (MissingZero!12771 (index!53478 (_ BitVec 32))) (Found!12771 (index!53479 (_ BitVec 32))) (Intermediate!12771 (undefined!13583 Bool) (index!53480 (_ BitVec 32)) (x!135230 (_ BitVec 32))) (Undefined!12771) (MissingVacant!12771 (index!53481 (_ BitVec 32))) )
))
(declare-fun lt!655142 () SeekEntryResult!12771)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100693 (_ BitVec 32)) SeekEntryResult!12771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510447 (= res!1030424 (= lt!655142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48579 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48579 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100694 (store (arr!48579 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49130 a!2804)) mask!2512)))))

(declare-fun b!1510448 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100693 (_ BitVec 32)) SeekEntryResult!12771)

(assert (=> b!1510448 (= e!843488 (= (seekEntry!0 (select (arr!48579 a!2804) j!70) a!2804 mask!2512) (Found!12771 j!70)))))

(declare-fun b!1510449 () Bool)

(declare-fun res!1030426 () Bool)

(assert (=> b!1510449 (=> (not res!1030426) (not e!843486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510449 (= res!1030426 (validKeyInArray!0 (select (arr!48579 a!2804) i!961)))))

(declare-fun b!1510450 () Bool)

(declare-fun res!1030431 () Bool)

(assert (=> b!1510450 (=> (not res!1030431) (not e!843486))))

(assert (=> b!1510450 (= res!1030431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510451 () Bool)

(declare-fun res!1030430 () Bool)

(assert (=> b!1510451 (=> (not res!1030430) (not e!843485))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655143 () SeekEntryResult!12771)

(assert (=> b!1510451 (= res!1030430 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48579 a!2804) j!70) a!2804 mask!2512) lt!655143))))

(declare-fun b!1510452 () Bool)

(declare-fun res!1030421 () Bool)

(assert (=> b!1510452 (=> (not res!1030421) (not e!843486))))

(declare-datatypes ((List!35242 0))(
  ( (Nil!35239) (Cons!35238 (h!36651 (_ BitVec 64)) (t!49943 List!35242)) )
))
(declare-fun arrayNoDuplicates!0 (array!100693 (_ BitVec 32) List!35242) Bool)

(assert (=> b!1510452 (= res!1030421 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35239))))

(declare-fun b!1510453 () Bool)

(declare-fun res!1030423 () Bool)

(assert (=> b!1510453 (=> (not res!1030423) (not e!843486))))

(assert (=> b!1510453 (= res!1030423 (validKeyInArray!0 (select (arr!48579 a!2804) j!70)))))

(declare-fun b!1510454 () Bool)

(declare-fun res!1030427 () Bool)

(assert (=> b!1510454 (=> (not res!1030427) (not e!843486))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510454 (= res!1030427 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49130 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49130 a!2804))))))

(declare-fun b!1510455 () Bool)

(assert (=> b!1510455 (= e!843486 e!843485)))

(declare-fun res!1030429 () Bool)

(assert (=> b!1510455 (=> (not res!1030429) (not e!843485))))

(assert (=> b!1510455 (= res!1030429 (= lt!655142 lt!655143))))

(assert (=> b!1510455 (= lt!655143 (Intermediate!12771 false resIndex!21 resX!21))))

(assert (=> b!1510455 (= lt!655142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48579 a!2804) j!70) mask!2512) (select (arr!48579 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510456 () Bool)

(declare-fun res!1030425 () Bool)

(assert (=> b!1510456 (=> (not res!1030425) (not e!843486))))

(assert (=> b!1510456 (= res!1030425 (and (= (size!49130 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49130 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49130 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128924 res!1030428) b!1510456))

(assert (= (and b!1510456 res!1030425) b!1510449))

(assert (= (and b!1510449 res!1030426) b!1510453))

(assert (= (and b!1510453 res!1030423) b!1510450))

(assert (= (and b!1510450 res!1030431) b!1510452))

(assert (= (and b!1510452 res!1030421) b!1510454))

(assert (= (and b!1510454 res!1030427) b!1510455))

(assert (= (and b!1510455 res!1030429) b!1510451))

(assert (= (and b!1510451 res!1030430) b!1510447))

(assert (= (and b!1510447 res!1030424) b!1510446))

(assert (= (and b!1510446 res!1030422) b!1510448))

(declare-fun m!1393095 () Bool)

(assert (=> b!1510447 m!1393095))

(declare-fun m!1393097 () Bool)

(assert (=> b!1510447 m!1393097))

(assert (=> b!1510447 m!1393097))

(declare-fun m!1393099 () Bool)

(assert (=> b!1510447 m!1393099))

(assert (=> b!1510447 m!1393099))

(assert (=> b!1510447 m!1393097))

(declare-fun m!1393101 () Bool)

(assert (=> b!1510447 m!1393101))

(declare-fun m!1393103 () Bool)

(assert (=> start!128924 m!1393103))

(declare-fun m!1393105 () Bool)

(assert (=> start!128924 m!1393105))

(declare-fun m!1393107 () Bool)

(assert (=> b!1510452 m!1393107))

(declare-fun m!1393109 () Bool)

(assert (=> b!1510451 m!1393109))

(assert (=> b!1510451 m!1393109))

(declare-fun m!1393111 () Bool)

(assert (=> b!1510451 m!1393111))

(declare-fun m!1393113 () Bool)

(assert (=> b!1510450 m!1393113))

(assert (=> b!1510448 m!1393109))

(assert (=> b!1510448 m!1393109))

(declare-fun m!1393115 () Bool)

(assert (=> b!1510448 m!1393115))

(assert (=> b!1510455 m!1393109))

(assert (=> b!1510455 m!1393109))

(declare-fun m!1393117 () Bool)

(assert (=> b!1510455 m!1393117))

(assert (=> b!1510455 m!1393117))

(assert (=> b!1510455 m!1393109))

(declare-fun m!1393119 () Bool)

(assert (=> b!1510455 m!1393119))

(declare-fun m!1393121 () Bool)

(assert (=> b!1510449 m!1393121))

(assert (=> b!1510449 m!1393121))

(declare-fun m!1393123 () Bool)

(assert (=> b!1510449 m!1393123))

(declare-fun m!1393125 () Bool)

(assert (=> b!1510446 m!1393125))

(declare-fun m!1393127 () Bool)

(assert (=> b!1510446 m!1393127))

(assert (=> b!1510453 m!1393109))

(assert (=> b!1510453 m!1393109))

(declare-fun m!1393129 () Bool)

(assert (=> b!1510453 m!1393129))

(push 1)

(assert (not b!1510451))

