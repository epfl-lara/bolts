; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118540 () Bool)

(assert start!118540)

(declare-fun b!1385506 () Bool)

(declare-fun e!785047 () Bool)

(assert (=> b!1385506 (= e!785047 false)))

(declare-fun lt!609220 () Bool)

(declare-datatypes ((array!94734 0))(
  ( (array!94735 (arr!45739 (Array (_ BitVec 32) (_ BitVec 64))) (size!46290 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94734)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94734 (_ BitVec 32)) Bool)

(assert (=> b!1385506 (= lt!609220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385503 () Bool)

(declare-fun res!926863 () Bool)

(assert (=> b!1385503 (=> (not res!926863) (not e!785047))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385503 (= res!926863 (and (= (size!46290 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46290 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46290 a!2938))))))

(declare-fun res!926862 () Bool)

(assert (=> start!118540 (=> (not res!926862) (not e!785047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118540 (= res!926862 (validMask!0 mask!2987))))

(assert (=> start!118540 e!785047))

(assert (=> start!118540 true))

(declare-fun array_inv!34684 (array!94734) Bool)

(assert (=> start!118540 (array_inv!34684 a!2938)))

(declare-fun b!1385504 () Bool)

(declare-fun res!926865 () Bool)

(assert (=> b!1385504 (=> (not res!926865) (not e!785047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385504 (= res!926865 (validKeyInArray!0 (select (arr!45739 a!2938) i!1065)))))

(declare-fun b!1385505 () Bool)

(declare-fun res!926864 () Bool)

(assert (=> b!1385505 (=> (not res!926864) (not e!785047))))

(declare-datatypes ((List!32447 0))(
  ( (Nil!32444) (Cons!32443 (h!33652 (_ BitVec 64)) (t!47148 List!32447)) )
))
(declare-fun arrayNoDuplicates!0 (array!94734 (_ BitVec 32) List!32447) Bool)

(assert (=> b!1385505 (= res!926864 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32444))))

(assert (= (and start!118540 res!926862) b!1385503))

(assert (= (and b!1385503 res!926863) b!1385504))

(assert (= (and b!1385504 res!926865) b!1385505))

(assert (= (and b!1385505 res!926864) b!1385506))

(declare-fun m!1270853 () Bool)

(assert (=> b!1385506 m!1270853))

(declare-fun m!1270855 () Bool)

(assert (=> start!118540 m!1270855))

(declare-fun m!1270857 () Bool)

(assert (=> start!118540 m!1270857))

(declare-fun m!1270859 () Bool)

(assert (=> b!1385504 m!1270859))

(assert (=> b!1385504 m!1270859))

(declare-fun m!1270861 () Bool)

(assert (=> b!1385504 m!1270861))

(declare-fun m!1270863 () Bool)

(assert (=> b!1385505 m!1270863))

(push 1)

(assert (not b!1385504))

(assert (not start!118540))

(assert (not b!1385505))

(assert (not b!1385506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

