; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121494 () Bool)

(assert start!121494)

(declare-fun b!1411088 () Bool)

(declare-fun res!948432 () Bool)

(declare-fun e!798562 () Bool)

(assert (=> b!1411088 (=> (not res!948432) (not e!798562))))

(declare-datatypes ((array!96413 0))(
  ( (array!96414 (arr!46541 (Array (_ BitVec 32) (_ BitVec 64))) (size!47092 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96413)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411088 (= res!948432 (validKeyInArray!0 (select (arr!46541 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1411089 () Bool)

(declare-fun e!798560 () Bool)

(declare-datatypes ((SeekEntryResult!10874 0))(
  ( (MissingZero!10874 (index!45872 (_ BitVec 32))) (Found!10874 (index!45873 (_ BitVec 32))) (Intermediate!10874 (undefined!11686 Bool) (index!45874 (_ BitVec 32)) (x!127472 (_ BitVec 32))) (Undefined!10874) (MissingVacant!10874 (index!45875 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96413 (_ BitVec 32)) SeekEntryResult!10874)

(assert (=> b!1411089 (= e!798560 (= (seekEntryOrOpen!0 (select (arr!46541 a!2901) j!112) a!2901 mask!2840) (Found!10874 j!112)))))

(declare-fun b!1411090 () Bool)

(declare-fun res!948427 () Bool)

(assert (=> b!1411090 (=> (not res!948427) (not e!798562))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411090 (= res!948427 (validKeyInArray!0 (select (arr!46541 a!2901) i!1037)))))

(declare-fun b!1411091 () Bool)

(declare-fun res!948429 () Bool)

(assert (=> b!1411091 (=> (not res!948429) (not e!798562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96413 (_ BitVec 32)) Bool)

(assert (=> b!1411091 (= res!948429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411092 () Bool)

(declare-fun e!798559 () Bool)

(assert (=> b!1411092 (= e!798559 true)))

(declare-fun lt!621498 () SeekEntryResult!10874)

(declare-fun lt!621500 () SeekEntryResult!10874)

(assert (=> b!1411092 (and (not (undefined!11686 lt!621498)) (= (index!45874 lt!621498) i!1037) (bvslt (x!127472 lt!621498) (x!127472 lt!621500)))))

(declare-fun lt!621499 () (_ BitVec 32))

(declare-datatypes ((Unit!47672 0))(
  ( (Unit!47673) )
))
(declare-fun lt!621501 () Unit!47672)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47672)

(assert (=> b!1411092 (= lt!621501 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621499 (x!127472 lt!621500) (index!45874 lt!621500) (x!127472 lt!621498) (index!45874 lt!621498) (undefined!11686 lt!621498) mask!2840))))

(declare-fun b!1411093 () Bool)

(declare-fun e!798561 () Bool)

(assert (=> b!1411093 (= e!798561 e!798559)))

(declare-fun res!948425 () Bool)

(assert (=> b!1411093 (=> res!948425 e!798559)))

(get-info :version)

(assert (=> b!1411093 (= res!948425 (or (= lt!621500 lt!621498) (not ((_ is Intermediate!10874) lt!621498))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96413 (_ BitVec 32)) SeekEntryResult!10874)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411093 (= lt!621498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46541 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46541 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96414 (store (arr!46541 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47092 a!2901)) mask!2840))))

(declare-fun res!948428 () Bool)

(assert (=> start!121494 (=> (not res!948428) (not e!798562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121494 (= res!948428 (validMask!0 mask!2840))))

(assert (=> start!121494 e!798562))

(assert (=> start!121494 true))

(declare-fun array_inv!35486 (array!96413) Bool)

(assert (=> start!121494 (array_inv!35486 a!2901)))

(declare-fun b!1411094 () Bool)

(declare-fun res!948431 () Bool)

(assert (=> b!1411094 (=> (not res!948431) (not e!798562))))

(assert (=> b!1411094 (= res!948431 (and (= (size!47092 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47092 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47092 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411095 () Bool)

(declare-fun res!948426 () Bool)

(assert (=> b!1411095 (=> (not res!948426) (not e!798562))))

(declare-datatypes ((List!33240 0))(
  ( (Nil!33237) (Cons!33236 (h!34508 (_ BitVec 64)) (t!47941 List!33240)) )
))
(declare-fun arrayNoDuplicates!0 (array!96413 (_ BitVec 32) List!33240) Bool)

(assert (=> b!1411095 (= res!948426 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33237))))

(declare-fun b!1411096 () Bool)

(assert (=> b!1411096 (= e!798562 (not e!798561))))

(declare-fun res!948424 () Bool)

(assert (=> b!1411096 (=> res!948424 e!798561)))

(assert (=> b!1411096 (= res!948424 (or (not ((_ is Intermediate!10874) lt!621500)) (undefined!11686 lt!621500)))))

(assert (=> b!1411096 e!798560))

(declare-fun res!948430 () Bool)

(assert (=> b!1411096 (=> (not res!948430) (not e!798560))))

(assert (=> b!1411096 (= res!948430 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621502 () Unit!47672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47672)

(assert (=> b!1411096 (= lt!621502 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411096 (= lt!621500 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621499 (select (arr!46541 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411096 (= lt!621499 (toIndex!0 (select (arr!46541 a!2901) j!112) mask!2840))))

(assert (= (and start!121494 res!948428) b!1411094))

(assert (= (and b!1411094 res!948431) b!1411090))

(assert (= (and b!1411090 res!948427) b!1411088))

(assert (= (and b!1411088 res!948432) b!1411091))

(assert (= (and b!1411091 res!948429) b!1411095))

(assert (= (and b!1411095 res!948426) b!1411096))

(assert (= (and b!1411096 res!948430) b!1411089))

(assert (= (and b!1411096 (not res!948424)) b!1411093))

(assert (= (and b!1411093 (not res!948425)) b!1411092))

(declare-fun m!1300901 () Bool)

(assert (=> b!1411088 m!1300901))

(assert (=> b!1411088 m!1300901))

(declare-fun m!1300903 () Bool)

(assert (=> b!1411088 m!1300903))

(declare-fun m!1300905 () Bool)

(assert (=> b!1411093 m!1300905))

(declare-fun m!1300907 () Bool)

(assert (=> b!1411093 m!1300907))

(assert (=> b!1411093 m!1300907))

(declare-fun m!1300909 () Bool)

(assert (=> b!1411093 m!1300909))

(assert (=> b!1411093 m!1300909))

(assert (=> b!1411093 m!1300907))

(declare-fun m!1300911 () Bool)

(assert (=> b!1411093 m!1300911))

(assert (=> b!1411096 m!1300901))

(declare-fun m!1300913 () Bool)

(assert (=> b!1411096 m!1300913))

(assert (=> b!1411096 m!1300901))

(declare-fun m!1300915 () Bool)

(assert (=> b!1411096 m!1300915))

(assert (=> b!1411096 m!1300901))

(declare-fun m!1300917 () Bool)

(assert (=> b!1411096 m!1300917))

(declare-fun m!1300919 () Bool)

(assert (=> b!1411096 m!1300919))

(declare-fun m!1300921 () Bool)

(assert (=> b!1411092 m!1300921))

(declare-fun m!1300923 () Bool)

(assert (=> b!1411091 m!1300923))

(declare-fun m!1300925 () Bool)

(assert (=> b!1411090 m!1300925))

(assert (=> b!1411090 m!1300925))

(declare-fun m!1300927 () Bool)

(assert (=> b!1411090 m!1300927))

(assert (=> b!1411089 m!1300901))

(assert (=> b!1411089 m!1300901))

(declare-fun m!1300929 () Bool)

(assert (=> b!1411089 m!1300929))

(declare-fun m!1300931 () Bool)

(assert (=> start!121494 m!1300931))

(declare-fun m!1300933 () Bool)

(assert (=> start!121494 m!1300933))

(declare-fun m!1300935 () Bool)

(assert (=> b!1411095 m!1300935))

(check-sat (not b!1411095) (not start!121494) (not b!1411096) (not b!1411089) (not b!1411088) (not b!1411093) (not b!1411092) (not b!1411090) (not b!1411091))
(check-sat)
