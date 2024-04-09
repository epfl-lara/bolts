; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121210 () Bool)

(assert start!121210)

(declare-fun b!1408800 () Bool)

(declare-fun e!797301 () Bool)

(declare-fun e!797300 () Bool)

(assert (=> b!1408800 (= e!797301 (not e!797300))))

(declare-fun res!946636 () Bool)

(assert (=> b!1408800 (=> res!946636 e!797300)))

(declare-datatypes ((SeekEntryResult!10813 0))(
  ( (MissingZero!10813 (index!45628 (_ BitVec 32))) (Found!10813 (index!45629 (_ BitVec 32))) (Intermediate!10813 (undefined!11625 Bool) (index!45630 (_ BitVec 32)) (x!127233 (_ BitVec 32))) (Undefined!10813) (MissingVacant!10813 (index!45631 (_ BitVec 32))) )
))
(declare-fun lt!620455 () SeekEntryResult!10813)

(assert (=> b!1408800 (= res!946636 (or (not (is-Intermediate!10813 lt!620455)) (undefined!11625 lt!620455)))))

(declare-fun e!797302 () Bool)

(assert (=> b!1408800 e!797302))

(declare-fun res!946637 () Bool)

(assert (=> b!1408800 (=> (not res!946637) (not e!797302))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96282 0))(
  ( (array!96283 (arr!46480 (Array (_ BitVec 32) (_ BitVec 64))) (size!47031 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96282)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96282 (_ BitVec 32)) Bool)

(assert (=> b!1408800 (= res!946637 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47550 0))(
  ( (Unit!47551) )
))
(declare-fun lt!620453 () Unit!47550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96282 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47550)

(assert (=> b!1408800 (= lt!620453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96282 (_ BitVec 32)) SeekEntryResult!10813)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408800 (= lt!620455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46480 a!2901) j!112) mask!2840) (select (arr!46480 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408801 () Bool)

(declare-fun res!946638 () Bool)

(assert (=> b!1408801 (=> (not res!946638) (not e!797301))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408801 (= res!946638 (validKeyInArray!0 (select (arr!46480 a!2901) i!1037)))))

(declare-fun b!1408802 () Bool)

(declare-fun res!946635 () Bool)

(assert (=> b!1408802 (=> (not res!946635) (not e!797301))))

(declare-datatypes ((List!33179 0))(
  ( (Nil!33176) (Cons!33175 (h!34438 (_ BitVec 64)) (t!47880 List!33179)) )
))
(declare-fun arrayNoDuplicates!0 (array!96282 (_ BitVec 32) List!33179) Bool)

(assert (=> b!1408802 (= res!946635 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33176))))

(declare-fun res!946634 () Bool)

(assert (=> start!121210 (=> (not res!946634) (not e!797301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121210 (= res!946634 (validMask!0 mask!2840))))

(assert (=> start!121210 e!797301))

(assert (=> start!121210 true))

(declare-fun array_inv!35425 (array!96282) Bool)

(assert (=> start!121210 (array_inv!35425 a!2901)))

(declare-fun b!1408803 () Bool)

(declare-fun res!946632 () Bool)

(assert (=> b!1408803 (=> (not res!946632) (not e!797301))))

(assert (=> b!1408803 (= res!946632 (and (= (size!47031 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47031 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47031 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408804 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96282 (_ BitVec 32)) SeekEntryResult!10813)

(assert (=> b!1408804 (= e!797302 (= (seekEntryOrOpen!0 (select (arr!46480 a!2901) j!112) a!2901 mask!2840) (Found!10813 j!112)))))

(declare-fun b!1408805 () Bool)

(assert (=> b!1408805 (= e!797300 true)))

(declare-fun lt!620454 () SeekEntryResult!10813)

(assert (=> b!1408805 (= lt!620454 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46480 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46480 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96283 (store (arr!46480 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47031 a!2901)) mask!2840))))

(declare-fun b!1408806 () Bool)

(declare-fun res!946631 () Bool)

(assert (=> b!1408806 (=> (not res!946631) (not e!797301))))

(assert (=> b!1408806 (= res!946631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408807 () Bool)

(declare-fun res!946633 () Bool)

(assert (=> b!1408807 (=> (not res!946633) (not e!797301))))

(assert (=> b!1408807 (= res!946633 (validKeyInArray!0 (select (arr!46480 a!2901) j!112)))))

(assert (= (and start!121210 res!946634) b!1408803))

(assert (= (and b!1408803 res!946632) b!1408801))

(assert (= (and b!1408801 res!946638) b!1408807))

(assert (= (and b!1408807 res!946633) b!1408806))

(assert (= (and b!1408806 res!946631) b!1408802))

(assert (= (and b!1408802 res!946635) b!1408800))

(assert (= (and b!1408800 res!946637) b!1408804))

(assert (= (and b!1408800 (not res!946636)) b!1408805))

(declare-fun m!1298345 () Bool)

(assert (=> b!1408807 m!1298345))

(assert (=> b!1408807 m!1298345))

(declare-fun m!1298347 () Bool)

(assert (=> b!1408807 m!1298347))

(declare-fun m!1298349 () Bool)

(assert (=> start!121210 m!1298349))

(declare-fun m!1298351 () Bool)

(assert (=> start!121210 m!1298351))

(declare-fun m!1298353 () Bool)

(assert (=> b!1408806 m!1298353))

(declare-fun m!1298355 () Bool)

(assert (=> b!1408802 m!1298355))

(declare-fun m!1298357 () Bool)

(assert (=> b!1408801 m!1298357))

(assert (=> b!1408801 m!1298357))

(declare-fun m!1298359 () Bool)

(assert (=> b!1408801 m!1298359))

(declare-fun m!1298361 () Bool)

(assert (=> b!1408805 m!1298361))

(declare-fun m!1298363 () Bool)

(assert (=> b!1408805 m!1298363))

(assert (=> b!1408805 m!1298363))

(declare-fun m!1298365 () Bool)

(assert (=> b!1408805 m!1298365))

(assert (=> b!1408805 m!1298365))

(assert (=> b!1408805 m!1298363))

(declare-fun m!1298367 () Bool)

(assert (=> b!1408805 m!1298367))

(assert (=> b!1408804 m!1298345))

(assert (=> b!1408804 m!1298345))

(declare-fun m!1298369 () Bool)

(assert (=> b!1408804 m!1298369))

(assert (=> b!1408800 m!1298345))

(declare-fun m!1298371 () Bool)

(assert (=> b!1408800 m!1298371))

(assert (=> b!1408800 m!1298345))

(declare-fun m!1298373 () Bool)

(assert (=> b!1408800 m!1298373))

(assert (=> b!1408800 m!1298371))

(assert (=> b!1408800 m!1298345))

(declare-fun m!1298375 () Bool)

(assert (=> b!1408800 m!1298375))

(declare-fun m!1298377 () Bool)

(assert (=> b!1408800 m!1298377))

(push 1)

(assert (not b!1408802))

(assert (not b!1408800))

(assert (not b!1408801))

(assert (not b!1408806))

(assert (not b!1408804))

(assert (not start!121210))

(assert (not b!1408807))

(assert (not b!1408805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

