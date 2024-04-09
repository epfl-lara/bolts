; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120908 () Bool)

(assert start!120908)

(declare-fun b!1406274 () Bool)

(declare-fun res!944604 () Bool)

(declare-fun e!795985 () Bool)

(assert (=> b!1406274 (=> (not res!944604) (not e!795985))))

(declare-datatypes ((array!96133 0))(
  ( (array!96134 (arr!46410 (Array (_ BitVec 32) (_ BitVec 64))) (size!46961 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96133)

(declare-datatypes ((List!33109 0))(
  ( (Nil!33106) (Cons!33105 (h!34359 (_ BitVec 64)) (t!47810 List!33109)) )
))
(declare-fun arrayNoDuplicates!0 (array!96133 (_ BitVec 32) List!33109) Bool)

(assert (=> b!1406274 (= res!944604 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33106))))

(declare-fun b!1406275 () Bool)

(declare-fun res!944600 () Bool)

(assert (=> b!1406275 (=> (not res!944600) (not e!795985))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96133 (_ BitVec 32)) Bool)

(assert (=> b!1406275 (= res!944600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!795986 () Bool)

(declare-fun b!1406277 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10743 0))(
  ( (MissingZero!10743 (index!45348 (_ BitVec 32))) (Found!10743 (index!45349 (_ BitVec 32))) (Intermediate!10743 (undefined!11555 Bool) (index!45350 (_ BitVec 32)) (x!126953 (_ BitVec 32))) (Undefined!10743) (MissingVacant!10743 (index!45351 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96133 (_ BitVec 32)) SeekEntryResult!10743)

(assert (=> b!1406277 (= e!795986 (= (seekEntryOrOpen!0 (select (arr!46410 a!2901) j!112) a!2901 mask!2840) (Found!10743 j!112)))))

(declare-fun b!1406278 () Bool)

(declare-fun e!795983 () Bool)

(assert (=> b!1406278 (= e!795985 (not e!795983))))

(declare-fun res!944607 () Bool)

(assert (=> b!1406278 (=> res!944607 e!795983)))

(declare-fun lt!619293 () SeekEntryResult!10743)

(assert (=> b!1406278 (= res!944607 (or (not (is-Intermediate!10743 lt!619293)) (undefined!11555 lt!619293)))))

(assert (=> b!1406278 e!795986))

(declare-fun res!944602 () Bool)

(assert (=> b!1406278 (=> (not res!944602) (not e!795986))))

(assert (=> b!1406278 (= res!944602 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47410 0))(
  ( (Unit!47411) )
))
(declare-fun lt!619292 () Unit!47410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47410)

(assert (=> b!1406278 (= lt!619292 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96133 (_ BitVec 32)) SeekEntryResult!10743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406278 (= lt!619293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46410 a!2901) j!112) mask!2840) (select (arr!46410 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406279 () Bool)

(declare-fun res!944605 () Bool)

(assert (=> b!1406279 (=> (not res!944605) (not e!795985))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406279 (= res!944605 (validKeyInArray!0 (select (arr!46410 a!2901) i!1037)))))

(declare-fun b!1406280 () Bool)

(assert (=> b!1406280 (= e!795983 true)))

(declare-fun lt!619294 () SeekEntryResult!10743)

(assert (=> b!1406280 (= lt!619294 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46410 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46410 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96134 (store (arr!46410 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46961 a!2901)) mask!2840))))

(declare-fun b!1406281 () Bool)

(declare-fun res!944606 () Bool)

(assert (=> b!1406281 (=> (not res!944606) (not e!795985))))

(assert (=> b!1406281 (= res!944606 (and (= (size!46961 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46961 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46961 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406276 () Bool)

(declare-fun res!944601 () Bool)

(assert (=> b!1406276 (=> (not res!944601) (not e!795985))))

(assert (=> b!1406276 (= res!944601 (validKeyInArray!0 (select (arr!46410 a!2901) j!112)))))

(declare-fun res!944603 () Bool)

(assert (=> start!120908 (=> (not res!944603) (not e!795985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120908 (= res!944603 (validMask!0 mask!2840))))

(assert (=> start!120908 e!795985))

(assert (=> start!120908 true))

(declare-fun array_inv!35355 (array!96133) Bool)

(assert (=> start!120908 (array_inv!35355 a!2901)))

(assert (= (and start!120908 res!944603) b!1406281))

(assert (= (and b!1406281 res!944606) b!1406279))

(assert (= (and b!1406279 res!944605) b!1406276))

(assert (= (and b!1406276 res!944601) b!1406275))

(assert (= (and b!1406275 res!944600) b!1406274))

(assert (= (and b!1406274 res!944604) b!1406278))

(assert (= (and b!1406278 res!944602) b!1406277))

(assert (= (and b!1406278 (not res!944607)) b!1406280))

(declare-fun m!1295443 () Bool)

(assert (=> b!1406279 m!1295443))

(assert (=> b!1406279 m!1295443))

(declare-fun m!1295445 () Bool)

(assert (=> b!1406279 m!1295445))

(declare-fun m!1295447 () Bool)

(assert (=> b!1406275 m!1295447))

(declare-fun m!1295449 () Bool)

(assert (=> b!1406280 m!1295449))

(declare-fun m!1295451 () Bool)

(assert (=> b!1406280 m!1295451))

(assert (=> b!1406280 m!1295451))

(declare-fun m!1295453 () Bool)

(assert (=> b!1406280 m!1295453))

(assert (=> b!1406280 m!1295453))

(assert (=> b!1406280 m!1295451))

(declare-fun m!1295455 () Bool)

(assert (=> b!1406280 m!1295455))

(declare-fun m!1295457 () Bool)

(assert (=> b!1406274 m!1295457))

(declare-fun m!1295459 () Bool)

(assert (=> start!120908 m!1295459))

(declare-fun m!1295461 () Bool)

(assert (=> start!120908 m!1295461))

(declare-fun m!1295463 () Bool)

(assert (=> b!1406278 m!1295463))

(declare-fun m!1295465 () Bool)

(assert (=> b!1406278 m!1295465))

(assert (=> b!1406278 m!1295463))

(declare-fun m!1295467 () Bool)

(assert (=> b!1406278 m!1295467))

(assert (=> b!1406278 m!1295465))

(assert (=> b!1406278 m!1295463))

(declare-fun m!1295469 () Bool)

(assert (=> b!1406278 m!1295469))

(declare-fun m!1295471 () Bool)

(assert (=> b!1406278 m!1295471))

(assert (=> b!1406277 m!1295463))

(assert (=> b!1406277 m!1295463))

(declare-fun m!1295473 () Bool)

(assert (=> b!1406277 m!1295473))

(assert (=> b!1406276 m!1295463))

(assert (=> b!1406276 m!1295463))

(declare-fun m!1295475 () Bool)

(assert (=> b!1406276 m!1295475))

(push 1)

(assert (not b!1406276))

(assert (not start!120908))

(assert (not b!1406279))

(assert (not b!1406274))

(assert (not b!1406275))

(assert (not b!1406278))

(assert (not b!1406280))

(assert (not b!1406277))

(check-sat)

