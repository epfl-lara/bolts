; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118310 () Bool)

(assert start!118310)

(declare-fun res!924971 () Bool)

(declare-fun e!784042 () Bool)

(assert (=> start!118310 (=> (not res!924971) (not e!784042))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118310 (= res!924971 (validMask!0 mask!2987))))

(assert (=> start!118310 e!784042))

(assert (=> start!118310 true))

(declare-datatypes ((array!94531 0))(
  ( (array!94532 (arr!45639 (Array (_ BitVec 32) (_ BitVec 64))) (size!46190 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94531)

(declare-fun array_inv!34584 (array!94531) Bool)

(assert (=> start!118310 (array_inv!34584 a!2938)))

(declare-fun b!1383271 () Bool)

(assert (=> b!1383271 (= e!784042 false)))

(declare-fun lt!608533 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94531 (_ BitVec 32)) Bool)

(assert (=> b!1383271 (= lt!608533 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383269 () Bool)

(declare-fun res!924969 () Bool)

(assert (=> b!1383269 (=> (not res!924969) (not e!784042))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383269 (= res!924969 (validKeyInArray!0 (select (arr!45639 a!2938) i!1065)))))

(declare-fun b!1383268 () Bool)

(declare-fun res!924970 () Bool)

(assert (=> b!1383268 (=> (not res!924970) (not e!784042))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383268 (= res!924970 (and (= (size!46190 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46190 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46190 a!2938))))))

(declare-fun b!1383270 () Bool)

(declare-fun res!924972 () Bool)

(assert (=> b!1383270 (=> (not res!924972) (not e!784042))))

(declare-datatypes ((List!32347 0))(
  ( (Nil!32344) (Cons!32343 (h!33552 (_ BitVec 64)) (t!47048 List!32347)) )
))
(declare-fun arrayNoDuplicates!0 (array!94531 (_ BitVec 32) List!32347) Bool)

(assert (=> b!1383270 (= res!924972 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32344))))

(assert (= (and start!118310 res!924971) b!1383268))

(assert (= (and b!1383268 res!924970) b!1383269))

(assert (= (and b!1383269 res!924969) b!1383270))

(assert (= (and b!1383270 res!924972) b!1383271))

(declare-fun m!1268429 () Bool)

(assert (=> start!118310 m!1268429))

(declare-fun m!1268431 () Bool)

(assert (=> start!118310 m!1268431))

(declare-fun m!1268433 () Bool)

(assert (=> b!1383271 m!1268433))

(declare-fun m!1268435 () Bool)

(assert (=> b!1383269 m!1268435))

(assert (=> b!1383269 m!1268435))

(declare-fun m!1268437 () Bool)

(assert (=> b!1383269 m!1268437))

(declare-fun m!1268439 () Bool)

(assert (=> b!1383270 m!1268439))

(push 1)

(assert (not b!1383269))

(assert (not b!1383271))

(assert (not start!118310))

(assert (not b!1383270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

