; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36088 () Bool)

(assert start!36088)

(declare-fun res!201453 () Bool)

(declare-fun e!221719 () Bool)

(assert (=> start!36088 (=> (not res!201453) (not e!221719))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20381 0))(
  ( (array!20382 (arr!9671 (Array (_ BitVec 32) (_ BitVec 64))) (size!10023 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20381)

(assert (=> start!36088 (= res!201453 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10023 a!4392))))))

(assert (=> start!36088 e!221719))

(assert (=> start!36088 true))

(declare-fun array_inv!7109 (array!20381) Bool)

(assert (=> start!36088 (array_inv!7109 a!4392)))

(declare-fun b!361962 () Bool)

(declare-fun res!201454 () Bool)

(assert (=> b!361962 (=> (not res!201454) (not e!221719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361962 (= res!201454 (validKeyInArray!0 (select (arr!9671 a!4392) i!1487)))))

(declare-fun b!361963 () Bool)

(assert (=> b!361963 (= e!221719 (and (bvslt (size!10023 a!4392) #b01111111111111111111111111111111) (bvsgt i!1487 (bvadd #b00000000000000000000000000000001 i!1487))))))

(assert (= (and start!36088 res!201453) b!361962))

(assert (= (and b!361962 res!201454) b!361963))

(declare-fun m!358543 () Bool)

(assert (=> start!36088 m!358543))

(declare-fun m!358545 () Bool)

(assert (=> b!361962 m!358545))

(assert (=> b!361962 m!358545))

(declare-fun m!358547 () Bool)

(assert (=> b!361962 m!358547))

(check-sat (not start!36088) (not b!361962))
(check-sat)
