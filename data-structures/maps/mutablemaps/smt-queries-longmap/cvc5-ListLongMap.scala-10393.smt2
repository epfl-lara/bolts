; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122476 () Bool)

(assert start!122476)

(declare-fun b!1418617 () Bool)

(declare-fun res!954337 () Bool)

(declare-fun e!802792 () Bool)

(assert (=> b!1418617 (=> (not res!954337) (not e!802792))))

(declare-datatypes ((array!96837 0))(
  ( (array!96838 (arr!46735 (Array (_ BitVec 32) (_ BitVec 64))) (size!47286 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96837)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418617 (= res!954337 (validKeyInArray!0 (select (arr!46735 a!2831) j!81)))))

(declare-fun b!1418618 () Bool)

(declare-fun res!954333 () Bool)

(assert (=> b!1418618 (=> (not res!954333) (not e!802792))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418618 (= res!954333 (and (= (size!47286 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47286 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47286 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954336 () Bool)

(assert (=> start!122476 (=> (not res!954336) (not e!802792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122476 (= res!954336 (validMask!0 mask!2608))))

(assert (=> start!122476 e!802792))

(assert (=> start!122476 true))

(declare-fun array_inv!35680 (array!96837) Bool)

(assert (=> start!122476 (array_inv!35680 a!2831)))

(declare-fun b!1418619 () Bool)

(declare-fun res!954338 () Bool)

(assert (=> b!1418619 (=> (not res!954338) (not e!802792))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418619 (= res!954338 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47286 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47286 a!2831))))))

(declare-fun b!1418620 () Bool)

(declare-fun res!954335 () Bool)

(assert (=> b!1418620 (=> (not res!954335) (not e!802792))))

(declare-datatypes ((List!33425 0))(
  ( (Nil!33422) (Cons!33421 (h!34717 (_ BitVec 64)) (t!48126 List!33425)) )
))
(declare-fun arrayNoDuplicates!0 (array!96837 (_ BitVec 32) List!33425) Bool)

(assert (=> b!1418620 (= res!954335 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33422))))

(declare-fun b!1418621 () Bool)

(declare-fun res!954339 () Bool)

(assert (=> b!1418621 (=> (not res!954339) (not e!802792))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96837 (_ BitVec 32)) Bool)

(assert (=> b!1418621 (= res!954339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418622 () Bool)

(assert (=> b!1418622 (= e!802792 false)))

(declare-fun lt!625591 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418622 (= lt!625591 (toIndex!0 (select (arr!46735 a!2831) j!81) mask!2608))))

(declare-fun b!1418623 () Bool)

(declare-fun res!954334 () Bool)

(assert (=> b!1418623 (=> (not res!954334) (not e!802792))))

(assert (=> b!1418623 (= res!954334 (validKeyInArray!0 (select (arr!46735 a!2831) i!982)))))

(assert (= (and start!122476 res!954336) b!1418618))

(assert (= (and b!1418618 res!954333) b!1418623))

(assert (= (and b!1418623 res!954334) b!1418617))

(assert (= (and b!1418617 res!954337) b!1418621))

(assert (= (and b!1418621 res!954339) b!1418620))

(assert (= (and b!1418620 res!954335) b!1418619))

(assert (= (and b!1418619 res!954338) b!1418622))

(declare-fun m!1309301 () Bool)

(assert (=> b!1418623 m!1309301))

(assert (=> b!1418623 m!1309301))

(declare-fun m!1309303 () Bool)

(assert (=> b!1418623 m!1309303))

(declare-fun m!1309305 () Bool)

(assert (=> b!1418620 m!1309305))

(declare-fun m!1309307 () Bool)

(assert (=> b!1418622 m!1309307))

(assert (=> b!1418622 m!1309307))

(declare-fun m!1309309 () Bool)

(assert (=> b!1418622 m!1309309))

(declare-fun m!1309311 () Bool)

(assert (=> start!122476 m!1309311))

(declare-fun m!1309313 () Bool)

(assert (=> start!122476 m!1309313))

(declare-fun m!1309315 () Bool)

(assert (=> b!1418621 m!1309315))

(assert (=> b!1418617 m!1309307))

(assert (=> b!1418617 m!1309307))

(declare-fun m!1309317 () Bool)

(assert (=> b!1418617 m!1309317))

(push 1)

(assert (not start!122476))

(assert (not b!1418621))

(assert (not b!1418622))

(assert (not b!1418617))

(assert (not b!1418620))

(assert (not b!1418623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

