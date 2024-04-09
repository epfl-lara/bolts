; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122886 () Bool)

(assert start!122886)

(declare-fun b!1424802 () Bool)

(declare-fun res!960347 () Bool)

(declare-fun e!805192 () Bool)

(assert (=> b!1424802 (=> (not res!960347) (not e!805192))))

(declare-datatypes ((array!97169 0))(
  ( (array!97170 (arr!46898 (Array (_ BitVec 32) (_ BitVec 64))) (size!47449 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97169)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424802 (= res!960347 (validKeyInArray!0 (select (arr!46898 a!2831) j!81)))))

(declare-fun b!1424803 () Bool)

(declare-fun res!960345 () Bool)

(assert (=> b!1424803 (=> (not res!960345) (not e!805192))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424803 (= res!960345 (validKeyInArray!0 (select (arr!46898 a!2831) i!982)))))

(declare-fun b!1424804 () Bool)

(declare-fun res!960344 () Bool)

(assert (=> b!1424804 (=> (not res!960344) (not e!805192))))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1424804 (= res!960344 (and (= (size!47449 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47449 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47449 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424805 () Bool)

(declare-fun res!960346 () Bool)

(assert (=> b!1424805 (=> (not res!960346) (not e!805192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97169 (_ BitVec 32)) Bool)

(assert (=> b!1424805 (= res!960346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424806 () Bool)

(assert (=> b!1424806 (= e!805192 false)))

(declare-fun lt!627679 () Bool)

(declare-datatypes ((List!33588 0))(
  ( (Nil!33585) (Cons!33584 (h!34886 (_ BitVec 64)) (t!48289 List!33588)) )
))
(declare-fun arrayNoDuplicates!0 (array!97169 (_ BitVec 32) List!33588) Bool)

(assert (=> b!1424806 (= lt!627679 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33585))))

(declare-fun res!960348 () Bool)

(assert (=> start!122886 (=> (not res!960348) (not e!805192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122886 (= res!960348 (validMask!0 mask!2608))))

(assert (=> start!122886 e!805192))

(assert (=> start!122886 true))

(declare-fun array_inv!35843 (array!97169) Bool)

(assert (=> start!122886 (array_inv!35843 a!2831)))

(assert (= (and start!122886 res!960348) b!1424804))

(assert (= (and b!1424804 res!960344) b!1424803))

(assert (= (and b!1424803 res!960345) b!1424802))

(assert (= (and b!1424802 res!960347) b!1424805))

(assert (= (and b!1424805 res!960346) b!1424806))

(declare-fun m!1315431 () Bool)

(assert (=> b!1424802 m!1315431))

(assert (=> b!1424802 m!1315431))

(declare-fun m!1315433 () Bool)

(assert (=> b!1424802 m!1315433))

(declare-fun m!1315435 () Bool)

(assert (=> b!1424803 m!1315435))

(assert (=> b!1424803 m!1315435))

(declare-fun m!1315437 () Bool)

(assert (=> b!1424803 m!1315437))

(declare-fun m!1315439 () Bool)

(assert (=> start!122886 m!1315439))

(declare-fun m!1315441 () Bool)

(assert (=> start!122886 m!1315441))

(declare-fun m!1315443 () Bool)

(assert (=> b!1424805 m!1315443))

(declare-fun m!1315445 () Bool)

(assert (=> b!1424806 m!1315445))

(check-sat (not b!1424805) (not start!122886) (not b!1424803) (not b!1424802) (not b!1424806))
