; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120930 () Bool)

(assert start!120930)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96155 0))(
  ( (array!96156 (arr!46421 (Array (_ BitVec 32) (_ BitVec 64))) (size!46972 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96155)

(declare-fun b!1406538 () Bool)

(declare-fun e!796118 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10754 0))(
  ( (MissingZero!10754 (index!45392 (_ BitVec 32))) (Found!10754 (index!45393 (_ BitVec 32))) (Intermediate!10754 (undefined!11566 Bool) (index!45394 (_ BitVec 32)) (x!126996 (_ BitVec 32))) (Undefined!10754) (MissingVacant!10754 (index!45395 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96155 (_ BitVec 32)) SeekEntryResult!10754)

(assert (=> b!1406538 (= e!796118 (= (seekEntryOrOpen!0 (select (arr!46421 a!2901) j!112) a!2901 mask!2840) (Found!10754 j!112)))))

(declare-fun b!1406539 () Bool)

(declare-fun res!944871 () Bool)

(declare-fun e!796117 () Bool)

(assert (=> b!1406539 (=> (not res!944871) (not e!796117))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406539 (= res!944871 (validKeyInArray!0 (select (arr!46421 a!2901) i!1037)))))

(declare-fun b!1406540 () Bool)

(declare-fun e!796115 () Bool)

(assert (=> b!1406540 (= e!796117 (not e!796115))))

(declare-fun res!944866 () Bool)

(assert (=> b!1406540 (=> res!944866 e!796115)))

(declare-fun lt!619391 () SeekEntryResult!10754)

(get-info :version)

(assert (=> b!1406540 (= res!944866 (or (not ((_ is Intermediate!10754) lt!619391)) (undefined!11566 lt!619391)))))

(assert (=> b!1406540 e!796118))

(declare-fun res!944865 () Bool)

(assert (=> b!1406540 (=> (not res!944865) (not e!796118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96155 (_ BitVec 32)) Bool)

(assert (=> b!1406540 (= res!944865 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47432 0))(
  ( (Unit!47433) )
))
(declare-fun lt!619392 () Unit!47432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96155 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47432)

(assert (=> b!1406540 (= lt!619392 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96155 (_ BitVec 32)) SeekEntryResult!10754)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406540 (= lt!619391 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46421 a!2901) j!112) mask!2840) (select (arr!46421 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406541 () Bool)

(assert (=> b!1406541 (= e!796115 true)))

(declare-fun lt!619393 () SeekEntryResult!10754)

(assert (=> b!1406541 (= lt!619393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46421 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46421 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96156 (store (arr!46421 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46972 a!2901)) mask!2840))))

(declare-fun b!1406542 () Bool)

(declare-fun res!944868 () Bool)

(assert (=> b!1406542 (=> (not res!944868) (not e!796117))))

(declare-datatypes ((List!33120 0))(
  ( (Nil!33117) (Cons!33116 (h!34370 (_ BitVec 64)) (t!47821 List!33120)) )
))
(declare-fun arrayNoDuplicates!0 (array!96155 (_ BitVec 32) List!33120) Bool)

(assert (=> b!1406542 (= res!944868 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33117))))

(declare-fun res!944869 () Bool)

(assert (=> start!120930 (=> (not res!944869) (not e!796117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120930 (= res!944869 (validMask!0 mask!2840))))

(assert (=> start!120930 e!796117))

(assert (=> start!120930 true))

(declare-fun array_inv!35366 (array!96155) Bool)

(assert (=> start!120930 (array_inv!35366 a!2901)))

(declare-fun b!1406543 () Bool)

(declare-fun res!944864 () Bool)

(assert (=> b!1406543 (=> (not res!944864) (not e!796117))))

(assert (=> b!1406543 (= res!944864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406544 () Bool)

(declare-fun res!944867 () Bool)

(assert (=> b!1406544 (=> (not res!944867) (not e!796117))))

(assert (=> b!1406544 (= res!944867 (validKeyInArray!0 (select (arr!46421 a!2901) j!112)))))

(declare-fun b!1406545 () Bool)

(declare-fun res!944870 () Bool)

(assert (=> b!1406545 (=> (not res!944870) (not e!796117))))

(assert (=> b!1406545 (= res!944870 (and (= (size!46972 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46972 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46972 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120930 res!944869) b!1406545))

(assert (= (and b!1406545 res!944870) b!1406539))

(assert (= (and b!1406539 res!944871) b!1406544))

(assert (= (and b!1406544 res!944867) b!1406543))

(assert (= (and b!1406543 res!944864) b!1406542))

(assert (= (and b!1406542 res!944868) b!1406540))

(assert (= (and b!1406540 res!944865) b!1406538))

(assert (= (and b!1406540 (not res!944866)) b!1406541))

(declare-fun m!1295817 () Bool)

(assert (=> b!1406539 m!1295817))

(assert (=> b!1406539 m!1295817))

(declare-fun m!1295819 () Bool)

(assert (=> b!1406539 m!1295819))

(declare-fun m!1295821 () Bool)

(assert (=> b!1406538 m!1295821))

(assert (=> b!1406538 m!1295821))

(declare-fun m!1295823 () Bool)

(assert (=> b!1406538 m!1295823))

(declare-fun m!1295825 () Bool)

(assert (=> start!120930 m!1295825))

(declare-fun m!1295827 () Bool)

(assert (=> start!120930 m!1295827))

(assert (=> b!1406544 m!1295821))

(assert (=> b!1406544 m!1295821))

(declare-fun m!1295829 () Bool)

(assert (=> b!1406544 m!1295829))

(assert (=> b!1406540 m!1295821))

(declare-fun m!1295831 () Bool)

(assert (=> b!1406540 m!1295831))

(assert (=> b!1406540 m!1295821))

(declare-fun m!1295833 () Bool)

(assert (=> b!1406540 m!1295833))

(assert (=> b!1406540 m!1295831))

(assert (=> b!1406540 m!1295821))

(declare-fun m!1295835 () Bool)

(assert (=> b!1406540 m!1295835))

(declare-fun m!1295837 () Bool)

(assert (=> b!1406540 m!1295837))

(declare-fun m!1295839 () Bool)

(assert (=> b!1406542 m!1295839))

(declare-fun m!1295841 () Bool)

(assert (=> b!1406541 m!1295841))

(declare-fun m!1295843 () Bool)

(assert (=> b!1406541 m!1295843))

(assert (=> b!1406541 m!1295843))

(declare-fun m!1295845 () Bool)

(assert (=> b!1406541 m!1295845))

(assert (=> b!1406541 m!1295845))

(assert (=> b!1406541 m!1295843))

(declare-fun m!1295847 () Bool)

(assert (=> b!1406541 m!1295847))

(declare-fun m!1295849 () Bool)

(assert (=> b!1406543 m!1295849))

(check-sat (not b!1406544) (not b!1406538) (not b!1406539) (not b!1406543) (not b!1406541) (not start!120930) (not b!1406542) (not b!1406540))
