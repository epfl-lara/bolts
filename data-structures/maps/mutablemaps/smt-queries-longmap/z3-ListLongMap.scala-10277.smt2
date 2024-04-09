; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120864 () Bool)

(assert start!120864)

(declare-fun b!1405746 () Bool)

(declare-fun res!944078 () Bool)

(declare-fun e!795721 () Bool)

(assert (=> b!1405746 (=> (not res!944078) (not e!795721))))

(declare-datatypes ((array!96089 0))(
  ( (array!96090 (arr!46388 (Array (_ BitVec 32) (_ BitVec 64))) (size!46939 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96089)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405746 (= res!944078 (validKeyInArray!0 (select (arr!46388 a!2901) i!1037)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!795722 () Bool)

(declare-fun b!1405747 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10721 0))(
  ( (MissingZero!10721 (index!45260 (_ BitVec 32))) (Found!10721 (index!45261 (_ BitVec 32))) (Intermediate!10721 (undefined!11533 Bool) (index!45262 (_ BitVec 32)) (x!126875 (_ BitVec 32))) (Undefined!10721) (MissingVacant!10721 (index!45263 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96089 (_ BitVec 32)) SeekEntryResult!10721)

(assert (=> b!1405747 (= e!795722 (= (seekEntryOrOpen!0 (select (arr!46388 a!2901) j!112) a!2901 mask!2840) (Found!10721 j!112)))))

(declare-fun b!1405748 () Bool)

(declare-fun res!944074 () Bool)

(assert (=> b!1405748 (=> (not res!944074) (not e!795721))))

(assert (=> b!1405748 (= res!944074 (and (= (size!46939 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46939 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46939 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405749 () Bool)

(declare-fun res!944076 () Bool)

(assert (=> b!1405749 (=> (not res!944076) (not e!795721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96089 (_ BitVec 32)) Bool)

(assert (=> b!1405749 (= res!944076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405750 () Bool)

(declare-fun res!944077 () Bool)

(assert (=> b!1405750 (=> (not res!944077) (not e!795721))))

(assert (=> b!1405750 (= res!944077 (validKeyInArray!0 (select (arr!46388 a!2901) j!112)))))

(declare-fun b!1405751 () Bool)

(declare-fun e!795720 () Bool)

(assert (=> b!1405751 (= e!795721 (not e!795720))))

(declare-fun res!944072 () Bool)

(assert (=> b!1405751 (=> res!944072 e!795720)))

(declare-fun lt!619095 () SeekEntryResult!10721)

(get-info :version)

(assert (=> b!1405751 (= res!944072 (or (not ((_ is Intermediate!10721) lt!619095)) (undefined!11533 lt!619095)))))

(assert (=> b!1405751 e!795722))

(declare-fun res!944079 () Bool)

(assert (=> b!1405751 (=> (not res!944079) (not e!795722))))

(assert (=> b!1405751 (= res!944079 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47366 0))(
  ( (Unit!47367) )
))
(declare-fun lt!619096 () Unit!47366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47366)

(assert (=> b!1405751 (= lt!619096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96089 (_ BitVec 32)) SeekEntryResult!10721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405751 (= lt!619095 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46388 a!2901) j!112) mask!2840) (select (arr!46388 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944073 () Bool)

(assert (=> start!120864 (=> (not res!944073) (not e!795721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120864 (= res!944073 (validMask!0 mask!2840))))

(assert (=> start!120864 e!795721))

(assert (=> start!120864 true))

(declare-fun array_inv!35333 (array!96089) Bool)

(assert (=> start!120864 (array_inv!35333 a!2901)))

(declare-fun b!1405752 () Bool)

(declare-fun res!944075 () Bool)

(assert (=> b!1405752 (=> (not res!944075) (not e!795721))))

(declare-datatypes ((List!33087 0))(
  ( (Nil!33084) (Cons!33083 (h!34337 (_ BitVec 64)) (t!47788 List!33087)) )
))
(declare-fun arrayNoDuplicates!0 (array!96089 (_ BitVec 32) List!33087) Bool)

(assert (=> b!1405752 (= res!944075 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33084))))

(declare-fun b!1405753 () Bool)

(assert (=> b!1405753 (= e!795720 true)))

(declare-fun lt!619094 () SeekEntryResult!10721)

(assert (=> b!1405753 (= lt!619094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46388 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46388 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96090 (store (arr!46388 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46939 a!2901)) mask!2840))))

(assert (= (and start!120864 res!944073) b!1405748))

(assert (= (and b!1405748 res!944074) b!1405746))

(assert (= (and b!1405746 res!944078) b!1405750))

(assert (= (and b!1405750 res!944077) b!1405749))

(assert (= (and b!1405749 res!944076) b!1405752))

(assert (= (and b!1405752 res!944075) b!1405751))

(assert (= (and b!1405751 res!944079) b!1405747))

(assert (= (and b!1405751 (not res!944072)) b!1405753))

(declare-fun m!1294695 () Bool)

(assert (=> b!1405751 m!1294695))

(declare-fun m!1294697 () Bool)

(assert (=> b!1405751 m!1294697))

(assert (=> b!1405751 m!1294695))

(declare-fun m!1294699 () Bool)

(assert (=> b!1405751 m!1294699))

(assert (=> b!1405751 m!1294697))

(assert (=> b!1405751 m!1294695))

(declare-fun m!1294701 () Bool)

(assert (=> b!1405751 m!1294701))

(declare-fun m!1294703 () Bool)

(assert (=> b!1405751 m!1294703))

(declare-fun m!1294705 () Bool)

(assert (=> b!1405749 m!1294705))

(declare-fun m!1294707 () Bool)

(assert (=> b!1405753 m!1294707))

(declare-fun m!1294709 () Bool)

(assert (=> b!1405753 m!1294709))

(assert (=> b!1405753 m!1294709))

(declare-fun m!1294711 () Bool)

(assert (=> b!1405753 m!1294711))

(assert (=> b!1405753 m!1294711))

(assert (=> b!1405753 m!1294709))

(declare-fun m!1294713 () Bool)

(assert (=> b!1405753 m!1294713))

(declare-fun m!1294715 () Bool)

(assert (=> b!1405752 m!1294715))

(assert (=> b!1405747 m!1294695))

(assert (=> b!1405747 m!1294695))

(declare-fun m!1294717 () Bool)

(assert (=> b!1405747 m!1294717))

(declare-fun m!1294719 () Bool)

(assert (=> b!1405746 m!1294719))

(assert (=> b!1405746 m!1294719))

(declare-fun m!1294721 () Bool)

(assert (=> b!1405746 m!1294721))

(declare-fun m!1294723 () Bool)

(assert (=> start!120864 m!1294723))

(declare-fun m!1294725 () Bool)

(assert (=> start!120864 m!1294725))

(assert (=> b!1405750 m!1294695))

(assert (=> b!1405750 m!1294695))

(declare-fun m!1294727 () Bool)

(assert (=> b!1405750 m!1294727))

(check-sat (not b!1405747) (not b!1405750) (not b!1405749) (not b!1405753) (not b!1405746) (not start!120864) (not b!1405751) (not b!1405752))
