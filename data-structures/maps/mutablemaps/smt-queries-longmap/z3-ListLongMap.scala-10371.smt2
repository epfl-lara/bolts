; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122136 () Bool)

(assert start!122136)

(declare-fun b!1416744 () Bool)

(declare-fun e!801869 () Bool)

(declare-fun e!801867 () Bool)

(assert (=> b!1416744 (= e!801869 (not e!801867))))

(declare-fun res!952734 () Bool)

(assert (=> b!1416744 (=> res!952734 e!801867)))

(declare-datatypes ((SeekEntryResult!11003 0))(
  ( (MissingZero!11003 (index!46403 (_ BitVec 32))) (Found!11003 (index!46404 (_ BitVec 32))) (Intermediate!11003 (undefined!11815 Bool) (index!46405 (_ BitVec 32)) (x!128011 (_ BitVec 32))) (Undefined!11003) (MissingVacant!11003 (index!46406 (_ BitVec 32))) )
))
(declare-fun lt!625071 () SeekEntryResult!11003)

(get-info :version)

(assert (=> b!1416744 (= res!952734 (or (not ((_ is Intermediate!11003) lt!625071)) (undefined!11815 lt!625071)))))

(declare-fun e!801866 () Bool)

(assert (=> b!1416744 e!801866))

(declare-fun res!952737 () Bool)

(assert (=> b!1416744 (=> (not res!952737) (not e!801866))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96689 0))(
  ( (array!96690 (arr!46670 (Array (_ BitVec 32) (_ BitVec 64))) (size!47221 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96689)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96689 (_ BitVec 32)) Bool)

(assert (=> b!1416744 (= res!952737 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47930 0))(
  ( (Unit!47931) )
))
(declare-fun lt!625070 () Unit!47930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47930)

(assert (=> b!1416744 (= lt!625070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96689 (_ BitVec 32)) SeekEntryResult!11003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416744 (= lt!625071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46670 a!2901) j!112) mask!2840) (select (arr!46670 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416745 () Bool)

(declare-fun res!952732 () Bool)

(assert (=> b!1416745 (=> (not res!952732) (not e!801869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416745 (= res!952732 (validKeyInArray!0 (select (arr!46670 a!2901) j!112)))))

(declare-fun b!1416746 () Bool)

(declare-fun res!952731 () Bool)

(assert (=> b!1416746 (=> (not res!952731) (not e!801869))))

(assert (=> b!1416746 (= res!952731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416747 () Bool)

(declare-fun res!952735 () Bool)

(assert (=> b!1416747 (=> (not res!952735) (not e!801869))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1416747 (= res!952735 (and (= (size!47221 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47221 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47221 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416748 () Bool)

(declare-fun res!952733 () Bool)

(assert (=> b!1416748 (=> (not res!952733) (not e!801869))))

(declare-datatypes ((List!33369 0))(
  ( (Nil!33366) (Cons!33365 (h!34655 (_ BitVec 64)) (t!48070 List!33369)) )
))
(declare-fun arrayNoDuplicates!0 (array!96689 (_ BitVec 32) List!33369) Bool)

(assert (=> b!1416748 (= res!952733 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33366))))

(declare-fun res!952736 () Bool)

(assert (=> start!122136 (=> (not res!952736) (not e!801869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122136 (= res!952736 (validMask!0 mask!2840))))

(assert (=> start!122136 e!801869))

(assert (=> start!122136 true))

(declare-fun array_inv!35615 (array!96689) Bool)

(assert (=> start!122136 (array_inv!35615 a!2901)))

(declare-fun b!1416749 () Bool)

(declare-fun res!952730 () Bool)

(assert (=> b!1416749 (=> (not res!952730) (not e!801869))))

(assert (=> b!1416749 (= res!952730 (validKeyInArray!0 (select (arr!46670 a!2901) i!1037)))))

(declare-fun b!1416750 () Bool)

(assert (=> b!1416750 (= e!801867 true)))

(declare-fun lt!625072 () SeekEntryResult!11003)

(assert (=> b!1416750 (= lt!625072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46670 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46670 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96690 (store (arr!46670 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47221 a!2901)) mask!2840))))

(declare-fun b!1416751 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96689 (_ BitVec 32)) SeekEntryResult!11003)

(assert (=> b!1416751 (= e!801866 (= (seekEntryOrOpen!0 (select (arr!46670 a!2901) j!112) a!2901 mask!2840) (Found!11003 j!112)))))

(assert (= (and start!122136 res!952736) b!1416747))

(assert (= (and b!1416747 res!952735) b!1416749))

(assert (= (and b!1416749 res!952730) b!1416745))

(assert (= (and b!1416745 res!952732) b!1416746))

(assert (= (and b!1416746 res!952731) b!1416748))

(assert (= (and b!1416748 res!952733) b!1416744))

(assert (= (and b!1416744 res!952737) b!1416751))

(assert (= (and b!1416744 (not res!952734)) b!1416750))

(declare-fun m!1307481 () Bool)

(assert (=> b!1416744 m!1307481))

(declare-fun m!1307483 () Bool)

(assert (=> b!1416744 m!1307483))

(assert (=> b!1416744 m!1307481))

(declare-fun m!1307485 () Bool)

(assert (=> b!1416744 m!1307485))

(assert (=> b!1416744 m!1307483))

(assert (=> b!1416744 m!1307481))

(declare-fun m!1307487 () Bool)

(assert (=> b!1416744 m!1307487))

(declare-fun m!1307489 () Bool)

(assert (=> b!1416744 m!1307489))

(declare-fun m!1307491 () Bool)

(assert (=> start!122136 m!1307491))

(declare-fun m!1307493 () Bool)

(assert (=> start!122136 m!1307493))

(declare-fun m!1307495 () Bool)

(assert (=> b!1416748 m!1307495))

(assert (=> b!1416751 m!1307481))

(assert (=> b!1416751 m!1307481))

(declare-fun m!1307497 () Bool)

(assert (=> b!1416751 m!1307497))

(declare-fun m!1307499 () Bool)

(assert (=> b!1416750 m!1307499))

(declare-fun m!1307501 () Bool)

(assert (=> b!1416750 m!1307501))

(assert (=> b!1416750 m!1307501))

(declare-fun m!1307503 () Bool)

(assert (=> b!1416750 m!1307503))

(assert (=> b!1416750 m!1307503))

(assert (=> b!1416750 m!1307501))

(declare-fun m!1307505 () Bool)

(assert (=> b!1416750 m!1307505))

(declare-fun m!1307507 () Bool)

(assert (=> b!1416746 m!1307507))

(assert (=> b!1416745 m!1307481))

(assert (=> b!1416745 m!1307481))

(declare-fun m!1307509 () Bool)

(assert (=> b!1416745 m!1307509))

(declare-fun m!1307511 () Bool)

(assert (=> b!1416749 m!1307511))

(assert (=> b!1416749 m!1307511))

(declare-fun m!1307513 () Bool)

(assert (=> b!1416749 m!1307513))

(check-sat (not start!122136) (not b!1416750) (not b!1416744) (not b!1416748) (not b!1416745) (not b!1416751) (not b!1416746) (not b!1416749))
