; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121510 () Bool)

(assert start!121510)

(declare-fun b!1411304 () Bool)

(declare-fun e!798681 () Bool)

(declare-fun e!798680 () Bool)

(assert (=> b!1411304 (= e!798681 (not e!798680))))

(declare-fun res!948646 () Bool)

(assert (=> b!1411304 (=> res!948646 e!798680)))

(declare-datatypes ((SeekEntryResult!10882 0))(
  ( (MissingZero!10882 (index!45904 (_ BitVec 32))) (Found!10882 (index!45905 (_ BitVec 32))) (Intermediate!10882 (undefined!11694 Bool) (index!45906 (_ BitVec 32)) (x!127504 (_ BitVec 32))) (Undefined!10882) (MissingVacant!10882 (index!45907 (_ BitVec 32))) )
))
(declare-fun lt!621621 () SeekEntryResult!10882)

(assert (=> b!1411304 (= res!948646 (or (not (is-Intermediate!10882 lt!621621)) (undefined!11694 lt!621621)))))

(declare-fun e!798683 () Bool)

(assert (=> b!1411304 e!798683))

(declare-fun res!948642 () Bool)

(assert (=> b!1411304 (=> (not res!948642) (not e!798683))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!96429 0))(
  ( (array!96430 (arr!46549 (Array (_ BitVec 32) (_ BitVec 64))) (size!47100 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96429)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96429 (_ BitVec 32)) Bool)

(assert (=> b!1411304 (= res!948642 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47688 0))(
  ( (Unit!47689) )
))
(declare-fun lt!621623 () Unit!47688)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96429 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47688)

(assert (=> b!1411304 (= lt!621623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621620 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96429 (_ BitVec 32)) SeekEntryResult!10882)

(assert (=> b!1411304 (= lt!621621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621620 (select (arr!46549 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411304 (= lt!621620 (toIndex!0 (select (arr!46549 a!2901) j!112) mask!2840))))

(declare-fun b!1411305 () Bool)

(declare-fun res!948641 () Bool)

(assert (=> b!1411305 (=> (not res!948641) (not e!798681))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411305 (= res!948641 (validKeyInArray!0 (select (arr!46549 a!2901) i!1037)))))

(declare-fun b!1411306 () Bool)

(declare-fun res!948644 () Bool)

(assert (=> b!1411306 (=> (not res!948644) (not e!798681))))

(assert (=> b!1411306 (= res!948644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!798679 () Bool)

(declare-fun b!1411307 () Bool)

(declare-fun lt!621622 () SeekEntryResult!10882)

(assert (=> b!1411307 (= e!798679 (= (select (store (arr!46549 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45906 lt!621622)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1411307 (and (not (undefined!11694 lt!621622)) (= (index!45906 lt!621622) i!1037) (bvslt (x!127504 lt!621622) (x!127504 lt!621621)))))

(declare-fun lt!621625 () Unit!47688)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96429 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47688)

(assert (=> b!1411307 (= lt!621625 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621620 (x!127504 lt!621621) (index!45906 lt!621621) (x!127504 lt!621622) (index!45906 lt!621622) (undefined!11694 lt!621622) mask!2840))))

(declare-fun res!948643 () Bool)

(assert (=> start!121510 (=> (not res!948643) (not e!798681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121510 (= res!948643 (validMask!0 mask!2840))))

(assert (=> start!121510 e!798681))

(assert (=> start!121510 true))

(declare-fun array_inv!35494 (array!96429) Bool)

(assert (=> start!121510 (array_inv!35494 a!2901)))

(declare-fun b!1411308 () Bool)

(declare-fun res!948647 () Bool)

(assert (=> b!1411308 (=> (not res!948647) (not e!798681))))

(assert (=> b!1411308 (= res!948647 (validKeyInArray!0 (select (arr!46549 a!2901) j!112)))))

(declare-fun b!1411309 () Bool)

(declare-fun res!948640 () Bool)

(assert (=> b!1411309 (=> (not res!948640) (not e!798681))))

(declare-datatypes ((List!33248 0))(
  ( (Nil!33245) (Cons!33244 (h!34516 (_ BitVec 64)) (t!47949 List!33248)) )
))
(declare-fun arrayNoDuplicates!0 (array!96429 (_ BitVec 32) List!33248) Bool)

(assert (=> b!1411309 (= res!948640 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33245))))

(declare-fun b!1411310 () Bool)

(assert (=> b!1411310 (= e!798680 e!798679)))

(declare-fun res!948645 () Bool)

(assert (=> b!1411310 (=> res!948645 e!798679)))

(assert (=> b!1411310 (= res!948645 (or (= lt!621621 lt!621622) (not (is-Intermediate!10882 lt!621622))))))

(declare-fun lt!621624 () (_ BitVec 64))

(assert (=> b!1411310 (= lt!621622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621624 mask!2840) lt!621624 (array!96430 (store (arr!46549 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47100 a!2901)) mask!2840))))

(assert (=> b!1411310 (= lt!621624 (select (store (arr!46549 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411311 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96429 (_ BitVec 32)) SeekEntryResult!10882)

(assert (=> b!1411311 (= e!798683 (= (seekEntryOrOpen!0 (select (arr!46549 a!2901) j!112) a!2901 mask!2840) (Found!10882 j!112)))))

(declare-fun b!1411312 () Bool)

(declare-fun res!948648 () Bool)

(assert (=> b!1411312 (=> (not res!948648) (not e!798681))))

(assert (=> b!1411312 (= res!948648 (and (= (size!47100 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47100 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47100 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121510 res!948643) b!1411312))

(assert (= (and b!1411312 res!948648) b!1411305))

(assert (= (and b!1411305 res!948641) b!1411308))

(assert (= (and b!1411308 res!948647) b!1411306))

(assert (= (and b!1411306 res!948644) b!1411309))

(assert (= (and b!1411309 res!948640) b!1411304))

(assert (= (and b!1411304 res!948642) b!1411311))

(assert (= (and b!1411304 (not res!948646)) b!1411310))

(assert (= (and b!1411310 (not res!948645)) b!1411307))

(declare-fun m!1301189 () Bool)

(assert (=> b!1411308 m!1301189))

(assert (=> b!1411308 m!1301189))

(declare-fun m!1301191 () Bool)

(assert (=> b!1411308 m!1301191))

(assert (=> b!1411311 m!1301189))

(assert (=> b!1411311 m!1301189))

(declare-fun m!1301193 () Bool)

(assert (=> b!1411311 m!1301193))

(assert (=> b!1411304 m!1301189))

(declare-fun m!1301195 () Bool)

(assert (=> b!1411304 m!1301195))

(assert (=> b!1411304 m!1301189))

(assert (=> b!1411304 m!1301189))

(declare-fun m!1301197 () Bool)

(assert (=> b!1411304 m!1301197))

(declare-fun m!1301199 () Bool)

(assert (=> b!1411304 m!1301199))

(declare-fun m!1301201 () Bool)

(assert (=> b!1411304 m!1301201))

(declare-fun m!1301203 () Bool)

(assert (=> start!121510 m!1301203))

(declare-fun m!1301205 () Bool)

(assert (=> start!121510 m!1301205))

(declare-fun m!1301207 () Bool)

(assert (=> b!1411306 m!1301207))

(declare-fun m!1301209 () Bool)

(assert (=> b!1411307 m!1301209))

(declare-fun m!1301211 () Bool)

(assert (=> b!1411307 m!1301211))

(declare-fun m!1301213 () Bool)

(assert (=> b!1411307 m!1301213))

(declare-fun m!1301215 () Bool)

(assert (=> b!1411305 m!1301215))

(assert (=> b!1411305 m!1301215))

(declare-fun m!1301217 () Bool)

(assert (=> b!1411305 m!1301217))

(declare-fun m!1301219 () Bool)

(assert (=> b!1411310 m!1301219))

(assert (=> b!1411310 m!1301209))

(assert (=> b!1411310 m!1301219))

(declare-fun m!1301221 () Bool)

(assert (=> b!1411310 m!1301221))

(declare-fun m!1301223 () Bool)

(assert (=> b!1411310 m!1301223))

(declare-fun m!1301225 () Bool)

(assert (=> b!1411309 m!1301225))

(push 1)

