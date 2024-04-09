; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122422 () Bool)

(assert start!122422)

(declare-fun b!1418347 () Bool)

(declare-fun e!802676 () Bool)

(assert (=> b!1418347 (= e!802676 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!96816 0))(
  ( (array!96817 (arr!46726 (Array (_ BitVec 32) (_ BitVec 64))) (size!47277 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96816)

(declare-fun lt!625519 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418347 (= lt!625519 (toIndex!0 (select (arr!46726 a!2831) j!81) mask!2608))))

(declare-fun b!1418348 () Bool)

(declare-fun res!954097 () Bool)

(assert (=> b!1418348 (=> (not res!954097) (not e!802676))))

(declare-datatypes ((List!33416 0))(
  ( (Nil!33413) (Cons!33412 (h!34705 (_ BitVec 64)) (t!48117 List!33416)) )
))
(declare-fun arrayNoDuplicates!0 (array!96816 (_ BitVec 32) List!33416) Bool)

(assert (=> b!1418348 (= res!954097 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33413))))

(declare-fun b!1418349 () Bool)

(declare-fun res!954096 () Bool)

(assert (=> b!1418349 (=> (not res!954096) (not e!802676))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418349 (= res!954096 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47277 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47277 a!2831))))))

(declare-fun res!954100 () Bool)

(assert (=> start!122422 (=> (not res!954100) (not e!802676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122422 (= res!954100 (validMask!0 mask!2608))))

(assert (=> start!122422 e!802676))

(assert (=> start!122422 true))

(declare-fun array_inv!35671 (array!96816) Bool)

(assert (=> start!122422 (array_inv!35671 a!2831)))

(declare-fun b!1418350 () Bool)

(declare-fun res!954098 () Bool)

(assert (=> b!1418350 (=> (not res!954098) (not e!802676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418350 (= res!954098 (validKeyInArray!0 (select (arr!46726 a!2831) j!81)))))

(declare-fun b!1418351 () Bool)

(declare-fun res!954099 () Bool)

(assert (=> b!1418351 (=> (not res!954099) (not e!802676))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418351 (= res!954099 (and (= (size!47277 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47277 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47277 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418352 () Bool)

(declare-fun res!954101 () Bool)

(assert (=> b!1418352 (=> (not res!954101) (not e!802676))))

(assert (=> b!1418352 (= res!954101 (validKeyInArray!0 (select (arr!46726 a!2831) i!982)))))

(declare-fun b!1418353 () Bool)

(declare-fun res!954102 () Bool)

(assert (=> b!1418353 (=> (not res!954102) (not e!802676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96816 (_ BitVec 32)) Bool)

(assert (=> b!1418353 (= res!954102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122422 res!954100) b!1418351))

(assert (= (and b!1418351 res!954099) b!1418352))

(assert (= (and b!1418352 res!954101) b!1418350))

(assert (= (and b!1418350 res!954098) b!1418353))

(assert (= (and b!1418353 res!954102) b!1418348))

(assert (= (and b!1418348 res!954097) b!1418349))

(assert (= (and b!1418349 res!954096) b!1418347))

(declare-fun m!1309091 () Bool)

(assert (=> b!1418350 m!1309091))

(assert (=> b!1418350 m!1309091))

(declare-fun m!1309093 () Bool)

(assert (=> b!1418350 m!1309093))

(assert (=> b!1418347 m!1309091))

(assert (=> b!1418347 m!1309091))

(declare-fun m!1309095 () Bool)

(assert (=> b!1418347 m!1309095))

(declare-fun m!1309097 () Bool)

(assert (=> b!1418348 m!1309097))

(declare-fun m!1309099 () Bool)

(assert (=> b!1418353 m!1309099))

(declare-fun m!1309101 () Bool)

(assert (=> b!1418352 m!1309101))

(assert (=> b!1418352 m!1309101))

(declare-fun m!1309103 () Bool)

(assert (=> b!1418352 m!1309103))

(declare-fun m!1309105 () Bool)

(assert (=> start!122422 m!1309105))

(declare-fun m!1309107 () Bool)

(assert (=> start!122422 m!1309107))

(push 1)

(assert (not b!1418348))

(assert (not b!1418353))

(assert (not start!122422))

(assert (not b!1418352))

(assert (not b!1418350))

(assert (not b!1418347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

