; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122986 () Bool)

(assert start!122986)

(declare-fun b!1426115 () Bool)

(declare-fun e!805606 () Bool)

(declare-fun e!805604 () Bool)

(assert (=> b!1426115 (= e!805606 e!805604)))

(declare-fun res!961663 () Bool)

(assert (=> b!1426115 (=> (not res!961663) (not e!805604))))

(declare-datatypes ((SeekEntryResult!11249 0))(
  ( (MissingZero!11249 (index!47387 (_ BitVec 32))) (Found!11249 (index!47388 (_ BitVec 32))) (Intermediate!11249 (undefined!12061 Bool) (index!47389 (_ BitVec 32)) (x!129022 (_ BitVec 32))) (Undefined!11249) (MissingVacant!11249 (index!47390 (_ BitVec 32))) )
))
(declare-fun lt!628000 () SeekEntryResult!11249)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97269 0))(
  ( (array!97270 (arr!46948 (Array (_ BitVec 32) (_ BitVec 64))) (size!47499 (_ BitVec 32))) )
))
(declare-fun lt!627999 () array!97269)

(declare-fun lt!628001 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97269 (_ BitVec 32)) SeekEntryResult!11249)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426115 (= res!961663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628001 mask!2608) lt!628001 lt!627999 mask!2608) lt!628000))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426115 (= lt!628000 (Intermediate!11249 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun a!2831 () array!97269)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1426115 (= lt!628001 (select (store (arr!46948 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426115 (= lt!627999 (array!97270 (store (arr!46948 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47499 a!2831)))))

(declare-fun b!1426116 () Bool)

(declare-fun res!961666 () Bool)

(assert (=> b!1426116 (=> (not res!961666) (not e!805604))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628002 () SeekEntryResult!11249)

(assert (=> b!1426116 (= res!961666 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46948 a!2831) j!81) a!2831 mask!2608) lt!628002))))

(declare-fun b!1426117 () Bool)

(declare-fun e!805605 () Bool)

(assert (=> b!1426117 (= e!805605 e!805606)))

(declare-fun res!961661 () Bool)

(assert (=> b!1426117 (=> (not res!961661) (not e!805606))))

(assert (=> b!1426117 (= res!961661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46948 a!2831) j!81) mask!2608) (select (arr!46948 a!2831) j!81) a!2831 mask!2608) lt!628002))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426117 (= lt!628002 (Intermediate!11249 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426118 () Bool)

(declare-fun res!961662 () Bool)

(assert (=> b!1426118 (=> (not res!961662) (not e!805605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426118 (= res!961662 (validKeyInArray!0 (select (arr!46948 a!2831) i!982)))))

(declare-fun b!1426119 () Bool)

(declare-fun res!961668 () Bool)

(assert (=> b!1426119 (=> (not res!961668) (not e!805604))))

(assert (=> b!1426119 (= res!961668 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628001 lt!627999 mask!2608) lt!628000))))

(declare-fun res!961665 () Bool)

(assert (=> start!122986 (=> (not res!961665) (not e!805605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122986 (= res!961665 (validMask!0 mask!2608))))

(assert (=> start!122986 e!805605))

(assert (=> start!122986 true))

(declare-fun array_inv!35893 (array!97269) Bool)

(assert (=> start!122986 (array_inv!35893 a!2831)))

(declare-fun b!1426120 () Bool)

(declare-fun res!961667 () Bool)

(assert (=> b!1426120 (=> (not res!961667) (not e!805605))))

(declare-datatypes ((List!33638 0))(
  ( (Nil!33635) (Cons!33634 (h!34936 (_ BitVec 64)) (t!48339 List!33638)) )
))
(declare-fun arrayNoDuplicates!0 (array!97269 (_ BitVec 32) List!33638) Bool)

(assert (=> b!1426120 (= res!961667 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33635))))

(declare-fun b!1426121 () Bool)

(declare-fun res!961660 () Bool)

(assert (=> b!1426121 (=> (not res!961660) (not e!805605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97269 (_ BitVec 32)) Bool)

(assert (=> b!1426121 (= res!961660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426122 () Bool)

(declare-fun res!961658 () Bool)

(assert (=> b!1426122 (=> (not res!961658) (not e!805605))))

(assert (=> b!1426122 (= res!961658 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47499 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47499 a!2831))))))

(declare-fun b!1426123 () Bool)

(declare-fun res!961657 () Bool)

(assert (=> b!1426123 (=> (not res!961657) (not e!805605))))

(assert (=> b!1426123 (= res!961657 (and (= (size!47499 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47499 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47499 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426124 () Bool)

(declare-fun res!961664 () Bool)

(assert (=> b!1426124 (=> (not res!961664) (not e!805604))))

(assert (=> b!1426124 (= res!961664 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426125 () Bool)

(declare-fun res!961659 () Bool)

(assert (=> b!1426125 (=> (not res!961659) (not e!805605))))

(assert (=> b!1426125 (= res!961659 (validKeyInArray!0 (select (arr!46948 a!2831) j!81)))))

(declare-fun b!1426126 () Bool)

(assert (=> b!1426126 (= e!805604 (not true))))

(assert (=> b!1426126 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48192 0))(
  ( (Unit!48193) )
))
(declare-fun lt!628003 () Unit!48192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48192)

(assert (=> b!1426126 (= lt!628003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!122986 res!961665) b!1426123))

(assert (= (and b!1426123 res!961657) b!1426118))

(assert (= (and b!1426118 res!961662) b!1426125))

(assert (= (and b!1426125 res!961659) b!1426121))

(assert (= (and b!1426121 res!961660) b!1426120))

(assert (= (and b!1426120 res!961667) b!1426122))

(assert (= (and b!1426122 res!961658) b!1426117))

(assert (= (and b!1426117 res!961661) b!1426115))

(assert (= (and b!1426115 res!961663) b!1426116))

(assert (= (and b!1426116 res!961666) b!1426119))

(assert (= (and b!1426119 res!961668) b!1426124))

(assert (= (and b!1426124 res!961664) b!1426126))

(declare-fun m!1316783 () Bool)

(assert (=> b!1426126 m!1316783))

(declare-fun m!1316785 () Bool)

(assert (=> b!1426126 m!1316785))

(declare-fun m!1316787 () Bool)

(assert (=> b!1426119 m!1316787))

(declare-fun m!1316789 () Bool)

(assert (=> start!122986 m!1316789))

(declare-fun m!1316791 () Bool)

(assert (=> start!122986 m!1316791))

(declare-fun m!1316793 () Bool)

(assert (=> b!1426125 m!1316793))

(assert (=> b!1426125 m!1316793))

(declare-fun m!1316795 () Bool)

(assert (=> b!1426125 m!1316795))

(declare-fun m!1316797 () Bool)

(assert (=> b!1426118 m!1316797))

(assert (=> b!1426118 m!1316797))

(declare-fun m!1316799 () Bool)

(assert (=> b!1426118 m!1316799))

(declare-fun m!1316801 () Bool)

(assert (=> b!1426120 m!1316801))

(assert (=> b!1426117 m!1316793))

(assert (=> b!1426117 m!1316793))

(declare-fun m!1316803 () Bool)

(assert (=> b!1426117 m!1316803))

(assert (=> b!1426117 m!1316803))

(assert (=> b!1426117 m!1316793))

(declare-fun m!1316805 () Bool)

(assert (=> b!1426117 m!1316805))

(declare-fun m!1316807 () Bool)

(assert (=> b!1426115 m!1316807))

(assert (=> b!1426115 m!1316807))

(declare-fun m!1316809 () Bool)

(assert (=> b!1426115 m!1316809))

(declare-fun m!1316811 () Bool)

(assert (=> b!1426115 m!1316811))

(declare-fun m!1316813 () Bool)

(assert (=> b!1426115 m!1316813))

(declare-fun m!1316815 () Bool)

(assert (=> b!1426121 m!1316815))

(assert (=> b!1426116 m!1316793))

(assert (=> b!1426116 m!1316793))

(declare-fun m!1316817 () Bool)

(assert (=> b!1426116 m!1316817))

(push 1)

