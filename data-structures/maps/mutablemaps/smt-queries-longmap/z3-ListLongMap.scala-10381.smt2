; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122250 () Bool)

(assert start!122250)

(declare-fun b!1417619 () Bool)

(declare-fun res!953460 () Bool)

(declare-fun e!802306 () Bool)

(assert (=> b!1417619 (=> (not res!953460) (not e!802306))))

(declare-datatypes ((array!96752 0))(
  ( (array!96753 (arr!46700 (Array (_ BitVec 32) (_ BitVec 64))) (size!47251 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96752)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417619 (= res!953460 (validKeyInArray!0 (select (arr!46700 a!2831) i!982)))))

(declare-fun b!1417618 () Bool)

(declare-fun res!953457 () Bool)

(assert (=> b!1417618 (=> (not res!953457) (not e!802306))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1417618 (= res!953457 (and (= (size!47251 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47251 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47251 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953458 () Bool)

(assert (=> start!122250 (=> (not res!953458) (not e!802306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122250 (= res!953458 (validMask!0 mask!2608))))

(assert (=> start!122250 e!802306))

(assert (=> start!122250 true))

(declare-fun array_inv!35645 (array!96752) Bool)

(assert (=> start!122250 (array_inv!35645 a!2831)))

(declare-fun b!1417621 () Bool)

(assert (=> b!1417621 (= e!802306 (bvsgt #b00000000000000000000000000000000 (size!47251 a!2831)))))

(declare-fun b!1417620 () Bool)

(declare-fun res!953459 () Bool)

(assert (=> b!1417620 (=> (not res!953459) (not e!802306))))

(assert (=> b!1417620 (= res!953459 (validKeyInArray!0 (select (arr!46700 a!2831) j!81)))))

(assert (= (and start!122250 res!953458) b!1417618))

(assert (= (and b!1417618 res!953457) b!1417619))

(assert (= (and b!1417619 res!953460) b!1417620))

(assert (= (and b!1417620 res!953459) b!1417621))

(declare-fun m!1308461 () Bool)

(assert (=> b!1417619 m!1308461))

(assert (=> b!1417619 m!1308461))

(declare-fun m!1308463 () Bool)

(assert (=> b!1417619 m!1308463))

(declare-fun m!1308465 () Bool)

(assert (=> start!122250 m!1308465))

(declare-fun m!1308467 () Bool)

(assert (=> start!122250 m!1308467))

(declare-fun m!1308469 () Bool)

(assert (=> b!1417620 m!1308469))

(assert (=> b!1417620 m!1308469))

(declare-fun m!1308471 () Bool)

(assert (=> b!1417620 m!1308471))

(check-sat (not start!122250) (not b!1417620) (not b!1417619))
(check-sat)
