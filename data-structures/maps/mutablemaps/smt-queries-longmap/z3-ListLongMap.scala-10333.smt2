; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121524 () Bool)

(assert start!121524)

(declare-fun b!1411493 () Bool)

(declare-fun res!948831 () Bool)

(declare-fun e!798786 () Bool)

(assert (=> b!1411493 (=> (not res!948831) (not e!798786))))

(declare-datatypes ((array!96443 0))(
  ( (array!96444 (arr!46556 (Array (_ BitVec 32) (_ BitVec 64))) (size!47107 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96443)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411493 (= res!948831 (validKeyInArray!0 (select (arr!46556 a!2901) i!1037)))))

(declare-fun b!1411494 () Bool)

(declare-fun e!798788 () Bool)

(assert (=> b!1411494 (= e!798788 true)))

(declare-datatypes ((SeekEntryResult!10889 0))(
  ( (MissingZero!10889 (index!45932 (_ BitVec 32))) (Found!10889 (index!45933 (_ BitVec 32))) (Intermediate!10889 (undefined!11701 Bool) (index!45934 (_ BitVec 32)) (x!127527 (_ BitVec 32))) (Undefined!10889) (MissingVacant!10889 (index!45935 (_ BitVec 32))) )
))
(declare-fun lt!621751 () SeekEntryResult!10889)

(declare-fun lt!621747 () SeekEntryResult!10889)

(assert (=> b!1411494 (and (not (undefined!11701 lt!621751)) (= (index!45934 lt!621751) i!1037) (bvslt (x!127527 lt!621751) (x!127527 lt!621747)) (= (select (store (arr!46556 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45934 lt!621751)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621746 () (_ BitVec 32))

(declare-datatypes ((Unit!47702 0))(
  ( (Unit!47703) )
))
(declare-fun lt!621749 () Unit!47702)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96443 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47702)

(assert (=> b!1411494 (= lt!621749 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621746 (x!127527 lt!621747) (index!45934 lt!621747) (x!127527 lt!621751) (index!45934 lt!621751) (undefined!11701 lt!621751) mask!2840))))

(declare-fun b!1411496 () Bool)

(declare-fun res!948829 () Bool)

(assert (=> b!1411496 (=> (not res!948829) (not e!798786))))

(declare-datatypes ((List!33255 0))(
  ( (Nil!33252) (Cons!33251 (h!34523 (_ BitVec 64)) (t!47956 List!33255)) )
))
(declare-fun arrayNoDuplicates!0 (array!96443 (_ BitVec 32) List!33255) Bool)

(assert (=> b!1411496 (= res!948829 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33252))))

(declare-fun b!1411497 () Bool)

(declare-fun e!798784 () Bool)

(assert (=> b!1411497 (= e!798786 (not e!798784))))

(declare-fun res!948832 () Bool)

(assert (=> b!1411497 (=> res!948832 e!798784)))

(get-info :version)

(assert (=> b!1411497 (= res!948832 (or (not ((_ is Intermediate!10889) lt!621747)) (undefined!11701 lt!621747)))))

(declare-fun e!798787 () Bool)

(assert (=> b!1411497 e!798787))

(declare-fun res!948834 () Bool)

(assert (=> b!1411497 (=> (not res!948834) (not e!798787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96443 (_ BitVec 32)) Bool)

(assert (=> b!1411497 (= res!948834 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621750 () Unit!47702)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96443 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47702)

(assert (=> b!1411497 (= lt!621750 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96443 (_ BitVec 32)) SeekEntryResult!10889)

(assert (=> b!1411497 (= lt!621747 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621746 (select (arr!46556 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411497 (= lt!621746 (toIndex!0 (select (arr!46556 a!2901) j!112) mask!2840))))

(declare-fun b!1411498 () Bool)

(declare-fun res!948835 () Bool)

(assert (=> b!1411498 (=> (not res!948835) (not e!798786))))

(assert (=> b!1411498 (= res!948835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411499 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96443 (_ BitVec 32)) SeekEntryResult!10889)

(assert (=> b!1411499 (= e!798787 (= (seekEntryOrOpen!0 (select (arr!46556 a!2901) j!112) a!2901 mask!2840) (Found!10889 j!112)))))

(declare-fun res!948837 () Bool)

(assert (=> start!121524 (=> (not res!948837) (not e!798786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121524 (= res!948837 (validMask!0 mask!2840))))

(assert (=> start!121524 e!798786))

(assert (=> start!121524 true))

(declare-fun array_inv!35501 (array!96443) Bool)

(assert (=> start!121524 (array_inv!35501 a!2901)))

(declare-fun b!1411495 () Bool)

(assert (=> b!1411495 (= e!798784 e!798788)))

(declare-fun res!948830 () Bool)

(assert (=> b!1411495 (=> res!948830 e!798788)))

(assert (=> b!1411495 (= res!948830 (or (= lt!621747 lt!621751) (not ((_ is Intermediate!10889) lt!621751))))))

(declare-fun lt!621748 () (_ BitVec 64))

(assert (=> b!1411495 (= lt!621751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621748 mask!2840) lt!621748 (array!96444 (store (arr!46556 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47107 a!2901)) mask!2840))))

(assert (=> b!1411495 (= lt!621748 (select (store (arr!46556 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411500 () Bool)

(declare-fun res!948833 () Bool)

(assert (=> b!1411500 (=> (not res!948833) (not e!798786))))

(assert (=> b!1411500 (= res!948833 (validKeyInArray!0 (select (arr!46556 a!2901) j!112)))))

(declare-fun b!1411501 () Bool)

(declare-fun res!948836 () Bool)

(assert (=> b!1411501 (=> (not res!948836) (not e!798786))))

(assert (=> b!1411501 (= res!948836 (and (= (size!47107 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47107 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47107 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!121524 res!948837) b!1411501))

(assert (= (and b!1411501 res!948836) b!1411493))

(assert (= (and b!1411493 res!948831) b!1411500))

(assert (= (and b!1411500 res!948833) b!1411498))

(assert (= (and b!1411498 res!948835) b!1411496))

(assert (= (and b!1411496 res!948829) b!1411497))

(assert (= (and b!1411497 res!948834) b!1411499))

(assert (= (and b!1411497 (not res!948832)) b!1411495))

(assert (= (and b!1411495 (not res!948830)) b!1411494))

(declare-fun m!1301455 () Bool)

(assert (=> b!1411499 m!1301455))

(assert (=> b!1411499 m!1301455))

(declare-fun m!1301457 () Bool)

(assert (=> b!1411499 m!1301457))

(declare-fun m!1301459 () Bool)

(assert (=> b!1411494 m!1301459))

(declare-fun m!1301461 () Bool)

(assert (=> b!1411494 m!1301461))

(declare-fun m!1301463 () Bool)

(assert (=> b!1411494 m!1301463))

(assert (=> b!1411500 m!1301455))

(assert (=> b!1411500 m!1301455))

(declare-fun m!1301465 () Bool)

(assert (=> b!1411500 m!1301465))

(declare-fun m!1301467 () Bool)

(assert (=> start!121524 m!1301467))

(declare-fun m!1301469 () Bool)

(assert (=> start!121524 m!1301469))

(declare-fun m!1301471 () Bool)

(assert (=> b!1411498 m!1301471))

(declare-fun m!1301473 () Bool)

(assert (=> b!1411496 m!1301473))

(declare-fun m!1301475 () Bool)

(assert (=> b!1411495 m!1301475))

(assert (=> b!1411495 m!1301459))

(assert (=> b!1411495 m!1301475))

(declare-fun m!1301477 () Bool)

(assert (=> b!1411495 m!1301477))

(declare-fun m!1301479 () Bool)

(assert (=> b!1411495 m!1301479))

(declare-fun m!1301481 () Bool)

(assert (=> b!1411493 m!1301481))

(assert (=> b!1411493 m!1301481))

(declare-fun m!1301483 () Bool)

(assert (=> b!1411493 m!1301483))

(assert (=> b!1411497 m!1301455))

(declare-fun m!1301485 () Bool)

(assert (=> b!1411497 m!1301485))

(assert (=> b!1411497 m!1301455))

(declare-fun m!1301487 () Bool)

(assert (=> b!1411497 m!1301487))

(declare-fun m!1301489 () Bool)

(assert (=> b!1411497 m!1301489))

(assert (=> b!1411497 m!1301455))

(declare-fun m!1301491 () Bool)

(assert (=> b!1411497 m!1301491))

(check-sat (not b!1411499) (not start!121524) (not b!1411493) (not b!1411496) (not b!1411495) (not b!1411494) (not b!1411497) (not b!1411498) (not b!1411500))
(check-sat)
