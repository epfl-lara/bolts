; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121530 () Bool)

(assert start!121530)

(declare-fun b!1411574 () Bool)

(declare-fun e!798831 () Bool)

(declare-fun e!798832 () Bool)

(assert (=> b!1411574 (= e!798831 (not e!798832))))

(declare-fun res!948914 () Bool)

(assert (=> b!1411574 (=> res!948914 e!798832)))

(declare-datatypes ((SeekEntryResult!10892 0))(
  ( (MissingZero!10892 (index!45944 (_ BitVec 32))) (Found!10892 (index!45945 (_ BitVec 32))) (Intermediate!10892 (undefined!11704 Bool) (index!45946 (_ BitVec 32)) (x!127538 (_ BitVec 32))) (Undefined!10892) (MissingVacant!10892 (index!45947 (_ BitVec 32))) )
))
(declare-fun lt!621800 () SeekEntryResult!10892)

(get-info :version)

(assert (=> b!1411574 (= res!948914 (or (not ((_ is Intermediate!10892) lt!621800)) (undefined!11704 lt!621800)))))

(declare-fun e!798833 () Bool)

(assert (=> b!1411574 e!798833))

(declare-fun res!948917 () Bool)

(assert (=> b!1411574 (=> (not res!948917) (not e!798833))))

(declare-datatypes ((array!96449 0))(
  ( (array!96450 (arr!46559 (Array (_ BitVec 32) (_ BitVec 64))) (size!47110 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96449)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96449 (_ BitVec 32)) Bool)

(assert (=> b!1411574 (= res!948917 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47708 0))(
  ( (Unit!47709) )
))
(declare-fun lt!621803 () Unit!47708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47708)

(assert (=> b!1411574 (= lt!621803 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!621802 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96449 (_ BitVec 32)) SeekEntryResult!10892)

(assert (=> b!1411574 (= lt!621800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621802 (select (arr!46559 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411574 (= lt!621802 (toIndex!0 (select (arr!46559 a!2901) j!112) mask!2840))))

(declare-fun b!1411575 () Bool)

(declare-fun res!948911 () Bool)

(assert (=> b!1411575 (=> (not res!948911) (not e!798831))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1411575 (= res!948911 (and (= (size!47110 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47110 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47110 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411576 () Bool)

(declare-fun res!948910 () Bool)

(assert (=> b!1411576 (=> (not res!948910) (not e!798831))))

(assert (=> b!1411576 (= res!948910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1411577 () Bool)

(declare-fun e!798830 () Bool)

(assert (=> b!1411577 (= e!798832 e!798830)))

(declare-fun res!948912 () Bool)

(assert (=> b!1411577 (=> res!948912 e!798830)))

(declare-fun lt!621805 () SeekEntryResult!10892)

(assert (=> b!1411577 (= res!948912 (or (= lt!621800 lt!621805) (not ((_ is Intermediate!10892) lt!621805))))))

(declare-fun lt!621801 () (_ BitVec 64))

(assert (=> b!1411577 (= lt!621805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621801 mask!2840) lt!621801 (array!96450 (store (arr!46559 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47110 a!2901)) mask!2840))))

(assert (=> b!1411577 (= lt!621801 (select (store (arr!46559 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411578 () Bool)

(assert (=> b!1411578 (= e!798830 true)))

(assert (=> b!1411578 (and (not (undefined!11704 lt!621805)) (= (index!45946 lt!621805) i!1037) (bvslt (x!127538 lt!621805) (x!127538 lt!621800)) (= (select (store (arr!46559 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45946 lt!621805)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!621804 () Unit!47708)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47708)

(assert (=> b!1411578 (= lt!621804 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621802 (x!127538 lt!621800) (index!45946 lt!621800) (x!127538 lt!621805) (index!45946 lt!621805) (undefined!11704 lt!621805) mask!2840))))

(declare-fun b!1411579 () Bool)

(declare-fun res!948915 () Bool)

(assert (=> b!1411579 (=> (not res!948915) (not e!798831))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411579 (= res!948915 (validKeyInArray!0 (select (arr!46559 a!2901) i!1037)))))

(declare-fun res!948916 () Bool)

(assert (=> start!121530 (=> (not res!948916) (not e!798831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121530 (= res!948916 (validMask!0 mask!2840))))

(assert (=> start!121530 e!798831))

(assert (=> start!121530 true))

(declare-fun array_inv!35504 (array!96449) Bool)

(assert (=> start!121530 (array_inv!35504 a!2901)))

(declare-fun b!1411580 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96449 (_ BitVec 32)) SeekEntryResult!10892)

(assert (=> b!1411580 (= e!798833 (= (seekEntryOrOpen!0 (select (arr!46559 a!2901) j!112) a!2901 mask!2840) (Found!10892 j!112)))))

(declare-fun b!1411581 () Bool)

(declare-fun res!948913 () Bool)

(assert (=> b!1411581 (=> (not res!948913) (not e!798831))))

(declare-datatypes ((List!33258 0))(
  ( (Nil!33255) (Cons!33254 (h!34526 (_ BitVec 64)) (t!47959 List!33258)) )
))
(declare-fun arrayNoDuplicates!0 (array!96449 (_ BitVec 32) List!33258) Bool)

(assert (=> b!1411581 (= res!948913 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33255))))

(declare-fun b!1411582 () Bool)

(declare-fun res!948918 () Bool)

(assert (=> b!1411582 (=> (not res!948918) (not e!798831))))

(assert (=> b!1411582 (= res!948918 (validKeyInArray!0 (select (arr!46559 a!2901) j!112)))))

(assert (= (and start!121530 res!948916) b!1411575))

(assert (= (and b!1411575 res!948911) b!1411579))

(assert (= (and b!1411579 res!948915) b!1411582))

(assert (= (and b!1411582 res!948918) b!1411576))

(assert (= (and b!1411576 res!948910) b!1411581))

(assert (= (and b!1411581 res!948913) b!1411574))

(assert (= (and b!1411574 res!948917) b!1411580))

(assert (= (and b!1411574 (not res!948914)) b!1411577))

(assert (= (and b!1411577 (not res!948912)) b!1411578))

(declare-fun m!1301569 () Bool)

(assert (=> b!1411579 m!1301569))

(assert (=> b!1411579 m!1301569))

(declare-fun m!1301571 () Bool)

(assert (=> b!1411579 m!1301571))

(declare-fun m!1301573 () Bool)

(assert (=> b!1411582 m!1301573))

(assert (=> b!1411582 m!1301573))

(declare-fun m!1301575 () Bool)

(assert (=> b!1411582 m!1301575))

(declare-fun m!1301577 () Bool)

(assert (=> b!1411576 m!1301577))

(declare-fun m!1301579 () Bool)

(assert (=> b!1411581 m!1301579))

(assert (=> b!1411574 m!1301573))

(declare-fun m!1301581 () Bool)

(assert (=> b!1411574 m!1301581))

(assert (=> b!1411574 m!1301573))

(assert (=> b!1411574 m!1301573))

(declare-fun m!1301583 () Bool)

(assert (=> b!1411574 m!1301583))

(declare-fun m!1301585 () Bool)

(assert (=> b!1411574 m!1301585))

(declare-fun m!1301587 () Bool)

(assert (=> b!1411574 m!1301587))

(declare-fun m!1301589 () Bool)

(assert (=> start!121530 m!1301589))

(declare-fun m!1301591 () Bool)

(assert (=> start!121530 m!1301591))

(declare-fun m!1301593 () Bool)

(assert (=> b!1411577 m!1301593))

(declare-fun m!1301595 () Bool)

(assert (=> b!1411577 m!1301595))

(assert (=> b!1411577 m!1301593))

(declare-fun m!1301597 () Bool)

(assert (=> b!1411577 m!1301597))

(declare-fun m!1301599 () Bool)

(assert (=> b!1411577 m!1301599))

(assert (=> b!1411580 m!1301573))

(assert (=> b!1411580 m!1301573))

(declare-fun m!1301601 () Bool)

(assert (=> b!1411580 m!1301601))

(assert (=> b!1411578 m!1301595))

(declare-fun m!1301603 () Bool)

(assert (=> b!1411578 m!1301603))

(declare-fun m!1301605 () Bool)

(assert (=> b!1411578 m!1301605))

(check-sat (not b!1411579) (not b!1411582) (not start!121530) (not b!1411576) (not b!1411577) (not b!1411581) (not b!1411580) (not b!1411574) (not b!1411578))
(check-sat)
