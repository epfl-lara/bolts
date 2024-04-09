; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122418 () Bool)

(assert start!122418)

(declare-fun b!1418305 () Bool)

(declare-fun res!954056 () Bool)

(declare-fun e!802663 () Bool)

(assert (=> b!1418305 (=> (not res!954056) (not e!802663))))

(declare-datatypes ((array!96812 0))(
  ( (array!96813 (arr!46724 (Array (_ BitVec 32) (_ BitVec 64))) (size!47275 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96812)

(declare-datatypes ((List!33414 0))(
  ( (Nil!33411) (Cons!33410 (h!34703 (_ BitVec 64)) (t!48115 List!33414)) )
))
(declare-fun arrayNoDuplicates!0 (array!96812 (_ BitVec 32) List!33414) Bool)

(assert (=> b!1418305 (= res!954056 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33411))))

(declare-fun b!1418306 () Bool)

(declare-fun res!954059 () Bool)

(assert (=> b!1418306 (=> (not res!954059) (not e!802663))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418306 (= res!954059 (validKeyInArray!0 (select (arr!46724 a!2831) i!982)))))

(declare-fun b!1418307 () Bool)

(declare-fun res!954054 () Bool)

(assert (=> b!1418307 (=> (not res!954054) (not e!802663))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418307 (= res!954054 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47275 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47275 a!2831))))))

(declare-fun b!1418308 () Bool)

(declare-fun res!954058 () Bool)

(assert (=> b!1418308 (=> (not res!954058) (not e!802663))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1418308 (= res!954058 (validKeyInArray!0 (select (arr!46724 a!2831) j!81)))))

(declare-fun b!1418309 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1418309 (= e!802663 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun lt!625513 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418309 (= lt!625513 (toIndex!0 (select (arr!46724 a!2831) j!81) mask!2608))))

(declare-fun b!1418310 () Bool)

(declare-fun res!954055 () Bool)

(assert (=> b!1418310 (=> (not res!954055) (not e!802663))))

(assert (=> b!1418310 (= res!954055 (and (= (size!47275 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47275 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47275 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954057 () Bool)

(assert (=> start!122418 (=> (not res!954057) (not e!802663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122418 (= res!954057 (validMask!0 mask!2608))))

(assert (=> start!122418 e!802663))

(assert (=> start!122418 true))

(declare-fun array_inv!35669 (array!96812) Bool)

(assert (=> start!122418 (array_inv!35669 a!2831)))

(declare-fun b!1418311 () Bool)

(declare-fun res!954060 () Bool)

(assert (=> b!1418311 (=> (not res!954060) (not e!802663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96812 (_ BitVec 32)) Bool)

(assert (=> b!1418311 (= res!954060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122418 res!954057) b!1418310))

(assert (= (and b!1418310 res!954055) b!1418306))

(assert (= (and b!1418306 res!954059) b!1418308))

(assert (= (and b!1418308 res!954058) b!1418311))

(assert (= (and b!1418311 res!954060) b!1418305))

(assert (= (and b!1418305 res!954056) b!1418307))

(assert (= (and b!1418307 res!954054) b!1418309))

(declare-fun m!1309055 () Bool)

(assert (=> b!1418308 m!1309055))

(assert (=> b!1418308 m!1309055))

(declare-fun m!1309057 () Bool)

(assert (=> b!1418308 m!1309057))

(assert (=> b!1418309 m!1309055))

(assert (=> b!1418309 m!1309055))

(declare-fun m!1309059 () Bool)

(assert (=> b!1418309 m!1309059))

(declare-fun m!1309061 () Bool)

(assert (=> start!122418 m!1309061))

(declare-fun m!1309063 () Bool)

(assert (=> start!122418 m!1309063))

(declare-fun m!1309065 () Bool)

(assert (=> b!1418305 m!1309065))

(declare-fun m!1309067 () Bool)

(assert (=> b!1418306 m!1309067))

(assert (=> b!1418306 m!1309067))

(declare-fun m!1309069 () Bool)

(assert (=> b!1418306 m!1309069))

(declare-fun m!1309071 () Bool)

(assert (=> b!1418311 m!1309071))

(check-sat (not b!1418305) (not b!1418311) (not b!1418308) (not b!1418306) (not start!122418) (not b!1418309))
(check-sat)
