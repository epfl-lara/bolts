; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117638 () Bool)

(assert start!117638)

(declare-fun res!922706 () Bool)

(declare-fun e!782479 () Bool)

(assert (=> start!117638 (=> (not res!922706) (not e!782479))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94072 0))(
  ( (array!94073 (arr!45424 (Array (_ BitVec 32) (_ BitVec 64))) (size!45975 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94072)

(assert (=> start!117638 (= res!922706 (and (bvslt (size!45975 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45975 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117638 e!782479))

(declare-fun array_inv!34369 (array!94072) Bool)

(assert (=> start!117638 (array_inv!34369 a!3931)))

(assert (=> start!117638 true))

(declare-fun b!1380663 () Bool)

(declare-fun res!922707 () Bool)

(assert (=> b!1380663 (=> (not res!922707) (not e!782479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380663 (= res!922707 (not (validKeyInArray!0 (select (arr!45424 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380664 () Bool)

(assert (=> b!1380664 (= e!782479 (bvsgt from!3309 to!105))))

(assert (= (and start!117638 res!922706) b!1380663))

(assert (= (and b!1380663 res!922707) b!1380664))

(declare-fun m!1265955 () Bool)

(assert (=> start!117638 m!1265955))

(declare-fun m!1265957 () Bool)

(assert (=> b!1380663 m!1265957))

(assert (=> b!1380663 m!1265957))

(declare-fun m!1265959 () Bool)

(assert (=> b!1380663 m!1265959))

(push 1)

(assert (not b!1380663))

(assert (not start!117638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

