; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117636 () Bool)

(assert start!117636)

(declare-fun res!922700 () Bool)

(declare-fun e!782473 () Bool)

(assert (=> start!117636 (=> (not res!922700) (not e!782473))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94070 0))(
  ( (array!94071 (arr!45423 (Array (_ BitVec 32) (_ BitVec 64))) (size!45974 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94070)

(assert (=> start!117636 (= res!922700 (and (bvslt (size!45974 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45974 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117636 e!782473))

(declare-fun array_inv!34368 (array!94070) Bool)

(assert (=> start!117636 (array_inv!34368 a!3931)))

(assert (=> start!117636 true))

(declare-fun b!1380657 () Bool)

(declare-fun res!922701 () Bool)

(assert (=> b!1380657 (=> (not res!922701) (not e!782473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380657 (= res!922701 (not (validKeyInArray!0 (select (arr!45423 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380658 () Bool)

(assert (=> b!1380658 (= e!782473 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45974 a!3931)))))

(assert (= (and start!117636 res!922700) b!1380657))

(assert (= (and b!1380657 res!922701) b!1380658))

(declare-fun m!1265949 () Bool)

(assert (=> start!117636 m!1265949))

(declare-fun m!1265951 () Bool)

(assert (=> b!1380657 m!1265951))

(assert (=> b!1380657 m!1265951))

(declare-fun m!1265953 () Bool)

(assert (=> b!1380657 m!1265953))

(push 1)

(assert (not b!1380657))

(assert (not start!117636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

