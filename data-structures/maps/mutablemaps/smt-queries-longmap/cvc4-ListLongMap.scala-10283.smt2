; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120902 () Bool)

(assert start!120902)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1406202 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!795947 () Bool)

(declare-datatypes ((array!96127 0))(
  ( (array!96128 (arr!46407 (Array (_ BitVec 32) (_ BitVec 64))) (size!46958 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96127)

(declare-datatypes ((SeekEntryResult!10740 0))(
  ( (MissingZero!10740 (index!45336 (_ BitVec 32))) (Found!10740 (index!45337 (_ BitVec 32))) (Intermediate!10740 (undefined!11552 Bool) (index!45338 (_ BitVec 32)) (x!126942 (_ BitVec 32))) (Undefined!10740) (MissingVacant!10740 (index!45339 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96127 (_ BitVec 32)) SeekEntryResult!10740)

(assert (=> b!1406202 (= e!795947 (= (seekEntryOrOpen!0 (select (arr!46407 a!2901) j!112) a!2901 mask!2840) (Found!10740 j!112)))))

(declare-fun b!1406203 () Bool)

(declare-fun res!944529 () Bool)

(declare-fun e!795950 () Bool)

(assert (=> b!1406203 (=> (not res!944529) (not e!795950))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406203 (= res!944529 (validKeyInArray!0 (select (arr!46407 a!2901) i!1037)))))

(declare-fun b!1406204 () Bool)

(declare-fun res!944534 () Bool)

(assert (=> b!1406204 (=> (not res!944534) (not e!795950))))

(assert (=> b!1406204 (= res!944534 (and (= (size!46958 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46958 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46958 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406205 () Bool)

(declare-fun e!795948 () Bool)

(assert (=> b!1406205 (= e!795948 true)))

(declare-fun lt!619266 () SeekEntryResult!10740)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96127 (_ BitVec 32)) SeekEntryResult!10740)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406205 (= lt!619266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46407 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46407 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96128 (store (arr!46407 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46958 a!2901)) mask!2840))))

(declare-fun b!1406206 () Bool)

(declare-fun res!944531 () Bool)

(assert (=> b!1406206 (=> (not res!944531) (not e!795950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96127 (_ BitVec 32)) Bool)

(assert (=> b!1406206 (= res!944531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406207 () Bool)

(declare-fun res!944530 () Bool)

(assert (=> b!1406207 (=> (not res!944530) (not e!795950))))

(declare-datatypes ((List!33106 0))(
  ( (Nil!33103) (Cons!33102 (h!34356 (_ BitVec 64)) (t!47807 List!33106)) )
))
(declare-fun arrayNoDuplicates!0 (array!96127 (_ BitVec 32) List!33106) Bool)

(assert (=> b!1406207 (= res!944530 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33103))))

(declare-fun b!1406208 () Bool)

(declare-fun res!944535 () Bool)

(assert (=> b!1406208 (=> (not res!944535) (not e!795950))))

(assert (=> b!1406208 (= res!944535 (validKeyInArray!0 (select (arr!46407 a!2901) j!112)))))

(declare-fun b!1406209 () Bool)

(assert (=> b!1406209 (= e!795950 (not e!795948))))

(declare-fun res!944528 () Bool)

(assert (=> b!1406209 (=> res!944528 e!795948)))

(declare-fun lt!619265 () SeekEntryResult!10740)

(assert (=> b!1406209 (= res!944528 (or (not (is-Intermediate!10740 lt!619265)) (undefined!11552 lt!619265)))))

(assert (=> b!1406209 e!795947))

(declare-fun res!944533 () Bool)

(assert (=> b!1406209 (=> (not res!944533) (not e!795947))))

(assert (=> b!1406209 (= res!944533 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47404 0))(
  ( (Unit!47405) )
))
(declare-fun lt!619267 () Unit!47404)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47404)

(assert (=> b!1406209 (= lt!619267 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406209 (= lt!619265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46407 a!2901) j!112) mask!2840) (select (arr!46407 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944532 () Bool)

(assert (=> start!120902 (=> (not res!944532) (not e!795950))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120902 (= res!944532 (validMask!0 mask!2840))))

(assert (=> start!120902 e!795950))

(assert (=> start!120902 true))

(declare-fun array_inv!35352 (array!96127) Bool)

(assert (=> start!120902 (array_inv!35352 a!2901)))

(assert (= (and start!120902 res!944532) b!1406204))

(assert (= (and b!1406204 res!944534) b!1406203))

(assert (= (and b!1406203 res!944529) b!1406208))

(assert (= (and b!1406208 res!944535) b!1406206))

(assert (= (and b!1406206 res!944531) b!1406207))

(assert (= (and b!1406207 res!944530) b!1406209))

(assert (= (and b!1406209 res!944533) b!1406202))

(assert (= (and b!1406209 (not res!944528)) b!1406205))

(declare-fun m!1295341 () Bool)

(assert (=> b!1406202 m!1295341))

(assert (=> b!1406202 m!1295341))

(declare-fun m!1295343 () Bool)

(assert (=> b!1406202 m!1295343))

(declare-fun m!1295345 () Bool)

(assert (=> b!1406206 m!1295345))

(declare-fun m!1295347 () Bool)

(assert (=> b!1406203 m!1295347))

(assert (=> b!1406203 m!1295347))

(declare-fun m!1295349 () Bool)

(assert (=> b!1406203 m!1295349))

(declare-fun m!1295351 () Bool)

(assert (=> start!120902 m!1295351))

(declare-fun m!1295353 () Bool)

(assert (=> start!120902 m!1295353))

(assert (=> b!1406209 m!1295341))

(declare-fun m!1295355 () Bool)

(assert (=> b!1406209 m!1295355))

(assert (=> b!1406209 m!1295341))

(declare-fun m!1295357 () Bool)

(assert (=> b!1406209 m!1295357))

(assert (=> b!1406209 m!1295355))

(assert (=> b!1406209 m!1295341))

(declare-fun m!1295359 () Bool)

(assert (=> b!1406209 m!1295359))

(declare-fun m!1295361 () Bool)

(assert (=> b!1406209 m!1295361))

(declare-fun m!1295363 () Bool)

(assert (=> b!1406207 m!1295363))

(declare-fun m!1295365 () Bool)

(assert (=> b!1406205 m!1295365))

(declare-fun m!1295367 () Bool)

(assert (=> b!1406205 m!1295367))

(assert (=> b!1406205 m!1295367))

(declare-fun m!1295369 () Bool)

(assert (=> b!1406205 m!1295369))

(assert (=> b!1406205 m!1295369))

(assert (=> b!1406205 m!1295367))

(declare-fun m!1295371 () Bool)

(assert (=> b!1406205 m!1295371))

(assert (=> b!1406208 m!1295341))

(assert (=> b!1406208 m!1295341))

(declare-fun m!1295373 () Bool)

(assert (=> b!1406208 m!1295373))

(push 1)

(assert (not b!1406203))

(assert (not b!1406205))

(assert (not b!1406208))

(assert (not b!1406209))

(assert (not start!120902))

(assert (not b!1406206))

(assert (not b!1406202))

(assert (not b!1406207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

