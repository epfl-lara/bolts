; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119698 () Bool)

(assert start!119698)

(declare-fun b!1393749 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95298 0))(
  ( (array!95299 (arr!46003 (Array (_ BitVec 32) (_ BitVec 64))) (size!46554 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95298)

(declare-fun e!789200 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10342 0))(
  ( (MissingZero!10342 (index!43738 (_ BitVec 32))) (Found!10342 (index!43739 (_ BitVec 32))) (Intermediate!10342 (undefined!11154 Bool) (index!43740 (_ BitVec 32)) (x!125421 (_ BitVec 32))) (Undefined!10342) (MissingVacant!10342 (index!43741 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95298 (_ BitVec 32)) SeekEntryResult!10342)

(assert (=> b!1393749 (= e!789200 (= (seekEntryOrOpen!0 (select (arr!46003 a!2901) j!112) a!2901 mask!2840) (Found!10342 j!112)))))

(declare-fun b!1393750 () Bool)

(declare-fun res!933272 () Bool)

(declare-fun e!789199 () Bool)

(assert (=> b!1393750 (=> (not res!933272) (not e!789199))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393750 (= res!933272 (validKeyInArray!0 (select (arr!46003 a!2901) i!1037)))))

(declare-fun b!1393751 () Bool)

(declare-fun e!789197 () Bool)

(assert (=> b!1393751 (= e!789197 true)))

(declare-fun lt!612079 () SeekEntryResult!10342)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95298 (_ BitVec 32)) SeekEntryResult!10342)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393751 (= lt!612079 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46003 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46003 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95299 (store (arr!46003 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46554 a!2901)) mask!2840))))

(declare-fun b!1393752 () Bool)

(assert (=> b!1393752 (= e!789199 (not e!789197))))

(declare-fun res!933273 () Bool)

(assert (=> b!1393752 (=> res!933273 e!789197)))

(declare-fun lt!612077 () SeekEntryResult!10342)

(assert (=> b!1393752 (= res!933273 (or (not (is-Intermediate!10342 lt!612077)) (undefined!11154 lt!612077)))))

(assert (=> b!1393752 e!789200))

(declare-fun res!933267 () Bool)

(assert (=> b!1393752 (=> (not res!933267) (not e!789200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95298 (_ BitVec 32)) Bool)

(assert (=> b!1393752 (= res!933267 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46638 0))(
  ( (Unit!46639) )
))
(declare-fun lt!612078 () Unit!46638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46638)

(assert (=> b!1393752 (= lt!612078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393752 (= lt!612077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46003 a!2901) j!112) mask!2840) (select (arr!46003 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!933266 () Bool)

(assert (=> start!119698 (=> (not res!933266) (not e!789199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119698 (= res!933266 (validMask!0 mask!2840))))

(assert (=> start!119698 e!789199))

(assert (=> start!119698 true))

(declare-fun array_inv!34948 (array!95298) Bool)

(assert (=> start!119698 (array_inv!34948 a!2901)))

(declare-fun b!1393753 () Bool)

(declare-fun res!933269 () Bool)

(assert (=> b!1393753 (=> (not res!933269) (not e!789199))))

(assert (=> b!1393753 (= res!933269 (validKeyInArray!0 (select (arr!46003 a!2901) j!112)))))

(declare-fun b!1393754 () Bool)

(declare-fun res!933270 () Bool)

(assert (=> b!1393754 (=> (not res!933270) (not e!789199))))

(declare-datatypes ((List!32702 0))(
  ( (Nil!32699) (Cons!32698 (h!33931 (_ BitVec 64)) (t!47403 List!32702)) )
))
(declare-fun arrayNoDuplicates!0 (array!95298 (_ BitVec 32) List!32702) Bool)

(assert (=> b!1393754 (= res!933270 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32699))))

(declare-fun b!1393755 () Bool)

(declare-fun res!933268 () Bool)

(assert (=> b!1393755 (=> (not res!933268) (not e!789199))))

(assert (=> b!1393755 (= res!933268 (and (= (size!46554 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46554 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46554 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393756 () Bool)

(declare-fun res!933271 () Bool)

(assert (=> b!1393756 (=> (not res!933271) (not e!789199))))

(assert (=> b!1393756 (= res!933271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119698 res!933266) b!1393755))

(assert (= (and b!1393755 res!933268) b!1393750))

(assert (= (and b!1393750 res!933272) b!1393753))

(assert (= (and b!1393753 res!933269) b!1393756))

(assert (= (and b!1393756 res!933271) b!1393754))

(assert (= (and b!1393754 res!933270) b!1393752))

(assert (= (and b!1393752 res!933267) b!1393749))

(assert (= (and b!1393752 (not res!933273)) b!1393751))

(declare-fun m!1279883 () Bool)

(assert (=> b!1393753 m!1279883))

(assert (=> b!1393753 m!1279883))

(declare-fun m!1279885 () Bool)

(assert (=> b!1393753 m!1279885))

(declare-fun m!1279887 () Bool)

(assert (=> b!1393754 m!1279887))

(declare-fun m!1279889 () Bool)

(assert (=> start!119698 m!1279889))

(declare-fun m!1279891 () Bool)

(assert (=> start!119698 m!1279891))

(assert (=> b!1393752 m!1279883))

(declare-fun m!1279893 () Bool)

(assert (=> b!1393752 m!1279893))

(assert (=> b!1393752 m!1279883))

(declare-fun m!1279895 () Bool)

(assert (=> b!1393752 m!1279895))

(assert (=> b!1393752 m!1279893))

(assert (=> b!1393752 m!1279883))

(declare-fun m!1279897 () Bool)

(assert (=> b!1393752 m!1279897))

(declare-fun m!1279899 () Bool)

(assert (=> b!1393752 m!1279899))

(declare-fun m!1279901 () Bool)

(assert (=> b!1393751 m!1279901))

(declare-fun m!1279903 () Bool)

(assert (=> b!1393751 m!1279903))

(assert (=> b!1393751 m!1279903))

(declare-fun m!1279905 () Bool)

(assert (=> b!1393751 m!1279905))

(assert (=> b!1393751 m!1279905))

(assert (=> b!1393751 m!1279903))

(declare-fun m!1279907 () Bool)

(assert (=> b!1393751 m!1279907))

(declare-fun m!1279909 () Bool)

(assert (=> b!1393756 m!1279909))

(declare-fun m!1279911 () Bool)

(assert (=> b!1393750 m!1279911))

(assert (=> b!1393750 m!1279911))

(declare-fun m!1279913 () Bool)

(assert (=> b!1393750 m!1279913))

(assert (=> b!1393749 m!1279883))

(assert (=> b!1393749 m!1279883))

(declare-fun m!1279915 () Bool)

(assert (=> b!1393749 m!1279915))

(push 1)

(assert (not b!1393756))

(assert (not b!1393750))

(assert (not b!1393749))

(assert (not b!1393753))

(assert (not start!119698))

(assert (not b!1393752))

(assert (not b!1393751))

(assert (not b!1393754))

(check-sat)

(pop 1)

