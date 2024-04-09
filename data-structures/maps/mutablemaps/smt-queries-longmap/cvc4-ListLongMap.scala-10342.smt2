; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121646 () Bool)

(assert start!121646)

(declare-fun b!1412620 () Bool)

(declare-fun res!949723 () Bool)

(declare-fun e!799447 () Bool)

(assert (=> b!1412620 (=> (not res!949723) (not e!799447))))

(declare-datatypes ((array!96502 0))(
  ( (array!96503 (arr!46584 (Array (_ BitVec 32) (_ BitVec 64))) (size!47135 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96502)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96502 (_ BitVec 32)) Bool)

(assert (=> b!1412620 (= res!949723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412621 () Bool)

(declare-fun res!949720 () Bool)

(assert (=> b!1412621 (=> (not res!949720) (not e!799447))))

(declare-datatypes ((List!33283 0))(
  ( (Nil!33280) (Cons!33279 (h!34554 (_ BitVec 64)) (t!47984 List!33283)) )
))
(declare-fun arrayNoDuplicates!0 (array!96502 (_ BitVec 32) List!33283) Bool)

(assert (=> b!1412621 (= res!949720 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33280))))

(declare-fun res!949725 () Bool)

(assert (=> start!121646 (=> (not res!949725) (not e!799447))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121646 (= res!949725 (validMask!0 mask!2840))))

(assert (=> start!121646 e!799447))

(assert (=> start!121646 true))

(declare-fun array_inv!35529 (array!96502) Bool)

(assert (=> start!121646 (array_inv!35529 a!2901)))

(declare-fun b!1412622 () Bool)

(declare-fun res!949728 () Bool)

(assert (=> b!1412622 (=> (not res!949728) (not e!799447))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412622 (= res!949728 (validKeyInArray!0 (select (arr!46584 a!2901) i!1037)))))

(declare-fun lt!622461 () (_ BitVec 64))

(declare-fun e!799444 () Bool)

(declare-fun b!1412623 () Bool)

(declare-datatypes ((SeekEntryResult!10917 0))(
  ( (MissingZero!10917 (index!46047 (_ BitVec 32))) (Found!10917 (index!46048 (_ BitVec 32))) (Intermediate!10917 (undefined!11729 Bool) (index!46049 (_ BitVec 32)) (x!127639 (_ BitVec 32))) (Undefined!10917) (MissingVacant!10917 (index!46050 (_ BitVec 32))) )
))
(declare-fun lt!622459 () SeekEntryResult!10917)

(declare-fun lt!622465 () array!96502)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96502 (_ BitVec 32)) SeekEntryResult!10917)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96502 (_ BitVec 32)) SeekEntryResult!10917)

(assert (=> b!1412623 (= e!799444 (= (seekEntryOrOpen!0 lt!622461 lt!622465 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127639 lt!622459) (index!46049 lt!622459) (index!46049 lt!622459) (select (arr!46584 a!2901) j!112) lt!622465 mask!2840)))))

(declare-fun b!1412624 () Bool)

(declare-fun e!799443 () Bool)

(declare-fun e!799448 () Bool)

(assert (=> b!1412624 (= e!799443 e!799448)))

(declare-fun res!949722 () Bool)

(assert (=> b!1412624 (=> res!949722 e!799448)))

(declare-fun lt!622463 () SeekEntryResult!10917)

(assert (=> b!1412624 (= res!949722 (or (= lt!622463 lt!622459) (not (is-Intermediate!10917 lt!622459))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96502 (_ BitVec 32)) SeekEntryResult!10917)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412624 (= lt!622459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622461 mask!2840) lt!622461 lt!622465 mask!2840))))

(assert (=> b!1412624 (= lt!622461 (select (store (arr!46584 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412624 (= lt!622465 (array!96503 (store (arr!46584 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47135 a!2901)))))

(declare-fun b!1412625 () Bool)

(declare-fun res!949721 () Bool)

(assert (=> b!1412625 (=> (not res!949721) (not e!799447))))

(assert (=> b!1412625 (= res!949721 (validKeyInArray!0 (select (arr!46584 a!2901) j!112)))))

(declare-fun b!1412626 () Bool)

(assert (=> b!1412626 (= e!799448 true)))

(assert (=> b!1412626 e!799444))

(declare-fun res!949719 () Bool)

(assert (=> b!1412626 (=> (not res!949719) (not e!799444))))

(assert (=> b!1412626 (= res!949719 (and (not (undefined!11729 lt!622459)) (= (index!46049 lt!622459) i!1037) (bvslt (x!127639 lt!622459) (x!127639 lt!622463)) (= (select (store (arr!46584 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46049 lt!622459)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47758 0))(
  ( (Unit!47759) )
))
(declare-fun lt!622460 () Unit!47758)

(declare-fun lt!622464 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47758)

(assert (=> b!1412626 (= lt!622460 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622464 (x!127639 lt!622463) (index!46049 lt!622463) (x!127639 lt!622459) (index!46049 lt!622459) (undefined!11729 lt!622459) mask!2840))))

(declare-fun b!1412627 () Bool)

(assert (=> b!1412627 (= e!799447 (not e!799443))))

(declare-fun res!949727 () Bool)

(assert (=> b!1412627 (=> res!949727 e!799443)))

(assert (=> b!1412627 (= res!949727 (or (not (is-Intermediate!10917 lt!622463)) (undefined!11729 lt!622463)))))

(declare-fun e!799446 () Bool)

(assert (=> b!1412627 e!799446))

(declare-fun res!949724 () Bool)

(assert (=> b!1412627 (=> (not res!949724) (not e!799446))))

(assert (=> b!1412627 (= res!949724 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622462 () Unit!47758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47758)

(assert (=> b!1412627 (= lt!622462 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412627 (= lt!622463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622464 (select (arr!46584 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412627 (= lt!622464 (toIndex!0 (select (arr!46584 a!2901) j!112) mask!2840))))

(declare-fun b!1412628 () Bool)

(declare-fun res!949726 () Bool)

(assert (=> b!1412628 (=> (not res!949726) (not e!799447))))

(assert (=> b!1412628 (= res!949726 (and (= (size!47135 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47135 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47135 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412629 () Bool)

(assert (=> b!1412629 (= e!799446 (= (seekEntryOrOpen!0 (select (arr!46584 a!2901) j!112) a!2901 mask!2840) (Found!10917 j!112)))))

(assert (= (and start!121646 res!949725) b!1412628))

(assert (= (and b!1412628 res!949726) b!1412622))

(assert (= (and b!1412622 res!949728) b!1412625))

(assert (= (and b!1412625 res!949721) b!1412620))

(assert (= (and b!1412620 res!949723) b!1412621))

(assert (= (and b!1412621 res!949720) b!1412627))

(assert (= (and b!1412627 res!949724) b!1412629))

(assert (= (and b!1412627 (not res!949727)) b!1412624))

(assert (= (and b!1412624 (not res!949722)) b!1412626))

(assert (= (and b!1412626 res!949719) b!1412623))

(declare-fun m!1302809 () Bool)

(assert (=> b!1412621 m!1302809))

(declare-fun m!1302811 () Bool)

(assert (=> b!1412622 m!1302811))

(assert (=> b!1412622 m!1302811))

(declare-fun m!1302813 () Bool)

(assert (=> b!1412622 m!1302813))

(declare-fun m!1302815 () Bool)

(assert (=> start!121646 m!1302815))

(declare-fun m!1302817 () Bool)

(assert (=> start!121646 m!1302817))

(declare-fun m!1302819 () Bool)

(assert (=> b!1412625 m!1302819))

(assert (=> b!1412625 m!1302819))

(declare-fun m!1302821 () Bool)

(assert (=> b!1412625 m!1302821))

(declare-fun m!1302823 () Bool)

(assert (=> b!1412624 m!1302823))

(assert (=> b!1412624 m!1302823))

(declare-fun m!1302825 () Bool)

(assert (=> b!1412624 m!1302825))

(declare-fun m!1302827 () Bool)

(assert (=> b!1412624 m!1302827))

(declare-fun m!1302829 () Bool)

(assert (=> b!1412624 m!1302829))

(assert (=> b!1412629 m!1302819))

(assert (=> b!1412629 m!1302819))

(declare-fun m!1302831 () Bool)

(assert (=> b!1412629 m!1302831))

(declare-fun m!1302833 () Bool)

(assert (=> b!1412623 m!1302833))

(assert (=> b!1412623 m!1302819))

(assert (=> b!1412623 m!1302819))

(declare-fun m!1302835 () Bool)

(assert (=> b!1412623 m!1302835))

(assert (=> b!1412627 m!1302819))

(declare-fun m!1302837 () Bool)

(assert (=> b!1412627 m!1302837))

(declare-fun m!1302839 () Bool)

(assert (=> b!1412627 m!1302839))

(assert (=> b!1412627 m!1302819))

(declare-fun m!1302841 () Bool)

(assert (=> b!1412627 m!1302841))

(assert (=> b!1412627 m!1302819))

(declare-fun m!1302843 () Bool)

(assert (=> b!1412627 m!1302843))

(declare-fun m!1302845 () Bool)

(assert (=> b!1412620 m!1302845))

(assert (=> b!1412626 m!1302827))

(declare-fun m!1302847 () Bool)

(assert (=> b!1412626 m!1302847))

(declare-fun m!1302849 () Bool)

(assert (=> b!1412626 m!1302849))

(push 1)

(assert (not b!1412625))

(assert (not b!1412621))

(assert (not start!121646))

(assert (not b!1412624))

(assert (not b!1412623))

