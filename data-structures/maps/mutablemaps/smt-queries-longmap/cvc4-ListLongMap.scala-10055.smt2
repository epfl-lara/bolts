; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118508 () Bool)

(assert start!118508)

(declare-fun b!1385311 () Bool)

(declare-fun res!926672 () Bool)

(declare-fun e!784952 () Bool)

(assert (=> b!1385311 (=> (not res!926672) (not e!784952))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94702 0))(
  ( (array!94703 (arr!45723 (Array (_ BitVec 32) (_ BitVec 64))) (size!46274 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94702)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385311 (= res!926672 (and (= (size!46274 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46274 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46274 a!2938))))))

(declare-fun b!1385313 () Bool)

(declare-fun res!926673 () Bool)

(assert (=> b!1385313 (=> (not res!926673) (not e!784952))))

(declare-datatypes ((List!32431 0))(
  ( (Nil!32428) (Cons!32427 (h!33636 (_ BitVec 64)) (t!47132 List!32431)) )
))
(declare-fun arrayNoDuplicates!0 (array!94702 (_ BitVec 32) List!32431) Bool)

(assert (=> b!1385313 (= res!926673 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32428))))

(declare-fun b!1385314 () Bool)

(assert (=> b!1385314 (= e!784952 false)))

(declare-fun lt!609172 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94702 (_ BitVec 32)) Bool)

(assert (=> b!1385314 (= lt!609172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385312 () Bool)

(declare-fun res!926670 () Bool)

(assert (=> b!1385312 (=> (not res!926670) (not e!784952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385312 (= res!926670 (validKeyInArray!0 (select (arr!45723 a!2938) i!1065)))))

(declare-fun res!926671 () Bool)

(assert (=> start!118508 (=> (not res!926671) (not e!784952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118508 (= res!926671 (validMask!0 mask!2987))))

(assert (=> start!118508 e!784952))

(assert (=> start!118508 true))

(declare-fun array_inv!34668 (array!94702) Bool)

(assert (=> start!118508 (array_inv!34668 a!2938)))

(assert (= (and start!118508 res!926671) b!1385311))

(assert (= (and b!1385311 res!926672) b!1385312))

(assert (= (and b!1385312 res!926670) b!1385313))

(assert (= (and b!1385313 res!926673) b!1385314))

(declare-fun m!1270661 () Bool)

(assert (=> b!1385313 m!1270661))

(declare-fun m!1270663 () Bool)

(assert (=> b!1385314 m!1270663))

(declare-fun m!1270665 () Bool)

(assert (=> b!1385312 m!1270665))

(assert (=> b!1385312 m!1270665))

(declare-fun m!1270667 () Bool)

(assert (=> b!1385312 m!1270667))

(declare-fun m!1270669 () Bool)

(assert (=> start!118508 m!1270669))

(declare-fun m!1270671 () Bool)

(assert (=> start!118508 m!1270671))

(push 1)

(assert (not b!1385312))

(assert (not b!1385314))

(assert (not start!118508))

(assert (not b!1385313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

