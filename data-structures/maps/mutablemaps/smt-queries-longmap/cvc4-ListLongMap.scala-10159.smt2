; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119762 () Bool)

(assert start!119762)

(declare-fun b!1394570 () Bool)

(declare-fun res!934095 () Bool)

(declare-fun e!789581 () Bool)

(assert (=> b!1394570 (=> (not res!934095) (not e!789581))))

(declare-datatypes ((array!95362 0))(
  ( (array!95363 (arr!46035 (Array (_ BitVec 32) (_ BitVec 64))) (size!46586 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95362)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394570 (= res!934095 (validKeyInArray!0 (select (arr!46035 a!2901) i!1037)))))

(declare-fun b!1394571 () Bool)

(declare-fun e!789582 () Bool)

(declare-fun e!789584 () Bool)

(assert (=> b!1394571 (= e!789582 e!789584)))

(declare-fun res!934090 () Bool)

(assert (=> b!1394571 (=> res!934090 e!789584)))

(declare-datatypes ((SeekEntryResult!10374 0))(
  ( (MissingZero!10374 (index!43866 (_ BitVec 32))) (Found!10374 (index!43867 (_ BitVec 32))) (Intermediate!10374 (undefined!11186 Bool) (index!43868 (_ BitVec 32)) (x!125533 (_ BitVec 32))) (Undefined!10374) (MissingVacant!10374 (index!43869 (_ BitVec 32))) )
))
(declare-fun lt!612580 () SeekEntryResult!10374)

(declare-fun lt!612578 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!612577 () array!95362)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95362 (_ BitVec 32)) SeekEntryResult!10374)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394571 (= res!934090 (not (= lt!612580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612578 mask!2840) lt!612578 lt!612577 mask!2840))))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394571 (= lt!612578 (select (store (arr!46035 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394571 (= lt!612577 (array!95363 (store (arr!46035 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46586 a!2901)))))

(declare-fun b!1394572 () Bool)

(assert (=> b!1394572 (= e!789581 (not e!789582))))

(declare-fun res!934091 () Bool)

(assert (=> b!1394572 (=> res!934091 e!789582)))

(assert (=> b!1394572 (= res!934091 (or (not (is-Intermediate!10374 lt!612580)) (undefined!11186 lt!612580)))))

(declare-fun lt!612583 () SeekEntryResult!10374)

(assert (=> b!1394572 (= lt!612583 (Found!10374 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95362 (_ BitVec 32)) SeekEntryResult!10374)

(assert (=> b!1394572 (= lt!612583 (seekEntryOrOpen!0 (select (arr!46035 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95362 (_ BitVec 32)) Bool)

(assert (=> b!1394572 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46702 0))(
  ( (Unit!46703) )
))
(declare-fun lt!612579 () Unit!46702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95362 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46702)

(assert (=> b!1394572 (= lt!612579 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612582 () (_ BitVec 32))

(assert (=> b!1394572 (= lt!612580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612582 (select (arr!46035 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394572 (= lt!612582 (toIndex!0 (select (arr!46035 a!2901) j!112) mask!2840))))

(declare-fun b!1394573 () Bool)

(declare-fun res!934088 () Bool)

(assert (=> b!1394573 (=> (not res!934088) (not e!789581))))

(declare-datatypes ((List!32734 0))(
  ( (Nil!32731) (Cons!32730 (h!33963 (_ BitVec 64)) (t!47435 List!32734)) )
))
(declare-fun arrayNoDuplicates!0 (array!95362 (_ BitVec 32) List!32734) Bool)

(assert (=> b!1394573 (= res!934088 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32731))))

(declare-fun b!1394574 () Bool)

(assert (=> b!1394574 (= e!789584 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1394574 (= lt!612583 (seekEntryOrOpen!0 lt!612578 lt!612577 mask!2840))))

(declare-fun lt!612581 () Unit!46702)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95362 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46702)

(assert (=> b!1394574 (= lt!612581 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612582 (x!125533 lt!612580) (index!43868 lt!612580) mask!2840))))

(declare-fun b!1394575 () Bool)

(declare-fun res!934092 () Bool)

(assert (=> b!1394575 (=> res!934092 e!789584)))

(assert (=> b!1394575 (= res!934092 (or (bvslt (x!125533 lt!612580) #b00000000000000000000000000000000) (bvsgt (x!125533 lt!612580) #b01111111111111111111111111111110) (bvslt lt!612582 #b00000000000000000000000000000000) (bvsge lt!612582 (size!46586 a!2901)) (bvslt (index!43868 lt!612580) #b00000000000000000000000000000000) (bvsge (index!43868 lt!612580) (size!46586 a!2901)) (not (= lt!612580 (Intermediate!10374 false (index!43868 lt!612580) (x!125533 lt!612580))))))))

(declare-fun b!1394576 () Bool)

(declare-fun res!934093 () Bool)

(assert (=> b!1394576 (=> (not res!934093) (not e!789581))))

(assert (=> b!1394576 (= res!934093 (and (= (size!46586 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46586 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46586 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!934094 () Bool)

(assert (=> start!119762 (=> (not res!934094) (not e!789581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119762 (= res!934094 (validMask!0 mask!2840))))

(assert (=> start!119762 e!789581))

(assert (=> start!119762 true))

(declare-fun array_inv!34980 (array!95362) Bool)

(assert (=> start!119762 (array_inv!34980 a!2901)))

(declare-fun b!1394577 () Bool)

(declare-fun res!934089 () Bool)

(assert (=> b!1394577 (=> (not res!934089) (not e!789581))))

(assert (=> b!1394577 (= res!934089 (validKeyInArray!0 (select (arr!46035 a!2901) j!112)))))

(declare-fun b!1394578 () Bool)

(declare-fun res!934087 () Bool)

(assert (=> b!1394578 (=> (not res!934087) (not e!789581))))

(assert (=> b!1394578 (= res!934087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119762 res!934094) b!1394576))

(assert (= (and b!1394576 res!934093) b!1394570))

(assert (= (and b!1394570 res!934095) b!1394577))

(assert (= (and b!1394577 res!934089) b!1394578))

(assert (= (and b!1394578 res!934087) b!1394573))

(assert (= (and b!1394573 res!934088) b!1394572))

(assert (= (and b!1394572 (not res!934091)) b!1394571))

(assert (= (and b!1394571 (not res!934090)) b!1394575))

(assert (= (and b!1394575 (not res!934092)) b!1394574))

(declare-fun m!1281039 () Bool)

(assert (=> start!119762 m!1281039))

(declare-fun m!1281041 () Bool)

(assert (=> start!119762 m!1281041))

(declare-fun m!1281043 () Bool)

(assert (=> b!1394578 m!1281043))

(declare-fun m!1281045 () Bool)

(assert (=> b!1394572 m!1281045))

(declare-fun m!1281047 () Bool)

(assert (=> b!1394572 m!1281047))

(assert (=> b!1394572 m!1281045))

(assert (=> b!1394572 m!1281045))

(declare-fun m!1281049 () Bool)

(assert (=> b!1394572 m!1281049))

(declare-fun m!1281051 () Bool)

(assert (=> b!1394572 m!1281051))

(assert (=> b!1394572 m!1281045))

(declare-fun m!1281053 () Bool)

(assert (=> b!1394572 m!1281053))

(declare-fun m!1281055 () Bool)

(assert (=> b!1394572 m!1281055))

(declare-fun m!1281057 () Bool)

(assert (=> b!1394571 m!1281057))

(assert (=> b!1394571 m!1281057))

(declare-fun m!1281059 () Bool)

(assert (=> b!1394571 m!1281059))

(declare-fun m!1281061 () Bool)

(assert (=> b!1394571 m!1281061))

(declare-fun m!1281063 () Bool)

(assert (=> b!1394571 m!1281063))

(declare-fun m!1281065 () Bool)

(assert (=> b!1394574 m!1281065))

(declare-fun m!1281067 () Bool)

(assert (=> b!1394574 m!1281067))

(declare-fun m!1281069 () Bool)

(assert (=> b!1394570 m!1281069))

(assert (=> b!1394570 m!1281069))

(declare-fun m!1281071 () Bool)

(assert (=> b!1394570 m!1281071))

(assert (=> b!1394577 m!1281045))

(assert (=> b!1394577 m!1281045))

(declare-fun m!1281073 () Bool)

(assert (=> b!1394577 m!1281073))

(declare-fun m!1281075 () Bool)

(assert (=> b!1394573 m!1281075))

(push 1)

(assert (not b!1394571))

(assert (not b!1394572))

(assert (not b!1394578))

(assert (not start!119762))

