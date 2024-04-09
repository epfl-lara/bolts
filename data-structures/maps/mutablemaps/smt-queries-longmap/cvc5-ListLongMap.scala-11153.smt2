; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130312 () Bool)

(assert start!130312)

(declare-fun b!1529477 () Bool)

(declare-fun res!1047325 () Bool)

(declare-fun e!852352 () Bool)

(assert (=> b!1529477 (=> (not res!1047325) (not e!852352))))

(declare-datatypes ((SeekEntryResult!13201 0))(
  ( (MissingZero!13201 (index!55198 (_ BitVec 32))) (Found!13201 (index!55199 (_ BitVec 32))) (Intermediate!13201 (undefined!14013 Bool) (index!55200 (_ BitVec 32)) (x!136891 (_ BitVec 32))) (Undefined!13201) (MissingVacant!13201 (index!55201 (_ BitVec 32))) )
))
(declare-fun lt!662413 () SeekEntryResult!13201)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!101589 0))(
  ( (array!101590 (arr!49015 (Array (_ BitVec 32) (_ BitVec 64))) (size!49566 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101589)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101589 (_ BitVec 32)) SeekEntryResult!13201)

(assert (=> b!1529477 (= res!1047325 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49015 a!2804) j!70) a!2804 mask!2512) lt!662413))))

(declare-fun b!1529478 () Bool)

(declare-fun res!1047332 () Bool)

(assert (=> b!1529478 (=> (not res!1047332) (not e!852352))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!662412 () SeekEntryResult!13201)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529478 (= res!1047332 (= lt!662412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49015 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49015 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101590 (store (arr!49015 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49566 a!2804)) mask!2512)))))

(declare-fun e!852354 () Bool)

(declare-fun b!1529479 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101589 (_ BitVec 32)) SeekEntryResult!13201)

(assert (=> b!1529479 (= e!852354 (= (seekEntry!0 (select (arr!49015 a!2804) j!70) a!2804 mask!2512) (Found!13201 j!70)))))

(declare-fun b!1529480 () Bool)

(declare-fun res!1047322 () Bool)

(declare-fun e!852355 () Bool)

(assert (=> b!1529480 (=> (not res!1047322) (not e!852355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101589 (_ BitVec 32)) Bool)

(assert (=> b!1529480 (= res!1047322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529481 () Bool)

(declare-fun res!1047331 () Bool)

(assert (=> b!1529481 (=> (not res!1047331) (not e!852355))))

(assert (=> b!1529481 (= res!1047331 (and (= (size!49566 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49566 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49566 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529482 () Bool)

(declare-fun res!1047328 () Bool)

(assert (=> b!1529482 (=> (not res!1047328) (not e!852355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529482 (= res!1047328 (validKeyInArray!0 (select (arr!49015 a!2804) i!961)))))

(declare-fun b!1529483 () Bool)

(declare-fun e!852353 () Bool)

(assert (=> b!1529483 (= e!852353 true)))

(declare-fun lt!662410 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529483 (= lt!662410 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1047323 () Bool)

(assert (=> start!130312 (=> (not res!1047323) (not e!852355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130312 (= res!1047323 (validMask!0 mask!2512))))

(assert (=> start!130312 e!852355))

(assert (=> start!130312 true))

(declare-fun array_inv!37960 (array!101589) Bool)

(assert (=> start!130312 (array_inv!37960 a!2804)))

(declare-fun b!1529484 () Bool)

(assert (=> b!1529484 (= e!852355 e!852352)))

(declare-fun res!1047330 () Bool)

(assert (=> b!1529484 (=> (not res!1047330) (not e!852352))))

(assert (=> b!1529484 (= res!1047330 (= lt!662412 lt!662413))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529484 (= lt!662413 (Intermediate!13201 false resIndex!21 resX!21))))

(assert (=> b!1529484 (= lt!662412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49015 a!2804) j!70) mask!2512) (select (arr!49015 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529485 () Bool)

(assert (=> b!1529485 (= e!852352 (not e!852353))))

(declare-fun res!1047324 () Bool)

(assert (=> b!1529485 (=> res!1047324 e!852353)))

(assert (=> b!1529485 (= res!1047324 (or (not (= (select (arr!49015 a!2804) j!70) (select (store (arr!49015 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1529485 e!852354))

(declare-fun res!1047326 () Bool)

(assert (=> b!1529485 (=> (not res!1047326) (not e!852354))))

(assert (=> b!1529485 (= res!1047326 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51142 0))(
  ( (Unit!51143) )
))
(declare-fun lt!662411 () Unit!51142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101589 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51142)

(assert (=> b!1529485 (= lt!662411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529486 () Bool)

(declare-fun res!1047329 () Bool)

(assert (=> b!1529486 (=> (not res!1047329) (not e!852355))))

(assert (=> b!1529486 (= res!1047329 (validKeyInArray!0 (select (arr!49015 a!2804) j!70)))))

(declare-fun b!1529487 () Bool)

(declare-fun res!1047333 () Bool)

(assert (=> b!1529487 (=> (not res!1047333) (not e!852355))))

(assert (=> b!1529487 (= res!1047333 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49566 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49566 a!2804))))))

(declare-fun b!1529488 () Bool)

(declare-fun res!1047327 () Bool)

(assert (=> b!1529488 (=> (not res!1047327) (not e!852355))))

(declare-datatypes ((List!35678 0))(
  ( (Nil!35675) (Cons!35674 (h!37111 (_ BitVec 64)) (t!50379 List!35678)) )
))
(declare-fun arrayNoDuplicates!0 (array!101589 (_ BitVec 32) List!35678) Bool)

(assert (=> b!1529488 (= res!1047327 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35675))))

(assert (= (and start!130312 res!1047323) b!1529481))

(assert (= (and b!1529481 res!1047331) b!1529482))

(assert (= (and b!1529482 res!1047328) b!1529486))

(assert (= (and b!1529486 res!1047329) b!1529480))

(assert (= (and b!1529480 res!1047322) b!1529488))

(assert (= (and b!1529488 res!1047327) b!1529487))

(assert (= (and b!1529487 res!1047333) b!1529484))

(assert (= (and b!1529484 res!1047330) b!1529477))

(assert (= (and b!1529477 res!1047325) b!1529478))

(assert (= (and b!1529478 res!1047332) b!1529485))

(assert (= (and b!1529485 res!1047326) b!1529479))

(assert (= (and b!1529485 (not res!1047324)) b!1529483))

(declare-fun m!1412481 () Bool)

(assert (=> b!1529486 m!1412481))

(assert (=> b!1529486 m!1412481))

(declare-fun m!1412483 () Bool)

(assert (=> b!1529486 m!1412483))

(declare-fun m!1412485 () Bool)

(assert (=> b!1529488 m!1412485))

(declare-fun m!1412487 () Bool)

(assert (=> b!1529483 m!1412487))

(declare-fun m!1412489 () Bool)

(assert (=> start!130312 m!1412489))

(declare-fun m!1412491 () Bool)

(assert (=> start!130312 m!1412491))

(assert (=> b!1529477 m!1412481))

(assert (=> b!1529477 m!1412481))

(declare-fun m!1412493 () Bool)

(assert (=> b!1529477 m!1412493))

(declare-fun m!1412495 () Bool)

(assert (=> b!1529482 m!1412495))

(assert (=> b!1529482 m!1412495))

(declare-fun m!1412497 () Bool)

(assert (=> b!1529482 m!1412497))

(declare-fun m!1412499 () Bool)

(assert (=> b!1529478 m!1412499))

(declare-fun m!1412501 () Bool)

(assert (=> b!1529478 m!1412501))

(assert (=> b!1529478 m!1412501))

(declare-fun m!1412503 () Bool)

(assert (=> b!1529478 m!1412503))

(assert (=> b!1529478 m!1412503))

(assert (=> b!1529478 m!1412501))

(declare-fun m!1412505 () Bool)

(assert (=> b!1529478 m!1412505))

(assert (=> b!1529479 m!1412481))

(assert (=> b!1529479 m!1412481))

(declare-fun m!1412507 () Bool)

(assert (=> b!1529479 m!1412507))

(assert (=> b!1529485 m!1412481))

(declare-fun m!1412509 () Bool)

(assert (=> b!1529485 m!1412509))

(assert (=> b!1529485 m!1412499))

(assert (=> b!1529485 m!1412501))

(declare-fun m!1412511 () Bool)

(assert (=> b!1529485 m!1412511))

(declare-fun m!1412513 () Bool)

(assert (=> b!1529480 m!1412513))

(assert (=> b!1529484 m!1412481))

(assert (=> b!1529484 m!1412481))

(declare-fun m!1412515 () Bool)

(assert (=> b!1529484 m!1412515))

(assert (=> b!1529484 m!1412515))

(assert (=> b!1529484 m!1412481))

(declare-fun m!1412517 () Bool)

(assert (=> b!1529484 m!1412517))

(push 1)

