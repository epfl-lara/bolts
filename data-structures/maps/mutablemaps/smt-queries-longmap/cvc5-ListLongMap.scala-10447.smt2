; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122884 () Bool)

(assert start!122884)

(declare-fun b!1424787 () Bool)

(declare-fun e!805186 () Bool)

(assert (=> b!1424787 (= e!805186 false)))

(declare-fun lt!627676 () Bool)

(declare-datatypes ((array!97167 0))(
  ( (array!97168 (arr!46897 (Array (_ BitVec 32) (_ BitVec 64))) (size!47448 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97167)

(declare-datatypes ((List!33587 0))(
  ( (Nil!33584) (Cons!33583 (h!34885 (_ BitVec 64)) (t!48288 List!33587)) )
))
(declare-fun arrayNoDuplicates!0 (array!97167 (_ BitVec 32) List!33587) Bool)

(assert (=> b!1424787 (= lt!627676 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33584))))

(declare-fun b!1424788 () Bool)

(declare-fun res!960329 () Bool)

(assert (=> b!1424788 (=> (not res!960329) (not e!805186))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97167 (_ BitVec 32)) Bool)

(assert (=> b!1424788 (= res!960329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424789 () Bool)

(declare-fun res!960331 () Bool)

(assert (=> b!1424789 (=> (not res!960331) (not e!805186))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424789 (= res!960331 (validKeyInArray!0 (select (arr!46897 a!2831) j!81)))))

(declare-fun b!1424790 () Bool)

(declare-fun res!960333 () Bool)

(assert (=> b!1424790 (=> (not res!960333) (not e!805186))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424790 (= res!960333 (validKeyInArray!0 (select (arr!46897 a!2831) i!982)))))

(declare-fun res!960332 () Bool)

(assert (=> start!122884 (=> (not res!960332) (not e!805186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122884 (= res!960332 (validMask!0 mask!2608))))

(assert (=> start!122884 e!805186))

(assert (=> start!122884 true))

(declare-fun array_inv!35842 (array!97167) Bool)

(assert (=> start!122884 (array_inv!35842 a!2831)))

(declare-fun b!1424791 () Bool)

(declare-fun res!960330 () Bool)

(assert (=> b!1424791 (=> (not res!960330) (not e!805186))))

(assert (=> b!1424791 (= res!960330 (and (= (size!47448 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47448 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47448 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122884 res!960332) b!1424791))

(assert (= (and b!1424791 res!960330) b!1424790))

(assert (= (and b!1424790 res!960333) b!1424789))

(assert (= (and b!1424789 res!960331) b!1424788))

(assert (= (and b!1424788 res!960329) b!1424787))

(declare-fun m!1315415 () Bool)

(assert (=> start!122884 m!1315415))

(declare-fun m!1315417 () Bool)

(assert (=> start!122884 m!1315417))

(declare-fun m!1315419 () Bool)

(assert (=> b!1424788 m!1315419))

(declare-fun m!1315421 () Bool)

(assert (=> b!1424787 m!1315421))

(declare-fun m!1315423 () Bool)

(assert (=> b!1424789 m!1315423))

(assert (=> b!1424789 m!1315423))

(declare-fun m!1315425 () Bool)

(assert (=> b!1424789 m!1315425))

(declare-fun m!1315427 () Bool)

(assert (=> b!1424790 m!1315427))

(assert (=> b!1424790 m!1315427))

(declare-fun m!1315429 () Bool)

(assert (=> b!1424790 m!1315429))

(push 1)

(assert (not b!1424787))

(assert (not b!1424788))

(assert (not start!122884))

(assert (not b!1424789))

(assert (not b!1424790))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

