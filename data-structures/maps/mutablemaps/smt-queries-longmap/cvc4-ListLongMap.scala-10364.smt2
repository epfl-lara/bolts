; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122042 () Bool)

(assert start!122042)

(declare-fun b!1415935 () Bool)

(declare-fun e!801434 () Bool)

(declare-fun e!801432 () Bool)

(assert (=> b!1415935 (= e!801434 (not e!801432))))

(declare-fun res!952090 () Bool)

(assert (=> b!1415935 (=> res!952090 e!801432)))

(declare-datatypes ((SeekEntryResult!10983 0))(
  ( (MissingZero!10983 (index!46323 (_ BitVec 32))) (Found!10983 (index!46324 (_ BitVec 32))) (Intermediate!10983 (undefined!11795 Bool) (index!46325 (_ BitVec 32)) (x!127929 (_ BitVec 32))) (Undefined!10983) (MissingVacant!10983 (index!46326 (_ BitVec 32))) )
))
(declare-fun lt!624511 () SeekEntryResult!10983)

(assert (=> b!1415935 (= res!952090 (or (not (is-Intermediate!10983 lt!624511)) (undefined!11795 lt!624511)))))

(declare-fun lt!624513 () SeekEntryResult!10983)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1415935 (= lt!624513 (Found!10983 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96646 0))(
  ( (array!96647 (arr!46650 (Array (_ BitVec 32) (_ BitVec 64))) (size!47201 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96646)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96646 (_ BitVec 32)) SeekEntryResult!10983)

(assert (=> b!1415935 (= lt!624513 (seekEntryOrOpen!0 (select (arr!46650 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96646 (_ BitVec 32)) Bool)

(assert (=> b!1415935 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47890 0))(
  ( (Unit!47891) )
))
(declare-fun lt!624520 () Unit!47890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47890)

(assert (=> b!1415935 (= lt!624520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624517 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96646 (_ BitVec 32)) SeekEntryResult!10983)

(assert (=> b!1415935 (= lt!624511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624517 (select (arr!46650 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415935 (= lt!624517 (toIndex!0 (select (arr!46650 a!2901) j!112) mask!2840))))

(declare-fun b!1415936 () Bool)

(declare-fun e!801431 () Bool)

(assert (=> b!1415936 (= e!801432 e!801431)))

(declare-fun res!952092 () Bool)

(assert (=> b!1415936 (=> res!952092 e!801431)))

(declare-fun lt!624518 () SeekEntryResult!10983)

(assert (=> b!1415936 (= res!952092 (or (= lt!624511 lt!624518) (not (is-Intermediate!10983 lt!624518))))))

(declare-fun lt!624512 () (_ BitVec 64))

(declare-fun lt!624514 () array!96646)

(assert (=> b!1415936 (= lt!624518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624512 mask!2840) lt!624512 lt!624514 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415936 (= lt!624512 (select (store (arr!46650 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415936 (= lt!624514 (array!96647 (store (arr!46650 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47201 a!2901)))))

(declare-fun b!1415937 () Bool)

(declare-fun res!952087 () Bool)

(assert (=> b!1415937 (=> (not res!952087) (not e!801434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415937 (= res!952087 (validKeyInArray!0 (select (arr!46650 a!2901) j!112)))))

(declare-fun b!1415938 () Bool)

(declare-fun res!952086 () Bool)

(declare-fun e!801430 () Bool)

(assert (=> b!1415938 (=> res!952086 e!801430)))

(assert (=> b!1415938 (= res!952086 (not (= lt!624518 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624517 lt!624512 lt!624514 mask!2840))))))

(declare-fun b!1415939 () Bool)

(assert (=> b!1415939 (= e!801431 e!801430)))

(declare-fun res!952089 () Bool)

(assert (=> b!1415939 (=> res!952089 e!801430)))

(assert (=> b!1415939 (= res!952089 (or (bvslt (x!127929 lt!624511) #b00000000000000000000000000000000) (bvsgt (x!127929 lt!624511) #b01111111111111111111111111111110) (bvslt (x!127929 lt!624518) #b00000000000000000000000000000000) (bvsgt (x!127929 lt!624518) #b01111111111111111111111111111110) (bvslt lt!624517 #b00000000000000000000000000000000) (bvsge lt!624517 (size!47201 a!2901)) (bvslt (index!46325 lt!624511) #b00000000000000000000000000000000) (bvsge (index!46325 lt!624511) (size!47201 a!2901)) (bvslt (index!46325 lt!624518) #b00000000000000000000000000000000) (bvsge (index!46325 lt!624518) (size!47201 a!2901)) (not (= lt!624511 (Intermediate!10983 false (index!46325 lt!624511) (x!127929 lt!624511)))) (not (= lt!624518 (Intermediate!10983 false (index!46325 lt!624518) (x!127929 lt!624518))))))))

(declare-fun lt!624519 () SeekEntryResult!10983)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96646 (_ BitVec 32)) SeekEntryResult!10983)

(assert (=> b!1415939 (= lt!624519 (seekKeyOrZeroReturnVacant!0 (x!127929 lt!624518) (index!46325 lt!624518) (index!46325 lt!624518) (select (arr!46650 a!2901) j!112) lt!624514 mask!2840))))

(assert (=> b!1415939 (= lt!624519 (seekEntryOrOpen!0 lt!624512 lt!624514 mask!2840))))

(assert (=> b!1415939 (and (not (undefined!11795 lt!624518)) (= (index!46325 lt!624518) i!1037) (bvslt (x!127929 lt!624518) (x!127929 lt!624511)) (= (select (store (arr!46650 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46325 lt!624518)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624515 () Unit!47890)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47890)

(assert (=> b!1415939 (= lt!624515 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624517 (x!127929 lt!624511) (index!46325 lt!624511) (x!127929 lt!624518) (index!46325 lt!624518) (undefined!11795 lt!624518) mask!2840))))

(declare-fun b!1415940 () Bool)

(declare-fun res!952095 () Bool)

(assert (=> b!1415940 (=> (not res!952095) (not e!801434))))

(assert (=> b!1415940 (= res!952095 (and (= (size!47201 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47201 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47201 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952088 () Bool)

(assert (=> start!122042 (=> (not res!952088) (not e!801434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122042 (= res!952088 (validMask!0 mask!2840))))

(assert (=> start!122042 e!801434))

(assert (=> start!122042 true))

(declare-fun array_inv!35595 (array!96646) Bool)

(assert (=> start!122042 (array_inv!35595 a!2901)))

(declare-fun b!1415941 () Bool)

(declare-fun res!952094 () Bool)

(assert (=> b!1415941 (=> (not res!952094) (not e!801434))))

(assert (=> b!1415941 (= res!952094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415942 () Bool)

(assert (=> b!1415942 (= e!801430 true)))

(assert (=> b!1415942 (= lt!624513 lt!624519)))

(declare-fun lt!624516 () Unit!47890)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47890)

(assert (=> b!1415942 (= lt!624516 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624517 (x!127929 lt!624511) (index!46325 lt!624511) (x!127929 lt!624518) (index!46325 lt!624518) mask!2840))))

(declare-fun b!1415943 () Bool)

(declare-fun res!952091 () Bool)

(assert (=> b!1415943 (=> (not res!952091) (not e!801434))))

(assert (=> b!1415943 (= res!952091 (validKeyInArray!0 (select (arr!46650 a!2901) i!1037)))))

(declare-fun b!1415944 () Bool)

(declare-fun res!952093 () Bool)

(assert (=> b!1415944 (=> (not res!952093) (not e!801434))))

(declare-datatypes ((List!33349 0))(
  ( (Nil!33346) (Cons!33345 (h!34632 (_ BitVec 64)) (t!48050 List!33349)) )
))
(declare-fun arrayNoDuplicates!0 (array!96646 (_ BitVec 32) List!33349) Bool)

(assert (=> b!1415944 (= res!952093 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33346))))

(assert (= (and start!122042 res!952088) b!1415940))

(assert (= (and b!1415940 res!952095) b!1415943))

(assert (= (and b!1415943 res!952091) b!1415937))

(assert (= (and b!1415937 res!952087) b!1415941))

(assert (= (and b!1415941 res!952094) b!1415944))

(assert (= (and b!1415944 res!952093) b!1415935))

(assert (= (and b!1415935 (not res!952090)) b!1415936))

(assert (= (and b!1415936 (not res!952092)) b!1415939))

(assert (= (and b!1415939 (not res!952089)) b!1415938))

(assert (= (and b!1415938 (not res!952086)) b!1415942))

(declare-fun m!1306495 () Bool)

(assert (=> b!1415936 m!1306495))

(assert (=> b!1415936 m!1306495))

(declare-fun m!1306497 () Bool)

(assert (=> b!1415936 m!1306497))

(declare-fun m!1306499 () Bool)

(assert (=> b!1415936 m!1306499))

(declare-fun m!1306501 () Bool)

(assert (=> b!1415936 m!1306501))

(declare-fun m!1306503 () Bool)

(assert (=> b!1415937 m!1306503))

(assert (=> b!1415937 m!1306503))

(declare-fun m!1306505 () Bool)

(assert (=> b!1415937 m!1306505))

(declare-fun m!1306507 () Bool)

(assert (=> b!1415944 m!1306507))

(assert (=> b!1415935 m!1306503))

(declare-fun m!1306509 () Bool)

(assert (=> b!1415935 m!1306509))

(assert (=> b!1415935 m!1306503))

(declare-fun m!1306511 () Bool)

(assert (=> b!1415935 m!1306511))

(assert (=> b!1415935 m!1306503))

(declare-fun m!1306513 () Bool)

(assert (=> b!1415935 m!1306513))

(assert (=> b!1415935 m!1306503))

(declare-fun m!1306515 () Bool)

(assert (=> b!1415935 m!1306515))

(declare-fun m!1306517 () Bool)

(assert (=> b!1415935 m!1306517))

(assert (=> b!1415939 m!1306503))

(declare-fun m!1306519 () Bool)

(assert (=> b!1415939 m!1306519))

(assert (=> b!1415939 m!1306503))

(declare-fun m!1306521 () Bool)

(assert (=> b!1415939 m!1306521))

(declare-fun m!1306523 () Bool)

(assert (=> b!1415939 m!1306523))

(declare-fun m!1306525 () Bool)

(assert (=> b!1415939 m!1306525))

(assert (=> b!1415939 m!1306499))

(declare-fun m!1306527 () Bool)

(assert (=> b!1415941 m!1306527))

(declare-fun m!1306529 () Bool)

(assert (=> b!1415938 m!1306529))

(declare-fun m!1306531 () Bool)

(assert (=> b!1415942 m!1306531))

(declare-fun m!1306533 () Bool)

(assert (=> b!1415943 m!1306533))

(assert (=> b!1415943 m!1306533))

(declare-fun m!1306535 () Bool)

(assert (=> b!1415943 m!1306535))

(declare-fun m!1306537 () Bool)

(assert (=> start!122042 m!1306537))

(declare-fun m!1306539 () Bool)

(assert (=> start!122042 m!1306539))

(push 1)

(assert (not b!1415936))

(assert (not b!1415938))

(assert (not b!1415935))

(assert (not b!1415943))

(assert (not b!1415942))

(assert (not start!122042))

(assert (not b!1415944))

(assert (not b!1415937))

(assert (not b!1415939))

(assert (not b!1415941))

(check-sat)

