; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131072 () Bool)

(assert start!131072)

(declare-fun b!1537419 () Bool)

(declare-fun res!1054644 () Bool)

(declare-fun e!855637 () Bool)

(assert (=> b!1537419 (=> (not res!1054644) (not e!855637))))

(declare-datatypes ((array!102097 0))(
  ( (array!102098 (arr!49260 (Array (_ BitVec 32) (_ BitVec 64))) (size!49811 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102097)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537419 (= res!1054644 (validKeyInArray!0 (select (arr!49260 a!2792) i!951)))))

(declare-fun b!1537420 () Bool)

(declare-fun res!1054645 () Bool)

(assert (=> b!1537420 (=> (not res!1054645) (not e!855637))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102097 (_ BitVec 32)) Bool)

(assert (=> b!1537420 (= res!1054645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537421 () Bool)

(declare-fun res!1054647 () Bool)

(assert (=> b!1537421 (=> (not res!1054647) (not e!855637))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1537421 (= res!1054647 (and (= (size!49811 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49811 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49811 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537422 () Bool)

(assert (=> b!1537422 (= e!855637 false)))

(declare-fun lt!664669 () Bool)

(declare-datatypes ((List!35914 0))(
  ( (Nil!35911) (Cons!35910 (h!37356 (_ BitVec 64)) (t!50615 List!35914)) )
))
(declare-fun arrayNoDuplicates!0 (array!102097 (_ BitVec 32) List!35914) Bool)

(assert (=> b!1537422 (= lt!664669 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35911))))

(declare-fun res!1054643 () Bool)

(assert (=> start!131072 (=> (not res!1054643) (not e!855637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131072 (= res!1054643 (validMask!0 mask!2480))))

(assert (=> start!131072 e!855637))

(assert (=> start!131072 true))

(declare-fun array_inv!38205 (array!102097) Bool)

(assert (=> start!131072 (array_inv!38205 a!2792)))

(declare-fun b!1537423 () Bool)

(declare-fun res!1054646 () Bool)

(assert (=> b!1537423 (=> (not res!1054646) (not e!855637))))

(assert (=> b!1537423 (= res!1054646 (validKeyInArray!0 (select (arr!49260 a!2792) j!64)))))

(assert (= (and start!131072 res!1054643) b!1537421))

(assert (= (and b!1537421 res!1054647) b!1537419))

(assert (= (and b!1537419 res!1054644) b!1537423))

(assert (= (and b!1537423 res!1054646) b!1537420))

(assert (= (and b!1537420 res!1054645) b!1537422))

(declare-fun m!1419989 () Bool)

(assert (=> b!1537420 m!1419989))

(declare-fun m!1419991 () Bool)

(assert (=> b!1537419 m!1419991))

(assert (=> b!1537419 m!1419991))

(declare-fun m!1419993 () Bool)

(assert (=> b!1537419 m!1419993))

(declare-fun m!1419995 () Bool)

(assert (=> b!1537422 m!1419995))

(declare-fun m!1419997 () Bool)

(assert (=> start!131072 m!1419997))

(declare-fun m!1419999 () Bool)

(assert (=> start!131072 m!1419999))

(declare-fun m!1420001 () Bool)

(assert (=> b!1537423 m!1420001))

(assert (=> b!1537423 m!1420001))

(declare-fun m!1420003 () Bool)

(assert (=> b!1537423 m!1420003))

(push 1)

(assert (not b!1537422))

(assert (not b!1537420))

(assert (not b!1537419))

(assert (not b!1537423))

(assert (not start!131072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

