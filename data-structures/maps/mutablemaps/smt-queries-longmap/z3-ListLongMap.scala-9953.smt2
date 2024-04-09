; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117622 () Bool)

(assert start!117622)

(declare-fun res!922658 () Bool)

(declare-fun e!782431 () Bool)

(assert (=> start!117622 (=> (not res!922658) (not e!782431))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94056 0))(
  ( (array!94057 (arr!45416 (Array (_ BitVec 32) (_ BitVec 64))) (size!45967 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94056)

(assert (=> start!117622 (= res!922658 (and (bvslt (size!45967 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45967 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117622 e!782431))

(declare-fun array_inv!34361 (array!94056) Bool)

(assert (=> start!117622 (array_inv!34361 a!3931)))

(assert (=> start!117622 true))

(declare-fun b!1380615 () Bool)

(declare-fun res!922659 () Bool)

(assert (=> b!1380615 (=> (not res!922659) (not e!782431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380615 (= res!922659 (validKeyInArray!0 (select (arr!45416 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380616 () Bool)

(assert (=> b!1380616 (= e!782431 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45967 a!3931)))))

(assert (= (and start!117622 res!922658) b!1380615))

(assert (= (and b!1380615 res!922659) b!1380616))

(declare-fun m!1265907 () Bool)

(assert (=> start!117622 m!1265907))

(declare-fun m!1265909 () Bool)

(assert (=> b!1380615 m!1265909))

(assert (=> b!1380615 m!1265909))

(declare-fun m!1265911 () Bool)

(assert (=> b!1380615 m!1265911))

(check-sat (not b!1380615) (not start!117622))
(check-sat)
