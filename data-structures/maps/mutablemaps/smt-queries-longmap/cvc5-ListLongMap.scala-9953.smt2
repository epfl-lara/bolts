; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117620 () Bool)

(assert start!117620)

(declare-fun res!922652 () Bool)

(declare-fun e!782425 () Bool)

(assert (=> start!117620 (=> (not res!922652) (not e!782425))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94054 0))(
  ( (array!94055 (arr!45415 (Array (_ BitVec 32) (_ BitVec 64))) (size!45966 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94054)

(assert (=> start!117620 (= res!922652 (and (bvslt (size!45966 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45966 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117620 e!782425))

(declare-fun array_inv!34360 (array!94054) Bool)

(assert (=> start!117620 (array_inv!34360 a!3931)))

(assert (=> start!117620 true))

(declare-fun b!1380609 () Bool)

(declare-fun res!922653 () Bool)

(assert (=> b!1380609 (=> (not res!922653) (not e!782425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380609 (= res!922653 (validKeyInArray!0 (select (arr!45415 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380610 () Bool)

(assert (=> b!1380610 (= e!782425 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45966 a!3931)))))

(assert (= (and start!117620 res!922652) b!1380609))

(assert (= (and b!1380609 res!922653) b!1380610))

(declare-fun m!1265901 () Bool)

(assert (=> start!117620 m!1265901))

(declare-fun m!1265903 () Bool)

(assert (=> b!1380609 m!1265903))

(assert (=> b!1380609 m!1265903))

(declare-fun m!1265905 () Bool)

(assert (=> b!1380609 m!1265905))

(push 1)

(assert (not b!1380609))

(assert (not start!117620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

