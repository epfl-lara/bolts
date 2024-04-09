; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131074 () Bool)

(assert start!131074)

(declare-fun b!1537434 () Bool)

(declare-fun res!1054660 () Bool)

(declare-fun e!855643 () Bool)

(assert (=> b!1537434 (=> (not res!1054660) (not e!855643))))

(declare-datatypes ((array!102099 0))(
  ( (array!102100 (arr!49261 (Array (_ BitVec 32) (_ BitVec 64))) (size!49812 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102099)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537434 (= res!1054660 (and (= (size!49812 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49812 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49812 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537435 () Bool)

(assert (=> b!1537435 (= e!855643 false)))

(declare-fun lt!664672 () Bool)

(declare-datatypes ((List!35915 0))(
  ( (Nil!35912) (Cons!35911 (h!37357 (_ BitVec 64)) (t!50616 List!35915)) )
))
(declare-fun arrayNoDuplicates!0 (array!102099 (_ BitVec 32) List!35915) Bool)

(assert (=> b!1537435 (= lt!664672 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35912))))

(declare-fun res!1054661 () Bool)

(assert (=> start!131074 (=> (not res!1054661) (not e!855643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131074 (= res!1054661 (validMask!0 mask!2480))))

(assert (=> start!131074 e!855643))

(assert (=> start!131074 true))

(declare-fun array_inv!38206 (array!102099) Bool)

(assert (=> start!131074 (array_inv!38206 a!2792)))

(declare-fun b!1537436 () Bool)

(declare-fun res!1054662 () Bool)

(assert (=> b!1537436 (=> (not res!1054662) (not e!855643))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537436 (= res!1054662 (validKeyInArray!0 (select (arr!49261 a!2792) i!951)))))

(declare-fun b!1537437 () Bool)

(declare-fun res!1054658 () Bool)

(assert (=> b!1537437 (=> (not res!1054658) (not e!855643))))

(assert (=> b!1537437 (= res!1054658 (validKeyInArray!0 (select (arr!49261 a!2792) j!64)))))

(declare-fun b!1537438 () Bool)

(declare-fun res!1054659 () Bool)

(assert (=> b!1537438 (=> (not res!1054659) (not e!855643))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102099 (_ BitVec 32)) Bool)

(assert (=> b!1537438 (= res!1054659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131074 res!1054661) b!1537434))

(assert (= (and b!1537434 res!1054660) b!1537436))

(assert (= (and b!1537436 res!1054662) b!1537437))

(assert (= (and b!1537437 res!1054658) b!1537438))

(assert (= (and b!1537438 res!1054659) b!1537435))

(declare-fun m!1420005 () Bool)

(assert (=> b!1537438 m!1420005))

(declare-fun m!1420007 () Bool)

(assert (=> b!1537436 m!1420007))

(assert (=> b!1537436 m!1420007))

(declare-fun m!1420009 () Bool)

(assert (=> b!1537436 m!1420009))

(declare-fun m!1420011 () Bool)

(assert (=> start!131074 m!1420011))

(declare-fun m!1420013 () Bool)

(assert (=> start!131074 m!1420013))

(declare-fun m!1420015 () Bool)

(assert (=> b!1537437 m!1420015))

(assert (=> b!1537437 m!1420015))

(declare-fun m!1420017 () Bool)

(assert (=> b!1537437 m!1420017))

(declare-fun m!1420019 () Bool)

(assert (=> b!1537435 m!1420019))

(push 1)

(assert (not b!1537435))

(assert (not start!131074))

(assert (not b!1537437))

(assert (not b!1537438))

(assert (not b!1537436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

