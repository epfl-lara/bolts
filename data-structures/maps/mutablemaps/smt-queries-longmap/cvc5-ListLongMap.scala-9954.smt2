; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117626 () Bool)

(assert start!117626)

(declare-fun res!922670 () Bool)

(declare-fun e!782443 () Bool)

(assert (=> start!117626 (=> (not res!922670) (not e!782443))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94060 0))(
  ( (array!94061 (arr!45418 (Array (_ BitVec 32) (_ BitVec 64))) (size!45969 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94060)

(assert (=> start!117626 (= res!922670 (and (bvslt (size!45969 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45969 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117626 e!782443))

(declare-fun array_inv!34363 (array!94060) Bool)

(assert (=> start!117626 (array_inv!34363 a!3931)))

(assert (=> start!117626 true))

(declare-fun b!1380627 () Bool)

(declare-fun res!922671 () Bool)

(assert (=> b!1380627 (=> (not res!922671) (not e!782443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380627 (= res!922671 (validKeyInArray!0 (select (arr!45418 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380628 () Bool)

(assert (=> b!1380628 (= e!782443 (bvsgt from!3309 to!105))))

(assert (= (and start!117626 res!922670) b!1380627))

(assert (= (and b!1380627 res!922671) b!1380628))

(declare-fun m!1265919 () Bool)

(assert (=> start!117626 m!1265919))

(declare-fun m!1265921 () Bool)

(assert (=> b!1380627 m!1265921))

(assert (=> b!1380627 m!1265921))

(declare-fun m!1265923 () Bool)

(assert (=> b!1380627 m!1265923))

(push 1)

(assert (not b!1380627))

(assert (not start!117626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

