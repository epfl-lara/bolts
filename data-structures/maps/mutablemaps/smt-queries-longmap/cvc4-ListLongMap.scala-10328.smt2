; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121496 () Bool)

(assert start!121496)

(declare-fun b!1411115 () Bool)

(declare-fun res!948459 () Bool)

(declare-fun e!798577 () Bool)

(assert (=> b!1411115 (=> (not res!948459) (not e!798577))))

(declare-datatypes ((array!96415 0))(
  ( (array!96416 (arr!46542 (Array (_ BitVec 32) (_ BitVec 64))) (size!47093 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96415)

(declare-datatypes ((List!33241 0))(
  ( (Nil!33238) (Cons!33237 (h!34509 (_ BitVec 64)) (t!47942 List!33241)) )
))
(declare-fun arrayNoDuplicates!0 (array!96415 (_ BitVec 32) List!33241) Bool)

(assert (=> b!1411115 (= res!948459 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33238))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!798574 () Bool)

(declare-fun b!1411117 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10875 0))(
  ( (MissingZero!10875 (index!45876 (_ BitVec 32))) (Found!10875 (index!45877 (_ BitVec 32))) (Intermediate!10875 (undefined!11687 Bool) (index!45878 (_ BitVec 32)) (x!127473 (_ BitVec 32))) (Undefined!10875) (MissingVacant!10875 (index!45879 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96415 (_ BitVec 32)) SeekEntryResult!10875)

(assert (=> b!1411117 (= e!798574 (= (seekEntryOrOpen!0 (select (arr!46542 a!2901) j!112) a!2901 mask!2840) (Found!10875 j!112)))))

(declare-fun b!1411118 () Bool)

(declare-fun e!798576 () Bool)

(assert (=> b!1411118 (= e!798577 (not e!798576))))

(declare-fun res!948454 () Bool)

(assert (=> b!1411118 (=> res!948454 e!798576)))

(declare-fun lt!621517 () SeekEntryResult!10875)

(assert (=> b!1411118 (= res!948454 (or (not (is-Intermediate!10875 lt!621517)) (undefined!11687 lt!621517)))))

(assert (=> b!1411118 e!798574))

(declare-fun res!948458 () Bool)

(assert (=> b!1411118 (=> (not res!948458) (not e!798574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96415 (_ BitVec 32)) Bool)

(assert (=> b!1411118 (= res!948458 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47674 0))(
  ( (Unit!47675) )
))
(declare-fun lt!621515 () Unit!47674)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47674)

(assert (=> b!1411118 (= lt!621515 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621514 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96415 (_ BitVec 32)) SeekEntryResult!10875)

(assert (=> b!1411118 (= lt!621517 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621514 (select (arr!46542 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411118 (= lt!621514 (toIndex!0 (select (arr!46542 a!2901) j!112) mask!2840))))

(declare-fun b!1411119 () Bool)

(declare-fun res!948456 () Bool)

(assert (=> b!1411119 (=> (not res!948456) (not e!798577))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411119 (= res!948456 (validKeyInArray!0 (select (arr!46542 a!2901) i!1037)))))

(declare-fun b!1411120 () Bool)

(declare-fun res!948453 () Bool)

(assert (=> b!1411120 (=> (not res!948453) (not e!798577))))

(assert (=> b!1411120 (= res!948453 (validKeyInArray!0 (select (arr!46542 a!2901) j!112)))))

(declare-fun b!1411121 () Bool)

(declare-fun e!798578 () Bool)

(assert (=> b!1411121 (= e!798578 true)))

(declare-fun lt!621513 () SeekEntryResult!10875)

(assert (=> b!1411121 (and (not (undefined!11687 lt!621513)) (= (index!45878 lt!621513) i!1037) (bvslt (x!127473 lt!621513) (x!127473 lt!621517)))))

(declare-fun lt!621516 () Unit!47674)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47674)

(assert (=> b!1411121 (= lt!621516 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621514 (x!127473 lt!621517) (index!45878 lt!621517) (x!127473 lt!621513) (index!45878 lt!621513) (undefined!11687 lt!621513) mask!2840))))

(declare-fun b!1411122 () Bool)

(declare-fun res!948451 () Bool)

(assert (=> b!1411122 (=> (not res!948451) (not e!798577))))

(assert (=> b!1411122 (= res!948451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411123 () Bool)

(assert (=> b!1411123 (= e!798576 e!798578)))

(declare-fun res!948457 () Bool)

(assert (=> b!1411123 (=> res!948457 e!798578)))

(assert (=> b!1411123 (= res!948457 (or (= lt!621517 lt!621513) (not (is-Intermediate!10875 lt!621513))))))

(assert (=> b!1411123 (= lt!621513 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46542 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46542 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96416 (store (arr!46542 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47093 a!2901)) mask!2840))))

(declare-fun res!948455 () Bool)

(assert (=> start!121496 (=> (not res!948455) (not e!798577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121496 (= res!948455 (validMask!0 mask!2840))))

(assert (=> start!121496 e!798577))

(assert (=> start!121496 true))

(declare-fun array_inv!35487 (array!96415) Bool)

(assert (=> start!121496 (array_inv!35487 a!2901)))

(declare-fun b!1411116 () Bool)

(declare-fun res!948452 () Bool)

(assert (=> b!1411116 (=> (not res!948452) (not e!798577))))

(assert (=> b!1411116 (= res!948452 (and (= (size!47093 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47093 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47093 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121496 res!948455) b!1411116))

(assert (= (and b!1411116 res!948452) b!1411119))

(assert (= (and b!1411119 res!948456) b!1411120))

(assert (= (and b!1411120 res!948453) b!1411122))

(assert (= (and b!1411122 res!948451) b!1411115))

(assert (= (and b!1411115 res!948459) b!1411118))

(assert (= (and b!1411118 res!948458) b!1411117))

(assert (= (and b!1411118 (not res!948454)) b!1411123))

(assert (= (and b!1411123 (not res!948457)) b!1411121))

(declare-fun m!1300937 () Bool)

(assert (=> b!1411123 m!1300937))

(declare-fun m!1300939 () Bool)

(assert (=> b!1411123 m!1300939))

(assert (=> b!1411123 m!1300939))

(declare-fun m!1300941 () Bool)

(assert (=> b!1411123 m!1300941))

(assert (=> b!1411123 m!1300941))

(assert (=> b!1411123 m!1300939))

(declare-fun m!1300943 () Bool)

(assert (=> b!1411123 m!1300943))

(declare-fun m!1300945 () Bool)

(assert (=> start!121496 m!1300945))

(declare-fun m!1300947 () Bool)

(assert (=> start!121496 m!1300947))

(declare-fun m!1300949 () Bool)

(assert (=> b!1411121 m!1300949))

(declare-fun m!1300951 () Bool)

(assert (=> b!1411118 m!1300951))

(declare-fun m!1300953 () Bool)

(assert (=> b!1411118 m!1300953))

(assert (=> b!1411118 m!1300951))

(declare-fun m!1300955 () Bool)

(assert (=> b!1411118 m!1300955))

(assert (=> b!1411118 m!1300951))

(declare-fun m!1300957 () Bool)

(assert (=> b!1411118 m!1300957))

(declare-fun m!1300959 () Bool)

(assert (=> b!1411118 m!1300959))

(declare-fun m!1300961 () Bool)

(assert (=> b!1411122 m!1300961))

(declare-fun m!1300963 () Bool)

(assert (=> b!1411115 m!1300963))

(assert (=> b!1411120 m!1300951))

(assert (=> b!1411120 m!1300951))

(declare-fun m!1300965 () Bool)

(assert (=> b!1411120 m!1300965))

(assert (=> b!1411117 m!1300951))

(assert (=> b!1411117 m!1300951))

(declare-fun m!1300967 () Bool)

(assert (=> b!1411117 m!1300967))

(declare-fun m!1300969 () Bool)

(assert (=> b!1411119 m!1300969))

(assert (=> b!1411119 m!1300969))

(declare-fun m!1300971 () Bool)

(assert (=> b!1411119 m!1300971))

(push 1)

