; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122252 () Bool)

(assert start!122252)

(declare-fun b!1417631 () Bool)

(declare-fun res!953471 () Bool)

(declare-fun e!802313 () Bool)

(assert (=> b!1417631 (=> (not res!953471) (not e!802313))))

(declare-datatypes ((array!96754 0))(
  ( (array!96755 (arr!46701 (Array (_ BitVec 32) (_ BitVec 64))) (size!47252 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96754)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417631 (= res!953471 (validKeyInArray!0 (select (arr!46701 a!2831) i!982)))))

(declare-fun b!1417633 () Bool)

(assert (=> b!1417633 (= e!802313 (bvsgt #b00000000000000000000000000000000 (size!47252 a!2831)))))

(declare-fun b!1417632 () Bool)

(declare-fun res!953470 () Bool)

(assert (=> b!1417632 (=> (not res!953470) (not e!802313))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417632 (= res!953470 (validKeyInArray!0 (select (arr!46701 a!2831) j!81)))))

(declare-fun b!1417630 () Bool)

(declare-fun res!953469 () Bool)

(assert (=> b!1417630 (=> (not res!953469) (not e!802313))))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1417630 (= res!953469 (and (= (size!47252 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47252 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47252 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953472 () Bool)

(assert (=> start!122252 (=> (not res!953472) (not e!802313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122252 (= res!953472 (validMask!0 mask!2608))))

(assert (=> start!122252 e!802313))

(assert (=> start!122252 true))

(declare-fun array_inv!35646 (array!96754) Bool)

(assert (=> start!122252 (array_inv!35646 a!2831)))

(assert (= (and start!122252 res!953472) b!1417630))

(assert (= (and b!1417630 res!953469) b!1417631))

(assert (= (and b!1417631 res!953471) b!1417632))

(assert (= (and b!1417632 res!953470) b!1417633))

(declare-fun m!1308473 () Bool)

(assert (=> b!1417631 m!1308473))

(assert (=> b!1417631 m!1308473))

(declare-fun m!1308475 () Bool)

(assert (=> b!1417631 m!1308475))

(declare-fun m!1308477 () Bool)

(assert (=> b!1417632 m!1308477))

(assert (=> b!1417632 m!1308477))

(declare-fun m!1308479 () Bool)

(assert (=> b!1417632 m!1308479))

(declare-fun m!1308481 () Bool)

(assert (=> start!122252 m!1308481))

(declare-fun m!1308483 () Bool)

(assert (=> start!122252 m!1308483))

(push 1)

(assert (not b!1417631))

(assert (not b!1417632))

(assert (not start!122252))

(check-sat)

(pop 1)

