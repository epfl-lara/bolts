; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117624 () Bool)

(assert start!117624)

(declare-fun res!922664 () Bool)

(declare-fun e!782437 () Bool)

(assert (=> start!117624 (=> (not res!922664) (not e!782437))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94058 0))(
  ( (array!94059 (arr!45417 (Array (_ BitVec 32) (_ BitVec 64))) (size!45968 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94058)

(assert (=> start!117624 (= res!922664 (and (bvslt (size!45968 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45968 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117624 e!782437))

(declare-fun array_inv!34362 (array!94058) Bool)

(assert (=> start!117624 (array_inv!34362 a!3931)))

(assert (=> start!117624 true))

(declare-fun b!1380621 () Bool)

(declare-fun res!922665 () Bool)

(assert (=> b!1380621 (=> (not res!922665) (not e!782437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380621 (= res!922665 (validKeyInArray!0 (select (arr!45417 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun b!1380622 () Bool)

(assert (=> b!1380622 (= e!782437 (bvsgt (bvsub to!105 #b00000000000000000000000000000001) (size!45968 a!3931)))))

(assert (= (and start!117624 res!922664) b!1380621))

(assert (= (and b!1380621 res!922665) b!1380622))

(declare-fun m!1265913 () Bool)

(assert (=> start!117624 m!1265913))

(declare-fun m!1265915 () Bool)

(assert (=> b!1380621 m!1265915))

(assert (=> b!1380621 m!1265915))

(declare-fun m!1265917 () Bool)

(assert (=> b!1380621 m!1265917))

(push 1)

(assert (not start!117624))

(assert (not b!1380621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

