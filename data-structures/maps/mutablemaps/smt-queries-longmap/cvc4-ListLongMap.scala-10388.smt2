; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122414 () Bool)

(assert start!122414)

(declare-fun b!1418263 () Bool)

(declare-fun res!954018 () Bool)

(declare-fun e!802652 () Bool)

(assert (=> b!1418263 (=> (not res!954018) (not e!802652))))

(declare-datatypes ((array!96808 0))(
  ( (array!96809 (arr!46722 (Array (_ BitVec 32) (_ BitVec 64))) (size!47273 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96808)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96808 (_ BitVec 32)) Bool)

(assert (=> b!1418263 (= res!954018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418264 () Bool)

(assert (=> b!1418264 (= e!802652 false)))

(declare-fun lt!625507 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418264 (= lt!625507 (toIndex!0 (select (arr!46722 a!2831) j!81) mask!2608))))

(declare-fun res!954016 () Bool)

(assert (=> start!122414 (=> (not res!954016) (not e!802652))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122414 (= res!954016 (validMask!0 mask!2608))))

(assert (=> start!122414 e!802652))

(assert (=> start!122414 true))

(declare-fun array_inv!35667 (array!96808) Bool)

(assert (=> start!122414 (array_inv!35667 a!2831)))

(declare-fun b!1418265 () Bool)

(declare-fun res!954012 () Bool)

(assert (=> b!1418265 (=> (not res!954012) (not e!802652))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418265 (= res!954012 (validKeyInArray!0 (select (arr!46722 a!2831) i!982)))))

(declare-fun b!1418266 () Bool)

(declare-fun res!954017 () Bool)

(assert (=> b!1418266 (=> (not res!954017) (not e!802652))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418266 (= res!954017 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47273 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47273 a!2831))))))

(declare-fun b!1418267 () Bool)

(declare-fun res!954014 () Bool)

(assert (=> b!1418267 (=> (not res!954014) (not e!802652))))

(assert (=> b!1418267 (= res!954014 (validKeyInArray!0 (select (arr!46722 a!2831) j!81)))))

(declare-fun b!1418268 () Bool)

(declare-fun res!954015 () Bool)

(assert (=> b!1418268 (=> (not res!954015) (not e!802652))))

(declare-datatypes ((List!33412 0))(
  ( (Nil!33409) (Cons!33408 (h!34701 (_ BitVec 64)) (t!48113 List!33412)) )
))
(declare-fun arrayNoDuplicates!0 (array!96808 (_ BitVec 32) List!33412) Bool)

(assert (=> b!1418268 (= res!954015 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33409))))

(declare-fun b!1418269 () Bool)

(declare-fun res!954013 () Bool)

(assert (=> b!1418269 (=> (not res!954013) (not e!802652))))

(assert (=> b!1418269 (= res!954013 (and (= (size!47273 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47273 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47273 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122414 res!954016) b!1418269))

(assert (= (and b!1418269 res!954013) b!1418265))

(assert (= (and b!1418265 res!954012) b!1418267))

(assert (= (and b!1418267 res!954014) b!1418263))

(assert (= (and b!1418263 res!954018) b!1418268))

(assert (= (and b!1418268 res!954015) b!1418266))

(assert (= (and b!1418266 res!954017) b!1418264))

(declare-fun m!1309019 () Bool)

(assert (=> start!122414 m!1309019))

(declare-fun m!1309021 () Bool)

(assert (=> start!122414 m!1309021))

(declare-fun m!1309023 () Bool)

(assert (=> b!1418265 m!1309023))

(assert (=> b!1418265 m!1309023))

(declare-fun m!1309025 () Bool)

(assert (=> b!1418265 m!1309025))

(declare-fun m!1309027 () Bool)

(assert (=> b!1418268 m!1309027))

(declare-fun m!1309029 () Bool)

(assert (=> b!1418264 m!1309029))

(assert (=> b!1418264 m!1309029))

(declare-fun m!1309031 () Bool)

(assert (=> b!1418264 m!1309031))

(assert (=> b!1418267 m!1309029))

(assert (=> b!1418267 m!1309029))

(declare-fun m!1309033 () Bool)

(assert (=> b!1418267 m!1309033))

(declare-fun m!1309035 () Bool)

(assert (=> b!1418263 m!1309035))

(push 1)

(assert (not b!1418263))

(assert (not b!1418268))

(assert (not b!1418265))

(assert (not b!1418267))

(assert (not start!122414))

(assert (not b!1418264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

