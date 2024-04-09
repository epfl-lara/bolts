; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120590 () Bool)

(assert start!120590)

(declare-fun b!1403614 () Bool)

(declare-fun res!942239 () Bool)

(declare-fun e!794744 () Bool)

(assert (=> b!1403614 (=> (not res!942239) (not e!794744))))

(declare-datatypes ((array!95917 0))(
  ( (array!95918 (arr!46305 (Array (_ BitVec 32) (_ BitVec 64))) (size!46856 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95917)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403614 (= res!942239 (validKeyInArray!0 (select (arr!46305 a!2901) j!112)))))

(declare-fun b!1403615 () Bool)

(declare-fun res!942237 () Bool)

(assert (=> b!1403615 (=> (not res!942237) (not e!794744))))

(declare-datatypes ((List!33004 0))(
  ( (Nil!33001) (Cons!33000 (h!34248 (_ BitVec 64)) (t!47705 List!33004)) )
))
(declare-fun arrayNoDuplicates!0 (array!95917 (_ BitVec 32) List!33004) Bool)

(assert (=> b!1403615 (= res!942237 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33001))))

(declare-fun b!1403616 () Bool)

(assert (=> b!1403616 (= e!794744 (not true))))

(declare-fun e!794742 () Bool)

(assert (=> b!1403616 e!794742))

(declare-fun res!942236 () Bool)

(assert (=> b!1403616 (=> (not res!942236) (not e!794742))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95917 (_ BitVec 32)) Bool)

(assert (=> b!1403616 (= res!942236 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47242 0))(
  ( (Unit!47243) )
))
(declare-fun lt!618420 () Unit!47242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47242)

(assert (=> b!1403616 (= lt!618420 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10644 0))(
  ( (MissingZero!10644 (index!44952 (_ BitVec 32))) (Found!10644 (index!44953 (_ BitVec 32))) (Intermediate!10644 (undefined!11456 Bool) (index!44954 (_ BitVec 32)) (x!126562 (_ BitVec 32))) (Undefined!10644) (MissingVacant!10644 (index!44955 (_ BitVec 32))) )
))
(declare-fun lt!618421 () SeekEntryResult!10644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95917 (_ BitVec 32)) SeekEntryResult!10644)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403616 (= lt!618421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46305 a!2901) j!112) mask!2840) (select (arr!46305 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942234 () Bool)

(assert (=> start!120590 (=> (not res!942234) (not e!794744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120590 (= res!942234 (validMask!0 mask!2840))))

(assert (=> start!120590 e!794744))

(assert (=> start!120590 true))

(declare-fun array_inv!35250 (array!95917) Bool)

(assert (=> start!120590 (array_inv!35250 a!2901)))

(declare-fun b!1403617 () Bool)

(declare-fun res!942240 () Bool)

(assert (=> b!1403617 (=> (not res!942240) (not e!794744))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403617 (= res!942240 (and (= (size!46856 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46856 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46856 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1403618 () Bool)

(declare-fun res!942238 () Bool)

(assert (=> b!1403618 (=> (not res!942238) (not e!794744))))

(assert (=> b!1403618 (= res!942238 (validKeyInArray!0 (select (arr!46305 a!2901) i!1037)))))

(declare-fun b!1403619 () Bool)

(declare-fun res!942235 () Bool)

(assert (=> b!1403619 (=> (not res!942235) (not e!794744))))

(assert (=> b!1403619 (= res!942235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403620 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95917 (_ BitVec 32)) SeekEntryResult!10644)

(assert (=> b!1403620 (= e!794742 (= (seekEntryOrOpen!0 (select (arr!46305 a!2901) j!112) a!2901 mask!2840) (Found!10644 j!112)))))

(assert (= (and start!120590 res!942234) b!1403617))

(assert (= (and b!1403617 res!942240) b!1403618))

(assert (= (and b!1403618 res!942238) b!1403614))

(assert (= (and b!1403614 res!942239) b!1403619))

(assert (= (and b!1403619 res!942235) b!1403615))

(assert (= (and b!1403615 res!942237) b!1403616))

(assert (= (and b!1403616 res!942236) b!1403620))

(declare-fun m!1292391 () Bool)

(assert (=> b!1403615 m!1292391))

(declare-fun m!1292393 () Bool)

(assert (=> start!120590 m!1292393))

(declare-fun m!1292395 () Bool)

(assert (=> start!120590 m!1292395))

(declare-fun m!1292397 () Bool)

(assert (=> b!1403620 m!1292397))

(assert (=> b!1403620 m!1292397))

(declare-fun m!1292399 () Bool)

(assert (=> b!1403620 m!1292399))

(declare-fun m!1292401 () Bool)

(assert (=> b!1403618 m!1292401))

(assert (=> b!1403618 m!1292401))

(declare-fun m!1292403 () Bool)

(assert (=> b!1403618 m!1292403))

(assert (=> b!1403614 m!1292397))

(assert (=> b!1403614 m!1292397))

(declare-fun m!1292405 () Bool)

(assert (=> b!1403614 m!1292405))

(assert (=> b!1403616 m!1292397))

(declare-fun m!1292407 () Bool)

(assert (=> b!1403616 m!1292407))

(assert (=> b!1403616 m!1292397))

(declare-fun m!1292409 () Bool)

(assert (=> b!1403616 m!1292409))

(assert (=> b!1403616 m!1292407))

(assert (=> b!1403616 m!1292397))

(declare-fun m!1292411 () Bool)

(assert (=> b!1403616 m!1292411))

(declare-fun m!1292413 () Bool)

(assert (=> b!1403616 m!1292413))

(declare-fun m!1292415 () Bool)

(assert (=> b!1403619 m!1292415))

(push 1)

(assert (not b!1403618))

(assert (not b!1403620))

(assert (not b!1403615))

(assert (not b!1403619))

(assert (not start!120590))

(assert (not b!1403616))

(assert (not b!1403614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

