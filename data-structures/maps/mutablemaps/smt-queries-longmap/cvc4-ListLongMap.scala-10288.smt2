; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120932 () Bool)

(assert start!120932)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96157 0))(
  ( (array!96158 (arr!46422 (Array (_ BitVec 32) (_ BitVec 64))) (size!46973 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96157)

(declare-fun e!796130 () Bool)

(declare-fun b!1406562 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10755 0))(
  ( (MissingZero!10755 (index!45396 (_ BitVec 32))) (Found!10755 (index!45397 (_ BitVec 32))) (Intermediate!10755 (undefined!11567 Bool) (index!45398 (_ BitVec 32)) (x!126997 (_ BitVec 32))) (Undefined!10755) (MissingVacant!10755 (index!45399 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96157 (_ BitVec 32)) SeekEntryResult!10755)

(assert (=> b!1406562 (= e!796130 (= (seekEntryOrOpen!0 (select (arr!46422 a!2901) j!112) a!2901 mask!2840) (Found!10755 j!112)))))

(declare-fun b!1406563 () Bool)

(declare-fun res!944891 () Bool)

(declare-fun e!796127 () Bool)

(assert (=> b!1406563 (=> (not res!944891) (not e!796127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96157 (_ BitVec 32)) Bool)

(assert (=> b!1406563 (= res!944891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!944890 () Bool)

(assert (=> start!120932 (=> (not res!944890) (not e!796127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120932 (= res!944890 (validMask!0 mask!2840))))

(assert (=> start!120932 e!796127))

(assert (=> start!120932 true))

(declare-fun array_inv!35367 (array!96157) Bool)

(assert (=> start!120932 (array_inv!35367 a!2901)))

(declare-fun b!1406564 () Bool)

(declare-fun e!796129 () Bool)

(assert (=> b!1406564 (= e!796127 (not e!796129))))

(declare-fun res!944895 () Bool)

(assert (=> b!1406564 (=> res!944895 e!796129)))

(declare-fun lt!619401 () SeekEntryResult!10755)

(assert (=> b!1406564 (= res!944895 (or (not (is-Intermediate!10755 lt!619401)) (undefined!11567 lt!619401)))))

(assert (=> b!1406564 e!796130))

(declare-fun res!944893 () Bool)

(assert (=> b!1406564 (=> (not res!944893) (not e!796130))))

(assert (=> b!1406564 (= res!944893 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47434 0))(
  ( (Unit!47435) )
))
(declare-fun lt!619400 () Unit!47434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47434)

(assert (=> b!1406564 (= lt!619400 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96157 (_ BitVec 32)) SeekEntryResult!10755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406564 (= lt!619401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46422 a!2901) j!112) mask!2840) (select (arr!46422 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406565 () Bool)

(declare-fun res!944889 () Bool)

(assert (=> b!1406565 (=> (not res!944889) (not e!796127))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406565 (= res!944889 (validKeyInArray!0 (select (arr!46422 a!2901) i!1037)))))

(declare-fun b!1406566 () Bool)

(declare-fun res!944892 () Bool)

(assert (=> b!1406566 (=> (not res!944892) (not e!796127))))

(declare-datatypes ((List!33121 0))(
  ( (Nil!33118) (Cons!33117 (h!34371 (_ BitVec 64)) (t!47822 List!33121)) )
))
(declare-fun arrayNoDuplicates!0 (array!96157 (_ BitVec 32) List!33121) Bool)

(assert (=> b!1406566 (= res!944892 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33118))))

(declare-fun b!1406567 () Bool)

(declare-fun res!944894 () Bool)

(assert (=> b!1406567 (=> (not res!944894) (not e!796127))))

(assert (=> b!1406567 (= res!944894 (validKeyInArray!0 (select (arr!46422 a!2901) j!112)))))

(declare-fun b!1406568 () Bool)

(declare-fun res!944888 () Bool)

(assert (=> b!1406568 (=> (not res!944888) (not e!796127))))

(assert (=> b!1406568 (= res!944888 (and (= (size!46973 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46973 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46973 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406569 () Bool)

(assert (=> b!1406569 (= e!796129 true)))

(declare-fun lt!619402 () SeekEntryResult!10755)

(assert (=> b!1406569 (= lt!619402 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46422 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46422 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96158 (store (arr!46422 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46973 a!2901)) mask!2840))))

(assert (= (and start!120932 res!944890) b!1406568))

(assert (= (and b!1406568 res!944888) b!1406565))

(assert (= (and b!1406565 res!944889) b!1406567))

(assert (= (and b!1406567 res!944894) b!1406563))

(assert (= (and b!1406563 res!944891) b!1406566))

(assert (= (and b!1406566 res!944892) b!1406564))

(assert (= (and b!1406564 res!944893) b!1406562))

(assert (= (and b!1406564 (not res!944895)) b!1406569))

(declare-fun m!1295851 () Bool)

(assert (=> b!1406569 m!1295851))

(declare-fun m!1295853 () Bool)

(assert (=> b!1406569 m!1295853))

(assert (=> b!1406569 m!1295853))

(declare-fun m!1295855 () Bool)

(assert (=> b!1406569 m!1295855))

(assert (=> b!1406569 m!1295855))

(assert (=> b!1406569 m!1295853))

(declare-fun m!1295857 () Bool)

(assert (=> b!1406569 m!1295857))

(declare-fun m!1295859 () Bool)

(assert (=> b!1406565 m!1295859))

(assert (=> b!1406565 m!1295859))

(declare-fun m!1295861 () Bool)

(assert (=> b!1406565 m!1295861))

(declare-fun m!1295863 () Bool)

(assert (=> start!120932 m!1295863))

(declare-fun m!1295865 () Bool)

(assert (=> start!120932 m!1295865))

(declare-fun m!1295867 () Bool)

(assert (=> b!1406566 m!1295867))

(declare-fun m!1295869 () Bool)

(assert (=> b!1406567 m!1295869))

(assert (=> b!1406567 m!1295869))

(declare-fun m!1295871 () Bool)

(assert (=> b!1406567 m!1295871))

(declare-fun m!1295873 () Bool)

(assert (=> b!1406563 m!1295873))

(assert (=> b!1406562 m!1295869))

(assert (=> b!1406562 m!1295869))

(declare-fun m!1295875 () Bool)

(assert (=> b!1406562 m!1295875))

(assert (=> b!1406564 m!1295869))

(declare-fun m!1295877 () Bool)

(assert (=> b!1406564 m!1295877))

(assert (=> b!1406564 m!1295869))

(declare-fun m!1295879 () Bool)

(assert (=> b!1406564 m!1295879))

(assert (=> b!1406564 m!1295877))

(assert (=> b!1406564 m!1295869))

(declare-fun m!1295881 () Bool)

(assert (=> b!1406564 m!1295881))

(declare-fun m!1295883 () Bool)

(assert (=> b!1406564 m!1295883))

(push 1)

(assert (not b!1406567))

(assert (not start!120932))

(assert (not b!1406563))

(assert (not b!1406565))

(assert (not b!1406562))

(assert (not b!1406569))

(assert (not b!1406564))

(assert (not b!1406566))

(check-sat)

