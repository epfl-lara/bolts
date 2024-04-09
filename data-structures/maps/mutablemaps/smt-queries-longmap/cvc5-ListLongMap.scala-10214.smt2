; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120376 () Bool)

(assert start!120376)

(declare-fun res!939094 () Bool)

(declare-fun e!792951 () Bool)

(assert (=> start!120376 (=> (not res!939094) (not e!792951))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120376 (= res!939094 (validMask!0 mask!2840))))

(assert (=> start!120376 e!792951))

(assert (=> start!120376 true))

(declare-datatypes ((array!95703 0))(
  ( (array!95704 (arr!46198 (Array (_ BitVec 32) (_ BitVec 64))) (size!46749 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95703)

(declare-fun array_inv!35143 (array!95703) Bool)

(assert (=> start!120376 (array_inv!35143 a!2901)))

(declare-fun lt!616226 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10537 0))(
  ( (MissingZero!10537 (index!44524 (_ BitVec 32))) (Found!10537 (index!44525 (_ BitVec 32))) (Intermediate!10537 (undefined!11349 Bool) (index!44526 (_ BitVec 32)) (x!126175 (_ BitVec 32))) (Undefined!10537) (MissingVacant!10537 (index!44527 (_ BitVec 32))) )
))
(declare-fun lt!616227 () SeekEntryResult!10537)

(declare-fun b!1400466 () Bool)

(declare-fun e!792956 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!616230 () array!95703)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95703 (_ BitVec 32)) SeekEntryResult!10537)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95703 (_ BitVec 32)) SeekEntryResult!10537)

(assert (=> b!1400466 (= e!792956 (= (seekEntryOrOpen!0 lt!616226 lt!616230 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126175 lt!616227) (index!44526 lt!616227) (index!44526 lt!616227) (select (arr!46198 a!2901) j!112) lt!616230 mask!2840)))))

(declare-fun b!1400467 () Bool)

(declare-fun res!939093 () Bool)

(assert (=> b!1400467 (=> (not res!939093) (not e!792951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400467 (= res!939093 (validKeyInArray!0 (select (arr!46198 a!2901) j!112)))))

(declare-fun b!1400468 () Bool)

(declare-fun e!792953 () Bool)

(assert (=> b!1400468 (= e!792951 (not e!792953))))

(declare-fun res!939090 () Bool)

(assert (=> b!1400468 (=> res!939090 e!792953)))

(declare-fun lt!616229 () SeekEntryResult!10537)

(assert (=> b!1400468 (= res!939090 (or (not (is-Intermediate!10537 lt!616229)) (undefined!11349 lt!616229)))))

(declare-fun e!792954 () Bool)

(assert (=> b!1400468 e!792954))

(declare-fun res!939088 () Bool)

(assert (=> b!1400468 (=> (not res!939088) (not e!792954))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95703 (_ BitVec 32)) Bool)

(assert (=> b!1400468 (= res!939088 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47028 0))(
  ( (Unit!47029) )
))
(declare-fun lt!616225 () Unit!47028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47028)

(assert (=> b!1400468 (= lt!616225 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!616231 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95703 (_ BitVec 32)) SeekEntryResult!10537)

(assert (=> b!1400468 (= lt!616229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616231 (select (arr!46198 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400468 (= lt!616231 (toIndex!0 (select (arr!46198 a!2901) j!112) mask!2840))))

(declare-fun b!1400469 () Bool)

(declare-fun e!792950 () Bool)

(assert (=> b!1400469 (= e!792953 e!792950)))

(declare-fun res!939092 () Bool)

(assert (=> b!1400469 (=> res!939092 e!792950)))

(assert (=> b!1400469 (= res!939092 (or (= lt!616229 lt!616227) (not (is-Intermediate!10537 lt!616227))))))

(assert (=> b!1400469 (= lt!616227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616226 mask!2840) lt!616226 lt!616230 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400469 (= lt!616226 (select (store (arr!46198 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400469 (= lt!616230 (array!95704 (store (arr!46198 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46749 a!2901)))))

(declare-fun b!1400470 () Bool)

(declare-fun e!792955 () Bool)

(assert (=> b!1400470 (= e!792955 true)))

(declare-fun lt!616228 () SeekEntryResult!10537)

(assert (=> b!1400470 (= lt!616228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616231 lt!616226 lt!616230 mask!2840))))

(declare-fun b!1400471 () Bool)

(assert (=> b!1400471 (= e!792950 e!792955)))

(declare-fun res!939096 () Bool)

(assert (=> b!1400471 (=> res!939096 e!792955)))

(assert (=> b!1400471 (= res!939096 (or (bvslt (x!126175 lt!616229) #b00000000000000000000000000000000) (bvsgt (x!126175 lt!616229) #b01111111111111111111111111111110) (bvslt (x!126175 lt!616227) #b00000000000000000000000000000000) (bvsgt (x!126175 lt!616227) #b01111111111111111111111111111110) (bvslt lt!616231 #b00000000000000000000000000000000) (bvsge lt!616231 (size!46749 a!2901)) (bvslt (index!44526 lt!616229) #b00000000000000000000000000000000) (bvsge (index!44526 lt!616229) (size!46749 a!2901)) (bvslt (index!44526 lt!616227) #b00000000000000000000000000000000) (bvsge (index!44526 lt!616227) (size!46749 a!2901)) (not (= lt!616229 (Intermediate!10537 false (index!44526 lt!616229) (x!126175 lt!616229)))) (not (= lt!616227 (Intermediate!10537 false (index!44526 lt!616227) (x!126175 lt!616227))))))))

(assert (=> b!1400471 e!792956))

(declare-fun res!939089 () Bool)

(assert (=> b!1400471 (=> (not res!939089) (not e!792956))))

(assert (=> b!1400471 (= res!939089 (and (not (undefined!11349 lt!616227)) (= (index!44526 lt!616227) i!1037) (bvslt (x!126175 lt!616227) (x!126175 lt!616229)) (= (select (store (arr!46198 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44526 lt!616227)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!616224 () Unit!47028)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95703 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47028)

(assert (=> b!1400471 (= lt!616224 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616231 (x!126175 lt!616229) (index!44526 lt!616229) (x!126175 lt!616227) (index!44526 lt!616227) (undefined!11349 lt!616227) mask!2840))))

(declare-fun b!1400472 () Bool)

(assert (=> b!1400472 (= e!792954 (= (seekEntryOrOpen!0 (select (arr!46198 a!2901) j!112) a!2901 mask!2840) (Found!10537 j!112)))))

(declare-fun b!1400473 () Bool)

(declare-fun res!939087 () Bool)

(assert (=> b!1400473 (=> (not res!939087) (not e!792951))))

(assert (=> b!1400473 (= res!939087 (validKeyInArray!0 (select (arr!46198 a!2901) i!1037)))))

(declare-fun b!1400474 () Bool)

(declare-fun res!939091 () Bool)

(assert (=> b!1400474 (=> (not res!939091) (not e!792951))))

(declare-datatypes ((List!32897 0))(
  ( (Nil!32894) (Cons!32893 (h!34141 (_ BitVec 64)) (t!47598 List!32897)) )
))
(declare-fun arrayNoDuplicates!0 (array!95703 (_ BitVec 32) List!32897) Bool)

(assert (=> b!1400474 (= res!939091 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32894))))

(declare-fun b!1400475 () Bool)

(declare-fun res!939086 () Bool)

(assert (=> b!1400475 (=> (not res!939086) (not e!792951))))

(assert (=> b!1400475 (= res!939086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400476 () Bool)

(declare-fun res!939095 () Bool)

(assert (=> b!1400476 (=> (not res!939095) (not e!792951))))

(assert (=> b!1400476 (= res!939095 (and (= (size!46749 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46749 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46749 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120376 res!939094) b!1400476))

(assert (= (and b!1400476 res!939095) b!1400473))

(assert (= (and b!1400473 res!939087) b!1400467))

(assert (= (and b!1400467 res!939093) b!1400475))

(assert (= (and b!1400475 res!939086) b!1400474))

(assert (= (and b!1400474 res!939091) b!1400468))

(assert (= (and b!1400468 res!939088) b!1400472))

(assert (= (and b!1400468 (not res!939090)) b!1400469))

(assert (= (and b!1400469 (not res!939092)) b!1400471))

(assert (= (and b!1400471 res!939089) b!1400466))

(assert (= (and b!1400471 (not res!939096)) b!1400470))

(declare-fun m!1288013 () Bool)

(assert (=> b!1400468 m!1288013))

(declare-fun m!1288015 () Bool)

(assert (=> b!1400468 m!1288015))

(declare-fun m!1288017 () Bool)

(assert (=> b!1400468 m!1288017))

(assert (=> b!1400468 m!1288013))

(declare-fun m!1288019 () Bool)

(assert (=> b!1400468 m!1288019))

(assert (=> b!1400468 m!1288013))

(declare-fun m!1288021 () Bool)

(assert (=> b!1400468 m!1288021))

(declare-fun m!1288023 () Bool)

(assert (=> b!1400474 m!1288023))

(declare-fun m!1288025 () Bool)

(assert (=> b!1400466 m!1288025))

(assert (=> b!1400466 m!1288013))

(assert (=> b!1400466 m!1288013))

(declare-fun m!1288027 () Bool)

(assert (=> b!1400466 m!1288027))

(declare-fun m!1288029 () Bool)

(assert (=> start!120376 m!1288029))

(declare-fun m!1288031 () Bool)

(assert (=> start!120376 m!1288031))

(declare-fun m!1288033 () Bool)

(assert (=> b!1400473 m!1288033))

(assert (=> b!1400473 m!1288033))

(declare-fun m!1288035 () Bool)

(assert (=> b!1400473 m!1288035))

(declare-fun m!1288037 () Bool)

(assert (=> b!1400471 m!1288037))

(declare-fun m!1288039 () Bool)

(assert (=> b!1400471 m!1288039))

(declare-fun m!1288041 () Bool)

(assert (=> b!1400471 m!1288041))

(declare-fun m!1288043 () Bool)

(assert (=> b!1400475 m!1288043))

(assert (=> b!1400472 m!1288013))

(assert (=> b!1400472 m!1288013))

(declare-fun m!1288045 () Bool)

(assert (=> b!1400472 m!1288045))

(declare-fun m!1288047 () Bool)

(assert (=> b!1400470 m!1288047))

(declare-fun m!1288049 () Bool)

(assert (=> b!1400469 m!1288049))

(assert (=> b!1400469 m!1288049))

(declare-fun m!1288051 () Bool)

(assert (=> b!1400469 m!1288051))

(assert (=> b!1400469 m!1288037))

(declare-fun m!1288053 () Bool)

(assert (=> b!1400469 m!1288053))

(assert (=> b!1400467 m!1288013))

(assert (=> b!1400467 m!1288013))

(declare-fun m!1288055 () Bool)

(assert (=> b!1400467 m!1288055))

(push 1)

