; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120038 () Bool)

(assert start!120038)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95485 0))(
  ( (array!95486 (arr!46092 (Array (_ BitVec 32) (_ BitVec 64))) (size!46643 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95485)

(declare-fun b!1396847 () Bool)

(declare-fun e!790834 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10431 0))(
  ( (MissingZero!10431 (index!44094 (_ BitVec 32))) (Found!10431 (index!44095 (_ BitVec 32))) (Intermediate!10431 (undefined!11243 Bool) (index!44096 (_ BitVec 32)) (x!125760 (_ BitVec 32))) (Undefined!10431) (MissingVacant!10431 (index!44097 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95485 (_ BitVec 32)) SeekEntryResult!10431)

(assert (=> b!1396847 (= e!790834 (= (seekEntryOrOpen!0 (select (arr!46092 a!2901) j!112) a!2901 mask!2840) (Found!10431 j!112)))))

(declare-fun res!935872 () Bool)

(declare-fun e!790833 () Bool)

(assert (=> start!120038 (=> (not res!935872) (not e!790833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120038 (= res!935872 (validMask!0 mask!2840))))

(assert (=> start!120038 e!790833))

(assert (=> start!120038 true))

(declare-fun array_inv!35037 (array!95485) Bool)

(assert (=> start!120038 (array_inv!35037 a!2901)))

(declare-fun b!1396848 () Bool)

(declare-fun res!935876 () Bool)

(assert (=> b!1396848 (=> (not res!935876) (not e!790833))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396848 (= res!935876 (and (= (size!46643 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46643 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46643 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396849 () Bool)

(declare-fun res!935871 () Bool)

(assert (=> b!1396849 (=> (not res!935871) (not e!790833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396849 (= res!935871 (validKeyInArray!0 (select (arr!46092 a!2901) j!112)))))

(declare-fun b!1396850 () Bool)

(declare-fun res!935870 () Bool)

(assert (=> b!1396850 (=> (not res!935870) (not e!790833))))

(assert (=> b!1396850 (= res!935870 (validKeyInArray!0 (select (arr!46092 a!2901) i!1037)))))

(declare-fun b!1396851 () Bool)

(declare-fun res!935875 () Bool)

(assert (=> b!1396851 (=> (not res!935875) (not e!790833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95485 (_ BitVec 32)) Bool)

(assert (=> b!1396851 (= res!935875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396852 () Bool)

(declare-fun e!790831 () Bool)

(assert (=> b!1396852 (= e!790833 (not e!790831))))

(declare-fun res!935869 () Bool)

(assert (=> b!1396852 (=> res!935869 e!790831)))

(declare-fun lt!613749 () SeekEntryResult!10431)

(assert (=> b!1396852 (= res!935869 (or (not (is-Intermediate!10431 lt!613749)) (undefined!11243 lt!613749)))))

(assert (=> b!1396852 e!790834))

(declare-fun res!935874 () Bool)

(assert (=> b!1396852 (=> (not res!935874) (not e!790834))))

(assert (=> b!1396852 (= res!935874 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46816 0))(
  ( (Unit!46817) )
))
(declare-fun lt!613753 () Unit!46816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46816)

(assert (=> b!1396852 (= lt!613753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613747 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95485 (_ BitVec 32)) SeekEntryResult!10431)

(assert (=> b!1396852 (= lt!613749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613747 (select (arr!46092 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396852 (= lt!613747 (toIndex!0 (select (arr!46092 a!2901) j!112) mask!2840))))

(declare-fun b!1396853 () Bool)

(declare-fun res!935873 () Bool)

(assert (=> b!1396853 (=> (not res!935873) (not e!790833))))

(declare-datatypes ((List!32791 0))(
  ( (Nil!32788) (Cons!32787 (h!34029 (_ BitVec 64)) (t!47492 List!32791)) )
))
(declare-fun arrayNoDuplicates!0 (array!95485 (_ BitVec 32) List!32791) Bool)

(assert (=> b!1396853 (= res!935873 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32788))))

(declare-fun b!1396854 () Bool)

(declare-fun e!790832 () Bool)

(assert (=> b!1396854 (= e!790832 true)))

(declare-fun lt!613748 () array!95485)

(declare-fun lt!613750 () SeekEntryResult!10431)

(declare-fun lt!613751 () (_ BitVec 64))

(assert (=> b!1396854 (= lt!613750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613747 lt!613751 lt!613748 mask!2840))))

(declare-fun b!1396855 () Bool)

(assert (=> b!1396855 (= e!790831 e!790832)))

(declare-fun res!935877 () Bool)

(assert (=> b!1396855 (=> res!935877 e!790832)))

(declare-fun lt!613752 () SeekEntryResult!10431)

(assert (=> b!1396855 (= res!935877 (or (= lt!613749 lt!613752) (not (is-Intermediate!10431 lt!613752)) (bvslt (x!125760 lt!613749) #b00000000000000000000000000000000) (bvsgt (x!125760 lt!613749) #b01111111111111111111111111111110) (bvslt lt!613747 #b00000000000000000000000000000000) (bvsge lt!613747 (size!46643 a!2901)) (bvslt (index!44096 lt!613749) #b00000000000000000000000000000000) (bvsge (index!44096 lt!613749) (size!46643 a!2901)) (not (= lt!613749 (Intermediate!10431 false (index!44096 lt!613749) (x!125760 lt!613749)))) (not (= lt!613752 (Intermediate!10431 (undefined!11243 lt!613752) (index!44096 lt!613752) (x!125760 lt!613752))))))))

(assert (=> b!1396855 (= lt!613752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613751 mask!2840) lt!613751 lt!613748 mask!2840))))

(assert (=> b!1396855 (= lt!613751 (select (store (arr!46092 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396855 (= lt!613748 (array!95486 (store (arr!46092 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46643 a!2901)))))

(assert (= (and start!120038 res!935872) b!1396848))

(assert (= (and b!1396848 res!935876) b!1396850))

(assert (= (and b!1396850 res!935870) b!1396849))

(assert (= (and b!1396849 res!935871) b!1396851))

(assert (= (and b!1396851 res!935875) b!1396853))

(assert (= (and b!1396853 res!935873) b!1396852))

(assert (= (and b!1396852 res!935874) b!1396847))

(assert (= (and b!1396852 (not res!935869)) b!1396855))

(assert (= (and b!1396855 (not res!935877)) b!1396854))

(declare-fun m!1283507 () Bool)

(assert (=> b!1396854 m!1283507))

(declare-fun m!1283509 () Bool)

(assert (=> b!1396852 m!1283509))

(declare-fun m!1283511 () Bool)

(assert (=> b!1396852 m!1283511))

(assert (=> b!1396852 m!1283509))

(declare-fun m!1283513 () Bool)

(assert (=> b!1396852 m!1283513))

(declare-fun m!1283515 () Bool)

(assert (=> b!1396852 m!1283515))

(assert (=> b!1396852 m!1283509))

(declare-fun m!1283517 () Bool)

(assert (=> b!1396852 m!1283517))

(assert (=> b!1396849 m!1283509))

(assert (=> b!1396849 m!1283509))

(declare-fun m!1283519 () Bool)

(assert (=> b!1396849 m!1283519))

(declare-fun m!1283521 () Bool)

(assert (=> b!1396853 m!1283521))

(declare-fun m!1283523 () Bool)

(assert (=> b!1396851 m!1283523))

(declare-fun m!1283525 () Bool)

(assert (=> b!1396850 m!1283525))

(assert (=> b!1396850 m!1283525))

(declare-fun m!1283527 () Bool)

(assert (=> b!1396850 m!1283527))

(assert (=> b!1396847 m!1283509))

(assert (=> b!1396847 m!1283509))

(declare-fun m!1283529 () Bool)

(assert (=> b!1396847 m!1283529))

(declare-fun m!1283531 () Bool)

(assert (=> b!1396855 m!1283531))

(assert (=> b!1396855 m!1283531))

(declare-fun m!1283533 () Bool)

(assert (=> b!1396855 m!1283533))

(declare-fun m!1283535 () Bool)

(assert (=> b!1396855 m!1283535))

(declare-fun m!1283537 () Bool)

(assert (=> b!1396855 m!1283537))

(declare-fun m!1283539 () Bool)

(assert (=> start!120038 m!1283539))

(declare-fun m!1283541 () Bool)

(assert (=> start!120038 m!1283541))

(push 1)

(assert (not b!1396854))

(assert (not b!1396853))

(assert (not b!1396852))

(assert (not b!1396855))

(assert (not b!1396851))

(assert (not b!1396849))

(assert (not start!120038))

(assert (not b!1396850))

(assert (not b!1396847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

