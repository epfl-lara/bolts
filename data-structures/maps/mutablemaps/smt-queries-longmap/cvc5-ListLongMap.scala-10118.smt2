; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119242 () Bool)

(assert start!119242)

(declare-fun b!1390411 () Bool)

(declare-fun e!787426 () Bool)

(declare-datatypes ((SeekEntryResult!10249 0))(
  ( (MissingZero!10249 (index!43366 (_ BitVec 32))) (Found!10249 (index!43367 (_ BitVec 32))) (Intermediate!10249 (undefined!11061 Bool) (index!43368 (_ BitVec 32)) (x!125050 (_ BitVec 32))) (Undefined!10249) (MissingVacant!10249 (index!43369 (_ BitVec 32))) )
))
(declare-fun lt!610779 () SeekEntryResult!10249)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1390411 (= e!787426 (not (or (not (is-Intermediate!10249 lt!610779)) (undefined!11061 lt!610779) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(declare-fun e!787425 () Bool)

(assert (=> b!1390411 e!787425))

(declare-fun res!930685 () Bool)

(assert (=> b!1390411 (=> (not res!930685) (not e!787425))))

(declare-datatypes ((array!95097 0))(
  ( (array!95098 (arr!45910 (Array (_ BitVec 32) (_ BitVec 64))) (size!46461 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95097)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95097 (_ BitVec 32)) Bool)

(assert (=> b!1390411 (= res!930685 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46452 0))(
  ( (Unit!46453) )
))
(declare-fun lt!610780 () Unit!46452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46452)

(assert (=> b!1390411 (= lt!610780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95097 (_ BitVec 32)) SeekEntryResult!10249)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390411 (= lt!610779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45910 a!2901) j!112) mask!2840) (select (arr!45910 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390412 () Bool)

(declare-fun res!930687 () Bool)

(assert (=> b!1390412 (=> (not res!930687) (not e!787426))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390412 (= res!930687 (validKeyInArray!0 (select (arr!45910 a!2901) i!1037)))))

(declare-fun b!1390413 () Bool)

(declare-fun res!930686 () Bool)

(assert (=> b!1390413 (=> (not res!930686) (not e!787426))))

(declare-datatypes ((List!32609 0))(
  ( (Nil!32606) (Cons!32605 (h!33823 (_ BitVec 64)) (t!47310 List!32609)) )
))
(declare-fun arrayNoDuplicates!0 (array!95097 (_ BitVec 32) List!32609) Bool)

(assert (=> b!1390413 (= res!930686 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32606))))

(declare-fun res!930681 () Bool)

(assert (=> start!119242 (=> (not res!930681) (not e!787426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119242 (= res!930681 (validMask!0 mask!2840))))

(assert (=> start!119242 e!787426))

(assert (=> start!119242 true))

(declare-fun array_inv!34855 (array!95097) Bool)

(assert (=> start!119242 (array_inv!34855 a!2901)))

(declare-fun b!1390414 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95097 (_ BitVec 32)) SeekEntryResult!10249)

(assert (=> b!1390414 (= e!787425 (= (seekEntryOrOpen!0 (select (arr!45910 a!2901) j!112) a!2901 mask!2840) (Found!10249 j!112)))))

(declare-fun b!1390415 () Bool)

(declare-fun res!930683 () Bool)

(assert (=> b!1390415 (=> (not res!930683) (not e!787426))))

(assert (=> b!1390415 (= res!930683 (and (= (size!46461 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46461 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46461 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390416 () Bool)

(declare-fun res!930682 () Bool)

(assert (=> b!1390416 (=> (not res!930682) (not e!787426))))

(assert (=> b!1390416 (= res!930682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390417 () Bool)

(declare-fun res!930684 () Bool)

(assert (=> b!1390417 (=> (not res!930684) (not e!787426))))

(assert (=> b!1390417 (= res!930684 (validKeyInArray!0 (select (arr!45910 a!2901) j!112)))))

(assert (= (and start!119242 res!930681) b!1390415))

(assert (= (and b!1390415 res!930683) b!1390412))

(assert (= (and b!1390412 res!930687) b!1390417))

(assert (= (and b!1390417 res!930684) b!1390416))

(assert (= (and b!1390416 res!930682) b!1390413))

(assert (= (and b!1390413 res!930686) b!1390411))

(assert (= (and b!1390411 res!930685) b!1390414))

(declare-fun m!1276331 () Bool)

(assert (=> b!1390416 m!1276331))

(declare-fun m!1276333 () Bool)

(assert (=> b!1390413 m!1276333))

(declare-fun m!1276335 () Bool)

(assert (=> start!119242 m!1276335))

(declare-fun m!1276337 () Bool)

(assert (=> start!119242 m!1276337))

(declare-fun m!1276339 () Bool)

(assert (=> b!1390411 m!1276339))

(declare-fun m!1276341 () Bool)

(assert (=> b!1390411 m!1276341))

(assert (=> b!1390411 m!1276339))

(declare-fun m!1276343 () Bool)

(assert (=> b!1390411 m!1276343))

(assert (=> b!1390411 m!1276341))

(assert (=> b!1390411 m!1276339))

(declare-fun m!1276345 () Bool)

(assert (=> b!1390411 m!1276345))

(declare-fun m!1276347 () Bool)

(assert (=> b!1390411 m!1276347))

(assert (=> b!1390414 m!1276339))

(assert (=> b!1390414 m!1276339))

(declare-fun m!1276349 () Bool)

(assert (=> b!1390414 m!1276349))

(assert (=> b!1390417 m!1276339))

(assert (=> b!1390417 m!1276339))

(declare-fun m!1276351 () Bool)

(assert (=> b!1390417 m!1276351))

(declare-fun m!1276353 () Bool)

(assert (=> b!1390412 m!1276353))

(assert (=> b!1390412 m!1276353))

(declare-fun m!1276355 () Bool)

(assert (=> b!1390412 m!1276355))

(push 1)

