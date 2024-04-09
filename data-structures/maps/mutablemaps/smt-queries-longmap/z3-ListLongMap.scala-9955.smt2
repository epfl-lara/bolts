; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117634 () Bool)

(assert start!117634)

(declare-fun res!922694 () Bool)

(declare-fun e!782467 () Bool)

(assert (=> start!117634 (=> (not res!922694) (not e!782467))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94068 0))(
  ( (array!94069 (arr!45422 (Array (_ BitVec 32) (_ BitVec 64))) (size!45973 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94068)

(assert (=> start!117634 (= res!922694 (and (bvslt (size!45973 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45973 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117634 e!782467))

(declare-fun array_inv!34367 (array!94068) Bool)

(assert (=> start!117634 (array_inv!34367 a!3931)))

(assert (=> start!117634 true))

(declare-fun b!1380651 () Bool)

(declare-fun res!922695 () Bool)

(assert (=> b!1380651 (=> (not res!922695) (not e!782467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380651 (= res!922695 (not (validKeyInArray!0 (select (arr!45422 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380652 () Bool)

(assert (=> b!1380652 (= e!782467 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45973 a!3931)))))

(assert (= (and start!117634 res!922694) b!1380651))

(assert (= (and b!1380651 res!922695) b!1380652))

(declare-fun m!1265943 () Bool)

(assert (=> start!117634 m!1265943))

(declare-fun m!1265945 () Bool)

(assert (=> b!1380651 m!1265945))

(assert (=> b!1380651 m!1265945))

(declare-fun m!1265947 () Bool)

(assert (=> b!1380651 m!1265947))

(check-sat (not start!117634) (not b!1380651))
(check-sat)
