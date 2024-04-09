; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121154 () Bool)

(assert start!121154)

(declare-fun b!1408109 () Bool)

(declare-fun res!945948 () Bool)

(declare-fun e!796967 () Bool)

(assert (=> b!1408109 (=> (not res!945948) (not e!796967))))

(declare-datatypes ((array!96226 0))(
  ( (array!96227 (arr!46452 (Array (_ BitVec 32) (_ BitVec 64))) (size!47003 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96226)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408109 (= res!945948 (validKeyInArray!0 (select (arr!46452 a!2901) j!112)))))

(declare-fun b!1408110 () Bool)

(declare-fun e!796966 () Bool)

(assert (=> b!1408110 (= e!796966 true)))

(declare-fun lt!620131 () array!96226)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10785 0))(
  ( (MissingZero!10785 (index!45516 (_ BitVec 32))) (Found!10785 (index!45517 (_ BitVec 32))) (Intermediate!10785 (undefined!11597 Bool) (index!45518 (_ BitVec 32)) (x!127125 (_ BitVec 32))) (Undefined!10785) (MissingVacant!10785 (index!45519 (_ BitVec 32))) )
))
(declare-fun lt!620126 () SeekEntryResult!10785)

(declare-fun lt!620125 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96226 (_ BitVec 32)) SeekEntryResult!10785)

(assert (=> b!1408110 (= lt!620126 (seekEntryOrOpen!0 lt!620125 lt!620131 mask!2840))))

(declare-datatypes ((Unit!47494 0))(
  ( (Unit!47495) )
))
(declare-fun lt!620130 () Unit!47494)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620127 () (_ BitVec 32))

(declare-fun lt!620128 () SeekEntryResult!10785)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47494)

(assert (=> b!1408110 (= lt!620130 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620127 (x!127125 lt!620128) (index!45518 lt!620128) mask!2840))))

(declare-fun b!1408111 () Bool)

(declare-fun res!945941 () Bool)

(assert (=> b!1408111 (=> (not res!945941) (not e!796967))))

(assert (=> b!1408111 (= res!945941 (validKeyInArray!0 (select (arr!46452 a!2901) i!1037)))))

(declare-fun b!1408112 () Bool)

(declare-fun res!945946 () Bool)

(assert (=> b!1408112 (=> (not res!945946) (not e!796967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96226 (_ BitVec 32)) Bool)

(assert (=> b!1408112 (= res!945946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408113 () Bool)

(declare-fun res!945945 () Bool)

(assert (=> b!1408113 (=> (not res!945945) (not e!796967))))

(declare-datatypes ((List!33151 0))(
  ( (Nil!33148) (Cons!33147 (h!34410 (_ BitVec 64)) (t!47852 List!33151)) )
))
(declare-fun arrayNoDuplicates!0 (array!96226 (_ BitVec 32) List!33151) Bool)

(assert (=> b!1408113 (= res!945945 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33148))))

(declare-fun b!1408114 () Bool)

(declare-fun res!945940 () Bool)

(assert (=> b!1408114 (=> (not res!945940) (not e!796967))))

(assert (=> b!1408114 (= res!945940 (and (= (size!47003 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47003 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47003 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!945943 () Bool)

(assert (=> start!121154 (=> (not res!945943) (not e!796967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121154 (= res!945943 (validMask!0 mask!2840))))

(assert (=> start!121154 e!796967))

(assert (=> start!121154 true))

(declare-fun array_inv!35397 (array!96226) Bool)

(assert (=> start!121154 (array_inv!35397 a!2901)))

(declare-fun b!1408115 () Bool)

(declare-fun res!945947 () Bool)

(assert (=> b!1408115 (=> res!945947 e!796966)))

(assert (=> b!1408115 (= res!945947 (or (bvslt (x!127125 lt!620128) #b00000000000000000000000000000000) (bvsgt (x!127125 lt!620128) #b01111111111111111111111111111110) (bvslt lt!620127 #b00000000000000000000000000000000) (bvsge lt!620127 (size!47003 a!2901)) (bvslt (index!45518 lt!620128) #b00000000000000000000000000000000) (bvsge (index!45518 lt!620128) (size!47003 a!2901)) (not (= lt!620128 (Intermediate!10785 false (index!45518 lt!620128) (x!127125 lt!620128))))))))

(declare-fun b!1408116 () Bool)

(declare-fun e!796965 () Bool)

(assert (=> b!1408116 (= e!796967 (not e!796965))))

(declare-fun res!945944 () Bool)

(assert (=> b!1408116 (=> res!945944 e!796965)))

(assert (=> b!1408116 (= res!945944 (or (not (is-Intermediate!10785 lt!620128)) (undefined!11597 lt!620128)))))

(assert (=> b!1408116 (= lt!620126 (Found!10785 j!112))))

(assert (=> b!1408116 (= lt!620126 (seekEntryOrOpen!0 (select (arr!46452 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1408116 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!620129 () Unit!47494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47494)

(assert (=> b!1408116 (= lt!620129 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96226 (_ BitVec 32)) SeekEntryResult!10785)

(assert (=> b!1408116 (= lt!620128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620127 (select (arr!46452 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408116 (= lt!620127 (toIndex!0 (select (arr!46452 a!2901) j!112) mask!2840))))

(declare-fun b!1408117 () Bool)

(assert (=> b!1408117 (= e!796965 e!796966)))

(declare-fun res!945942 () Bool)

(assert (=> b!1408117 (=> res!945942 e!796966)))

(assert (=> b!1408117 (= res!945942 (not (= lt!620128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620125 mask!2840) lt!620125 lt!620131 mask!2840))))))

(assert (=> b!1408117 (= lt!620125 (select (store (arr!46452 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408117 (= lt!620131 (array!96227 (store (arr!46452 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47003 a!2901)))))

(assert (= (and start!121154 res!945943) b!1408114))

(assert (= (and b!1408114 res!945940) b!1408111))

(assert (= (and b!1408111 res!945941) b!1408109))

(assert (= (and b!1408109 res!945948) b!1408112))

(assert (= (and b!1408112 res!945946) b!1408113))

(assert (= (and b!1408113 res!945945) b!1408116))

(assert (= (and b!1408116 (not res!945944)) b!1408117))

(assert (= (and b!1408117 (not res!945942)) b!1408115))

(assert (= (and b!1408115 (not res!945947)) b!1408110))

(declare-fun m!1297365 () Bool)

(assert (=> b!1408110 m!1297365))

(declare-fun m!1297367 () Bool)

(assert (=> b!1408110 m!1297367))

(declare-fun m!1297369 () Bool)

(assert (=> b!1408117 m!1297369))

(assert (=> b!1408117 m!1297369))

(declare-fun m!1297371 () Bool)

(assert (=> b!1408117 m!1297371))

(declare-fun m!1297373 () Bool)

(assert (=> b!1408117 m!1297373))

(declare-fun m!1297375 () Bool)

(assert (=> b!1408117 m!1297375))

(declare-fun m!1297377 () Bool)

(assert (=> b!1408112 m!1297377))

(declare-fun m!1297379 () Bool)

(assert (=> b!1408111 m!1297379))

(assert (=> b!1408111 m!1297379))

(declare-fun m!1297381 () Bool)

(assert (=> b!1408111 m!1297381))

(declare-fun m!1297383 () Bool)

(assert (=> b!1408116 m!1297383))

(declare-fun m!1297385 () Bool)

(assert (=> b!1408116 m!1297385))

(assert (=> b!1408116 m!1297383))

(declare-fun m!1297387 () Bool)

(assert (=> b!1408116 m!1297387))

(assert (=> b!1408116 m!1297383))

(declare-fun m!1297389 () Bool)

(assert (=> b!1408116 m!1297389))

(assert (=> b!1408116 m!1297383))

(declare-fun m!1297391 () Bool)

(assert (=> b!1408116 m!1297391))

(declare-fun m!1297393 () Bool)

(assert (=> b!1408116 m!1297393))

(declare-fun m!1297395 () Bool)

(assert (=> b!1408113 m!1297395))

(assert (=> b!1408109 m!1297383))

(assert (=> b!1408109 m!1297383))

(declare-fun m!1297397 () Bool)

(assert (=> b!1408109 m!1297397))

(declare-fun m!1297399 () Bool)

(assert (=> start!121154 m!1297399))

(declare-fun m!1297401 () Bool)

(assert (=> start!121154 m!1297401))

(push 1)

