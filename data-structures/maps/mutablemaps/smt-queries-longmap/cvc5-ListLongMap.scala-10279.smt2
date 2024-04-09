; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120874 () Bool)

(assert start!120874)

(declare-fun b!1405866 () Bool)

(declare-fun res!944195 () Bool)

(declare-fun e!795781 () Bool)

(assert (=> b!1405866 (=> (not res!944195) (not e!795781))))

(declare-datatypes ((array!96099 0))(
  ( (array!96100 (arr!46393 (Array (_ BitVec 32) (_ BitVec 64))) (size!46944 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96099)

(declare-datatypes ((List!33092 0))(
  ( (Nil!33089) (Cons!33088 (h!34342 (_ BitVec 64)) (t!47793 List!33092)) )
))
(declare-fun arrayNoDuplicates!0 (array!96099 (_ BitVec 32) List!33092) Bool)

(assert (=> b!1405866 (= res!944195 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33089))))

(declare-fun res!944199 () Bool)

(assert (=> start!120874 (=> (not res!944199) (not e!795781))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120874 (= res!944199 (validMask!0 mask!2840))))

(assert (=> start!120874 e!795781))

(assert (=> start!120874 true))

(declare-fun array_inv!35338 (array!96099) Bool)

(assert (=> start!120874 (array_inv!35338 a!2901)))

(declare-fun b!1405867 () Bool)

(declare-fun res!944192 () Bool)

(assert (=> b!1405867 (=> (not res!944192) (not e!795781))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405867 (= res!944192 (validKeyInArray!0 (select (arr!46393 a!2901) j!112)))))

(declare-fun b!1405868 () Bool)

(declare-fun res!944197 () Bool)

(assert (=> b!1405868 (=> (not res!944197) (not e!795781))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405868 (= res!944197 (and (= (size!46944 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46944 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46944 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405869 () Bool)

(declare-fun e!795780 () Bool)

(assert (=> b!1405869 (= e!795780 true)))

(declare-datatypes ((SeekEntryResult!10726 0))(
  ( (MissingZero!10726 (index!45280 (_ BitVec 32))) (Found!10726 (index!45281 (_ BitVec 32))) (Intermediate!10726 (undefined!11538 Bool) (index!45282 (_ BitVec 32)) (x!126896 (_ BitVec 32))) (Undefined!10726) (MissingVacant!10726 (index!45283 (_ BitVec 32))) )
))
(declare-fun lt!619140 () SeekEntryResult!10726)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96099 (_ BitVec 32)) SeekEntryResult!10726)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405869 (= lt!619140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46393 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46393 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96100 (store (arr!46393 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46944 a!2901)) mask!2840))))

(declare-fun b!1405870 () Bool)

(declare-fun res!944196 () Bool)

(assert (=> b!1405870 (=> (not res!944196) (not e!795781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96099 (_ BitVec 32)) Bool)

(assert (=> b!1405870 (= res!944196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405871 () Bool)

(assert (=> b!1405871 (= e!795781 (not e!795780))))

(declare-fun res!944193 () Bool)

(assert (=> b!1405871 (=> res!944193 e!795780)))

(declare-fun lt!619141 () SeekEntryResult!10726)

(assert (=> b!1405871 (= res!944193 (or (not (is-Intermediate!10726 lt!619141)) (undefined!11538 lt!619141)))))

(declare-fun e!795782 () Bool)

(assert (=> b!1405871 e!795782))

(declare-fun res!944198 () Bool)

(assert (=> b!1405871 (=> (not res!944198) (not e!795782))))

(assert (=> b!1405871 (= res!944198 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47376 0))(
  ( (Unit!47377) )
))
(declare-fun lt!619139 () Unit!47376)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47376)

(assert (=> b!1405871 (= lt!619139 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405871 (= lt!619141 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46393 a!2901) j!112) mask!2840) (select (arr!46393 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405872 () Bool)

(declare-fun res!944194 () Bool)

(assert (=> b!1405872 (=> (not res!944194) (not e!795781))))

(assert (=> b!1405872 (= res!944194 (validKeyInArray!0 (select (arr!46393 a!2901) i!1037)))))

(declare-fun b!1405873 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96099 (_ BitVec 32)) SeekEntryResult!10726)

(assert (=> b!1405873 (= e!795782 (= (seekEntryOrOpen!0 (select (arr!46393 a!2901) j!112) a!2901 mask!2840) (Found!10726 j!112)))))

(assert (= (and start!120874 res!944199) b!1405868))

(assert (= (and b!1405868 res!944197) b!1405872))

(assert (= (and b!1405872 res!944194) b!1405867))

(assert (= (and b!1405867 res!944192) b!1405870))

(assert (= (and b!1405870 res!944196) b!1405866))

(assert (= (and b!1405866 res!944195) b!1405871))

(assert (= (and b!1405871 res!944198) b!1405873))

(assert (= (and b!1405871 (not res!944193)) b!1405869))

(declare-fun m!1294865 () Bool)

(assert (=> b!1405869 m!1294865))

(declare-fun m!1294867 () Bool)

(assert (=> b!1405869 m!1294867))

(assert (=> b!1405869 m!1294867))

(declare-fun m!1294869 () Bool)

(assert (=> b!1405869 m!1294869))

(assert (=> b!1405869 m!1294869))

(assert (=> b!1405869 m!1294867))

(declare-fun m!1294871 () Bool)

(assert (=> b!1405869 m!1294871))

(declare-fun m!1294873 () Bool)

(assert (=> b!1405873 m!1294873))

(assert (=> b!1405873 m!1294873))

(declare-fun m!1294875 () Bool)

(assert (=> b!1405873 m!1294875))

(declare-fun m!1294877 () Bool)

(assert (=> b!1405870 m!1294877))

(declare-fun m!1294879 () Bool)

(assert (=> start!120874 m!1294879))

(declare-fun m!1294881 () Bool)

(assert (=> start!120874 m!1294881))

(declare-fun m!1294883 () Bool)

(assert (=> b!1405872 m!1294883))

(assert (=> b!1405872 m!1294883))

(declare-fun m!1294885 () Bool)

(assert (=> b!1405872 m!1294885))

(declare-fun m!1294887 () Bool)

(assert (=> b!1405866 m!1294887))

(assert (=> b!1405867 m!1294873))

(assert (=> b!1405867 m!1294873))

(declare-fun m!1294889 () Bool)

(assert (=> b!1405867 m!1294889))

(assert (=> b!1405871 m!1294873))

(declare-fun m!1294891 () Bool)

(assert (=> b!1405871 m!1294891))

(assert (=> b!1405871 m!1294873))

(declare-fun m!1294893 () Bool)

(assert (=> b!1405871 m!1294893))

(assert (=> b!1405871 m!1294891))

(assert (=> b!1405871 m!1294873))

(declare-fun m!1294895 () Bool)

(assert (=> b!1405871 m!1294895))

(declare-fun m!1294897 () Bool)

(assert (=> b!1405871 m!1294897))

(push 1)

(assert (not b!1405867))

(assert (not b!1405866))

(assert (not start!120874))

(assert (not b!1405873))

(assert (not b!1405870))

(assert (not b!1405872))

(assert (not b!1405871))

(assert (not b!1405869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

