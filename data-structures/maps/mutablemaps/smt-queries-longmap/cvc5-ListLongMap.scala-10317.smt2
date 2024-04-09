; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121264 () Bool)

(assert start!121264)

(declare-fun b!1409448 () Bool)

(declare-fun e!797627 () Bool)

(assert (=> b!1409448 (= e!797627 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96336 0))(
  ( (array!96337 (arr!46507 (Array (_ BitVec 32) (_ BitVec 64))) (size!47058 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96336)

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10840 0))(
  ( (MissingZero!10840 (index!45736 (_ BitVec 32))) (Found!10840 (index!45737 (_ BitVec 32))) (Intermediate!10840 (undefined!11652 Bool) (index!45738 (_ BitVec 32)) (x!127332 (_ BitVec 32))) (Undefined!10840) (MissingVacant!10840 (index!45739 (_ BitVec 32))) )
))
(declare-fun lt!620698 () SeekEntryResult!10840)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96336 (_ BitVec 32)) SeekEntryResult!10840)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409448 (= lt!620698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46507 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46507 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96337 (store (arr!46507 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47058 a!2901)) mask!2840))))

(declare-fun b!1409449 () Bool)

(declare-fun e!797626 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96336 (_ BitVec 32)) SeekEntryResult!10840)

(assert (=> b!1409449 (= e!797626 (= (seekEntryOrOpen!0 (select (arr!46507 a!2901) j!112) a!2901 mask!2840) (Found!10840 j!112)))))

(declare-fun b!1409450 () Bool)

(declare-fun res!947279 () Bool)

(declare-fun e!797625 () Bool)

(assert (=> b!1409450 (=> (not res!947279) (not e!797625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409450 (= res!947279 (validKeyInArray!0 (select (arr!46507 a!2901) i!1037)))))

(declare-fun b!1409451 () Bool)

(declare-fun res!947283 () Bool)

(assert (=> b!1409451 (=> (not res!947283) (not e!797625))))

(assert (=> b!1409451 (= res!947283 (and (= (size!47058 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47058 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47058 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409452 () Bool)

(declare-fun res!947284 () Bool)

(assert (=> b!1409452 (=> (not res!947284) (not e!797625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96336 (_ BitVec 32)) Bool)

(assert (=> b!1409452 (= res!947284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409453 () Bool)

(declare-fun res!947286 () Bool)

(assert (=> b!1409453 (=> (not res!947286) (not e!797625))))

(declare-datatypes ((List!33206 0))(
  ( (Nil!33203) (Cons!33202 (h!34465 (_ BitVec 64)) (t!47907 List!33206)) )
))
(declare-fun arrayNoDuplicates!0 (array!96336 (_ BitVec 32) List!33206) Bool)

(assert (=> b!1409453 (= res!947286 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33203))))

(declare-fun b!1409454 () Bool)

(declare-fun res!947280 () Bool)

(assert (=> b!1409454 (=> (not res!947280) (not e!797625))))

(assert (=> b!1409454 (= res!947280 (validKeyInArray!0 (select (arr!46507 a!2901) j!112)))))

(declare-fun b!1409455 () Bool)

(assert (=> b!1409455 (= e!797625 (not e!797627))))

(declare-fun res!947282 () Bool)

(assert (=> b!1409455 (=> res!947282 e!797627)))

(declare-fun lt!620697 () SeekEntryResult!10840)

(assert (=> b!1409455 (= res!947282 (or (not (is-Intermediate!10840 lt!620697)) (undefined!11652 lt!620697)))))

(assert (=> b!1409455 e!797626))

(declare-fun res!947281 () Bool)

(assert (=> b!1409455 (=> (not res!947281) (not e!797626))))

(assert (=> b!1409455 (= res!947281 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47604 0))(
  ( (Unit!47605) )
))
(declare-fun lt!620696 () Unit!47604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47604)

(assert (=> b!1409455 (= lt!620696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409455 (= lt!620697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46507 a!2901) j!112) mask!2840) (select (arr!46507 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!947285 () Bool)

(assert (=> start!121264 (=> (not res!947285) (not e!797625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121264 (= res!947285 (validMask!0 mask!2840))))

(assert (=> start!121264 e!797625))

(assert (=> start!121264 true))

(declare-fun array_inv!35452 (array!96336) Bool)

(assert (=> start!121264 (array_inv!35452 a!2901)))

(assert (= (and start!121264 res!947285) b!1409451))

(assert (= (and b!1409451 res!947283) b!1409450))

(assert (= (and b!1409450 res!947279) b!1409454))

(assert (= (and b!1409454 res!947280) b!1409452))

(assert (= (and b!1409452 res!947284) b!1409453))

(assert (= (and b!1409453 res!947286) b!1409455))

(assert (= (and b!1409455 res!947281) b!1409449))

(assert (= (and b!1409455 (not res!947282)) b!1409448))

(declare-fun m!1299263 () Bool)

(assert (=> b!1409448 m!1299263))

(declare-fun m!1299265 () Bool)

(assert (=> b!1409448 m!1299265))

(assert (=> b!1409448 m!1299265))

(declare-fun m!1299267 () Bool)

(assert (=> b!1409448 m!1299267))

(assert (=> b!1409448 m!1299267))

(assert (=> b!1409448 m!1299265))

(declare-fun m!1299269 () Bool)

(assert (=> b!1409448 m!1299269))

(declare-fun m!1299271 () Bool)

(assert (=> b!1409455 m!1299271))

(declare-fun m!1299273 () Bool)

(assert (=> b!1409455 m!1299273))

(assert (=> b!1409455 m!1299271))

(declare-fun m!1299275 () Bool)

(assert (=> b!1409455 m!1299275))

(assert (=> b!1409455 m!1299273))

(assert (=> b!1409455 m!1299271))

(declare-fun m!1299277 () Bool)

(assert (=> b!1409455 m!1299277))

(declare-fun m!1299279 () Bool)

(assert (=> b!1409455 m!1299279))

(declare-fun m!1299281 () Bool)

(assert (=> b!1409453 m!1299281))

(declare-fun m!1299283 () Bool)

(assert (=> b!1409450 m!1299283))

(assert (=> b!1409450 m!1299283))

(declare-fun m!1299285 () Bool)

(assert (=> b!1409450 m!1299285))

(declare-fun m!1299287 () Bool)

(assert (=> start!121264 m!1299287))

(declare-fun m!1299289 () Bool)

(assert (=> start!121264 m!1299289))

(declare-fun m!1299291 () Bool)

(assert (=> b!1409452 m!1299291))

(assert (=> b!1409454 m!1299271))

(assert (=> b!1409454 m!1299271))

(declare-fun m!1299293 () Bool)

(assert (=> b!1409454 m!1299293))

(assert (=> b!1409449 m!1299271))

(assert (=> b!1409449 m!1299271))

(declare-fun m!1299295 () Bool)

(assert (=> b!1409449 m!1299295))

(push 1)

(assert (not b!1409453))

(assert (not b!1409455))

(assert (not b!1409448))

(assert (not b!1409454))

(assert (not b!1409452))

(assert (not b!1409450))

(assert (not start!121264))

(assert (not b!1409449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

