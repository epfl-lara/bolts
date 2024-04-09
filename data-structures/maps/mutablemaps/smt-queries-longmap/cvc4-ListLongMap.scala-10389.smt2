; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122420 () Bool)

(assert start!122420)

(declare-fun res!954076 () Bool)

(declare-fun e!802669 () Bool)

(assert (=> start!122420 (=> (not res!954076) (not e!802669))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122420 (= res!954076 (validMask!0 mask!2608))))

(assert (=> start!122420 e!802669))

(assert (=> start!122420 true))

(declare-datatypes ((array!96814 0))(
  ( (array!96815 (arr!46725 (Array (_ BitVec 32) (_ BitVec 64))) (size!47276 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96814)

(declare-fun array_inv!35670 (array!96814) Bool)

(assert (=> start!122420 (array_inv!35670 a!2831)))

(declare-fun b!1418326 () Bool)

(declare-fun res!954077 () Bool)

(assert (=> b!1418326 (=> (not res!954077) (not e!802669))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418326 (= res!954077 (and (= (size!47276 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47276 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47276 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418327 () Bool)

(assert (=> b!1418327 (= e!802669 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun lt!625516 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418327 (= lt!625516 (toIndex!0 (select (arr!46725 a!2831) j!81) mask!2608))))

(declare-fun b!1418328 () Bool)

(declare-fun res!954075 () Bool)

(assert (=> b!1418328 (=> (not res!954075) (not e!802669))))

(declare-datatypes ((List!33415 0))(
  ( (Nil!33412) (Cons!33411 (h!34704 (_ BitVec 64)) (t!48116 List!33415)) )
))
(declare-fun arrayNoDuplicates!0 (array!96814 (_ BitVec 32) List!33415) Bool)

(assert (=> b!1418328 (= res!954075 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33412))))

(declare-fun b!1418329 () Bool)

(declare-fun res!954081 () Bool)

(assert (=> b!1418329 (=> (not res!954081) (not e!802669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418329 (= res!954081 (validKeyInArray!0 (select (arr!46725 a!2831) j!81)))))

(declare-fun b!1418330 () Bool)

(declare-fun res!954079 () Bool)

(assert (=> b!1418330 (=> (not res!954079) (not e!802669))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418330 (= res!954079 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47276 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47276 a!2831))))))

(declare-fun b!1418331 () Bool)

(declare-fun res!954080 () Bool)

(assert (=> b!1418331 (=> (not res!954080) (not e!802669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96814 (_ BitVec 32)) Bool)

(assert (=> b!1418331 (= res!954080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418332 () Bool)

(declare-fun res!954078 () Bool)

(assert (=> b!1418332 (=> (not res!954078) (not e!802669))))

(assert (=> b!1418332 (= res!954078 (validKeyInArray!0 (select (arr!46725 a!2831) i!982)))))

(assert (= (and start!122420 res!954076) b!1418326))

(assert (= (and b!1418326 res!954077) b!1418332))

(assert (= (and b!1418332 res!954078) b!1418329))

(assert (= (and b!1418329 res!954081) b!1418331))

(assert (= (and b!1418331 res!954080) b!1418328))

(assert (= (and b!1418328 res!954075) b!1418330))

(assert (= (and b!1418330 res!954079) b!1418327))

(declare-fun m!1309073 () Bool)

(assert (=> b!1418329 m!1309073))

(assert (=> b!1418329 m!1309073))

(declare-fun m!1309075 () Bool)

(assert (=> b!1418329 m!1309075))

(declare-fun m!1309077 () Bool)

(assert (=> b!1418328 m!1309077))

(declare-fun m!1309079 () Bool)

(assert (=> b!1418331 m!1309079))

(declare-fun m!1309081 () Bool)

(assert (=> start!122420 m!1309081))

(declare-fun m!1309083 () Bool)

(assert (=> start!122420 m!1309083))

(assert (=> b!1418327 m!1309073))

(assert (=> b!1418327 m!1309073))

(declare-fun m!1309085 () Bool)

(assert (=> b!1418327 m!1309085))

(declare-fun m!1309087 () Bool)

(assert (=> b!1418332 m!1309087))

(assert (=> b!1418332 m!1309087))

(declare-fun m!1309089 () Bool)

(assert (=> b!1418332 m!1309089))

(push 1)

(assert (not b!1418329))

(assert (not b!1418328))

(assert (not b!1418331))

(assert (not b!1418327))

(assert (not b!1418332))

(assert (not start!122420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

