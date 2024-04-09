; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120588 () Bool)

(assert start!120588)

(declare-fun b!1403593 () Bool)

(declare-fun res!942215 () Bool)

(declare-fun e!794733 () Bool)

(assert (=> b!1403593 (=> (not res!942215) (not e!794733))))

(declare-datatypes ((array!95915 0))(
  ( (array!95916 (arr!46304 (Array (_ BitVec 32) (_ BitVec 64))) (size!46855 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95915)

(declare-datatypes ((List!33003 0))(
  ( (Nil!33000) (Cons!32999 (h!34247 (_ BitVec 64)) (t!47704 List!33003)) )
))
(declare-fun arrayNoDuplicates!0 (array!95915 (_ BitVec 32) List!33003) Bool)

(assert (=> b!1403593 (= res!942215 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33000))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!794735 () Bool)

(declare-fun b!1403594 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10643 0))(
  ( (MissingZero!10643 (index!44948 (_ BitVec 32))) (Found!10643 (index!44949 (_ BitVec 32))) (Intermediate!10643 (undefined!11455 Bool) (index!44950 (_ BitVec 32)) (x!126561 (_ BitVec 32))) (Undefined!10643) (MissingVacant!10643 (index!44951 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95915 (_ BitVec 32)) SeekEntryResult!10643)

(assert (=> b!1403594 (= e!794735 (= (seekEntryOrOpen!0 (select (arr!46304 a!2901) j!112) a!2901 mask!2840) (Found!10643 j!112)))))

(declare-fun b!1403595 () Bool)

(declare-fun res!942219 () Bool)

(assert (=> b!1403595 (=> (not res!942219) (not e!794733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403595 (= res!942219 (validKeyInArray!0 (select (arr!46304 a!2901) j!112)))))

(declare-fun b!1403596 () Bool)

(declare-fun res!942214 () Bool)

(assert (=> b!1403596 (=> (not res!942214) (not e!794733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95915 (_ BitVec 32)) Bool)

(assert (=> b!1403596 (= res!942214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403597 () Bool)

(assert (=> b!1403597 (= e!794733 (not true))))

(assert (=> b!1403597 e!794735))

(declare-fun res!942218 () Bool)

(assert (=> b!1403597 (=> (not res!942218) (not e!794735))))

(assert (=> b!1403597 (= res!942218 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47240 0))(
  ( (Unit!47241) )
))
(declare-fun lt!618415 () Unit!47240)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95915 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47240)

(assert (=> b!1403597 (= lt!618415 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618414 () SeekEntryResult!10643)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95915 (_ BitVec 32)) SeekEntryResult!10643)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403597 (= lt!618414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46304 a!2901) j!112) mask!2840) (select (arr!46304 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!942217 () Bool)

(assert (=> start!120588 (=> (not res!942217) (not e!794733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120588 (= res!942217 (validMask!0 mask!2840))))

(assert (=> start!120588 e!794733))

(assert (=> start!120588 true))

(declare-fun array_inv!35249 (array!95915) Bool)

(assert (=> start!120588 (array_inv!35249 a!2901)))

(declare-fun b!1403598 () Bool)

(declare-fun res!942216 () Bool)

(assert (=> b!1403598 (=> (not res!942216) (not e!794733))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1403598 (= res!942216 (validKeyInArray!0 (select (arr!46304 a!2901) i!1037)))))

(declare-fun b!1403599 () Bool)

(declare-fun res!942213 () Bool)

(assert (=> b!1403599 (=> (not res!942213) (not e!794733))))

(assert (=> b!1403599 (= res!942213 (and (= (size!46855 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46855 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46855 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120588 res!942217) b!1403599))

(assert (= (and b!1403599 res!942213) b!1403598))

(assert (= (and b!1403598 res!942216) b!1403595))

(assert (= (and b!1403595 res!942219) b!1403596))

(assert (= (and b!1403596 res!942214) b!1403593))

(assert (= (and b!1403593 res!942215) b!1403597))

(assert (= (and b!1403597 res!942218) b!1403594))

(declare-fun m!1292365 () Bool)

(assert (=> b!1403595 m!1292365))

(assert (=> b!1403595 m!1292365))

(declare-fun m!1292367 () Bool)

(assert (=> b!1403595 m!1292367))

(assert (=> b!1403594 m!1292365))

(assert (=> b!1403594 m!1292365))

(declare-fun m!1292369 () Bool)

(assert (=> b!1403594 m!1292369))

(declare-fun m!1292371 () Bool)

(assert (=> start!120588 m!1292371))

(declare-fun m!1292373 () Bool)

(assert (=> start!120588 m!1292373))

(declare-fun m!1292375 () Bool)

(assert (=> b!1403598 m!1292375))

(assert (=> b!1403598 m!1292375))

(declare-fun m!1292377 () Bool)

(assert (=> b!1403598 m!1292377))

(declare-fun m!1292379 () Bool)

(assert (=> b!1403593 m!1292379))

(assert (=> b!1403597 m!1292365))

(declare-fun m!1292381 () Bool)

(assert (=> b!1403597 m!1292381))

(assert (=> b!1403597 m!1292365))

(declare-fun m!1292383 () Bool)

(assert (=> b!1403597 m!1292383))

(assert (=> b!1403597 m!1292381))

(assert (=> b!1403597 m!1292365))

(declare-fun m!1292385 () Bool)

(assert (=> b!1403597 m!1292385))

(declare-fun m!1292387 () Bool)

(assert (=> b!1403597 m!1292387))

(declare-fun m!1292389 () Bool)

(assert (=> b!1403596 m!1292389))

(check-sat (not b!1403597) (not b!1403596) (not b!1403594) (not b!1403598) (not b!1403593) (not start!120588) (not b!1403595))
(check-sat)
