; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121502 () Bool)

(assert start!121502)

(declare-fun b!1411196 () Bool)

(declare-fun res!948536 () Bool)

(declare-fun e!798620 () Bool)

(assert (=> b!1411196 (=> (not res!948536) (not e!798620))))

(declare-datatypes ((array!96421 0))(
  ( (array!96422 (arr!46545 (Array (_ BitVec 32) (_ BitVec 64))) (size!47096 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96421)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411196 (= res!948536 (validKeyInArray!0 (select (arr!46545 a!2901) j!112)))))

(declare-fun res!948540 () Bool)

(assert (=> start!121502 (=> (not res!948540) (not e!798620))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121502 (= res!948540 (validMask!0 mask!2840))))

(assert (=> start!121502 e!798620))

(assert (=> start!121502 true))

(declare-fun array_inv!35490 (array!96421) Bool)

(assert (=> start!121502 (array_inv!35490 a!2901)))

(declare-fun b!1411197 () Bool)

(declare-fun res!948538 () Bool)

(assert (=> b!1411197 (=> (not res!948538) (not e!798620))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411197 (= res!948538 (validKeyInArray!0 (select (arr!46545 a!2901) i!1037)))))

(declare-fun b!1411198 () Bool)

(declare-fun res!948537 () Bool)

(assert (=> b!1411198 (=> (not res!948537) (not e!798620))))

(assert (=> b!1411198 (= res!948537 (and (= (size!47096 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47096 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47096 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411199 () Bool)

(declare-fun e!798621 () Bool)

(declare-fun e!798622 () Bool)

(assert (=> b!1411199 (= e!798621 e!798622)))

(declare-fun res!948533 () Bool)

(assert (=> b!1411199 (=> res!948533 e!798622)))

(declare-datatypes ((SeekEntryResult!10878 0))(
  ( (MissingZero!10878 (index!45888 (_ BitVec 32))) (Found!10878 (index!45889 (_ BitVec 32))) (Intermediate!10878 (undefined!11690 Bool) (index!45890 (_ BitVec 32)) (x!127484 (_ BitVec 32))) (Undefined!10878) (MissingVacant!10878 (index!45891 (_ BitVec 32))) )
))
(declare-fun lt!621558 () SeekEntryResult!10878)

(declare-fun lt!621562 () SeekEntryResult!10878)

(assert (=> b!1411199 (= res!948533 (or (= lt!621558 lt!621562) (not (is-Intermediate!10878 lt!621562))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96421 (_ BitVec 32)) SeekEntryResult!10878)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411199 (= lt!621562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46545 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46545 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96422 (store (arr!46545 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47096 a!2901)) mask!2840))))

(declare-fun b!1411200 () Bool)

(declare-fun res!948539 () Bool)

(assert (=> b!1411200 (=> (not res!948539) (not e!798620))))

(declare-datatypes ((List!33244 0))(
  ( (Nil!33241) (Cons!33240 (h!34512 (_ BitVec 64)) (t!47945 List!33244)) )
))
(declare-fun arrayNoDuplicates!0 (array!96421 (_ BitVec 32) List!33244) Bool)

(assert (=> b!1411200 (= res!948539 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33241))))

(declare-fun b!1411201 () Bool)

(assert (=> b!1411201 (= e!798622 true)))

(assert (=> b!1411201 (and (not (undefined!11690 lt!621562)) (= (index!45890 lt!621562) i!1037) (bvslt (x!127484 lt!621562) (x!127484 lt!621558)))))

(declare-fun lt!621559 () (_ BitVec 32))

(declare-datatypes ((Unit!47680 0))(
  ( (Unit!47681) )
))
(declare-fun lt!621561 () Unit!47680)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47680)

(assert (=> b!1411201 (= lt!621561 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621559 (x!127484 lt!621558) (index!45890 lt!621558) (x!127484 lt!621562) (index!45890 lt!621562) (undefined!11690 lt!621562) mask!2840))))

(declare-fun b!1411202 () Bool)

(declare-fun res!948532 () Bool)

(assert (=> b!1411202 (=> (not res!948532) (not e!798620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96421 (_ BitVec 32)) Bool)

(assert (=> b!1411202 (= res!948532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411203 () Bool)

(declare-fun e!798619 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96421 (_ BitVec 32)) SeekEntryResult!10878)

(assert (=> b!1411203 (= e!798619 (= (seekEntryOrOpen!0 (select (arr!46545 a!2901) j!112) a!2901 mask!2840) (Found!10878 j!112)))))

(declare-fun b!1411204 () Bool)

(assert (=> b!1411204 (= e!798620 (not e!798621))))

(declare-fun res!948534 () Bool)

(assert (=> b!1411204 (=> res!948534 e!798621)))

(assert (=> b!1411204 (= res!948534 (or (not (is-Intermediate!10878 lt!621558)) (undefined!11690 lt!621558)))))

(assert (=> b!1411204 e!798619))

(declare-fun res!948535 () Bool)

(assert (=> b!1411204 (=> (not res!948535) (not e!798619))))

(assert (=> b!1411204 (= res!948535 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621560 () Unit!47680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96421 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47680)

(assert (=> b!1411204 (= lt!621560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411204 (= lt!621558 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621559 (select (arr!46545 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411204 (= lt!621559 (toIndex!0 (select (arr!46545 a!2901) j!112) mask!2840))))

(assert (= (and start!121502 res!948540) b!1411198))

(assert (= (and b!1411198 res!948537) b!1411197))

(assert (= (and b!1411197 res!948538) b!1411196))

(assert (= (and b!1411196 res!948536) b!1411202))

(assert (= (and b!1411202 res!948532) b!1411200))

(assert (= (and b!1411200 res!948539) b!1411204))

(assert (= (and b!1411204 res!948535) b!1411203))

(assert (= (and b!1411204 (not res!948534)) b!1411199))

(assert (= (and b!1411199 (not res!948533)) b!1411201))

(declare-fun m!1301045 () Bool)

(assert (=> b!1411197 m!1301045))

(assert (=> b!1411197 m!1301045))

(declare-fun m!1301047 () Bool)

(assert (=> b!1411197 m!1301047))

(declare-fun m!1301049 () Bool)

(assert (=> b!1411199 m!1301049))

(declare-fun m!1301051 () Bool)

(assert (=> b!1411199 m!1301051))

(assert (=> b!1411199 m!1301051))

(declare-fun m!1301053 () Bool)

(assert (=> b!1411199 m!1301053))

(assert (=> b!1411199 m!1301053))

(assert (=> b!1411199 m!1301051))

(declare-fun m!1301055 () Bool)

(assert (=> b!1411199 m!1301055))

(declare-fun m!1301057 () Bool)

(assert (=> b!1411196 m!1301057))

(assert (=> b!1411196 m!1301057))

(declare-fun m!1301059 () Bool)

(assert (=> b!1411196 m!1301059))

(declare-fun m!1301061 () Bool)

(assert (=> b!1411200 m!1301061))

(assert (=> b!1411203 m!1301057))

(assert (=> b!1411203 m!1301057))

(declare-fun m!1301063 () Bool)

(assert (=> b!1411203 m!1301063))

(assert (=> b!1411204 m!1301057))

(declare-fun m!1301065 () Bool)

(assert (=> b!1411204 m!1301065))

(assert (=> b!1411204 m!1301057))

(declare-fun m!1301067 () Bool)

(assert (=> b!1411204 m!1301067))

(assert (=> b!1411204 m!1301057))

(declare-fun m!1301069 () Bool)

(assert (=> b!1411204 m!1301069))

(declare-fun m!1301071 () Bool)

(assert (=> b!1411204 m!1301071))

(declare-fun m!1301073 () Bool)

(assert (=> b!1411201 m!1301073))

(declare-fun m!1301075 () Bool)

(assert (=> start!121502 m!1301075))

(declare-fun m!1301077 () Bool)

(assert (=> start!121502 m!1301077))

(declare-fun m!1301079 () Bool)

(assert (=> b!1411202 m!1301079))

(push 1)

