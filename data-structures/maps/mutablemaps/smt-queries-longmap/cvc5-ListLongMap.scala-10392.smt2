; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122470 () Bool)

(assert start!122470)

(declare-fun b!1418554 () Bool)

(declare-fun res!954276 () Bool)

(declare-fun e!802774 () Bool)

(assert (=> b!1418554 (=> (not res!954276) (not e!802774))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96831 0))(
  ( (array!96832 (arr!46732 (Array (_ BitVec 32) (_ BitVec 64))) (size!47283 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96831)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418554 (= res!954276 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47283 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47283 a!2831))))))

(declare-fun b!1418555 () Bool)

(declare-fun res!954274 () Bool)

(assert (=> b!1418555 (=> (not res!954274) (not e!802774))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418555 (= res!954274 (validKeyInArray!0 (select (arr!46732 a!2831) i!982)))))

(declare-fun res!954272 () Bool)

(assert (=> start!122470 (=> (not res!954272) (not e!802774))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122470 (= res!954272 (validMask!0 mask!2608))))

(assert (=> start!122470 e!802774))

(assert (=> start!122470 true))

(declare-fun array_inv!35677 (array!96831) Bool)

(assert (=> start!122470 (array_inv!35677 a!2831)))

(declare-fun b!1418556 () Bool)

(declare-fun res!954275 () Bool)

(assert (=> b!1418556 (=> (not res!954275) (not e!802774))))

(declare-datatypes ((List!33422 0))(
  ( (Nil!33419) (Cons!33418 (h!34714 (_ BitVec 64)) (t!48123 List!33422)) )
))
(declare-fun arrayNoDuplicates!0 (array!96831 (_ BitVec 32) List!33422) Bool)

(assert (=> b!1418556 (= res!954275 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33419))))

(declare-fun b!1418557 () Bool)

(declare-fun res!954270 () Bool)

(assert (=> b!1418557 (=> (not res!954270) (not e!802774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96831 (_ BitVec 32)) Bool)

(assert (=> b!1418557 (= res!954270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418558 () Bool)

(declare-fun res!954271 () Bool)

(assert (=> b!1418558 (=> (not res!954271) (not e!802774))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418558 (= res!954271 (and (= (size!47283 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47283 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47283 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418559 () Bool)

(declare-fun res!954273 () Bool)

(assert (=> b!1418559 (=> (not res!954273) (not e!802774))))

(assert (=> b!1418559 (= res!954273 (validKeyInArray!0 (select (arr!46732 a!2831) j!81)))))

(declare-fun b!1418560 () Bool)

(assert (=> b!1418560 (= e!802774 false)))

(declare-fun lt!625582 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418560 (= lt!625582 (toIndex!0 (select (arr!46732 a!2831) j!81) mask!2608))))

(assert (= (and start!122470 res!954272) b!1418558))

(assert (= (and b!1418558 res!954271) b!1418555))

(assert (= (and b!1418555 res!954274) b!1418559))

(assert (= (and b!1418559 res!954273) b!1418557))

(assert (= (and b!1418557 res!954270) b!1418556))

(assert (= (and b!1418556 res!954275) b!1418554))

(assert (= (and b!1418554 res!954276) b!1418560))

(declare-fun m!1309247 () Bool)

(assert (=> b!1418557 m!1309247))

(declare-fun m!1309249 () Bool)

(assert (=> start!122470 m!1309249))

(declare-fun m!1309251 () Bool)

(assert (=> start!122470 m!1309251))

(declare-fun m!1309253 () Bool)

(assert (=> b!1418555 m!1309253))

(assert (=> b!1418555 m!1309253))

(declare-fun m!1309255 () Bool)

(assert (=> b!1418555 m!1309255))

(declare-fun m!1309257 () Bool)

(assert (=> b!1418556 m!1309257))

(declare-fun m!1309259 () Bool)

(assert (=> b!1418560 m!1309259))

(assert (=> b!1418560 m!1309259))

(declare-fun m!1309261 () Bool)

(assert (=> b!1418560 m!1309261))

(assert (=> b!1418559 m!1309259))

(assert (=> b!1418559 m!1309259))

(declare-fun m!1309263 () Bool)

(assert (=> b!1418559 m!1309263))

(push 1)

(assert (not b!1418559))

(assert (not b!1418560))

(assert (not b!1418555))

(assert (not start!122470))

(assert (not b!1418557))

(assert (not b!1418556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

