; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121990 () Bool)

(assert start!121990)

(declare-fun b!1415128 () Bool)

(declare-fun e!800947 () Bool)

(declare-fun e!800943 () Bool)

(assert (=> b!1415128 (= e!800947 (not e!800943))))

(declare-fun res!951284 () Bool)

(assert (=> b!1415128 (=> res!951284 e!800943)))

(declare-datatypes ((SeekEntryResult!10957 0))(
  ( (MissingZero!10957 (index!46219 (_ BitVec 32))) (Found!10957 (index!46220 (_ BitVec 32))) (Intermediate!10957 (undefined!11769 Bool) (index!46221 (_ BitVec 32)) (x!127839 (_ BitVec 32))) (Undefined!10957) (MissingVacant!10957 (index!46222 (_ BitVec 32))) )
))
(declare-fun lt!623926 () SeekEntryResult!10957)

(assert (=> b!1415128 (= res!951284 (or (not (is-Intermediate!10957 lt!623926)) (undefined!11769 lt!623926)))))

(declare-fun e!800948 () Bool)

(assert (=> b!1415128 e!800948))

(declare-fun res!951280 () Bool)

(assert (=> b!1415128 (=> (not res!951280) (not e!800948))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96594 0))(
  ( (array!96595 (arr!46624 (Array (_ BitVec 32) (_ BitVec 64))) (size!47175 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96594)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96594 (_ BitVec 32)) Bool)

(assert (=> b!1415128 (= res!951280 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47838 0))(
  ( (Unit!47839) )
))
(declare-fun lt!623925 () Unit!47838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47838)

(assert (=> b!1415128 (= lt!623925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!623924 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96594 (_ BitVec 32)) SeekEntryResult!10957)

(assert (=> b!1415128 (= lt!623926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623924 (select (arr!46624 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1415128 (= lt!623924 (toIndex!0 (select (arr!46624 a!2901) j!112) mask!2840))))

(declare-fun b!1415129 () Bool)

(declare-fun res!951283 () Bool)

(assert (=> b!1415129 (=> (not res!951283) (not e!800947))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1415129 (= res!951283 (and (= (size!47175 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47175 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47175 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!623929 () array!96594)

(declare-fun b!1415130 () Bool)

(declare-fun lt!623923 () (_ BitVec 64))

(declare-fun e!800944 () Bool)

(declare-fun lt!623928 () SeekEntryResult!10957)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96594 (_ BitVec 32)) SeekEntryResult!10957)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96594 (_ BitVec 32)) SeekEntryResult!10957)

(assert (=> b!1415130 (= e!800944 (= (seekEntryOrOpen!0 lt!623923 lt!623929 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127839 lt!623928) (index!46221 lt!623928) (index!46221 lt!623928) (select (arr!46624 a!2901) j!112) lt!623929 mask!2840)))))

(declare-fun b!1415131 () Bool)

(declare-fun e!800946 () Bool)

(assert (=> b!1415131 (= e!800943 e!800946)))

(declare-fun res!951281 () Bool)

(assert (=> b!1415131 (=> res!951281 e!800946)))

(assert (=> b!1415131 (= res!951281 (or (= lt!623926 lt!623928) (not (is-Intermediate!10957 lt!623928))))))

(assert (=> b!1415131 (= lt!623928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623923 mask!2840) lt!623923 lt!623929 mask!2840))))

(assert (=> b!1415131 (= lt!623923 (select (store (arr!46624 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1415131 (= lt!623929 (array!96595 (store (arr!46624 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47175 a!2901)))))

(declare-fun b!1415132 () Bool)

(declare-fun res!951279 () Bool)

(assert (=> b!1415132 (=> (not res!951279) (not e!800947))))

(declare-datatypes ((List!33323 0))(
  ( (Nil!33320) (Cons!33319 (h!34606 (_ BitVec 64)) (t!48024 List!33323)) )
))
(declare-fun arrayNoDuplicates!0 (array!96594 (_ BitVec 32) List!33323) Bool)

(assert (=> b!1415132 (= res!951279 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33320))))

(declare-fun res!951285 () Bool)

(assert (=> start!121990 (=> (not res!951285) (not e!800947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121990 (= res!951285 (validMask!0 mask!2840))))

(assert (=> start!121990 e!800947))

(assert (=> start!121990 true))

(declare-fun array_inv!35569 (array!96594) Bool)

(assert (=> start!121990 (array_inv!35569 a!2901)))

(declare-fun b!1415133 () Bool)

(assert (=> b!1415133 (= e!800948 (= (seekEntryOrOpen!0 (select (arr!46624 a!2901) j!112) a!2901 mask!2840) (Found!10957 j!112)))))

(declare-fun b!1415134 () Bool)

(declare-fun res!951286 () Bool)

(assert (=> b!1415134 (=> (not res!951286) (not e!800947))))

(assert (=> b!1415134 (= res!951286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1415135 () Bool)

(assert (=> b!1415135 (= e!800946 true)))

(assert (=> b!1415135 e!800944))

(declare-fun res!951288 () Bool)

(assert (=> b!1415135 (=> (not res!951288) (not e!800944))))

(assert (=> b!1415135 (= res!951288 (and (not (undefined!11769 lt!623928)) (= (index!46221 lt!623928) i!1037) (bvslt (x!127839 lt!623928) (x!127839 lt!623926)) (= (select (store (arr!46624 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46221 lt!623928)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!623927 () Unit!47838)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47838)

(assert (=> b!1415135 (= lt!623927 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623924 (x!127839 lt!623926) (index!46221 lt!623926) (x!127839 lt!623928) (index!46221 lt!623928) (undefined!11769 lt!623928) mask!2840))))

(declare-fun b!1415136 () Bool)

(declare-fun res!951282 () Bool)

(assert (=> b!1415136 (=> (not res!951282) (not e!800947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1415136 (= res!951282 (validKeyInArray!0 (select (arr!46624 a!2901) i!1037)))))

(declare-fun b!1415137 () Bool)

(declare-fun res!951287 () Bool)

(assert (=> b!1415137 (=> (not res!951287) (not e!800947))))

(assert (=> b!1415137 (= res!951287 (validKeyInArray!0 (select (arr!46624 a!2901) j!112)))))

(assert (= (and start!121990 res!951285) b!1415129))

(assert (= (and b!1415129 res!951283) b!1415136))

(assert (= (and b!1415136 res!951282) b!1415137))

(assert (= (and b!1415137 res!951287) b!1415134))

(assert (= (and b!1415134 res!951286) b!1415132))

(assert (= (and b!1415132 res!951279) b!1415128))

(assert (= (and b!1415128 res!951280) b!1415133))

(assert (= (and b!1415128 (not res!951284)) b!1415131))

(assert (= (and b!1415131 (not res!951281)) b!1415135))

(assert (= (and b!1415135 res!951288) b!1415130))

(declare-fun m!1305377 () Bool)

(assert (=> b!1415132 m!1305377))

(declare-fun m!1305379 () Bool)

(assert (=> b!1415133 m!1305379))

(assert (=> b!1415133 m!1305379))

(declare-fun m!1305381 () Bool)

(assert (=> b!1415133 m!1305381))

(declare-fun m!1305383 () Bool)

(assert (=> b!1415134 m!1305383))

(declare-fun m!1305385 () Bool)

(assert (=> b!1415136 m!1305385))

(assert (=> b!1415136 m!1305385))

(declare-fun m!1305387 () Bool)

(assert (=> b!1415136 m!1305387))

(declare-fun m!1305389 () Bool)

(assert (=> b!1415130 m!1305389))

(assert (=> b!1415130 m!1305379))

(assert (=> b!1415130 m!1305379))

(declare-fun m!1305391 () Bool)

(assert (=> b!1415130 m!1305391))

(assert (=> b!1415128 m!1305379))

(declare-fun m!1305393 () Bool)

(assert (=> b!1415128 m!1305393))

(assert (=> b!1415128 m!1305379))

(assert (=> b!1415128 m!1305379))

(declare-fun m!1305395 () Bool)

(assert (=> b!1415128 m!1305395))

(declare-fun m!1305397 () Bool)

(assert (=> b!1415128 m!1305397))

(declare-fun m!1305399 () Bool)

(assert (=> b!1415128 m!1305399))

(declare-fun m!1305401 () Bool)

(assert (=> start!121990 m!1305401))

(declare-fun m!1305403 () Bool)

(assert (=> start!121990 m!1305403))

(declare-fun m!1305405 () Bool)

(assert (=> b!1415131 m!1305405))

(assert (=> b!1415131 m!1305405))

(declare-fun m!1305407 () Bool)

(assert (=> b!1415131 m!1305407))

(declare-fun m!1305409 () Bool)

(assert (=> b!1415131 m!1305409))

(declare-fun m!1305411 () Bool)

(assert (=> b!1415131 m!1305411))

(assert (=> b!1415135 m!1305409))

(declare-fun m!1305413 () Bool)

(assert (=> b!1415135 m!1305413))

(declare-fun m!1305415 () Bool)

(assert (=> b!1415135 m!1305415))

(assert (=> b!1415137 m!1305379))

(assert (=> b!1415137 m!1305379))

(declare-fun m!1305417 () Bool)

(assert (=> b!1415137 m!1305417))

(push 1)

