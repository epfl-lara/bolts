; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121226 () Bool)

(assert start!121226)

(declare-fun b!1408992 () Bool)

(declare-fun res!946825 () Bool)

(declare-fun e!797399 () Bool)

(assert (=> b!1408992 (=> (not res!946825) (not e!797399))))

(declare-datatypes ((array!96298 0))(
  ( (array!96299 (arr!46488 (Array (_ BitVec 32) (_ BitVec 64))) (size!47039 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96298)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1408992 (= res!946825 (and (= (size!47039 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47039 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47039 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408993 () Bool)

(declare-fun e!797398 () Bool)

(declare-datatypes ((SeekEntryResult!10821 0))(
  ( (MissingZero!10821 (index!45660 (_ BitVec 32))) (Found!10821 (index!45661 (_ BitVec 32))) (Intermediate!10821 (undefined!11633 Bool) (index!45662 (_ BitVec 32)) (x!127257 (_ BitVec 32))) (Undefined!10821) (MissingVacant!10821 (index!45663 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96298 (_ BitVec 32)) SeekEntryResult!10821)

(assert (=> b!1408993 (= e!797398 (= (seekEntryOrOpen!0 (select (arr!46488 a!2901) j!112) a!2901 mask!2840) (Found!10821 j!112)))))

(declare-fun b!1408994 () Bool)

(declare-fun res!946824 () Bool)

(assert (=> b!1408994 (=> (not res!946824) (not e!797399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408994 (= res!946824 (validKeyInArray!0 (select (arr!46488 a!2901) i!1037)))))

(declare-fun b!1408995 () Bool)

(declare-fun e!797396 () Bool)

(assert (=> b!1408995 (= e!797399 (not e!797396))))

(declare-fun res!946826 () Bool)

(assert (=> b!1408995 (=> res!946826 e!797396)))

(declare-fun lt!620526 () SeekEntryResult!10821)

(assert (=> b!1408995 (= res!946826 (or (not (is-Intermediate!10821 lt!620526)) (undefined!11633 lt!620526)))))

(assert (=> b!1408995 e!797398))

(declare-fun res!946823 () Bool)

(assert (=> b!1408995 (=> (not res!946823) (not e!797398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96298 (_ BitVec 32)) Bool)

(assert (=> b!1408995 (= res!946823 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47566 0))(
  ( (Unit!47567) )
))
(declare-fun lt!620525 () Unit!47566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96298 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47566)

(assert (=> b!1408995 (= lt!620525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96298 (_ BitVec 32)) SeekEntryResult!10821)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408995 (= lt!620526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46488 a!2901) j!112) mask!2840) (select (arr!46488 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946829 () Bool)

(assert (=> start!121226 (=> (not res!946829) (not e!797399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121226 (= res!946829 (validMask!0 mask!2840))))

(assert (=> start!121226 e!797399))

(assert (=> start!121226 true))

(declare-fun array_inv!35433 (array!96298) Bool)

(assert (=> start!121226 (array_inv!35433 a!2901)))

(declare-fun b!1408996 () Bool)

(declare-fun res!946827 () Bool)

(assert (=> b!1408996 (=> (not res!946827) (not e!797399))))

(assert (=> b!1408996 (= res!946827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408997 () Bool)

(declare-fun res!946830 () Bool)

(assert (=> b!1408997 (=> (not res!946830) (not e!797399))))

(declare-datatypes ((List!33187 0))(
  ( (Nil!33184) (Cons!33183 (h!34446 (_ BitVec 64)) (t!47888 List!33187)) )
))
(declare-fun arrayNoDuplicates!0 (array!96298 (_ BitVec 32) List!33187) Bool)

(assert (=> b!1408997 (= res!946830 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33184))))

(declare-fun b!1408998 () Bool)

(assert (=> b!1408998 (= e!797396 true)))

(declare-fun lt!620527 () SeekEntryResult!10821)

(assert (=> b!1408998 (= lt!620527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46488 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46488 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96299 (store (arr!46488 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47039 a!2901)) mask!2840))))

(declare-fun b!1408999 () Bool)

(declare-fun res!946828 () Bool)

(assert (=> b!1408999 (=> (not res!946828) (not e!797399))))

(assert (=> b!1408999 (= res!946828 (validKeyInArray!0 (select (arr!46488 a!2901) j!112)))))

(assert (= (and start!121226 res!946829) b!1408992))

(assert (= (and b!1408992 res!946825) b!1408994))

(assert (= (and b!1408994 res!946824) b!1408999))

(assert (= (and b!1408999 res!946828) b!1408996))

(assert (= (and b!1408996 res!946827) b!1408997))

(assert (= (and b!1408997 res!946830) b!1408995))

(assert (= (and b!1408995 res!946823) b!1408993))

(assert (= (and b!1408995 (not res!946826)) b!1408998))

(declare-fun m!1298617 () Bool)

(assert (=> b!1408994 m!1298617))

(assert (=> b!1408994 m!1298617))

(declare-fun m!1298619 () Bool)

(assert (=> b!1408994 m!1298619))

(declare-fun m!1298621 () Bool)

(assert (=> b!1408996 m!1298621))

(declare-fun m!1298623 () Bool)

(assert (=> b!1408998 m!1298623))

(declare-fun m!1298625 () Bool)

(assert (=> b!1408998 m!1298625))

(assert (=> b!1408998 m!1298625))

(declare-fun m!1298627 () Bool)

(assert (=> b!1408998 m!1298627))

(assert (=> b!1408998 m!1298627))

(assert (=> b!1408998 m!1298625))

(declare-fun m!1298629 () Bool)

(assert (=> b!1408998 m!1298629))

(declare-fun m!1298631 () Bool)

(assert (=> b!1408997 m!1298631))

(declare-fun m!1298633 () Bool)

(assert (=> b!1408995 m!1298633))

(declare-fun m!1298635 () Bool)

(assert (=> b!1408995 m!1298635))

(assert (=> b!1408995 m!1298633))

(declare-fun m!1298637 () Bool)

(assert (=> b!1408995 m!1298637))

(assert (=> b!1408995 m!1298635))

(assert (=> b!1408995 m!1298633))

(declare-fun m!1298639 () Bool)

(assert (=> b!1408995 m!1298639))

(declare-fun m!1298641 () Bool)

(assert (=> b!1408995 m!1298641))

(declare-fun m!1298643 () Bool)

(assert (=> start!121226 m!1298643))

(declare-fun m!1298645 () Bool)

(assert (=> start!121226 m!1298645))

(assert (=> b!1408993 m!1298633))

(assert (=> b!1408993 m!1298633))

(declare-fun m!1298647 () Bool)

(assert (=> b!1408993 m!1298647))

(assert (=> b!1408999 m!1298633))

(assert (=> b!1408999 m!1298633))

(declare-fun m!1298649 () Bool)

(assert (=> b!1408999 m!1298649))

(push 1)

(assert (not b!1408995))

(assert (not b!1408999))

(assert (not b!1408997))

(assert (not b!1408996))

(assert (not b!1408993))

(assert (not b!1408998))

(assert (not b!1408994))

(assert (not start!121226))

(check-sat)

