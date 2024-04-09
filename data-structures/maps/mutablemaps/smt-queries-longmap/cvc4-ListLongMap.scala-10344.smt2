; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121658 () Bool)

(assert start!121658)

(declare-fun b!1412800 () Bool)

(declare-fun e!799556 () Bool)

(declare-fun e!799552 () Bool)

(assert (=> b!1412800 (= e!799556 e!799552)))

(declare-fun res!949906 () Bool)

(assert (=> b!1412800 (=> res!949906 e!799552)))

(declare-datatypes ((SeekEntryResult!10923 0))(
  ( (MissingZero!10923 (index!46071 (_ BitVec 32))) (Found!10923 (index!46072 (_ BitVec 32))) (Intermediate!10923 (undefined!11735 Bool) (index!46073 (_ BitVec 32)) (x!127661 (_ BitVec 32))) (Undefined!10923) (MissingVacant!10923 (index!46074 (_ BitVec 32))) )
))
(declare-fun lt!622589 () SeekEntryResult!10923)

(declare-fun lt!622591 () SeekEntryResult!10923)

(assert (=> b!1412800 (= res!949906 (or (= lt!622589 lt!622591) (not (is-Intermediate!10923 lt!622591))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96514 0))(
  ( (array!96515 (arr!46590 (Array (_ BitVec 32) (_ BitVec 64))) (size!47141 (_ BitVec 32))) )
))
(declare-fun lt!622586 () array!96514)

(declare-fun lt!622590 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96514 (_ BitVec 32)) SeekEntryResult!10923)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412800 (= lt!622591 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622590 mask!2840) lt!622590 lt!622586 mask!2840))))

(declare-fun a!2901 () array!96514)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412800 (= lt!622590 (select (store (arr!46590 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412800 (= lt!622586 (array!96515 (store (arr!46590 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47141 a!2901)))))

(declare-fun b!1412801 () Bool)

(declare-fun res!949904 () Bool)

(declare-fun e!799551 () Bool)

(assert (=> b!1412801 (=> (not res!949904) (not e!799551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412801 (= res!949904 (validKeyInArray!0 (select (arr!46590 a!2901) i!1037)))))

(declare-fun b!1412802 () Bool)

(declare-fun e!799553 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96514 (_ BitVec 32)) SeekEntryResult!10923)

(assert (=> b!1412802 (= e!799553 (= (seekEntryOrOpen!0 (select (arr!46590 a!2901) j!112) a!2901 mask!2840) (Found!10923 j!112)))))

(declare-fun b!1412803 () Bool)

(assert (=> b!1412803 (= e!799552 true)))

(declare-fun e!799554 () Bool)

(assert (=> b!1412803 e!799554))

(declare-fun res!949903 () Bool)

(assert (=> b!1412803 (=> (not res!949903) (not e!799554))))

(assert (=> b!1412803 (= res!949903 (and (not (undefined!11735 lt!622591)) (= (index!46073 lt!622591) i!1037) (bvslt (x!127661 lt!622591) (x!127661 lt!622589)) (= (select (store (arr!46590 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46073 lt!622591)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47770 0))(
  ( (Unit!47771) )
))
(declare-fun lt!622585 () Unit!47770)

(declare-fun lt!622587 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47770)

(assert (=> b!1412803 (= lt!622585 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622587 (x!127661 lt!622589) (index!46073 lt!622589) (x!127661 lt!622591) (index!46073 lt!622591) (undefined!11735 lt!622591) mask!2840))))

(declare-fun b!1412804 () Bool)

(declare-fun res!949905 () Bool)

(assert (=> b!1412804 (=> (not res!949905) (not e!799551))))

(declare-datatypes ((List!33289 0))(
  ( (Nil!33286) (Cons!33285 (h!34560 (_ BitVec 64)) (t!47990 List!33289)) )
))
(declare-fun arrayNoDuplicates!0 (array!96514 (_ BitVec 32) List!33289) Bool)

(assert (=> b!1412804 (= res!949905 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33286))))

(declare-fun res!949908 () Bool)

(assert (=> start!121658 (=> (not res!949908) (not e!799551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121658 (= res!949908 (validMask!0 mask!2840))))

(assert (=> start!121658 e!799551))

(assert (=> start!121658 true))

(declare-fun array_inv!35535 (array!96514) Bool)

(assert (=> start!121658 (array_inv!35535 a!2901)))

(declare-fun b!1412805 () Bool)

(assert (=> b!1412805 (= e!799551 (not e!799556))))

(declare-fun res!949900 () Bool)

(assert (=> b!1412805 (=> res!949900 e!799556)))

(assert (=> b!1412805 (= res!949900 (or (not (is-Intermediate!10923 lt!622589)) (undefined!11735 lt!622589)))))

(assert (=> b!1412805 e!799553))

(declare-fun res!949902 () Bool)

(assert (=> b!1412805 (=> (not res!949902) (not e!799553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96514 (_ BitVec 32)) Bool)

(assert (=> b!1412805 (= res!949902 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622588 () Unit!47770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47770)

(assert (=> b!1412805 (= lt!622588 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412805 (= lt!622589 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622587 (select (arr!46590 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412805 (= lt!622587 (toIndex!0 (select (arr!46590 a!2901) j!112) mask!2840))))

(declare-fun b!1412806 () Bool)

(declare-fun res!949901 () Bool)

(assert (=> b!1412806 (=> (not res!949901) (not e!799551))))

(assert (=> b!1412806 (= res!949901 (validKeyInArray!0 (select (arr!46590 a!2901) j!112)))))

(declare-fun b!1412807 () Bool)

(declare-fun res!949899 () Bool)

(assert (=> b!1412807 (=> (not res!949899) (not e!799551))))

(assert (=> b!1412807 (= res!949899 (and (= (size!47141 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47141 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47141 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412808 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96514 (_ BitVec 32)) SeekEntryResult!10923)

(assert (=> b!1412808 (= e!799554 (= (seekEntryOrOpen!0 lt!622590 lt!622586 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127661 lt!622591) (index!46073 lt!622591) (index!46073 lt!622591) (select (arr!46590 a!2901) j!112) lt!622586 mask!2840)))))

(declare-fun b!1412809 () Bool)

(declare-fun res!949907 () Bool)

(assert (=> b!1412809 (=> (not res!949907) (not e!799551))))

(assert (=> b!1412809 (= res!949907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121658 res!949908) b!1412807))

(assert (= (and b!1412807 res!949899) b!1412801))

(assert (= (and b!1412801 res!949904) b!1412806))

(assert (= (and b!1412806 res!949901) b!1412809))

(assert (= (and b!1412809 res!949907) b!1412804))

(assert (= (and b!1412804 res!949905) b!1412805))

(assert (= (and b!1412805 res!949902) b!1412802))

(assert (= (and b!1412805 (not res!949900)) b!1412800))

(assert (= (and b!1412800 (not res!949906)) b!1412803))

(assert (= (and b!1412803 res!949903) b!1412808))

(declare-fun m!1303061 () Bool)

(assert (=> b!1412809 m!1303061))

(declare-fun m!1303063 () Bool)

(assert (=> b!1412801 m!1303063))

(assert (=> b!1412801 m!1303063))

(declare-fun m!1303065 () Bool)

(assert (=> b!1412801 m!1303065))

(declare-fun m!1303067 () Bool)

(assert (=> start!121658 m!1303067))

(declare-fun m!1303069 () Bool)

(assert (=> start!121658 m!1303069))

(declare-fun m!1303071 () Bool)

(assert (=> b!1412806 m!1303071))

(assert (=> b!1412806 m!1303071))

(declare-fun m!1303073 () Bool)

(assert (=> b!1412806 m!1303073))

(declare-fun m!1303075 () Bool)

(assert (=> b!1412808 m!1303075))

(assert (=> b!1412808 m!1303071))

(assert (=> b!1412808 m!1303071))

(declare-fun m!1303077 () Bool)

(assert (=> b!1412808 m!1303077))

(declare-fun m!1303079 () Bool)

(assert (=> b!1412800 m!1303079))

(assert (=> b!1412800 m!1303079))

(declare-fun m!1303081 () Bool)

(assert (=> b!1412800 m!1303081))

(declare-fun m!1303083 () Bool)

(assert (=> b!1412800 m!1303083))

(declare-fun m!1303085 () Bool)

(assert (=> b!1412800 m!1303085))

(declare-fun m!1303087 () Bool)

(assert (=> b!1412804 m!1303087))

(assert (=> b!1412805 m!1303071))

(declare-fun m!1303089 () Bool)

(assert (=> b!1412805 m!1303089))

(declare-fun m!1303091 () Bool)

(assert (=> b!1412805 m!1303091))

(declare-fun m!1303093 () Bool)

(assert (=> b!1412805 m!1303093))

(assert (=> b!1412805 m!1303071))

(declare-fun m!1303095 () Bool)

(assert (=> b!1412805 m!1303095))

(assert (=> b!1412805 m!1303071))

(assert (=> b!1412802 m!1303071))

(assert (=> b!1412802 m!1303071))

(declare-fun m!1303097 () Bool)

(assert (=> b!1412802 m!1303097))

(assert (=> b!1412803 m!1303083))

(declare-fun m!1303099 () Bool)

(assert (=> b!1412803 m!1303099))

(declare-fun m!1303101 () Bool)

(assert (=> b!1412803 m!1303101))

(push 1)

