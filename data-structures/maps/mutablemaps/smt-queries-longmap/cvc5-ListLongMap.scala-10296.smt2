; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121138 () Bool)

(assert start!121138)

(declare-fun b!1407893 () Bool)

(declare-fun e!796869 () Bool)

(declare-fun e!796868 () Bool)

(assert (=> b!1407893 (= e!796869 e!796868)))

(declare-fun res!945726 () Bool)

(assert (=> b!1407893 (=> res!945726 e!796868)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96210 0))(
  ( (array!96211 (arr!46444 (Array (_ BitVec 32) (_ BitVec 64))) (size!46995 (_ BitVec 32))) )
))
(declare-fun lt!619957 () array!96210)

(declare-datatypes ((SeekEntryResult!10777 0))(
  ( (MissingZero!10777 (index!45484 (_ BitVec 32))) (Found!10777 (index!45485 (_ BitVec 32))) (Intermediate!10777 (undefined!11589 Bool) (index!45486 (_ BitVec 32)) (x!127101 (_ BitVec 32))) (Undefined!10777) (MissingVacant!10777 (index!45487 (_ BitVec 32))) )
))
(declare-fun lt!619962 () SeekEntryResult!10777)

(declare-fun lt!619963 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96210 (_ BitVec 32)) SeekEntryResult!10777)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407893 (= res!945726 (not (= lt!619962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!619963 mask!2840) lt!619963 lt!619957 mask!2840))))))

(declare-fun a!2901 () array!96210)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1407893 (= lt!619963 (select (store (arr!46444 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1407893 (= lt!619957 (array!96211 (store (arr!46444 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46995 a!2901)))))

(declare-fun b!1407894 () Bool)

(declare-fun res!945725 () Bool)

(declare-fun e!796871 () Bool)

(assert (=> b!1407894 (=> (not res!945725) (not e!796871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96210 (_ BitVec 32)) Bool)

(assert (=> b!1407894 (= res!945725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407895 () Bool)

(declare-fun res!945730 () Bool)

(assert (=> b!1407895 (=> (not res!945730) (not e!796871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407895 (= res!945730 (validKeyInArray!0 (select (arr!46444 a!2901) i!1037)))))

(declare-fun b!1407896 () Bool)

(declare-fun res!945724 () Bool)

(assert (=> b!1407896 (=> (not res!945724) (not e!796871))))

(assert (=> b!1407896 (= res!945724 (and (= (size!46995 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46995 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46995 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407897 () Bool)

(assert (=> b!1407897 (= e!796868 true)))

(declare-fun lt!619959 () SeekEntryResult!10777)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96210 (_ BitVec 32)) SeekEntryResult!10777)

(assert (=> b!1407897 (= lt!619959 (seekEntryOrOpen!0 lt!619963 lt!619957 mask!2840))))

(declare-fun lt!619960 () (_ BitVec 32))

(declare-datatypes ((Unit!47478 0))(
  ( (Unit!47479) )
))
(declare-fun lt!619961 () Unit!47478)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96210 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47478)

(assert (=> b!1407897 (= lt!619961 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!619960 (x!127101 lt!619962) (index!45486 lt!619962) mask!2840))))

(declare-fun res!945729 () Bool)

(assert (=> start!121138 (=> (not res!945729) (not e!796871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121138 (= res!945729 (validMask!0 mask!2840))))

(assert (=> start!121138 e!796871))

(assert (=> start!121138 true))

(declare-fun array_inv!35389 (array!96210) Bool)

(assert (=> start!121138 (array_inv!35389 a!2901)))

(declare-fun b!1407898 () Bool)

(assert (=> b!1407898 (= e!796871 (not e!796869))))

(declare-fun res!945731 () Bool)

(assert (=> b!1407898 (=> res!945731 e!796869)))

(assert (=> b!1407898 (= res!945731 (or (not (is-Intermediate!10777 lt!619962)) (undefined!11589 lt!619962)))))

(assert (=> b!1407898 (= lt!619959 (Found!10777 j!112))))

(assert (=> b!1407898 (= lt!619959 (seekEntryOrOpen!0 (select (arr!46444 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407898 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619958 () Unit!47478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96210 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47478)

(assert (=> b!1407898 (= lt!619958 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407898 (= lt!619962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619960 (select (arr!46444 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407898 (= lt!619960 (toIndex!0 (select (arr!46444 a!2901) j!112) mask!2840))))

(declare-fun b!1407899 () Bool)

(declare-fun res!945727 () Bool)

(assert (=> b!1407899 (=> (not res!945727) (not e!796871))))

(assert (=> b!1407899 (= res!945727 (validKeyInArray!0 (select (arr!46444 a!2901) j!112)))))

(declare-fun b!1407900 () Bool)

(declare-fun res!945732 () Bool)

(assert (=> b!1407900 (=> (not res!945732) (not e!796871))))

(declare-datatypes ((List!33143 0))(
  ( (Nil!33140) (Cons!33139 (h!34402 (_ BitVec 64)) (t!47844 List!33143)) )
))
(declare-fun arrayNoDuplicates!0 (array!96210 (_ BitVec 32) List!33143) Bool)

(assert (=> b!1407900 (= res!945732 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33140))))

(declare-fun b!1407901 () Bool)

(declare-fun res!945728 () Bool)

(assert (=> b!1407901 (=> res!945728 e!796868)))

(assert (=> b!1407901 (= res!945728 (or (bvslt (x!127101 lt!619962) #b00000000000000000000000000000000) (bvsgt (x!127101 lt!619962) #b01111111111111111111111111111110) (bvslt lt!619960 #b00000000000000000000000000000000) (bvsge lt!619960 (size!46995 a!2901)) (bvslt (index!45486 lt!619962) #b00000000000000000000000000000000) (bvsge (index!45486 lt!619962) (size!46995 a!2901)) (not (= lt!619962 (Intermediate!10777 false (index!45486 lt!619962) (x!127101 lt!619962))))))))

(assert (= (and start!121138 res!945729) b!1407896))

(assert (= (and b!1407896 res!945724) b!1407895))

(assert (= (and b!1407895 res!945730) b!1407899))

(assert (= (and b!1407899 res!945727) b!1407894))

(assert (= (and b!1407894 res!945725) b!1407900))

(assert (= (and b!1407900 res!945732) b!1407898))

(assert (= (and b!1407898 (not res!945731)) b!1407893))

(assert (= (and b!1407893 (not res!945726)) b!1407901))

(assert (= (and b!1407901 (not res!945728)) b!1407897))

(declare-fun m!1297061 () Bool)

(assert (=> b!1407899 m!1297061))

(assert (=> b!1407899 m!1297061))

(declare-fun m!1297063 () Bool)

(assert (=> b!1407899 m!1297063))

(declare-fun m!1297065 () Bool)

(assert (=> b!1407895 m!1297065))

(assert (=> b!1407895 m!1297065))

(declare-fun m!1297067 () Bool)

(assert (=> b!1407895 m!1297067))

(declare-fun m!1297069 () Bool)

(assert (=> b!1407897 m!1297069))

(declare-fun m!1297071 () Bool)

(assert (=> b!1407897 m!1297071))

(declare-fun m!1297073 () Bool)

(assert (=> b!1407900 m!1297073))

(declare-fun m!1297075 () Bool)

(assert (=> start!121138 m!1297075))

(declare-fun m!1297077 () Bool)

(assert (=> start!121138 m!1297077))

(declare-fun m!1297079 () Bool)

(assert (=> b!1407893 m!1297079))

(assert (=> b!1407893 m!1297079))

(declare-fun m!1297081 () Bool)

(assert (=> b!1407893 m!1297081))

(declare-fun m!1297083 () Bool)

(assert (=> b!1407893 m!1297083))

(declare-fun m!1297085 () Bool)

(assert (=> b!1407893 m!1297085))

(assert (=> b!1407898 m!1297061))

(declare-fun m!1297087 () Bool)

(assert (=> b!1407898 m!1297087))

(assert (=> b!1407898 m!1297061))

(declare-fun m!1297089 () Bool)

(assert (=> b!1407898 m!1297089))

(assert (=> b!1407898 m!1297061))

(declare-fun m!1297091 () Bool)

(assert (=> b!1407898 m!1297091))

(assert (=> b!1407898 m!1297061))

(declare-fun m!1297093 () Bool)

(assert (=> b!1407898 m!1297093))

(declare-fun m!1297095 () Bool)

(assert (=> b!1407898 m!1297095))

(declare-fun m!1297097 () Bool)

(assert (=> b!1407894 m!1297097))

(push 1)

