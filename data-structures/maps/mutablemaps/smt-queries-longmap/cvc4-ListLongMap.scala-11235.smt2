; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131078 () Bool)

(assert start!131078)

(declare-fun b!1537464 () Bool)

(declare-fun e!855656 () Bool)

(assert (=> b!1537464 (= e!855656 false)))

(declare-fun lt!664678 () Bool)

(declare-datatypes ((array!102103 0))(
  ( (array!102104 (arr!49263 (Array (_ BitVec 32) (_ BitVec 64))) (size!49814 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102103)

(declare-datatypes ((List!35917 0))(
  ( (Nil!35914) (Cons!35913 (h!37359 (_ BitVec 64)) (t!50618 List!35917)) )
))
(declare-fun arrayNoDuplicates!0 (array!102103 (_ BitVec 32) List!35917) Bool)

(assert (=> b!1537464 (= lt!664678 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35914))))

(declare-fun b!1537465 () Bool)

(declare-fun res!1054692 () Bool)

(assert (=> b!1537465 (=> (not res!1054692) (not e!855656))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537465 (= res!1054692 (and (= (size!49814 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49814 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49814 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054688 () Bool)

(assert (=> start!131078 (=> (not res!1054688) (not e!855656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131078 (= res!1054688 (validMask!0 mask!2480))))

(assert (=> start!131078 e!855656))

(assert (=> start!131078 true))

(declare-fun array_inv!38208 (array!102103) Bool)

(assert (=> start!131078 (array_inv!38208 a!2792)))

(declare-fun b!1537466 () Bool)

(declare-fun res!1054689 () Bool)

(assert (=> b!1537466 (=> (not res!1054689) (not e!855656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102103 (_ BitVec 32)) Bool)

(assert (=> b!1537466 (= res!1054689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537467 () Bool)

(declare-fun res!1054690 () Bool)

(assert (=> b!1537467 (=> (not res!1054690) (not e!855656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537467 (= res!1054690 (validKeyInArray!0 (select (arr!49263 a!2792) i!951)))))

(declare-fun b!1537468 () Bool)

(declare-fun res!1054691 () Bool)

(assert (=> b!1537468 (=> (not res!1054691) (not e!855656))))

(assert (=> b!1537468 (= res!1054691 (validKeyInArray!0 (select (arr!49263 a!2792) j!64)))))

(assert (= (and start!131078 res!1054688) b!1537465))

(assert (= (and b!1537465 res!1054692) b!1537467))

(assert (= (and b!1537467 res!1054690) b!1537468))

(assert (= (and b!1537468 res!1054691) b!1537466))

(assert (= (and b!1537466 res!1054689) b!1537464))

(declare-fun m!1420037 () Bool)

(assert (=> b!1537467 m!1420037))

(assert (=> b!1537467 m!1420037))

(declare-fun m!1420039 () Bool)

(assert (=> b!1537467 m!1420039))

(declare-fun m!1420041 () Bool)

(assert (=> b!1537464 m!1420041))

(declare-fun m!1420043 () Bool)

(assert (=> b!1537468 m!1420043))

(assert (=> b!1537468 m!1420043))

(declare-fun m!1420045 () Bool)

(assert (=> b!1537468 m!1420045))

(declare-fun m!1420047 () Bool)

(assert (=> b!1537466 m!1420047))

(declare-fun m!1420049 () Bool)

(assert (=> start!131078 m!1420049))

(declare-fun m!1420051 () Bool)

(assert (=> start!131078 m!1420051))

(push 1)

(assert (not b!1537464))

(assert (not b!1537466))

(assert (not start!131078))

(assert (not b!1537467))

(assert (not b!1537468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

