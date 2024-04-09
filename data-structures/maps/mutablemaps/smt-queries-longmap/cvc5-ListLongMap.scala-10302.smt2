; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121174 () Bool)

(assert start!121174)

(declare-fun b!1408368 () Bool)

(declare-fun res!946200 () Bool)

(declare-fun e!797087 () Bool)

(assert (=> b!1408368 (=> (not res!946200) (not e!797087))))

(declare-datatypes ((array!96246 0))(
  ( (array!96247 (arr!46462 (Array (_ BitVec 32) (_ BitVec 64))) (size!47013 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96246)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96246 (_ BitVec 32)) Bool)

(assert (=> b!1408368 (= res!946200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408369 () Bool)

(declare-fun res!946205 () Bool)

(assert (=> b!1408369 (=> (not res!946205) (not e!797087))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408369 (= res!946205 (and (= (size!47013 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47013 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47013 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408370 () Bool)

(declare-fun e!797086 () Bool)

(assert (=> b!1408370 (= e!797087 (not e!797086))))

(declare-fun res!946199 () Bool)

(assert (=> b!1408370 (=> res!946199 e!797086)))

(declare-datatypes ((SeekEntryResult!10795 0))(
  ( (MissingZero!10795 (index!45556 (_ BitVec 32))) (Found!10795 (index!45557 (_ BitVec 32))) (Intermediate!10795 (undefined!11607 Bool) (index!45558 (_ BitVec 32)) (x!127167 (_ BitVec 32))) (Undefined!10795) (MissingVacant!10795 (index!45559 (_ BitVec 32))) )
))
(declare-fun lt!620292 () SeekEntryResult!10795)

(assert (=> b!1408370 (= res!946199 (or (not (is-Intermediate!10795 lt!620292)) (undefined!11607 lt!620292)))))

(declare-fun e!797084 () Bool)

(assert (=> b!1408370 e!797084))

(declare-fun res!946206 () Bool)

(assert (=> b!1408370 (=> (not res!946206) (not e!797084))))

(assert (=> b!1408370 (= res!946206 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47514 0))(
  ( (Unit!47515) )
))
(declare-fun lt!620291 () Unit!47514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96246 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47514)

(assert (=> b!1408370 (= lt!620291 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96246 (_ BitVec 32)) SeekEntryResult!10795)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408370 (= lt!620292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46462 a!2901) j!112) mask!2840) (select (arr!46462 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!946202 () Bool)

(assert (=> start!121174 (=> (not res!946202) (not e!797087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121174 (= res!946202 (validMask!0 mask!2840))))

(assert (=> start!121174 e!797087))

(assert (=> start!121174 true))

(declare-fun array_inv!35407 (array!96246) Bool)

(assert (=> start!121174 (array_inv!35407 a!2901)))

(declare-fun b!1408371 () Bool)

(declare-fun res!946204 () Bool)

(assert (=> b!1408371 (=> (not res!946204) (not e!797087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408371 (= res!946204 (validKeyInArray!0 (select (arr!46462 a!2901) j!112)))))

(declare-fun b!1408372 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96246 (_ BitVec 32)) SeekEntryResult!10795)

(assert (=> b!1408372 (= e!797084 (= (seekEntryOrOpen!0 (select (arr!46462 a!2901) j!112) a!2901 mask!2840) (Found!10795 j!112)))))

(declare-fun b!1408373 () Bool)

(declare-fun res!946203 () Bool)

(assert (=> b!1408373 (=> (not res!946203) (not e!797087))))

(declare-datatypes ((List!33161 0))(
  ( (Nil!33158) (Cons!33157 (h!34420 (_ BitVec 64)) (t!47862 List!33161)) )
))
(declare-fun arrayNoDuplicates!0 (array!96246 (_ BitVec 32) List!33161) Bool)

(assert (=> b!1408373 (= res!946203 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33158))))

(declare-fun b!1408374 () Bool)

(declare-fun res!946201 () Bool)

(assert (=> b!1408374 (=> (not res!946201) (not e!797087))))

(assert (=> b!1408374 (= res!946201 (validKeyInArray!0 (select (arr!46462 a!2901) i!1037)))))

(declare-fun b!1408375 () Bool)

(assert (=> b!1408375 (= e!797086 true)))

(declare-fun lt!620293 () SeekEntryResult!10795)

(assert (=> b!1408375 (= lt!620293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46462 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46462 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96247 (store (arr!46462 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47013 a!2901)) mask!2840))))

(assert (= (and start!121174 res!946202) b!1408369))

(assert (= (and b!1408369 res!946205) b!1408374))

(assert (= (and b!1408374 res!946201) b!1408371))

(assert (= (and b!1408371 res!946204) b!1408368))

(assert (= (and b!1408368 res!946200) b!1408373))

(assert (= (and b!1408373 res!946203) b!1408370))

(assert (= (and b!1408370 res!946206) b!1408372))

(assert (= (and b!1408370 (not res!946199)) b!1408375))

(declare-fun m!1297733 () Bool)

(assert (=> start!121174 m!1297733))

(declare-fun m!1297735 () Bool)

(assert (=> start!121174 m!1297735))

(declare-fun m!1297737 () Bool)

(assert (=> b!1408371 m!1297737))

(assert (=> b!1408371 m!1297737))

(declare-fun m!1297739 () Bool)

(assert (=> b!1408371 m!1297739))

(declare-fun m!1297741 () Bool)

(assert (=> b!1408368 m!1297741))

(assert (=> b!1408370 m!1297737))

(declare-fun m!1297743 () Bool)

(assert (=> b!1408370 m!1297743))

(assert (=> b!1408370 m!1297737))

(declare-fun m!1297745 () Bool)

(assert (=> b!1408370 m!1297745))

(assert (=> b!1408370 m!1297743))

(assert (=> b!1408370 m!1297737))

(declare-fun m!1297747 () Bool)

(assert (=> b!1408370 m!1297747))

(declare-fun m!1297749 () Bool)

(assert (=> b!1408370 m!1297749))

(declare-fun m!1297751 () Bool)

(assert (=> b!1408374 m!1297751))

(assert (=> b!1408374 m!1297751))

(declare-fun m!1297753 () Bool)

(assert (=> b!1408374 m!1297753))

(declare-fun m!1297755 () Bool)

(assert (=> b!1408373 m!1297755))

(declare-fun m!1297757 () Bool)

(assert (=> b!1408375 m!1297757))

(declare-fun m!1297759 () Bool)

(assert (=> b!1408375 m!1297759))

(assert (=> b!1408375 m!1297759))

(declare-fun m!1297761 () Bool)

(assert (=> b!1408375 m!1297761))

(assert (=> b!1408375 m!1297761))

(assert (=> b!1408375 m!1297759))

(declare-fun m!1297763 () Bool)

(assert (=> b!1408375 m!1297763))

(assert (=> b!1408372 m!1297737))

(assert (=> b!1408372 m!1297737))

(declare-fun m!1297765 () Bool)

(assert (=> b!1408372 m!1297765))

(push 1)

(assert (not b!1408373))

(assert (not b!1408368))

(assert (not b!1408370))

(assert (not start!121174))

(assert (not b!1408375))

(assert (not b!1408372))

(assert (not b!1408371))

(assert (not b!1408374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

