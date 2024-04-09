; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122540 () Bool)

(assert start!122540)

(declare-fun b!1419036 () Bool)

(declare-fun res!954665 () Bool)

(declare-fun e!802967 () Bool)

(assert (=> b!1419036 (=> (not res!954665) (not e!802967))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96862 0))(
  ( (array!96863 (arr!46746 (Array (_ BitVec 32) (_ BitVec 64))) (size!47297 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96862)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11053 0))(
  ( (MissingZero!11053 (index!46603 (_ BitVec 32))) (Found!11053 (index!46604 (_ BitVec 32))) (Intermediate!11053 (undefined!11865 Bool) (index!46605 (_ BitVec 32)) (x!128276 (_ BitVec 32))) (Undefined!11053) (MissingVacant!11053 (index!46606 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96862 (_ BitVec 32)) SeekEntryResult!11053)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419036 (= res!954665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46746 a!2831) j!81) mask!2608) (select (arr!46746 a!2831) j!81) a!2831 mask!2608) (Intermediate!11053 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun res!954667 () Bool)

(assert (=> start!122540 (=> (not res!954667) (not e!802967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122540 (= res!954667 (validMask!0 mask!2608))))

(assert (=> start!122540 e!802967))

(assert (=> start!122540 true))

(declare-fun array_inv!35691 (array!96862) Bool)

(assert (=> start!122540 (array_inv!35691 a!2831)))

(declare-fun b!1419037 () Bool)

(declare-fun res!954672 () Bool)

(assert (=> b!1419037 (=> (not res!954672) (not e!802967))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419037 (= res!954672 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47297 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47297 a!2831))))))

(declare-fun b!1419038 () Bool)

(declare-fun res!954666 () Bool)

(assert (=> b!1419038 (=> (not res!954666) (not e!802967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96862 (_ BitVec 32)) Bool)

(assert (=> b!1419038 (= res!954666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419039 () Bool)

(declare-fun res!954671 () Bool)

(assert (=> b!1419039 (=> (not res!954671) (not e!802967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419039 (= res!954671 (validKeyInArray!0 (select (arr!46746 a!2831) j!81)))))

(declare-fun b!1419040 () Bool)

(declare-fun res!954670 () Bool)

(assert (=> b!1419040 (=> (not res!954670) (not e!802967))))

(declare-datatypes ((List!33436 0))(
  ( (Nil!33433) (Cons!33432 (h!34731 (_ BitVec 64)) (t!48137 List!33436)) )
))
(declare-fun arrayNoDuplicates!0 (array!96862 (_ BitVec 32) List!33436) Bool)

(assert (=> b!1419040 (= res!954670 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33433))))

(declare-fun b!1419041 () Bool)

(declare-fun res!954668 () Bool)

(assert (=> b!1419041 (=> (not res!954668) (not e!802967))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419041 (= res!954668 (and (= (size!47297 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47297 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47297 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419042 () Bool)

(assert (=> b!1419042 (= e!802967 false)))

(declare-fun lt!625669 () (_ BitVec 32))

(assert (=> b!1419042 (= lt!625669 (toIndex!0 (select (store (arr!46746 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419043 () Bool)

(declare-fun res!954669 () Bool)

(assert (=> b!1419043 (=> (not res!954669) (not e!802967))))

(assert (=> b!1419043 (= res!954669 (validKeyInArray!0 (select (arr!46746 a!2831) i!982)))))

(assert (= (and start!122540 res!954667) b!1419041))

(assert (= (and b!1419041 res!954668) b!1419043))

(assert (= (and b!1419043 res!954669) b!1419039))

(assert (= (and b!1419039 res!954671) b!1419038))

(assert (= (and b!1419038 res!954666) b!1419040))

(assert (= (and b!1419040 res!954670) b!1419037))

(assert (= (and b!1419037 res!954672) b!1419036))

(assert (= (and b!1419036 res!954665) b!1419042))

(declare-fun m!1309599 () Bool)

(assert (=> b!1419043 m!1309599))

(assert (=> b!1419043 m!1309599))

(declare-fun m!1309601 () Bool)

(assert (=> b!1419043 m!1309601))

(declare-fun m!1309603 () Bool)

(assert (=> b!1419039 m!1309603))

(assert (=> b!1419039 m!1309603))

(declare-fun m!1309605 () Bool)

(assert (=> b!1419039 m!1309605))

(declare-fun m!1309607 () Bool)

(assert (=> b!1419040 m!1309607))

(declare-fun m!1309609 () Bool)

(assert (=> start!122540 m!1309609))

(declare-fun m!1309611 () Bool)

(assert (=> start!122540 m!1309611))

(declare-fun m!1309613 () Bool)

(assert (=> b!1419042 m!1309613))

(declare-fun m!1309615 () Bool)

(assert (=> b!1419042 m!1309615))

(assert (=> b!1419042 m!1309615))

(declare-fun m!1309617 () Bool)

(assert (=> b!1419042 m!1309617))

(assert (=> b!1419036 m!1309603))

(assert (=> b!1419036 m!1309603))

(declare-fun m!1309619 () Bool)

(assert (=> b!1419036 m!1309619))

(assert (=> b!1419036 m!1309619))

(assert (=> b!1419036 m!1309603))

(declare-fun m!1309621 () Bool)

(assert (=> b!1419036 m!1309621))

(declare-fun m!1309623 () Bool)

(assert (=> b!1419038 m!1309623))

(push 1)

(assert (not b!1419036))

(assert (not b!1419042))

(assert (not start!122540))

(assert (not b!1419043))

(assert (not b!1419040))

(assert (not b!1419038))

(assert (not b!1419039))

(check-sat)

(pop 1)

