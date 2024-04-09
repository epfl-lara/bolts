; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122412 () Bool)

(assert start!122412)

(declare-fun res!953992 () Bool)

(declare-fun e!802645 () Bool)

(assert (=> start!122412 (=> (not res!953992) (not e!802645))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122412 (= res!953992 (validMask!0 mask!2608))))

(assert (=> start!122412 e!802645))

(assert (=> start!122412 true))

(declare-datatypes ((array!96806 0))(
  ( (array!96807 (arr!46721 (Array (_ BitVec 32) (_ BitVec 64))) (size!47272 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96806)

(declare-fun array_inv!35666 (array!96806) Bool)

(assert (=> start!122412 (array_inv!35666 a!2831)))

(declare-fun b!1418242 () Bool)

(declare-fun res!953997 () Bool)

(assert (=> b!1418242 (=> (not res!953997) (not e!802645))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1418242 (= res!953997 (validKeyInArray!0 (select (arr!46721 a!2831) j!81)))))

(declare-fun b!1418243 () Bool)

(assert (=> b!1418243 (= e!802645 false)))

(declare-fun lt!625504 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1418243 (= lt!625504 (toIndex!0 (select (arr!46721 a!2831) j!81) mask!2608))))

(declare-fun b!1418244 () Bool)

(declare-fun res!953993 () Bool)

(assert (=> b!1418244 (=> (not res!953993) (not e!802645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96806 (_ BitVec 32)) Bool)

(assert (=> b!1418244 (= res!953993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1418245 () Bool)

(declare-fun res!953994 () Bool)

(assert (=> b!1418245 (=> (not res!953994) (not e!802645))))

(declare-datatypes ((List!33411 0))(
  ( (Nil!33408) (Cons!33407 (h!34700 (_ BitVec 64)) (t!48112 List!33411)) )
))
(declare-fun arrayNoDuplicates!0 (array!96806 (_ BitVec 32) List!33411) Bool)

(assert (=> b!1418245 (= res!953994 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33408))))

(declare-fun b!1418246 () Bool)

(declare-fun res!953991 () Bool)

(assert (=> b!1418246 (=> (not res!953991) (not e!802645))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1418246 (= res!953991 (and (= (size!47272 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47272 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47272 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1418247 () Bool)

(declare-fun res!953996 () Bool)

(assert (=> b!1418247 (=> (not res!953996) (not e!802645))))

(assert (=> b!1418247 (= res!953996 (validKeyInArray!0 (select (arr!46721 a!2831) i!982)))))

(declare-fun b!1418248 () Bool)

(declare-fun res!953995 () Bool)

(assert (=> b!1418248 (=> (not res!953995) (not e!802645))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1418248 (= res!953995 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47272 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47272 a!2831))))))

(assert (= (and start!122412 res!953992) b!1418246))

(assert (= (and b!1418246 res!953991) b!1418247))

(assert (= (and b!1418247 res!953996) b!1418242))

(assert (= (and b!1418242 res!953997) b!1418244))

(assert (= (and b!1418244 res!953993) b!1418245))

(assert (= (and b!1418245 res!953994) b!1418248))

(assert (= (and b!1418248 res!953995) b!1418243))

(declare-fun m!1309001 () Bool)

(assert (=> b!1418245 m!1309001))

(declare-fun m!1309003 () Bool)

(assert (=> b!1418247 m!1309003))

(assert (=> b!1418247 m!1309003))

(declare-fun m!1309005 () Bool)

(assert (=> b!1418247 m!1309005))

(declare-fun m!1309007 () Bool)

(assert (=> b!1418242 m!1309007))

(assert (=> b!1418242 m!1309007))

(declare-fun m!1309009 () Bool)

(assert (=> b!1418242 m!1309009))

(declare-fun m!1309011 () Bool)

(assert (=> start!122412 m!1309011))

(declare-fun m!1309013 () Bool)

(assert (=> start!122412 m!1309013))

(declare-fun m!1309015 () Bool)

(assert (=> b!1418244 m!1309015))

(assert (=> b!1418243 m!1309007))

(assert (=> b!1418243 m!1309007))

(declare-fun m!1309017 () Bool)

(assert (=> b!1418243 m!1309017))

(check-sat (not b!1418245) (not b!1418247) (not b!1418242) (not b!1418244) (not b!1418243) (not start!122412))
