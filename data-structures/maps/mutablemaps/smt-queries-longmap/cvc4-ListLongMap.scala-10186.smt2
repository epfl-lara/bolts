; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120086 () Bool)

(assert start!120086)

(declare-fun b!1397495 () Bool)

(declare-fun res!936517 () Bool)

(declare-fun e!791192 () Bool)

(assert (=> b!1397495 (=> (not res!936517) (not e!791192))))

(declare-datatypes ((array!95533 0))(
  ( (array!95534 (arr!46116 (Array (_ BitVec 32) (_ BitVec 64))) (size!46667 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95533)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397495 (= res!936517 (validKeyInArray!0 (select (arr!46116 a!2901) j!112)))))

(declare-fun b!1397496 () Bool)

(declare-fun res!936520 () Bool)

(assert (=> b!1397496 (=> (not res!936520) (not e!791192))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397496 (= res!936520 (validKeyInArray!0 (select (arr!46116 a!2901) i!1037)))))

(declare-fun res!936524 () Bool)

(assert (=> start!120086 (=> (not res!936524) (not e!791192))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120086 (= res!936524 (validMask!0 mask!2840))))

(assert (=> start!120086 e!791192))

(assert (=> start!120086 true))

(declare-fun array_inv!35061 (array!95533) Bool)

(assert (=> start!120086 (array_inv!35061 a!2901)))

(declare-fun b!1397497 () Bool)

(declare-fun e!791191 () Bool)

(assert (=> b!1397497 (= e!791191 true)))

(declare-fun lt!614254 () (_ BitVec 64))

(declare-fun lt!614252 () array!95533)

(declare-datatypes ((SeekEntryResult!10455 0))(
  ( (MissingZero!10455 (index!44190 (_ BitVec 32))) (Found!10455 (index!44191 (_ BitVec 32))) (Intermediate!10455 (undefined!11267 Bool) (index!44192 (_ BitVec 32)) (x!125848 (_ BitVec 32))) (Undefined!10455) (MissingVacant!10455 (index!44193 (_ BitVec 32))) )
))
(declare-fun lt!614255 () SeekEntryResult!10455)

(declare-fun lt!614253 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95533 (_ BitVec 32)) SeekEntryResult!10455)

(assert (=> b!1397497 (= lt!614255 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614253 lt!614254 lt!614252 mask!2840))))

(declare-fun b!1397498 () Bool)

(declare-fun e!791194 () Bool)

(assert (=> b!1397498 (= e!791192 (not e!791194))))

(declare-fun res!936522 () Bool)

(assert (=> b!1397498 (=> res!936522 e!791194)))

(declare-fun lt!614251 () SeekEntryResult!10455)

(assert (=> b!1397498 (= res!936522 (or (not (is-Intermediate!10455 lt!614251)) (undefined!11267 lt!614251)))))

(declare-fun e!791195 () Bool)

(assert (=> b!1397498 e!791195))

(declare-fun res!936523 () Bool)

(assert (=> b!1397498 (=> (not res!936523) (not e!791195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95533 (_ BitVec 32)) Bool)

(assert (=> b!1397498 (= res!936523 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46864 0))(
  ( (Unit!46865) )
))
(declare-fun lt!614256 () Unit!46864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46864)

(assert (=> b!1397498 (= lt!614256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397498 (= lt!614251 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614253 (select (arr!46116 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397498 (= lt!614253 (toIndex!0 (select (arr!46116 a!2901) j!112) mask!2840))))

(declare-fun b!1397499 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95533 (_ BitVec 32)) SeekEntryResult!10455)

(assert (=> b!1397499 (= e!791195 (= (seekEntryOrOpen!0 (select (arr!46116 a!2901) j!112) a!2901 mask!2840) (Found!10455 j!112)))))

(declare-fun b!1397500 () Bool)

(declare-fun res!936525 () Bool)

(assert (=> b!1397500 (=> (not res!936525) (not e!791192))))

(assert (=> b!1397500 (= res!936525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397501 () Bool)

(declare-fun res!936518 () Bool)

(assert (=> b!1397501 (=> (not res!936518) (not e!791192))))

(declare-datatypes ((List!32815 0))(
  ( (Nil!32812) (Cons!32811 (h!34053 (_ BitVec 64)) (t!47516 List!32815)) )
))
(declare-fun arrayNoDuplicates!0 (array!95533 (_ BitVec 32) List!32815) Bool)

(assert (=> b!1397501 (= res!936518 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32812))))

(declare-fun b!1397502 () Bool)

(declare-fun res!936519 () Bool)

(assert (=> b!1397502 (=> (not res!936519) (not e!791192))))

(assert (=> b!1397502 (= res!936519 (and (= (size!46667 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46667 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46667 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397503 () Bool)

(assert (=> b!1397503 (= e!791194 e!791191)))

(declare-fun res!936521 () Bool)

(assert (=> b!1397503 (=> res!936521 e!791191)))

(declare-fun lt!614257 () SeekEntryResult!10455)

(assert (=> b!1397503 (= res!936521 (or (= lt!614251 lt!614257) (not (is-Intermediate!10455 lt!614257)) (bvslt (x!125848 lt!614251) #b00000000000000000000000000000000) (bvsgt (x!125848 lt!614251) #b01111111111111111111111111111110) (bvslt lt!614253 #b00000000000000000000000000000000) (bvsge lt!614253 (size!46667 a!2901)) (bvslt (index!44192 lt!614251) #b00000000000000000000000000000000) (bvsge (index!44192 lt!614251) (size!46667 a!2901)) (not (= lt!614251 (Intermediate!10455 false (index!44192 lt!614251) (x!125848 lt!614251)))) (not (= lt!614257 (Intermediate!10455 (undefined!11267 lt!614257) (index!44192 lt!614257) (x!125848 lt!614257))))))))

(assert (=> b!1397503 (= lt!614257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614254 mask!2840) lt!614254 lt!614252 mask!2840))))

(assert (=> b!1397503 (= lt!614254 (select (store (arr!46116 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397503 (= lt!614252 (array!95534 (store (arr!46116 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46667 a!2901)))))

(assert (= (and start!120086 res!936524) b!1397502))

(assert (= (and b!1397502 res!936519) b!1397496))

(assert (= (and b!1397496 res!936520) b!1397495))

(assert (= (and b!1397495 res!936517) b!1397500))

(assert (= (and b!1397500 res!936525) b!1397501))

(assert (= (and b!1397501 res!936518) b!1397498))

(assert (= (and b!1397498 res!936523) b!1397499))

(assert (= (and b!1397498 (not res!936522)) b!1397503))

(assert (= (and b!1397503 (not res!936521)) b!1397497))

(declare-fun m!1284371 () Bool)

(assert (=> b!1397501 m!1284371))

(declare-fun m!1284373 () Bool)

(assert (=> b!1397498 m!1284373))

(declare-fun m!1284375 () Bool)

(assert (=> b!1397498 m!1284375))

(assert (=> b!1397498 m!1284373))

(declare-fun m!1284377 () Bool)

(assert (=> b!1397498 m!1284377))

(assert (=> b!1397498 m!1284373))

(declare-fun m!1284379 () Bool)

(assert (=> b!1397498 m!1284379))

(declare-fun m!1284381 () Bool)

(assert (=> b!1397498 m!1284381))

(declare-fun m!1284383 () Bool)

(assert (=> start!120086 m!1284383))

(declare-fun m!1284385 () Bool)

(assert (=> start!120086 m!1284385))

(declare-fun m!1284387 () Bool)

(assert (=> b!1397496 m!1284387))

(assert (=> b!1397496 m!1284387))

(declare-fun m!1284389 () Bool)

(assert (=> b!1397496 m!1284389))

(assert (=> b!1397499 m!1284373))

(assert (=> b!1397499 m!1284373))

(declare-fun m!1284391 () Bool)

(assert (=> b!1397499 m!1284391))

(assert (=> b!1397495 m!1284373))

(assert (=> b!1397495 m!1284373))

(declare-fun m!1284393 () Bool)

(assert (=> b!1397495 m!1284393))

(declare-fun m!1284395 () Bool)

(assert (=> b!1397497 m!1284395))

(declare-fun m!1284397 () Bool)

(assert (=> b!1397503 m!1284397))

(assert (=> b!1397503 m!1284397))

(declare-fun m!1284399 () Bool)

(assert (=> b!1397503 m!1284399))

(declare-fun m!1284401 () Bool)

(assert (=> b!1397503 m!1284401))

(declare-fun m!1284403 () Bool)

(assert (=> b!1397503 m!1284403))

(declare-fun m!1284405 () Bool)

(assert (=> b!1397500 m!1284405))

(push 1)

