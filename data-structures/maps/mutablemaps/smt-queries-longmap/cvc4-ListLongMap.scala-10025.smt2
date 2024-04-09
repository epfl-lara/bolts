; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118298 () Bool)

(assert start!118298)

(declare-fun b!1383197 () Bool)

(declare-fun res!924898 () Bool)

(declare-fun e!784006 () Bool)

(assert (=> b!1383197 (=> (not res!924898) (not e!784006))))

(declare-datatypes ((array!94519 0))(
  ( (array!94520 (arr!45633 (Array (_ BitVec 32) (_ BitVec 64))) (size!46184 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94519)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383197 (= res!924898 (validKeyInArray!0 (select (arr!45633 a!2938) i!1065)))))

(declare-fun b!1383199 () Bool)

(assert (=> b!1383199 (= e!784006 false)))

(declare-fun lt!608515 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94519 (_ BitVec 32)) Bool)

(assert (=> b!1383199 (= lt!608515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924897 () Bool)

(assert (=> start!118298 (=> (not res!924897) (not e!784006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118298 (= res!924897 (validMask!0 mask!2987))))

(assert (=> start!118298 e!784006))

(assert (=> start!118298 true))

(declare-fun array_inv!34578 (array!94519) Bool)

(assert (=> start!118298 (array_inv!34578 a!2938)))

(declare-fun b!1383198 () Bool)

(declare-fun res!924899 () Bool)

(assert (=> b!1383198 (=> (not res!924899) (not e!784006))))

(declare-datatypes ((List!32341 0))(
  ( (Nil!32338) (Cons!32337 (h!33546 (_ BitVec 64)) (t!47042 List!32341)) )
))
(declare-fun arrayNoDuplicates!0 (array!94519 (_ BitVec 32) List!32341) Bool)

(assert (=> b!1383198 (= res!924899 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32338))))

(declare-fun b!1383196 () Bool)

(declare-fun res!924900 () Bool)

(assert (=> b!1383196 (=> (not res!924900) (not e!784006))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383196 (= res!924900 (and (= (size!46184 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46184 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46184 a!2938))))))

(assert (= (and start!118298 res!924897) b!1383196))

(assert (= (and b!1383196 res!924900) b!1383197))

(assert (= (and b!1383197 res!924898) b!1383198))

(assert (= (and b!1383198 res!924899) b!1383199))

(declare-fun m!1268357 () Bool)

(assert (=> b!1383197 m!1268357))

(assert (=> b!1383197 m!1268357))

(declare-fun m!1268359 () Bool)

(assert (=> b!1383197 m!1268359))

(declare-fun m!1268361 () Bool)

(assert (=> b!1383199 m!1268361))

(declare-fun m!1268363 () Bool)

(assert (=> start!118298 m!1268363))

(declare-fun m!1268365 () Bool)

(assert (=> start!118298 m!1268365))

(declare-fun m!1268367 () Bool)

(assert (=> b!1383198 m!1268367))

(push 1)

(assert (not b!1383199))

(assert (not b!1383197))

(assert (not start!118298))

(assert (not b!1383198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

