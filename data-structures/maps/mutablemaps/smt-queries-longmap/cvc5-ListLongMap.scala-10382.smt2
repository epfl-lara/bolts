; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122254 () Bool)

(assert start!122254)

(declare-fun b!1417644 () Bool)

(declare-fun res!953484 () Bool)

(declare-fun e!802319 () Bool)

(assert (=> b!1417644 (=> (not res!953484) (not e!802319))))

(declare-datatypes ((array!96756 0))(
  ( (array!96757 (arr!46702 (Array (_ BitVec 32) (_ BitVec 64))) (size!47253 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96756)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96756 (_ BitVec 32)) Bool)

(assert (=> b!1417644 (= res!953484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1417645 () Bool)

(declare-fun res!953483 () Bool)

(assert (=> b!1417645 (=> (not res!953483) (not e!802319))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417645 (= res!953483 (validKeyInArray!0 (select (arr!46702 a!2831) j!81)))))

(declare-fun b!1417647 () Bool)

(declare-fun res!953485 () Bool)

(assert (=> b!1417647 (=> (not res!953485) (not e!802319))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1417647 (= res!953485 (validKeyInArray!0 (select (arr!46702 a!2831) i!982)))))

(declare-fun b!1417648 () Bool)

(assert (=> b!1417648 (= e!802319 (bvsgt #b00000000000000000000000000000000 (size!47253 a!2831)))))

(declare-fun b!1417646 () Bool)

(declare-fun res!953486 () Bool)

(assert (=> b!1417646 (=> (not res!953486) (not e!802319))))

(assert (=> b!1417646 (= res!953486 (and (= (size!47253 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47253 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47253 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!953487 () Bool)

(assert (=> start!122254 (=> (not res!953487) (not e!802319))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122254 (= res!953487 (validMask!0 mask!2608))))

(assert (=> start!122254 e!802319))

(assert (=> start!122254 true))

(declare-fun array_inv!35647 (array!96756) Bool)

(assert (=> start!122254 (array_inv!35647 a!2831)))

(assert (= (and start!122254 res!953487) b!1417646))

(assert (= (and b!1417646 res!953486) b!1417647))

(assert (= (and b!1417647 res!953485) b!1417645))

(assert (= (and b!1417645 res!953483) b!1417644))

(assert (= (and b!1417644 res!953484) b!1417648))

(declare-fun m!1308485 () Bool)

(assert (=> b!1417644 m!1308485))

(declare-fun m!1308487 () Bool)

(assert (=> b!1417645 m!1308487))

(assert (=> b!1417645 m!1308487))

(declare-fun m!1308489 () Bool)

(assert (=> b!1417645 m!1308489))

(declare-fun m!1308491 () Bool)

(assert (=> b!1417647 m!1308491))

(assert (=> b!1417647 m!1308491))

(declare-fun m!1308493 () Bool)

(assert (=> b!1417647 m!1308493))

(declare-fun m!1308495 () Bool)

(assert (=> start!122254 m!1308495))

(declare-fun m!1308497 () Bool)

(assert (=> start!122254 m!1308497))

(push 1)

(assert (not b!1417647))

(assert (not b!1417645))

(assert (not b!1417644))

(assert (not start!122254))

(check-sat)

(pop 1)

