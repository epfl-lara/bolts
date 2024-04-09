; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122242 () Bool)

(assert start!122242)

(declare-fun b!1417549 () Bool)

(declare-fun res!953389 () Bool)

(declare-fun e!802276 () Bool)

(assert (=> b!1417549 (=> (not res!953389) (not e!802276))))

(declare-datatypes ((array!96744 0))(
  ( (array!96745 (arr!46696 (Array (_ BitVec 32) (_ BitVec 64))) (size!47247 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96744)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96744 (_ BitVec 32)) Bool)

(assert (=> b!1417549 (= res!953389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417550 () Bool)

(declare-fun res!953394 () Bool)

(assert (=> b!1417550 (=> (not res!953394) (not e!802276))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417550 (= res!953394 (and (= (size!47247 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47247 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47247 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417551 () Bool)

(declare-fun res!953391 () Bool)

(assert (=> b!1417551 (=> (not res!953391) (not e!802276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417551 (= res!953391 (validKeyInArray!0 (select (arr!46696 a!2901) i!1037)))))

(declare-fun b!1417552 () Bool)

(declare-fun res!953393 () Bool)

(assert (=> b!1417552 (=> (not res!953393) (not e!802276))))

(assert (=> b!1417552 (= res!953393 (validKeyInArray!0 (select (arr!46696 a!2901) j!112)))))

(declare-fun b!1417553 () Bool)

(assert (=> b!1417553 (= e!802276 (not true))))

(declare-fun e!802275 () Bool)

(assert (=> b!1417553 e!802275))

(declare-fun res!953388 () Bool)

(assert (=> b!1417553 (=> (not res!953388) (not e!802275))))

(assert (=> b!1417553 (= res!953388 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47982 0))(
  ( (Unit!47983) )
))
(declare-fun lt!625366 () Unit!47982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96744 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47982)

(assert (=> b!1417553 (= lt!625366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11029 0))(
  ( (MissingZero!11029 (index!46507 (_ BitVec 32))) (Found!11029 (index!46508 (_ BitVec 32))) (Intermediate!11029 (undefined!11841 Bool) (index!46509 (_ BitVec 32)) (x!128115 (_ BitVec 32))) (Undefined!11029) (MissingVacant!11029 (index!46510 (_ BitVec 32))) )
))
(declare-fun lt!625365 () SeekEntryResult!11029)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96744 (_ BitVec 32)) SeekEntryResult!11029)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417553 (= lt!625365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46696 a!2901) j!112) mask!2840) (select (arr!46696 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417554 () Bool)

(declare-fun res!953392 () Bool)

(assert (=> b!1417554 (=> (not res!953392) (not e!802276))))

(declare-datatypes ((List!33395 0))(
  ( (Nil!33392) (Cons!33391 (h!34684 (_ BitVec 64)) (t!48096 List!33395)) )
))
(declare-fun arrayNoDuplicates!0 (array!96744 (_ BitVec 32) List!33395) Bool)

(assert (=> b!1417554 (= res!953392 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33392))))

(declare-fun res!953390 () Bool)

(assert (=> start!122242 (=> (not res!953390) (not e!802276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122242 (= res!953390 (validMask!0 mask!2840))))

(assert (=> start!122242 e!802276))

(assert (=> start!122242 true))

(declare-fun array_inv!35641 (array!96744) Bool)

(assert (=> start!122242 (array_inv!35641 a!2901)))

(declare-fun b!1417555 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96744 (_ BitVec 32)) SeekEntryResult!11029)

(assert (=> b!1417555 (= e!802275 (= (seekEntryOrOpen!0 (select (arr!46696 a!2901) j!112) a!2901 mask!2840) (Found!11029 j!112)))))

(assert (= (and start!122242 res!953390) b!1417550))

(assert (= (and b!1417550 res!953394) b!1417551))

(assert (= (and b!1417551 res!953391) b!1417552))

(assert (= (and b!1417552 res!953393) b!1417549))

(assert (= (and b!1417549 res!953389) b!1417554))

(assert (= (and b!1417554 res!953392) b!1417553))

(assert (= (and b!1417553 res!953388) b!1417555))

(declare-fun m!1308371 () Bool)

(assert (=> b!1417549 m!1308371))

(declare-fun m!1308373 () Bool)

(assert (=> b!1417552 m!1308373))

(assert (=> b!1417552 m!1308373))

(declare-fun m!1308375 () Bool)

(assert (=> b!1417552 m!1308375))

(declare-fun m!1308377 () Bool)

(assert (=> b!1417554 m!1308377))

(assert (=> b!1417555 m!1308373))

(assert (=> b!1417555 m!1308373))

(declare-fun m!1308379 () Bool)

(assert (=> b!1417555 m!1308379))

(declare-fun m!1308381 () Bool)

(assert (=> start!122242 m!1308381))

(declare-fun m!1308383 () Bool)

(assert (=> start!122242 m!1308383))

(declare-fun m!1308385 () Bool)

(assert (=> b!1417551 m!1308385))

(assert (=> b!1417551 m!1308385))

(declare-fun m!1308387 () Bool)

(assert (=> b!1417551 m!1308387))

(assert (=> b!1417553 m!1308373))

(declare-fun m!1308389 () Bool)

(assert (=> b!1417553 m!1308389))

(assert (=> b!1417553 m!1308373))

(declare-fun m!1308391 () Bool)

(assert (=> b!1417553 m!1308391))

(assert (=> b!1417553 m!1308389))

(assert (=> b!1417553 m!1308373))

(declare-fun m!1308393 () Bool)

(assert (=> b!1417553 m!1308393))

(declare-fun m!1308395 () Bool)

(assert (=> b!1417553 m!1308395))

(push 1)

(assert (not b!1417554))

(assert (not b!1417552))

(assert (not b!1417553))

(assert (not b!1417555))

(assert (not b!1417549))

(assert (not b!1417551))

(assert (not start!122242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

