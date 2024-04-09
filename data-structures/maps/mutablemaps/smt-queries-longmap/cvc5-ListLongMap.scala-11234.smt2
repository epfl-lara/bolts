; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131068 () Bool)

(assert start!131068)

(declare-fun b!1537389 () Bool)

(declare-fun res!1054617 () Bool)

(declare-fun e!855625 () Bool)

(assert (=> b!1537389 (=> (not res!1054617) (not e!855625))))

(declare-datatypes ((array!102093 0))(
  ( (array!102094 (arr!49258 (Array (_ BitVec 32) (_ BitVec 64))) (size!49809 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102093)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537389 (= res!1054617 (validKeyInArray!0 (select (arr!49258 a!2792) i!951)))))

(declare-fun b!1537390 () Bool)

(assert (=> b!1537390 (= e!855625 false)))

(declare-fun lt!664663 () Bool)

(declare-datatypes ((List!35912 0))(
  ( (Nil!35909) (Cons!35908 (h!37354 (_ BitVec 64)) (t!50613 List!35912)) )
))
(declare-fun arrayNoDuplicates!0 (array!102093 (_ BitVec 32) List!35912) Bool)

(assert (=> b!1537390 (= lt!664663 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35909))))

(declare-fun b!1537391 () Bool)

(declare-fun res!1054616 () Bool)

(assert (=> b!1537391 (=> (not res!1054616) (not e!855625))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1537391 (= res!1054616 (and (= (size!49809 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49809 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49809 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537392 () Bool)

(declare-fun res!1054614 () Bool)

(assert (=> b!1537392 (=> (not res!1054614) (not e!855625))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102093 (_ BitVec 32)) Bool)

(assert (=> b!1537392 (= res!1054614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537393 () Bool)

(declare-fun res!1054615 () Bool)

(assert (=> b!1537393 (=> (not res!1054615) (not e!855625))))

(assert (=> b!1537393 (= res!1054615 (validKeyInArray!0 (select (arr!49258 a!2792) j!64)))))

(declare-fun res!1054613 () Bool)

(assert (=> start!131068 (=> (not res!1054613) (not e!855625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131068 (= res!1054613 (validMask!0 mask!2480))))

(assert (=> start!131068 e!855625))

(assert (=> start!131068 true))

(declare-fun array_inv!38203 (array!102093) Bool)

(assert (=> start!131068 (array_inv!38203 a!2792)))

(assert (= (and start!131068 res!1054613) b!1537391))

(assert (= (and b!1537391 res!1054616) b!1537389))

(assert (= (and b!1537389 res!1054617) b!1537393))

(assert (= (and b!1537393 res!1054615) b!1537392))

(assert (= (and b!1537392 res!1054614) b!1537390))

(declare-fun m!1419957 () Bool)

(assert (=> b!1537393 m!1419957))

(assert (=> b!1537393 m!1419957))

(declare-fun m!1419959 () Bool)

(assert (=> b!1537393 m!1419959))

(declare-fun m!1419961 () Bool)

(assert (=> b!1537392 m!1419961))

(declare-fun m!1419963 () Bool)

(assert (=> b!1537390 m!1419963))

(declare-fun m!1419965 () Bool)

(assert (=> b!1537389 m!1419965))

(assert (=> b!1537389 m!1419965))

(declare-fun m!1419967 () Bool)

(assert (=> b!1537389 m!1419967))

(declare-fun m!1419969 () Bool)

(assert (=> start!131068 m!1419969))

(declare-fun m!1419971 () Bool)

(assert (=> start!131068 m!1419971))

(push 1)

(assert (not b!1537390))

(assert (not b!1537393))

(assert (not b!1537392))

(assert (not b!1537389))

(assert (not start!131068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

