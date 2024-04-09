; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120912 () Bool)

(assert start!120912)

(declare-fun b!1406322 () Bool)

(declare-fun e!796007 () Bool)

(declare-fun e!796009 () Bool)

(assert (=> b!1406322 (= e!796007 (not e!796009))))

(declare-fun res!944649 () Bool)

(assert (=> b!1406322 (=> res!944649 e!796009)))

(declare-datatypes ((SeekEntryResult!10745 0))(
  ( (MissingZero!10745 (index!45356 (_ BitVec 32))) (Found!10745 (index!45357 (_ BitVec 32))) (Intermediate!10745 (undefined!11557 Bool) (index!45358 (_ BitVec 32)) (x!126963 (_ BitVec 32))) (Undefined!10745) (MissingVacant!10745 (index!45359 (_ BitVec 32))) )
))
(declare-fun lt!619312 () SeekEntryResult!10745)

(get-info :version)

(assert (=> b!1406322 (= res!944649 (or (not ((_ is Intermediate!10745) lt!619312)) (undefined!11557 lt!619312)))))

(declare-fun e!796010 () Bool)

(assert (=> b!1406322 e!796010))

(declare-fun res!944654 () Bool)

(assert (=> b!1406322 (=> (not res!944654) (not e!796010))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96137 0))(
  ( (array!96138 (arr!46412 (Array (_ BitVec 32) (_ BitVec 64))) (size!46963 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96137)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96137 (_ BitVec 32)) Bool)

(assert (=> b!1406322 (= res!944654 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47414 0))(
  ( (Unit!47415) )
))
(declare-fun lt!619311 () Unit!47414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47414)

(assert (=> b!1406322 (= lt!619311 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96137 (_ BitVec 32)) SeekEntryResult!10745)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406322 (= lt!619312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46412 a!2901) j!112) mask!2840) (select (arr!46412 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406323 () Bool)

(declare-fun res!944651 () Bool)

(assert (=> b!1406323 (=> (not res!944651) (not e!796007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406323 (= res!944651 (validKeyInArray!0 (select (arr!46412 a!2901) j!112)))))

(declare-fun b!1406325 () Bool)

(declare-fun res!944655 () Bool)

(assert (=> b!1406325 (=> (not res!944655) (not e!796007))))

(declare-datatypes ((List!33111 0))(
  ( (Nil!33108) (Cons!33107 (h!34361 (_ BitVec 64)) (t!47812 List!33111)) )
))
(declare-fun arrayNoDuplicates!0 (array!96137 (_ BitVec 32) List!33111) Bool)

(assert (=> b!1406325 (= res!944655 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33108))))

(declare-fun b!1406326 () Bool)

(declare-fun res!944652 () Bool)

(assert (=> b!1406326 (=> (not res!944652) (not e!796007))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1406326 (= res!944652 (and (= (size!46963 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46963 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46963 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406327 () Bool)

(assert (=> b!1406327 (= e!796009 true)))

(declare-fun lt!619310 () SeekEntryResult!10745)

(assert (=> b!1406327 (= lt!619310 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46412 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46412 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96138 (store (arr!46412 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46963 a!2901)) mask!2840))))

(declare-fun res!944653 () Bool)

(assert (=> start!120912 (=> (not res!944653) (not e!796007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120912 (= res!944653 (validMask!0 mask!2840))))

(assert (=> start!120912 e!796007))

(assert (=> start!120912 true))

(declare-fun array_inv!35357 (array!96137) Bool)

(assert (=> start!120912 (array_inv!35357 a!2901)))

(declare-fun b!1406324 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96137 (_ BitVec 32)) SeekEntryResult!10745)

(assert (=> b!1406324 (= e!796010 (= (seekEntryOrOpen!0 (select (arr!46412 a!2901) j!112) a!2901 mask!2840) (Found!10745 j!112)))))

(declare-fun b!1406328 () Bool)

(declare-fun res!944650 () Bool)

(assert (=> b!1406328 (=> (not res!944650) (not e!796007))))

(assert (=> b!1406328 (= res!944650 (validKeyInArray!0 (select (arr!46412 a!2901) i!1037)))))

(declare-fun b!1406329 () Bool)

(declare-fun res!944648 () Bool)

(assert (=> b!1406329 (=> (not res!944648) (not e!796007))))

(assert (=> b!1406329 (= res!944648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120912 res!944653) b!1406326))

(assert (= (and b!1406326 res!944652) b!1406328))

(assert (= (and b!1406328 res!944650) b!1406323))

(assert (= (and b!1406323 res!944651) b!1406329))

(assert (= (and b!1406329 res!944648) b!1406325))

(assert (= (and b!1406325 res!944655) b!1406322))

(assert (= (and b!1406322 res!944654) b!1406324))

(assert (= (and b!1406322 (not res!944649)) b!1406327))

(declare-fun m!1295511 () Bool)

(assert (=> b!1406328 m!1295511))

(assert (=> b!1406328 m!1295511))

(declare-fun m!1295513 () Bool)

(assert (=> b!1406328 m!1295513))

(declare-fun m!1295515 () Bool)

(assert (=> b!1406325 m!1295515))

(declare-fun m!1295517 () Bool)

(assert (=> start!120912 m!1295517))

(declare-fun m!1295519 () Bool)

(assert (=> start!120912 m!1295519))

(declare-fun m!1295521 () Bool)

(assert (=> b!1406324 m!1295521))

(assert (=> b!1406324 m!1295521))

(declare-fun m!1295523 () Bool)

(assert (=> b!1406324 m!1295523))

(declare-fun m!1295525 () Bool)

(assert (=> b!1406327 m!1295525))

(declare-fun m!1295527 () Bool)

(assert (=> b!1406327 m!1295527))

(assert (=> b!1406327 m!1295527))

(declare-fun m!1295529 () Bool)

(assert (=> b!1406327 m!1295529))

(assert (=> b!1406327 m!1295529))

(assert (=> b!1406327 m!1295527))

(declare-fun m!1295531 () Bool)

(assert (=> b!1406327 m!1295531))

(assert (=> b!1406322 m!1295521))

(declare-fun m!1295533 () Bool)

(assert (=> b!1406322 m!1295533))

(assert (=> b!1406322 m!1295521))

(declare-fun m!1295535 () Bool)

(assert (=> b!1406322 m!1295535))

(assert (=> b!1406322 m!1295533))

(assert (=> b!1406322 m!1295521))

(declare-fun m!1295537 () Bool)

(assert (=> b!1406322 m!1295537))

(declare-fun m!1295539 () Bool)

(assert (=> b!1406322 m!1295539))

(assert (=> b!1406323 m!1295521))

(assert (=> b!1406323 m!1295521))

(declare-fun m!1295541 () Bool)

(assert (=> b!1406323 m!1295541))

(declare-fun m!1295543 () Bool)

(assert (=> b!1406329 m!1295543))

(check-sat (not b!1406328) (not b!1406322) (not start!120912) (not b!1406329) (not b!1406324) (not b!1406325) (not b!1406327) (not b!1406323))
