; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121630 () Bool)

(assert start!121630)

(declare-fun res!949485 () Bool)

(declare-fun e!799300 () Bool)

(assert (=> start!121630 (=> (not res!949485) (not e!799300))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121630 (= res!949485 (validMask!0 mask!2840))))

(assert (=> start!121630 e!799300))

(assert (=> start!121630 true))

(declare-datatypes ((array!96486 0))(
  ( (array!96487 (arr!46576 (Array (_ BitVec 32) (_ BitVec 64))) (size!47127 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96486)

(declare-fun array_inv!35521 (array!96486) Bool)

(assert (=> start!121630 (array_inv!35521 a!2901)))

(declare-fun b!1412380 () Bool)

(declare-fun e!799303 () Bool)

(declare-fun e!799304 () Bool)

(assert (=> b!1412380 (= e!799303 e!799304)))

(declare-fun res!949481 () Bool)

(assert (=> b!1412380 (=> res!949481 e!799304)))

(declare-datatypes ((SeekEntryResult!10909 0))(
  ( (MissingZero!10909 (index!46015 (_ BitVec 32))) (Found!10909 (index!46016 (_ BitVec 32))) (Intermediate!10909 (undefined!11721 Bool) (index!46017 (_ BitVec 32)) (x!127615 (_ BitVec 32))) (Undefined!10909) (MissingVacant!10909 (index!46018 (_ BitVec 32))) )
))
(declare-fun lt!622295 () SeekEntryResult!10909)

(declare-fun lt!622296 () SeekEntryResult!10909)

(assert (=> b!1412380 (= res!949481 (or (= lt!622295 lt!622296) (not (is-Intermediate!10909 lt!622296))))))

(declare-fun lt!622297 () array!96486)

(declare-fun lt!622291 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96486 (_ BitVec 32)) SeekEntryResult!10909)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412380 (= lt!622296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622291 mask!2840) lt!622291 lt!622297 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412380 (= lt!622291 (select (store (arr!46576 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412380 (= lt!622297 (array!96487 (store (arr!46576 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47127 a!2901)))))

(declare-fun e!799299 () Bool)

(declare-fun b!1412381 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96486 (_ BitVec 32)) SeekEntryResult!10909)

(assert (=> b!1412381 (= e!799299 (= (seekEntryOrOpen!0 (select (arr!46576 a!2901) j!112) a!2901 mask!2840) (Found!10909 j!112)))))

(declare-fun b!1412382 () Bool)

(declare-fun res!949479 () Bool)

(assert (=> b!1412382 (=> (not res!949479) (not e!799300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412382 (= res!949479 (validKeyInArray!0 (select (arr!46576 a!2901) j!112)))))

(declare-fun b!1412383 () Bool)

(declare-fun res!949488 () Bool)

(assert (=> b!1412383 (=> (not res!949488) (not e!799300))))

(declare-datatypes ((List!33275 0))(
  ( (Nil!33272) (Cons!33271 (h!34546 (_ BitVec 64)) (t!47976 List!33275)) )
))
(declare-fun arrayNoDuplicates!0 (array!96486 (_ BitVec 32) List!33275) Bool)

(assert (=> b!1412383 (= res!949488 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33272))))

(declare-fun b!1412384 () Bool)

(assert (=> b!1412384 (= e!799304 true)))

(declare-fun e!799302 () Bool)

(assert (=> b!1412384 e!799302))

(declare-fun res!949482 () Bool)

(assert (=> b!1412384 (=> (not res!949482) (not e!799302))))

(assert (=> b!1412384 (= res!949482 (and (not (undefined!11721 lt!622296)) (= (index!46017 lt!622296) i!1037) (bvslt (x!127615 lt!622296) (x!127615 lt!622295)) (= (select (store (arr!46576 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46017 lt!622296)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622292 () (_ BitVec 32))

(declare-datatypes ((Unit!47742 0))(
  ( (Unit!47743) )
))
(declare-fun lt!622293 () Unit!47742)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47742)

(assert (=> b!1412384 (= lt!622293 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622292 (x!127615 lt!622295) (index!46017 lt!622295) (x!127615 lt!622296) (index!46017 lt!622296) (undefined!11721 lt!622296) mask!2840))))

(declare-fun b!1412385 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96486 (_ BitVec 32)) SeekEntryResult!10909)

(assert (=> b!1412385 (= e!799302 (= (seekEntryOrOpen!0 lt!622291 lt!622297 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127615 lt!622296) (index!46017 lt!622296) (index!46017 lt!622296) (select (arr!46576 a!2901) j!112) lt!622297 mask!2840)))))

(declare-fun b!1412386 () Bool)

(declare-fun res!949480 () Bool)

(assert (=> b!1412386 (=> (not res!949480) (not e!799300))))

(assert (=> b!1412386 (= res!949480 (validKeyInArray!0 (select (arr!46576 a!2901) i!1037)))))

(declare-fun b!1412387 () Bool)

(assert (=> b!1412387 (= e!799300 (not e!799303))))

(declare-fun res!949487 () Bool)

(assert (=> b!1412387 (=> res!949487 e!799303)))

(assert (=> b!1412387 (= res!949487 (or (not (is-Intermediate!10909 lt!622295)) (undefined!11721 lt!622295)))))

(assert (=> b!1412387 e!799299))

(declare-fun res!949486 () Bool)

(assert (=> b!1412387 (=> (not res!949486) (not e!799299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96486 (_ BitVec 32)) Bool)

(assert (=> b!1412387 (= res!949486 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622294 () Unit!47742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47742)

(assert (=> b!1412387 (= lt!622294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412387 (= lt!622295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622292 (select (arr!46576 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412387 (= lt!622292 (toIndex!0 (select (arr!46576 a!2901) j!112) mask!2840))))

(declare-fun b!1412388 () Bool)

(declare-fun res!949484 () Bool)

(assert (=> b!1412388 (=> (not res!949484) (not e!799300))))

(assert (=> b!1412388 (= res!949484 (and (= (size!47127 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47127 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47127 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412389 () Bool)

(declare-fun res!949483 () Bool)

(assert (=> b!1412389 (=> (not res!949483) (not e!799300))))

(assert (=> b!1412389 (= res!949483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121630 res!949485) b!1412388))

(assert (= (and b!1412388 res!949484) b!1412386))

(assert (= (and b!1412386 res!949480) b!1412382))

(assert (= (and b!1412382 res!949479) b!1412389))

(assert (= (and b!1412389 res!949483) b!1412383))

(assert (= (and b!1412383 res!949488) b!1412387))

(assert (= (and b!1412387 res!949486) b!1412381))

(assert (= (and b!1412387 (not res!949487)) b!1412380))

(assert (= (and b!1412380 (not res!949481)) b!1412384))

(assert (= (and b!1412384 res!949482) b!1412385))

(declare-fun m!1302473 () Bool)

(assert (=> start!121630 m!1302473))

(declare-fun m!1302475 () Bool)

(assert (=> start!121630 m!1302475))

(declare-fun m!1302477 () Bool)

(assert (=> b!1412386 m!1302477))

(assert (=> b!1412386 m!1302477))

(declare-fun m!1302479 () Bool)

(assert (=> b!1412386 m!1302479))

(declare-fun m!1302481 () Bool)

(assert (=> b!1412387 m!1302481))

(declare-fun m!1302483 () Bool)

(assert (=> b!1412387 m!1302483))

(assert (=> b!1412387 m!1302481))

(assert (=> b!1412387 m!1302481))

(declare-fun m!1302485 () Bool)

(assert (=> b!1412387 m!1302485))

(declare-fun m!1302487 () Bool)

(assert (=> b!1412387 m!1302487))

(declare-fun m!1302489 () Bool)

(assert (=> b!1412387 m!1302489))

(assert (=> b!1412382 m!1302481))

(assert (=> b!1412382 m!1302481))

(declare-fun m!1302491 () Bool)

(assert (=> b!1412382 m!1302491))

(declare-fun m!1302493 () Bool)

(assert (=> b!1412384 m!1302493))

(declare-fun m!1302495 () Bool)

(assert (=> b!1412384 m!1302495))

(declare-fun m!1302497 () Bool)

(assert (=> b!1412384 m!1302497))

(declare-fun m!1302499 () Bool)

(assert (=> b!1412383 m!1302499))

(declare-fun m!1302501 () Bool)

(assert (=> b!1412385 m!1302501))

(assert (=> b!1412385 m!1302481))

(assert (=> b!1412385 m!1302481))

(declare-fun m!1302503 () Bool)

(assert (=> b!1412385 m!1302503))

(assert (=> b!1412381 m!1302481))

(assert (=> b!1412381 m!1302481))

(declare-fun m!1302505 () Bool)

(assert (=> b!1412381 m!1302505))

(declare-fun m!1302507 () Bool)

(assert (=> b!1412389 m!1302507))

(declare-fun m!1302509 () Bool)

(assert (=> b!1412380 m!1302509))

(assert (=> b!1412380 m!1302509))

(declare-fun m!1302511 () Bool)

(assert (=> b!1412380 m!1302511))

(assert (=> b!1412380 m!1302493))

(declare-fun m!1302513 () Bool)

(assert (=> b!1412380 m!1302513))

(push 1)

