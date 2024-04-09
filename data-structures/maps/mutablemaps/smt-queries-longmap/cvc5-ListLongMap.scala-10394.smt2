; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122482 () Bool)

(assert start!122482)

(declare-fun b!1418682 () Bool)

(declare-fun res!954402 () Bool)

(declare-fun e!802811 () Bool)

(assert (=> b!1418682 (=> (not res!954402) (not e!802811))))

(declare-datatypes ((array!96843 0))(
  ( (array!96844 (arr!46738 (Array (_ BitVec 32) (_ BitVec 64))) (size!47289 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96843)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418682 (= res!954402 (validKeyInArray!0 (select (arr!46738 a!2831) i!982)))))

(declare-fun res!954404 () Bool)

(assert (=> start!122482 (=> (not res!954404) (not e!802811))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122482 (= res!954404 (validMask!0 mask!2608))))

(assert (=> start!122482 e!802811))

(assert (=> start!122482 true))

(declare-fun array_inv!35683 (array!96843) Bool)

(assert (=> start!122482 (array_inv!35683 a!2831)))

(declare-fun b!1418683 () Bool)

(declare-fun res!954398 () Bool)

(assert (=> b!1418683 (=> (not res!954398) (not e!802811))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418683 (= res!954398 (and (= (size!47289 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47289 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47289 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418684 () Bool)

(declare-fun res!954403 () Bool)

(assert (=> b!1418684 (=> (not res!954403) (not e!802811))))

(assert (=> b!1418684 (= res!954403 (validKeyInArray!0 (select (arr!46738 a!2831) j!81)))))

(declare-fun b!1418685 () Bool)

(declare-fun res!954400 () Bool)

(assert (=> b!1418685 (=> (not res!954400) (not e!802811))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11045 0))(
  ( (MissingZero!11045 (index!46571 (_ BitVec 32))) (Found!11045 (index!46572 (_ BitVec 32))) (Intermediate!11045 (undefined!11857 Bool) (index!46573 (_ BitVec 32)) (x!128246 (_ BitVec 32))) (Undefined!11045) (MissingVacant!11045 (index!46574 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96843 (_ BitVec 32)) SeekEntryResult!11045)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418685 (= res!954400 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46738 a!2831) j!81) mask!2608) (select (arr!46738 a!2831) j!81) a!2831 mask!2608) (Intermediate!11045 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1418686 () Bool)

(declare-fun res!954405 () Bool)

(assert (=> b!1418686 (=> (not res!954405) (not e!802811))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418686 (= res!954405 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47289 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47289 a!2831))))))

(declare-fun b!1418687 () Bool)

(declare-fun res!954401 () Bool)

(assert (=> b!1418687 (=> (not res!954401) (not e!802811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96843 (_ BitVec 32)) Bool)

(assert (=> b!1418687 (= res!954401 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418688 () Bool)

(assert (=> b!1418688 (= e!802811 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun b!1418689 () Bool)

(declare-fun res!954399 () Bool)

(assert (=> b!1418689 (=> (not res!954399) (not e!802811))))

(declare-datatypes ((List!33428 0))(
  ( (Nil!33425) (Cons!33424 (h!34720 (_ BitVec 64)) (t!48129 List!33428)) )
))
(declare-fun arrayNoDuplicates!0 (array!96843 (_ BitVec 32) List!33428) Bool)

(assert (=> b!1418689 (= res!954399 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33425))))

(assert (= (and start!122482 res!954404) b!1418683))

(assert (= (and b!1418683 res!954398) b!1418682))

(assert (= (and b!1418682 res!954402) b!1418684))

(assert (= (and b!1418684 res!954403) b!1418687))

(assert (= (and b!1418687 res!954401) b!1418689))

(assert (= (and b!1418689 res!954399) b!1418686))

(assert (= (and b!1418686 res!954405) b!1418685))

(assert (= (and b!1418685 res!954400) b!1418688))

(declare-fun m!1309355 () Bool)

(assert (=> b!1418689 m!1309355))

(declare-fun m!1309357 () Bool)

(assert (=> b!1418685 m!1309357))

(assert (=> b!1418685 m!1309357))

(declare-fun m!1309359 () Bool)

(assert (=> b!1418685 m!1309359))

(assert (=> b!1418685 m!1309359))

(assert (=> b!1418685 m!1309357))

(declare-fun m!1309361 () Bool)

(assert (=> b!1418685 m!1309361))

(declare-fun m!1309363 () Bool)

(assert (=> start!122482 m!1309363))

(declare-fun m!1309365 () Bool)

(assert (=> start!122482 m!1309365))

(declare-fun m!1309367 () Bool)

(assert (=> b!1418687 m!1309367))

(assert (=> b!1418684 m!1309357))

(assert (=> b!1418684 m!1309357))

(declare-fun m!1309369 () Bool)

(assert (=> b!1418684 m!1309369))

(declare-fun m!1309371 () Bool)

(assert (=> b!1418682 m!1309371))

(assert (=> b!1418682 m!1309371))

(declare-fun m!1309373 () Bool)

(assert (=> b!1418682 m!1309373))

(push 1)

(assert (not b!1418684))

