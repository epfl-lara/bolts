; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118322 () Bool)

(assert start!118322)

(declare-fun b!1383342 () Bool)

(declare-fun res!925041 () Bool)

(declare-fun e!784079 () Bool)

(assert (=> b!1383342 (=> (not res!925041) (not e!784079))))

(declare-datatypes ((array!94543 0))(
  ( (array!94544 (arr!45645 (Array (_ BitVec 32) (_ BitVec 64))) (size!46196 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94543)

(declare-datatypes ((List!32353 0))(
  ( (Nil!32350) (Cons!32349 (h!33558 (_ BitVec 64)) (t!47054 List!32353)) )
))
(declare-fun arrayNoDuplicates!0 (array!94543 (_ BitVec 32) List!32353) Bool)

(assert (=> b!1383342 (= res!925041 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32350))))

(declare-fun res!925042 () Bool)

(assert (=> start!118322 (=> (not res!925042) (not e!784079))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118322 (= res!925042 (validMask!0 mask!2987))))

(assert (=> start!118322 e!784079))

(assert (=> start!118322 true))

(declare-fun array_inv!34590 (array!94543) Bool)

(assert (=> start!118322 (array_inv!34590 a!2938)))

(declare-fun b!1383341 () Bool)

(declare-fun res!925043 () Bool)

(assert (=> b!1383341 (=> (not res!925043) (not e!784079))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383341 (= res!925043 (validKeyInArray!0 (select (arr!45645 a!2938) i!1065)))))

(declare-fun b!1383343 () Bool)

(assert (=> b!1383343 (= e!784079 false)))

(declare-fun lt!608551 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94543 (_ BitVec 32)) Bool)

(assert (=> b!1383343 (= lt!608551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383340 () Bool)

(declare-fun res!925044 () Bool)

(assert (=> b!1383340 (=> (not res!925044) (not e!784079))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383340 (= res!925044 (and (= (size!46196 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46196 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46196 a!2938))))))

(assert (= (and start!118322 res!925042) b!1383340))

(assert (= (and b!1383340 res!925044) b!1383341))

(assert (= (and b!1383341 res!925043) b!1383342))

(assert (= (and b!1383342 res!925041) b!1383343))

(declare-fun m!1268501 () Bool)

(assert (=> b!1383342 m!1268501))

(declare-fun m!1268503 () Bool)

(assert (=> start!118322 m!1268503))

(declare-fun m!1268505 () Bool)

(assert (=> start!118322 m!1268505))

(declare-fun m!1268507 () Bool)

(assert (=> b!1383341 m!1268507))

(assert (=> b!1383341 m!1268507))

(declare-fun m!1268509 () Bool)

(assert (=> b!1383341 m!1268509))

(declare-fun m!1268511 () Bool)

(assert (=> b!1383343 m!1268511))

(push 1)

(assert (not b!1383343))

(assert (not start!118322))

(assert (not b!1383342))

(assert (not b!1383341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

