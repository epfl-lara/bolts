; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122472 () Bool)

(assert start!122472)

(declare-fun b!1418575 () Bool)

(declare-fun res!954296 () Bool)

(declare-fun e!802780 () Bool)

(assert (=> b!1418575 (=> (not res!954296) (not e!802780))))

(declare-datatypes ((array!96833 0))(
  ( (array!96834 (arr!46733 (Array (_ BitVec 32) (_ BitVec 64))) (size!47284 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96833)

(declare-datatypes ((List!33423 0))(
  ( (Nil!33420) (Cons!33419 (h!34715 (_ BitVec 64)) (t!48124 List!33423)) )
))
(declare-fun arrayNoDuplicates!0 (array!96833 (_ BitVec 32) List!33423) Bool)

(assert (=> b!1418575 (= res!954296 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33420))))

(declare-fun b!1418576 () Bool)

(declare-fun res!954294 () Bool)

(assert (=> b!1418576 (=> (not res!954294) (not e!802780))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418576 (= res!954294 (and (= (size!47284 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47284 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47284 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418577 () Bool)

(declare-fun res!954297 () Bool)

(assert (=> b!1418577 (=> (not res!954297) (not e!802780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418577 (= res!954297 (validKeyInArray!0 (select (arr!46733 a!2831) i!982)))))

(declare-fun b!1418578 () Bool)

(declare-fun res!954291 () Bool)

(assert (=> b!1418578 (=> (not res!954291) (not e!802780))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418578 (= res!954291 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47284 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47284 a!2831))))))

(declare-fun b!1418579 () Bool)

(assert (=> b!1418579 (= e!802780 false)))

(declare-fun lt!625585 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418579 (= lt!625585 (toIndex!0 (select (arr!46733 a!2831) j!81) mask!2608))))

(declare-fun res!954292 () Bool)

(assert (=> start!122472 (=> (not res!954292) (not e!802780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122472 (= res!954292 (validMask!0 mask!2608))))

(assert (=> start!122472 e!802780))

(assert (=> start!122472 true))

(declare-fun array_inv!35678 (array!96833) Bool)

(assert (=> start!122472 (array_inv!35678 a!2831)))

(declare-fun b!1418580 () Bool)

(declare-fun res!954295 () Bool)

(assert (=> b!1418580 (=> (not res!954295) (not e!802780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96833 (_ BitVec 32)) Bool)

(assert (=> b!1418580 (= res!954295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418581 () Bool)

(declare-fun res!954293 () Bool)

(assert (=> b!1418581 (=> (not res!954293) (not e!802780))))

(assert (=> b!1418581 (= res!954293 (validKeyInArray!0 (select (arr!46733 a!2831) j!81)))))

(assert (= (and start!122472 res!954292) b!1418576))

(assert (= (and b!1418576 res!954294) b!1418577))

(assert (= (and b!1418577 res!954297) b!1418581))

(assert (= (and b!1418581 res!954293) b!1418580))

(assert (= (and b!1418580 res!954295) b!1418575))

(assert (= (and b!1418575 res!954296) b!1418578))

(assert (= (and b!1418578 res!954291) b!1418579))

(declare-fun m!1309265 () Bool)

(assert (=> b!1418577 m!1309265))

(assert (=> b!1418577 m!1309265))

(declare-fun m!1309267 () Bool)

(assert (=> b!1418577 m!1309267))

(declare-fun m!1309269 () Bool)

(assert (=> b!1418575 m!1309269))

(declare-fun m!1309271 () Bool)

(assert (=> start!122472 m!1309271))

(declare-fun m!1309273 () Bool)

(assert (=> start!122472 m!1309273))

(declare-fun m!1309275 () Bool)

(assert (=> b!1418581 m!1309275))

(assert (=> b!1418581 m!1309275))

(declare-fun m!1309277 () Bool)

(assert (=> b!1418581 m!1309277))

(assert (=> b!1418579 m!1309275))

(assert (=> b!1418579 m!1309275))

(declare-fun m!1309279 () Bool)

(assert (=> b!1418579 m!1309279))

(declare-fun m!1309281 () Bool)

(assert (=> b!1418580 m!1309281))

(check-sat (not b!1418581) (not b!1418577) (not b!1418580) (not start!122472) (not b!1418579) (not b!1418575))
