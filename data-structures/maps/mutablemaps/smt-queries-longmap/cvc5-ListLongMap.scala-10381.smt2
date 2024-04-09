; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122248 () Bool)

(assert start!122248)

(declare-fun b!1417609 () Bool)

(declare-fun e!802300 () Bool)

(declare-datatypes ((array!96750 0))(
  ( (array!96751 (arr!46699 (Array (_ BitVec 32) (_ BitVec 64))) (size!47250 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96750)

(assert (=> b!1417609 (= e!802300 (bvsgt #b00000000000000000000000000000000 (size!47250 a!2831)))))

(declare-fun b!1417607 () Bool)

(declare-fun res!953448 () Bool)

(assert (=> b!1417607 (=> (not res!953448) (not e!802300))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417607 (= res!953448 (validKeyInArray!0 (select (arr!46699 a!2831) i!982)))))

(declare-fun b!1417608 () Bool)

(declare-fun res!953446 () Bool)

(assert (=> b!1417608 (=> (not res!953446) (not e!802300))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1417608 (= res!953446 (validKeyInArray!0 (select (arr!46699 a!2831) j!81)))))

(declare-fun res!953447 () Bool)

(assert (=> start!122248 (=> (not res!953447) (not e!802300))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122248 (= res!953447 (validMask!0 mask!2608))))

(assert (=> start!122248 e!802300))

(assert (=> start!122248 true))

(declare-fun array_inv!35644 (array!96750) Bool)

(assert (=> start!122248 (array_inv!35644 a!2831)))

(declare-fun b!1417606 () Bool)

(declare-fun res!953445 () Bool)

(assert (=> b!1417606 (=> (not res!953445) (not e!802300))))

(assert (=> b!1417606 (= res!953445 (and (= (size!47250 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47250 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47250 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122248 res!953447) b!1417606))

(assert (= (and b!1417606 res!953445) b!1417607))

(assert (= (and b!1417607 res!953448) b!1417608))

(assert (= (and b!1417608 res!953446) b!1417609))

(declare-fun m!1308449 () Bool)

(assert (=> b!1417607 m!1308449))

(assert (=> b!1417607 m!1308449))

(declare-fun m!1308451 () Bool)

(assert (=> b!1417607 m!1308451))

(declare-fun m!1308453 () Bool)

(assert (=> b!1417608 m!1308453))

(assert (=> b!1417608 m!1308453))

(declare-fun m!1308455 () Bool)

(assert (=> b!1417608 m!1308455))

(declare-fun m!1308457 () Bool)

(assert (=> start!122248 m!1308457))

(declare-fun m!1308459 () Bool)

(assert (=> start!122248 m!1308459))

(push 1)

(assert (not b!1417607))

(assert (not start!122248))

(assert (not b!1417608))

(check-sat)

(pop 1)

