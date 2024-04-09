; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118532 () Bool)

(assert start!118532)

(declare-fun b!1385456 () Bool)

(declare-fun res!926817 () Bool)

(declare-fun e!785023 () Bool)

(assert (=> b!1385456 (=> (not res!926817) (not e!785023))))

(declare-datatypes ((array!94726 0))(
  ( (array!94727 (arr!45735 (Array (_ BitVec 32) (_ BitVec 64))) (size!46286 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94726)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385456 (= res!926817 (validKeyInArray!0 (select (arr!45735 a!2938) i!1065)))))

(declare-fun b!1385458 () Bool)

(assert (=> b!1385458 (= e!785023 false)))

(declare-fun lt!609208 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94726 (_ BitVec 32)) Bool)

(assert (=> b!1385458 (= lt!609208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385457 () Bool)

(declare-fun res!926815 () Bool)

(assert (=> b!1385457 (=> (not res!926815) (not e!785023))))

(declare-datatypes ((List!32443 0))(
  ( (Nil!32440) (Cons!32439 (h!33648 (_ BitVec 64)) (t!47144 List!32443)) )
))
(declare-fun arrayNoDuplicates!0 (array!94726 (_ BitVec 32) List!32443) Bool)

(assert (=> b!1385457 (= res!926815 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32440))))

(declare-fun b!1385455 () Bool)

(declare-fun res!926814 () Bool)

(assert (=> b!1385455 (=> (not res!926814) (not e!785023))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385455 (= res!926814 (and (= (size!46286 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46286 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46286 a!2938))))))

(declare-fun res!926816 () Bool)

(assert (=> start!118532 (=> (not res!926816) (not e!785023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118532 (= res!926816 (validMask!0 mask!2987))))

(assert (=> start!118532 e!785023))

(assert (=> start!118532 true))

(declare-fun array_inv!34680 (array!94726) Bool)

(assert (=> start!118532 (array_inv!34680 a!2938)))

(assert (= (and start!118532 res!926816) b!1385455))

(assert (= (and b!1385455 res!926814) b!1385456))

(assert (= (and b!1385456 res!926817) b!1385457))

(assert (= (and b!1385457 res!926815) b!1385458))

(declare-fun m!1270805 () Bool)

(assert (=> b!1385456 m!1270805))

(assert (=> b!1385456 m!1270805))

(declare-fun m!1270807 () Bool)

(assert (=> b!1385456 m!1270807))

(declare-fun m!1270809 () Bool)

(assert (=> b!1385458 m!1270809))

(declare-fun m!1270811 () Bool)

(assert (=> b!1385457 m!1270811))

(declare-fun m!1270813 () Bool)

(assert (=> start!118532 m!1270813))

(declare-fun m!1270815 () Bool)

(assert (=> start!118532 m!1270815))

(push 1)

(assert (not b!1385456))

(assert (not start!118532))

(assert (not b!1385457))

(assert (not b!1385458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

