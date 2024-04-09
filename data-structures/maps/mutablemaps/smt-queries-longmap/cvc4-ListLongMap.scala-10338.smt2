; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121622 () Bool)

(assert start!121622)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96478 0))(
  ( (array!96479 (arr!46572 (Array (_ BitVec 32) (_ BitVec 64))) (size!47123 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96478)

(declare-datatypes ((SeekEntryResult!10905 0))(
  ( (MissingZero!10905 (index!45999 (_ BitVec 32))) (Found!10905 (index!46000 (_ BitVec 32))) (Intermediate!10905 (undefined!11717 Bool) (index!46001 (_ BitVec 32)) (x!127595 (_ BitVec 32))) (Undefined!10905) (MissingVacant!10905 (index!46002 (_ BitVec 32))) )
))
(declare-fun lt!622211 () SeekEntryResult!10905)

(declare-fun lt!622213 () (_ BitVec 64))

(declare-fun lt!622210 () array!96478)

(declare-fun b!1412260 () Bool)

(declare-fun e!799232 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96478 (_ BitVec 32)) SeekEntryResult!10905)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96478 (_ BitVec 32)) SeekEntryResult!10905)

(assert (=> b!1412260 (= e!799232 (= (seekEntryOrOpen!0 lt!622213 lt!622210 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127595 lt!622211) (index!46001 lt!622211) (index!46001 lt!622211) (select (arr!46572 a!2901) j!112) lt!622210 mask!2840)))))

(declare-fun b!1412261 () Bool)

(declare-fun res!949362 () Bool)

(declare-fun e!799228 () Bool)

(assert (=> b!1412261 (=> (not res!949362) (not e!799228))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412261 (= res!949362 (validKeyInArray!0 (select (arr!46572 a!2901) j!112)))))

(declare-fun b!1412262 () Bool)

(declare-fun res!949368 () Bool)

(assert (=> b!1412262 (=> (not res!949368) (not e!799228))))

(declare-datatypes ((List!33271 0))(
  ( (Nil!33268) (Cons!33267 (h!34542 (_ BitVec 64)) (t!47972 List!33271)) )
))
(declare-fun arrayNoDuplicates!0 (array!96478 (_ BitVec 32) List!33271) Bool)

(assert (=> b!1412262 (= res!949368 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33268))))

(declare-fun b!1412263 () Bool)

(declare-fun e!799229 () Bool)

(assert (=> b!1412263 (= e!799229 true)))

(assert (=> b!1412263 e!799232))

(declare-fun res!949367 () Bool)

(assert (=> b!1412263 (=> (not res!949367) (not e!799232))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622209 () SeekEntryResult!10905)

(assert (=> b!1412263 (= res!949367 (and (not (undefined!11717 lt!622211)) (= (index!46001 lt!622211) i!1037) (bvslt (x!127595 lt!622211) (x!127595 lt!622209)) (= (select (store (arr!46572 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46001 lt!622211)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47734 0))(
  ( (Unit!47735) )
))
(declare-fun lt!622207 () Unit!47734)

(declare-fun lt!622208 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47734)

(assert (=> b!1412263 (= lt!622207 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622208 (x!127595 lt!622209) (index!46001 lt!622209) (x!127595 lt!622211) (index!46001 lt!622211) (undefined!11717 lt!622211) mask!2840))))

(declare-fun b!1412264 () Bool)

(declare-fun res!949361 () Bool)

(assert (=> b!1412264 (=> (not res!949361) (not e!799228))))

(assert (=> b!1412264 (= res!949361 (validKeyInArray!0 (select (arr!46572 a!2901) i!1037)))))

(declare-fun b!1412265 () Bool)

(declare-fun e!799230 () Bool)

(assert (=> b!1412265 (= e!799230 (= (seekEntryOrOpen!0 (select (arr!46572 a!2901) j!112) a!2901 mask!2840) (Found!10905 j!112)))))

(declare-fun b!1412266 () Bool)

(declare-fun res!949366 () Bool)

(assert (=> b!1412266 (=> (not res!949366) (not e!799228))))

(assert (=> b!1412266 (= res!949366 (and (= (size!47123 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47123 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47123 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412267 () Bool)

(declare-fun e!799227 () Bool)

(assert (=> b!1412267 (= e!799228 (not e!799227))))

(declare-fun res!949363 () Bool)

(assert (=> b!1412267 (=> res!949363 e!799227)))

(assert (=> b!1412267 (= res!949363 (or (not (is-Intermediate!10905 lt!622209)) (undefined!11717 lt!622209)))))

(assert (=> b!1412267 e!799230))

(declare-fun res!949360 () Bool)

(assert (=> b!1412267 (=> (not res!949360) (not e!799230))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96478 (_ BitVec 32)) Bool)

(assert (=> b!1412267 (= res!949360 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622212 () Unit!47734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47734)

(assert (=> b!1412267 (= lt!622212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96478 (_ BitVec 32)) SeekEntryResult!10905)

(assert (=> b!1412267 (= lt!622209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622208 (select (arr!46572 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412267 (= lt!622208 (toIndex!0 (select (arr!46572 a!2901) j!112) mask!2840))))

(declare-fun res!949365 () Bool)

(assert (=> start!121622 (=> (not res!949365) (not e!799228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121622 (= res!949365 (validMask!0 mask!2840))))

(assert (=> start!121622 e!799228))

(assert (=> start!121622 true))

(declare-fun array_inv!35517 (array!96478) Bool)

(assert (=> start!121622 (array_inv!35517 a!2901)))

(declare-fun b!1412268 () Bool)

(assert (=> b!1412268 (= e!799227 e!799229)))

(declare-fun res!949359 () Bool)

(assert (=> b!1412268 (=> res!949359 e!799229)))

(assert (=> b!1412268 (= res!949359 (or (= lt!622209 lt!622211) (not (is-Intermediate!10905 lt!622211))))))

(assert (=> b!1412268 (= lt!622211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622213 mask!2840) lt!622213 lt!622210 mask!2840))))

(assert (=> b!1412268 (= lt!622213 (select (store (arr!46572 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412268 (= lt!622210 (array!96479 (store (arr!46572 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47123 a!2901)))))

(declare-fun b!1412269 () Bool)

(declare-fun res!949364 () Bool)

(assert (=> b!1412269 (=> (not res!949364) (not e!799228))))

(assert (=> b!1412269 (= res!949364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121622 res!949365) b!1412266))

(assert (= (and b!1412266 res!949366) b!1412264))

(assert (= (and b!1412264 res!949361) b!1412261))

(assert (= (and b!1412261 res!949362) b!1412269))

(assert (= (and b!1412269 res!949364) b!1412262))

(assert (= (and b!1412262 res!949368) b!1412267))

(assert (= (and b!1412267 res!949360) b!1412265))

(assert (= (and b!1412267 (not res!949363)) b!1412268))

(assert (= (and b!1412268 (not res!949359)) b!1412263))

(assert (= (and b!1412263 res!949367) b!1412260))

(declare-fun m!1302305 () Bool)

(assert (=> b!1412268 m!1302305))

(assert (=> b!1412268 m!1302305))

(declare-fun m!1302307 () Bool)

(assert (=> b!1412268 m!1302307))

(declare-fun m!1302309 () Bool)

(assert (=> b!1412268 m!1302309))

(declare-fun m!1302311 () Bool)

(assert (=> b!1412268 m!1302311))

(declare-fun m!1302313 () Bool)

(assert (=> b!1412260 m!1302313))

(declare-fun m!1302315 () Bool)

(assert (=> b!1412260 m!1302315))

(assert (=> b!1412260 m!1302315))

(declare-fun m!1302317 () Bool)

(assert (=> b!1412260 m!1302317))

(declare-fun m!1302319 () Bool)

(assert (=> b!1412264 m!1302319))

(assert (=> b!1412264 m!1302319))

(declare-fun m!1302321 () Bool)

(assert (=> b!1412264 m!1302321))

(declare-fun m!1302323 () Bool)

(assert (=> start!121622 m!1302323))

(declare-fun m!1302325 () Bool)

(assert (=> start!121622 m!1302325))

(assert (=> b!1412263 m!1302309))

(declare-fun m!1302327 () Bool)

(assert (=> b!1412263 m!1302327))

(declare-fun m!1302329 () Bool)

(assert (=> b!1412263 m!1302329))

(assert (=> b!1412265 m!1302315))

(assert (=> b!1412265 m!1302315))

(declare-fun m!1302331 () Bool)

(assert (=> b!1412265 m!1302331))

(declare-fun m!1302333 () Bool)

(assert (=> b!1412262 m!1302333))

(assert (=> b!1412261 m!1302315))

(assert (=> b!1412261 m!1302315))

(declare-fun m!1302335 () Bool)

(assert (=> b!1412261 m!1302335))

(declare-fun m!1302337 () Bool)

(assert (=> b!1412269 m!1302337))

(assert (=> b!1412267 m!1302315))

(declare-fun m!1302339 () Bool)

(assert (=> b!1412267 m!1302339))

(assert (=> b!1412267 m!1302315))

(assert (=> b!1412267 m!1302315))

(declare-fun m!1302341 () Bool)

(assert (=> b!1412267 m!1302341))

(declare-fun m!1302343 () Bool)

(assert (=> b!1412267 m!1302343))

(declare-fun m!1302345 () Bool)

(assert (=> b!1412267 m!1302345))

(push 1)

