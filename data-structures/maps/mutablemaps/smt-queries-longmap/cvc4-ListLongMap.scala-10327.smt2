; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121490 () Bool)

(assert start!121490)

(declare-fun res!948375 () Bool)

(declare-fun e!798530 () Bool)

(assert (=> start!121490 (=> (not res!948375) (not e!798530))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121490 (= res!948375 (validMask!0 mask!2840))))

(assert (=> start!121490 e!798530))

(assert (=> start!121490 true))

(declare-datatypes ((array!96409 0))(
  ( (array!96410 (arr!46539 (Array (_ BitVec 32) (_ BitVec 64))) (size!47090 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96409)

(declare-fun array_inv!35484 (array!96409) Bool)

(assert (=> start!121490 (array_inv!35484 a!2901)))

(declare-fun b!1411034 () Bool)

(declare-fun res!948371 () Bool)

(assert (=> b!1411034 (=> (not res!948371) (not e!798530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96409 (_ BitVec 32)) Bool)

(assert (=> b!1411034 (= res!948371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411035 () Bool)

(declare-fun res!948374 () Bool)

(assert (=> b!1411035 (=> (not res!948374) (not e!798530))))

(declare-datatypes ((List!33238 0))(
  ( (Nil!33235) (Cons!33234 (h!34506 (_ BitVec 64)) (t!47939 List!33238)) )
))
(declare-fun arrayNoDuplicates!0 (array!96409 (_ BitVec 32) List!33238) Bool)

(assert (=> b!1411035 (= res!948374 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33235))))

(declare-fun b!1411036 () Bool)

(declare-fun e!798531 () Bool)

(assert (=> b!1411036 (= e!798530 (not e!798531))))

(declare-fun res!948377 () Bool)

(assert (=> b!1411036 (=> res!948377 e!798531)))

(declare-datatypes ((SeekEntryResult!10872 0))(
  ( (MissingZero!10872 (index!45864 (_ BitVec 32))) (Found!10872 (index!45865 (_ BitVec 32))) (Intermediate!10872 (undefined!11684 Bool) (index!45866 (_ BitVec 32)) (x!127462 (_ BitVec 32))) (Undefined!10872) (MissingVacant!10872 (index!45867 (_ BitVec 32))) )
))
(declare-fun lt!621472 () SeekEntryResult!10872)

(assert (=> b!1411036 (= res!948377 (or (not (is-Intermediate!10872 lt!621472)) (undefined!11684 lt!621472)))))

(declare-fun e!798529 () Bool)

(assert (=> b!1411036 e!798529))

(declare-fun res!948372 () Bool)

(assert (=> b!1411036 (=> (not res!948372) (not e!798529))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411036 (= res!948372 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47668 0))(
  ( (Unit!47669) )
))
(declare-fun lt!621468 () Unit!47668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47668)

(assert (=> b!1411036 (= lt!621468 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621471 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96409 (_ BitVec 32)) SeekEntryResult!10872)

(assert (=> b!1411036 (= lt!621472 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621471 (select (arr!46539 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411036 (= lt!621471 (toIndex!0 (select (arr!46539 a!2901) j!112) mask!2840))))

(declare-fun b!1411037 () Bool)

(declare-fun res!948373 () Bool)

(assert (=> b!1411037 (=> (not res!948373) (not e!798530))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411037 (= res!948373 (and (= (size!47090 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47090 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47090 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411038 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96409 (_ BitVec 32)) SeekEntryResult!10872)

(assert (=> b!1411038 (= e!798529 (= (seekEntryOrOpen!0 (select (arr!46539 a!2901) j!112) a!2901 mask!2840) (Found!10872 j!112)))))

(declare-fun b!1411039 () Bool)

(declare-fun e!798532 () Bool)

(assert (=> b!1411039 (= e!798532 true)))

(declare-fun lt!621470 () SeekEntryResult!10872)

(assert (=> b!1411039 (and (not (undefined!11684 lt!621470)) (= (index!45866 lt!621470) i!1037) (bvslt (x!127462 lt!621470) (x!127462 lt!621472)))))

(declare-fun lt!621469 () Unit!47668)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47668)

(assert (=> b!1411039 (= lt!621469 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621471 (x!127462 lt!621472) (index!45866 lt!621472) (x!127462 lt!621470) (index!45866 lt!621470) (undefined!11684 lt!621470) mask!2840))))

(declare-fun b!1411040 () Bool)

(assert (=> b!1411040 (= e!798531 e!798532)))

(declare-fun res!948376 () Bool)

(assert (=> b!1411040 (=> res!948376 e!798532)))

(assert (=> b!1411040 (= res!948376 (or (= lt!621472 lt!621470) (not (is-Intermediate!10872 lt!621470))))))

(assert (=> b!1411040 (= lt!621470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46539 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46539 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96410 (store (arr!46539 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47090 a!2901)) mask!2840))))

(declare-fun b!1411041 () Bool)

(declare-fun res!948370 () Bool)

(assert (=> b!1411041 (=> (not res!948370) (not e!798530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411041 (= res!948370 (validKeyInArray!0 (select (arr!46539 a!2901) i!1037)))))

(declare-fun b!1411042 () Bool)

(declare-fun res!948378 () Bool)

(assert (=> b!1411042 (=> (not res!948378) (not e!798530))))

(assert (=> b!1411042 (= res!948378 (validKeyInArray!0 (select (arr!46539 a!2901) j!112)))))

(assert (= (and start!121490 res!948375) b!1411037))

(assert (= (and b!1411037 res!948373) b!1411041))

(assert (= (and b!1411041 res!948370) b!1411042))

(assert (= (and b!1411042 res!948378) b!1411034))

(assert (= (and b!1411034 res!948371) b!1411035))

(assert (= (and b!1411035 res!948374) b!1411036))

(assert (= (and b!1411036 res!948372) b!1411038))

(assert (= (and b!1411036 (not res!948377)) b!1411040))

(assert (= (and b!1411040 (not res!948376)) b!1411039))

(declare-fun m!1300829 () Bool)

(assert (=> b!1411038 m!1300829))

(assert (=> b!1411038 m!1300829))

(declare-fun m!1300831 () Bool)

(assert (=> b!1411038 m!1300831))

(assert (=> b!1411042 m!1300829))

(assert (=> b!1411042 m!1300829))

(declare-fun m!1300833 () Bool)

(assert (=> b!1411042 m!1300833))

(declare-fun m!1300835 () Bool)

(assert (=> start!121490 m!1300835))

(declare-fun m!1300837 () Bool)

(assert (=> start!121490 m!1300837))

(declare-fun m!1300839 () Bool)

(assert (=> b!1411034 m!1300839))

(declare-fun m!1300841 () Bool)

(assert (=> b!1411041 m!1300841))

(assert (=> b!1411041 m!1300841))

(declare-fun m!1300843 () Bool)

(assert (=> b!1411041 m!1300843))

(declare-fun m!1300845 () Bool)

(assert (=> b!1411039 m!1300845))

(assert (=> b!1411036 m!1300829))

(declare-fun m!1300847 () Bool)

(assert (=> b!1411036 m!1300847))

(assert (=> b!1411036 m!1300829))

(assert (=> b!1411036 m!1300829))

(declare-fun m!1300849 () Bool)

(assert (=> b!1411036 m!1300849))

(declare-fun m!1300851 () Bool)

(assert (=> b!1411036 m!1300851))

(declare-fun m!1300853 () Bool)

(assert (=> b!1411036 m!1300853))

(declare-fun m!1300855 () Bool)

(assert (=> b!1411035 m!1300855))

(declare-fun m!1300857 () Bool)

(assert (=> b!1411040 m!1300857))

(declare-fun m!1300859 () Bool)

(assert (=> b!1411040 m!1300859))

(assert (=> b!1411040 m!1300859))

(declare-fun m!1300861 () Bool)

(assert (=> b!1411040 m!1300861))

(assert (=> b!1411040 m!1300861))

(assert (=> b!1411040 m!1300859))

(declare-fun m!1300863 () Bool)

(assert (=> b!1411040 m!1300863))

(push 1)

(assert (not b!1411042))

(assert (not b!1411034))

(assert (not start!121490))

(assert (not b!1411036))

(assert (not b!1411035))

(assert (not b!1411040))

(assert (not b!1411041))

(assert (not b!1411038))

