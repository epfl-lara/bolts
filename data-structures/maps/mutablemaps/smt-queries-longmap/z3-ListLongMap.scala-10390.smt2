; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122424 () Bool)

(assert start!122424)

(declare-fun b!1418368 () Bool)

(declare-fun res!954117 () Bool)

(declare-fun e!802682 () Bool)

(assert (=> b!1418368 (=> (not res!954117) (not e!802682))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!96818 0))(
  ( (array!96819 (arr!46727 (Array (_ BitVec 32) (_ BitVec 64))) (size!47278 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96818)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418368 (= res!954117 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47278 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47278 a!2831))))))

(declare-fun b!1418369 () Bool)

(declare-fun res!954122 () Bool)

(assert (=> b!1418369 (=> (not res!954122) (not e!802682))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96818 (_ BitVec 32)) Bool)

(assert (=> b!1418369 (= res!954122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418370 () Bool)

(declare-fun res!954123 () Bool)

(assert (=> b!1418370 (=> (not res!954123) (not e!802682))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418370 (= res!954123 (validKeyInArray!0 (select (arr!46727 a!2831) j!81)))))

(declare-fun b!1418371 () Bool)

(declare-fun res!954120 () Bool)

(assert (=> b!1418371 (=> (not res!954120) (not e!802682))))

(declare-datatypes ((List!33417 0))(
  ( (Nil!33414) (Cons!33413 (h!34706 (_ BitVec 64)) (t!48118 List!33417)) )
))
(declare-fun arrayNoDuplicates!0 (array!96818 (_ BitVec 32) List!33417) Bool)

(assert (=> b!1418371 (= res!954120 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33414))))

(declare-fun b!1418372 () Bool)

(declare-fun res!954119 () Bool)

(assert (=> b!1418372 (=> (not res!954119) (not e!802682))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418372 (= res!954119 (and (= (size!47278 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47278 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47278 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!954118 () Bool)

(assert (=> start!122424 (=> (not res!954118) (not e!802682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122424 (= res!954118 (validMask!0 mask!2608))))

(assert (=> start!122424 e!802682))

(assert (=> start!122424 true))

(declare-fun array_inv!35672 (array!96818) Bool)

(assert (=> start!122424 (array_inv!35672 a!2831)))

(declare-fun b!1418373 () Bool)

(declare-fun res!954121 () Bool)

(assert (=> b!1418373 (=> (not res!954121) (not e!802682))))

(assert (=> b!1418373 (= res!954121 (validKeyInArray!0 (select (arr!46727 a!2831) i!982)))))

(declare-fun b!1418374 () Bool)

(assert (=> b!1418374 (= e!802682 false)))

(declare-fun lt!625522 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418374 (= lt!625522 (toIndex!0 (select (arr!46727 a!2831) j!81) mask!2608))))

(assert (= (and start!122424 res!954118) b!1418372))

(assert (= (and b!1418372 res!954119) b!1418373))

(assert (= (and b!1418373 res!954121) b!1418370))

(assert (= (and b!1418370 res!954123) b!1418369))

(assert (= (and b!1418369 res!954122) b!1418371))

(assert (= (and b!1418371 res!954120) b!1418368))

(assert (= (and b!1418368 res!954117) b!1418374))

(declare-fun m!1309109 () Bool)

(assert (=> b!1418371 m!1309109))

(declare-fun m!1309111 () Bool)

(assert (=> b!1418370 m!1309111))

(assert (=> b!1418370 m!1309111))

(declare-fun m!1309113 () Bool)

(assert (=> b!1418370 m!1309113))

(declare-fun m!1309115 () Bool)

(assert (=> b!1418369 m!1309115))

(assert (=> b!1418374 m!1309111))

(assert (=> b!1418374 m!1309111))

(declare-fun m!1309117 () Bool)

(assert (=> b!1418374 m!1309117))

(declare-fun m!1309119 () Bool)

(assert (=> b!1418373 m!1309119))

(assert (=> b!1418373 m!1309119))

(declare-fun m!1309121 () Bool)

(assert (=> b!1418373 m!1309121))

(declare-fun m!1309123 () Bool)

(assert (=> start!122424 m!1309123))

(declare-fun m!1309125 () Bool)

(assert (=> start!122424 m!1309125))

(check-sat (not start!122424) (not b!1418374) (not b!1418373) (not b!1418371) (not b!1418370) (not b!1418369))
