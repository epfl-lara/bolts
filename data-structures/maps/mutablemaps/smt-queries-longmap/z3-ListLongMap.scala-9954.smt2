; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117628 () Bool)

(assert start!117628)

(declare-fun res!922676 () Bool)

(declare-fun e!782449 () Bool)

(assert (=> start!117628 (=> (not res!922676) (not e!782449))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94062 0))(
  ( (array!94063 (arr!45419 (Array (_ BitVec 32) (_ BitVec 64))) (size!45970 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94062)

(assert (=> start!117628 (= res!922676 (and (bvslt (size!45970 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45970 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117628 e!782449))

(declare-fun array_inv!34364 (array!94062) Bool)

(assert (=> start!117628 (array_inv!34364 a!3931)))

(assert (=> start!117628 true))

(declare-fun b!1380633 () Bool)

(declare-fun res!922677 () Bool)

(assert (=> b!1380633 (=> (not res!922677) (not e!782449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380633 (= res!922677 (validKeyInArray!0 (select (arr!45419 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380634 () Bool)

(assert (=> b!1380634 (= e!782449 (bvsgt from!3309 to!105))))

(assert (= (and start!117628 res!922676) b!1380633))

(assert (= (and b!1380633 res!922677) b!1380634))

(declare-fun m!1265925 () Bool)

(assert (=> start!117628 m!1265925))

(declare-fun m!1265927 () Bool)

(assert (=> b!1380633 m!1265927))

(assert (=> b!1380633 m!1265927))

(declare-fun m!1265929 () Bool)

(assert (=> b!1380633 m!1265929))

(check-sat (not start!117628) (not b!1380633))
(check-sat)
