; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120890 () Bool)

(assert start!120890)

(declare-fun b!1406059 () Bool)

(declare-fun res!944389 () Bool)

(declare-fun e!795878 () Bool)

(assert (=> b!1406059 (=> (not res!944389) (not e!795878))))

(declare-datatypes ((array!96115 0))(
  ( (array!96116 (arr!46401 (Array (_ BitVec 32) (_ BitVec 64))) (size!46952 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96115)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406059 (= res!944389 (validKeyInArray!0 (select (arr!46401 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!795876 () Bool)

(declare-fun b!1406060 () Bool)

(declare-datatypes ((SeekEntryResult!10734 0))(
  ( (MissingZero!10734 (index!45312 (_ BitVec 32))) (Found!10734 (index!45313 (_ BitVec 32))) (Intermediate!10734 (undefined!11546 Bool) (index!45314 (_ BitVec 32)) (x!126920 (_ BitVec 32))) (Undefined!10734) (MissingVacant!10734 (index!45315 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96115 (_ BitVec 32)) SeekEntryResult!10734)

(assert (=> b!1406060 (= e!795876 (= (seekEntryOrOpen!0 (select (arr!46401 a!2901) j!112) a!2901 mask!2840) (Found!10734 j!112)))))

(declare-fun b!1406061 () Bool)

(declare-fun e!795877 () Bool)

(assert (=> b!1406061 (= e!795878 (not e!795877))))

(declare-fun res!944391 () Bool)

(assert (=> b!1406061 (=> res!944391 e!795877)))

(declare-fun lt!619213 () SeekEntryResult!10734)

(assert (=> b!1406061 (= res!944391 (or (not (is-Intermediate!10734 lt!619213)) (undefined!11546 lt!619213)))))

(assert (=> b!1406061 e!795876))

(declare-fun res!944386 () Bool)

(assert (=> b!1406061 (=> (not res!944386) (not e!795876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96115 (_ BitVec 32)) Bool)

(assert (=> b!1406061 (= res!944386 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47392 0))(
  ( (Unit!47393) )
))
(declare-fun lt!619211 () Unit!47392)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96115 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47392)

(assert (=> b!1406061 (= lt!619211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96115 (_ BitVec 32)) SeekEntryResult!10734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406061 (= lt!619213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46401 a!2901) j!112) mask!2840) (select (arr!46401 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406062 () Bool)

(declare-fun res!944385 () Bool)

(assert (=> b!1406062 (=> (not res!944385) (not e!795878))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406062 (= res!944385 (and (= (size!46952 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46952 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46952 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406063 () Bool)

(declare-fun res!944384 () Bool)

(assert (=> b!1406063 (=> (not res!944384) (not e!795878))))

(declare-datatypes ((List!33100 0))(
  ( (Nil!33097) (Cons!33096 (h!34350 (_ BitVec 64)) (t!47801 List!33100)) )
))
(declare-fun arrayNoDuplicates!0 (array!96115 (_ BitVec 32) List!33100) Bool)

(assert (=> b!1406063 (= res!944384 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33097))))

(declare-fun res!944387 () Bool)

(assert (=> start!120890 (=> (not res!944387) (not e!795878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120890 (= res!944387 (validMask!0 mask!2840))))

(assert (=> start!120890 e!795878))

(assert (=> start!120890 true))

(declare-fun array_inv!35346 (array!96115) Bool)

(assert (=> start!120890 (array_inv!35346 a!2901)))

(declare-fun b!1406058 () Bool)

(declare-fun res!944388 () Bool)

(assert (=> b!1406058 (=> (not res!944388) (not e!795878))))

(assert (=> b!1406058 (= res!944388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406064 () Bool)

(declare-fun res!944390 () Bool)

(assert (=> b!1406064 (=> (not res!944390) (not e!795878))))

(assert (=> b!1406064 (= res!944390 (validKeyInArray!0 (select (arr!46401 a!2901) i!1037)))))

(declare-fun b!1406065 () Bool)

(assert (=> b!1406065 (= e!795877 true)))

(declare-fun lt!619212 () SeekEntryResult!10734)

(assert (=> b!1406065 (= lt!619212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46401 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46401 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96116 (store (arr!46401 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46952 a!2901)) mask!2840))))

(assert (= (and start!120890 res!944387) b!1406062))

(assert (= (and b!1406062 res!944385) b!1406064))

(assert (= (and b!1406064 res!944390) b!1406059))

(assert (= (and b!1406059 res!944389) b!1406058))

(assert (= (and b!1406058 res!944388) b!1406063))

(assert (= (and b!1406063 res!944384) b!1406061))

(assert (= (and b!1406061 res!944386) b!1406060))

(assert (= (and b!1406061 (not res!944391)) b!1406065))

(declare-fun m!1295137 () Bool)

(assert (=> start!120890 m!1295137))

(declare-fun m!1295139 () Bool)

(assert (=> start!120890 m!1295139))

(declare-fun m!1295141 () Bool)

(assert (=> b!1406065 m!1295141))

(declare-fun m!1295143 () Bool)

(assert (=> b!1406065 m!1295143))

(assert (=> b!1406065 m!1295143))

(declare-fun m!1295145 () Bool)

(assert (=> b!1406065 m!1295145))

(assert (=> b!1406065 m!1295145))

(assert (=> b!1406065 m!1295143))

(declare-fun m!1295147 () Bool)

(assert (=> b!1406065 m!1295147))

(declare-fun m!1295149 () Bool)

(assert (=> b!1406059 m!1295149))

(assert (=> b!1406059 m!1295149))

(declare-fun m!1295151 () Bool)

(assert (=> b!1406059 m!1295151))

(assert (=> b!1406060 m!1295149))

(assert (=> b!1406060 m!1295149))

(declare-fun m!1295153 () Bool)

(assert (=> b!1406060 m!1295153))

(declare-fun m!1295155 () Bool)

(assert (=> b!1406064 m!1295155))

(assert (=> b!1406064 m!1295155))

(declare-fun m!1295157 () Bool)

(assert (=> b!1406064 m!1295157))

(assert (=> b!1406061 m!1295149))

(declare-fun m!1295159 () Bool)

(assert (=> b!1406061 m!1295159))

(assert (=> b!1406061 m!1295149))

(declare-fun m!1295161 () Bool)

(assert (=> b!1406061 m!1295161))

(assert (=> b!1406061 m!1295159))

(assert (=> b!1406061 m!1295149))

(declare-fun m!1295163 () Bool)

(assert (=> b!1406061 m!1295163))

(declare-fun m!1295165 () Bool)

(assert (=> b!1406061 m!1295165))

(declare-fun m!1295167 () Bool)

(assert (=> b!1406063 m!1295167))

(declare-fun m!1295169 () Bool)

(assert (=> b!1406058 m!1295169))

(push 1)

(assert (not b!1406064))

(assert (not b!1406059))

(assert (not b!1406061))

(assert (not b!1406060))

(assert (not b!1406058))

(assert (not start!120890))

(assert (not b!1406065))

(assert (not b!1406063))

(check-sat)

