; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122480 () Bool)

(assert start!122480)

(declare-fun b!1418659 () Bool)

(declare-fun res!954378 () Bool)

(declare-fun e!802804 () Bool)

(assert (=> b!1418659 (=> (not res!954378) (not e!802804))))

(declare-datatypes ((array!96841 0))(
  ( (array!96842 (arr!46737 (Array (_ BitVec 32) (_ BitVec 64))) (size!47288 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96841)

(declare-datatypes ((List!33427 0))(
  ( (Nil!33424) (Cons!33423 (h!34719 (_ BitVec 64)) (t!48128 List!33427)) )
))
(declare-fun arrayNoDuplicates!0 (array!96841 (_ BitVec 32) List!33427) Bool)

(assert (=> b!1418659 (= res!954378 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33424))))

(declare-fun b!1418660 () Bool)

(declare-fun res!954381 () Bool)

(assert (=> b!1418660 (=> (not res!954381) (not e!802804))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418660 (= res!954381 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47288 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47288 a!2831))))))

(declare-fun b!1418661 () Bool)

(declare-fun res!954380 () Bool)

(assert (=> b!1418661 (=> (not res!954380) (not e!802804))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418661 (= res!954380 (validKeyInArray!0 (select (arr!46737 a!2831) j!81)))))

(declare-fun b!1418662 () Bool)

(declare-fun res!954379 () Bool)

(assert (=> b!1418662 (=> (not res!954379) (not e!802804))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96841 (_ BitVec 32)) Bool)

(assert (=> b!1418662 (= res!954379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418663 () Bool)

(assert (=> b!1418663 (= e!802804 false)))

(declare-fun lt!625597 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418663 (= lt!625597 (toIndex!0 (select (arr!46737 a!2831) j!81) mask!2608))))

(declare-fun b!1418664 () Bool)

(declare-fun res!954375 () Bool)

(assert (=> b!1418664 (=> (not res!954375) (not e!802804))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418664 (= res!954375 (and (= (size!47288 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47288 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47288 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954377 () Bool)

(assert (=> start!122480 (=> (not res!954377) (not e!802804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122480 (= res!954377 (validMask!0 mask!2608))))

(assert (=> start!122480 e!802804))

(assert (=> start!122480 true))

(declare-fun array_inv!35682 (array!96841) Bool)

(assert (=> start!122480 (array_inv!35682 a!2831)))

(declare-fun b!1418665 () Bool)

(declare-fun res!954376 () Bool)

(assert (=> b!1418665 (=> (not res!954376) (not e!802804))))

(assert (=> b!1418665 (= res!954376 (validKeyInArray!0 (select (arr!46737 a!2831) i!982)))))

(assert (= (and start!122480 res!954377) b!1418664))

(assert (= (and b!1418664 res!954375) b!1418665))

(assert (= (and b!1418665 res!954376) b!1418661))

(assert (= (and b!1418661 res!954380) b!1418662))

(assert (= (and b!1418662 res!954379) b!1418659))

(assert (= (and b!1418659 res!954378) b!1418660))

(assert (= (and b!1418660 res!954381) b!1418663))

(declare-fun m!1309337 () Bool)

(assert (=> b!1418659 m!1309337))

(declare-fun m!1309339 () Bool)

(assert (=> start!122480 m!1309339))

(declare-fun m!1309341 () Bool)

(assert (=> start!122480 m!1309341))

(declare-fun m!1309343 () Bool)

(assert (=> b!1418661 m!1309343))

(assert (=> b!1418661 m!1309343))

(declare-fun m!1309345 () Bool)

(assert (=> b!1418661 m!1309345))

(assert (=> b!1418663 m!1309343))

(assert (=> b!1418663 m!1309343))

(declare-fun m!1309347 () Bool)

(assert (=> b!1418663 m!1309347))

(declare-fun m!1309349 () Bool)

(assert (=> b!1418665 m!1309349))

(assert (=> b!1418665 m!1309349))

(declare-fun m!1309351 () Bool)

(assert (=> b!1418665 m!1309351))

(declare-fun m!1309353 () Bool)

(assert (=> b!1418662 m!1309353))

(push 1)

(assert (not b!1418663))

(assert (not b!1418661))

(assert (not start!122480))

(assert (not b!1418662))

(assert (not b!1418659))

(assert (not b!1418665))

(check-sat)

(pop 1)

