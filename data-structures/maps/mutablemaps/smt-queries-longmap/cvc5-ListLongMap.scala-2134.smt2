; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36086 () Bool)

(assert start!36086)

(declare-fun res!201447 () Bool)

(declare-fun e!221713 () Bool)

(assert (=> start!36086 (=> (not res!201447) (not e!221713))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20379 0))(
  ( (array!20380 (arr!9670 (Array (_ BitVec 32) (_ BitVec 64))) (size!10022 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20379)

(assert (=> start!36086 (= res!201447 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10022 a!4392))))))

(assert (=> start!36086 e!221713))

(assert (=> start!36086 true))

(declare-fun array_inv!7108 (array!20379) Bool)

(assert (=> start!36086 (array_inv!7108 a!4392)))

(declare-fun b!361956 () Bool)

(declare-fun res!201448 () Bool)

(assert (=> b!361956 (=> (not res!201448) (not e!221713))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361956 (= res!201448 (validKeyInArray!0 (select (arr!9670 a!4392) i!1487)))))

(declare-fun b!361957 () Bool)

(assert (=> b!361957 (= e!221713 (and (bvslt (size!10022 a!4392) #b01111111111111111111111111111111) (bvsgt i!1487 (bvadd #b00000000000000000000000000000001 i!1487))))))

(assert (= (and start!36086 res!201447) b!361956))

(assert (= (and b!361956 res!201448) b!361957))

(declare-fun m!358537 () Bool)

(assert (=> start!36086 m!358537))

(declare-fun m!358539 () Bool)

(assert (=> b!361956 m!358539))

(assert (=> b!361956 m!358539))

(declare-fun m!358541 () Bool)

(assert (=> b!361956 m!358541))

(push 1)

(assert (not b!361956))

(assert (not start!36086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

