; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122478 () Bool)

(assert start!122478)

(declare-fun b!1418638 () Bool)

(declare-fun res!954358 () Bool)

(declare-fun e!802798 () Bool)

(assert (=> b!1418638 (=> (not res!954358) (not e!802798))))

(declare-datatypes ((array!96839 0))(
  ( (array!96840 (arr!46736 (Array (_ BitVec 32) (_ BitVec 64))) (size!47287 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96839)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418638 (= res!954358 (validKeyInArray!0 (select (arr!46736 a!2831) i!982)))))

(declare-fun b!1418639 () Bool)

(declare-fun res!954359 () Bool)

(assert (=> b!1418639 (=> (not res!954359) (not e!802798))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418639 (= res!954359 (validKeyInArray!0 (select (arr!46736 a!2831) j!81)))))

(declare-fun b!1418640 () Bool)

(declare-fun res!954356 () Bool)

(assert (=> b!1418640 (=> (not res!954356) (not e!802798))))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1418640 (= res!954356 (and (= (size!47287 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47287 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47287 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418641 () Bool)

(assert (=> b!1418641 (= e!802798 false)))

(declare-fun lt!625594 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418641 (= lt!625594 (toIndex!0 (select (arr!46736 a!2831) j!81) mask!2608))))

(declare-fun b!1418642 () Bool)

(declare-fun res!954354 () Bool)

(assert (=> b!1418642 (=> (not res!954354) (not e!802798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96839 (_ BitVec 32)) Bool)

(assert (=> b!1418642 (= res!954354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418643 () Bool)

(declare-fun res!954360 () Bool)

(assert (=> b!1418643 (=> (not res!954360) (not e!802798))))

(declare-datatypes ((List!33426 0))(
  ( (Nil!33423) (Cons!33422 (h!34718 (_ BitVec 64)) (t!48127 List!33426)) )
))
(declare-fun arrayNoDuplicates!0 (array!96839 (_ BitVec 32) List!33426) Bool)

(assert (=> b!1418643 (= res!954360 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33423))))

(declare-fun res!954355 () Bool)

(assert (=> start!122478 (=> (not res!954355) (not e!802798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122478 (= res!954355 (validMask!0 mask!2608))))

(assert (=> start!122478 e!802798))

(assert (=> start!122478 true))

(declare-fun array_inv!35681 (array!96839) Bool)

(assert (=> start!122478 (array_inv!35681 a!2831)))

(declare-fun b!1418644 () Bool)

(declare-fun res!954357 () Bool)

(assert (=> b!1418644 (=> (not res!954357) (not e!802798))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418644 (= res!954357 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47287 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47287 a!2831))))))

(assert (= (and start!122478 res!954355) b!1418640))

(assert (= (and b!1418640 res!954356) b!1418638))

(assert (= (and b!1418638 res!954358) b!1418639))

(assert (= (and b!1418639 res!954359) b!1418642))

(assert (= (and b!1418642 res!954354) b!1418643))

(assert (= (and b!1418643 res!954360) b!1418644))

(assert (= (and b!1418644 res!954357) b!1418641))

(declare-fun m!1309319 () Bool)

(assert (=> b!1418643 m!1309319))

(declare-fun m!1309321 () Bool)

(assert (=> b!1418638 m!1309321))

(assert (=> b!1418638 m!1309321))

(declare-fun m!1309323 () Bool)

(assert (=> b!1418638 m!1309323))

(declare-fun m!1309325 () Bool)

(assert (=> b!1418639 m!1309325))

(assert (=> b!1418639 m!1309325))

(declare-fun m!1309327 () Bool)

(assert (=> b!1418639 m!1309327))

(declare-fun m!1309329 () Bool)

(assert (=> start!122478 m!1309329))

(declare-fun m!1309331 () Bool)

(assert (=> start!122478 m!1309331))

(declare-fun m!1309333 () Bool)

(assert (=> b!1418642 m!1309333))

(assert (=> b!1418641 m!1309325))

(assert (=> b!1418641 m!1309325))

(declare-fun m!1309335 () Bool)

(assert (=> b!1418641 m!1309335))

(check-sat (not b!1418642) (not b!1418638) (not start!122478) (not b!1418643) (not b!1418641) (not b!1418639))
