; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117102 () Bool)

(assert start!117102)

(declare-fun res!920648 () Bool)

(declare-fun e!780652 () Bool)

(assert (=> start!117102 (=> (not res!920648) (not e!780652))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93635 0))(
  ( (array!93636 (arr!45213 (Array (_ BitVec 32) (_ BitVec 64))) (size!45764 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93635)

(assert (=> start!117102 (= res!920648 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45764 a!4094))))))

(assert (=> start!117102 e!780652))

(assert (=> start!117102 true))

(declare-fun array_inv!34158 (array!93635) Bool)

(assert (=> start!117102 (array_inv!34158 a!4094)))

(declare-fun b!1378004 () Bool)

(declare-fun res!920647 () Bool)

(assert (=> b!1378004 (=> (not res!920647) (not e!780652))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378004 (= res!920647 (validKeyInArray!0 (select (arr!45213 a!4094) i!1451)))))

(declare-fun b!1378005 () Bool)

(declare-fun res!920649 () Bool)

(assert (=> b!1378005 (=> (not res!920649) (not e!780652))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378005 (= res!920649 (not (validKeyInArray!0 k!2953)))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun b!1378006 () Bool)

(assert (=> b!1378006 (= e!780652 (and (bvslt (size!45764 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45764 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117102 res!920648) b!1378004))

(assert (= (and b!1378004 res!920647) b!1378005))

(assert (= (and b!1378005 res!920649) b!1378006))

(declare-fun m!1262509 () Bool)

(assert (=> start!117102 m!1262509))

(declare-fun m!1262511 () Bool)

(assert (=> b!1378004 m!1262511))

(assert (=> b!1378004 m!1262511))

(declare-fun m!1262513 () Bool)

(assert (=> b!1378004 m!1262513))

(declare-fun m!1262515 () Bool)

(assert (=> b!1378005 m!1262515))

(push 1)

(assert (not start!117102))

(assert (not b!1378004))

(assert (not b!1378005))

(check-sat)

(pop 1)

(push 1)

(check-sat)

