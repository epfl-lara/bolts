; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117630 () Bool)

(assert start!117630)

(declare-fun res!922682 () Bool)

(declare-fun e!782455 () Bool)

(assert (=> start!117630 (=> (not res!922682) (not e!782455))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94064 0))(
  ( (array!94065 (arr!45420 (Array (_ BitVec 32) (_ BitVec 64))) (size!45971 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94064)

(assert (=> start!117630 (= res!922682 (and (bvslt (size!45971 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45971 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117630 e!782455))

(declare-fun array_inv!34365 (array!94064) Bool)

(assert (=> start!117630 (array_inv!34365 a!3931)))

(assert (=> start!117630 true))

(declare-fun b!1380639 () Bool)

(declare-fun res!922683 () Bool)

(assert (=> b!1380639 (=> (not res!922683) (not e!782455))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380639 (= res!922683 (validKeyInArray!0 (select (arr!45420 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380640 () Bool)

(assert (=> b!1380640 (= e!782455 (bvsgt from!3309 to!105))))

(assert (= (and start!117630 res!922682) b!1380639))

(assert (= (and b!1380639 res!922683) b!1380640))

(declare-fun m!1265931 () Bool)

(assert (=> start!117630 m!1265931))

(declare-fun m!1265933 () Bool)

(assert (=> b!1380639 m!1265933))

(assert (=> b!1380639 m!1265933))

(declare-fun m!1265935 () Bool)

(assert (=> b!1380639 m!1265935))

(push 1)

(assert (not b!1380639))

(assert (not start!117630))

(check-sat)

(pop 1)

(push 1)

(check-sat)

