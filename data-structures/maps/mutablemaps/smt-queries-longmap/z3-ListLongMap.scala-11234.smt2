; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131070 () Bool)

(assert start!131070)

(declare-fun b!1537404 () Bool)

(declare-fun res!1054630 () Bool)

(declare-fun e!855631 () Bool)

(assert (=> b!1537404 (=> (not res!1054630) (not e!855631))))

(declare-datatypes ((array!102095 0))(
  ( (array!102096 (arr!49259 (Array (_ BitVec 32) (_ BitVec 64))) (size!49810 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102095)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537404 (= res!1054630 (and (= (size!49810 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49810 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49810 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537405 () Bool)

(declare-fun res!1054628 () Bool)

(assert (=> b!1537405 (=> (not res!1054628) (not e!855631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537405 (= res!1054628 (validKeyInArray!0 (select (arr!49259 a!2792) i!951)))))

(declare-fun res!1054629 () Bool)

(assert (=> start!131070 (=> (not res!1054629) (not e!855631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131070 (= res!1054629 (validMask!0 mask!2480))))

(assert (=> start!131070 e!855631))

(assert (=> start!131070 true))

(declare-fun array_inv!38204 (array!102095) Bool)

(assert (=> start!131070 (array_inv!38204 a!2792)))

(declare-fun b!1537406 () Bool)

(declare-fun res!1054631 () Bool)

(assert (=> b!1537406 (=> (not res!1054631) (not e!855631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102095 (_ BitVec 32)) Bool)

(assert (=> b!1537406 (= res!1054631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537407 () Bool)

(declare-fun res!1054632 () Bool)

(assert (=> b!1537407 (=> (not res!1054632) (not e!855631))))

(assert (=> b!1537407 (= res!1054632 (validKeyInArray!0 (select (arr!49259 a!2792) j!64)))))

(declare-fun b!1537408 () Bool)

(assert (=> b!1537408 (= e!855631 false)))

(declare-fun lt!664666 () Bool)

(declare-datatypes ((List!35913 0))(
  ( (Nil!35910) (Cons!35909 (h!37355 (_ BitVec 64)) (t!50614 List!35913)) )
))
(declare-fun arrayNoDuplicates!0 (array!102095 (_ BitVec 32) List!35913) Bool)

(assert (=> b!1537408 (= lt!664666 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35910))))

(assert (= (and start!131070 res!1054629) b!1537404))

(assert (= (and b!1537404 res!1054630) b!1537405))

(assert (= (and b!1537405 res!1054628) b!1537407))

(assert (= (and b!1537407 res!1054632) b!1537406))

(assert (= (and b!1537406 res!1054631) b!1537408))

(declare-fun m!1419973 () Bool)

(assert (=> b!1537405 m!1419973))

(assert (=> b!1537405 m!1419973))

(declare-fun m!1419975 () Bool)

(assert (=> b!1537405 m!1419975))

(declare-fun m!1419977 () Bool)

(assert (=> b!1537406 m!1419977))

(declare-fun m!1419979 () Bool)

(assert (=> b!1537407 m!1419979))

(assert (=> b!1537407 m!1419979))

(declare-fun m!1419981 () Bool)

(assert (=> b!1537407 m!1419981))

(declare-fun m!1419983 () Bool)

(assert (=> start!131070 m!1419983))

(declare-fun m!1419985 () Bool)

(assert (=> start!131070 m!1419985))

(declare-fun m!1419987 () Bool)

(assert (=> b!1537408 m!1419987))

(check-sat (not b!1537408) (not start!131070) (not b!1537406) (not b!1537405) (not b!1537407))
