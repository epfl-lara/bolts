; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117642 () Bool)

(assert start!117642)

(declare-fun res!922718 () Bool)

(declare-fun e!782491 () Bool)

(assert (=> start!117642 (=> (not res!922718) (not e!782491))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94076 0))(
  ( (array!94077 (arr!45426 (Array (_ BitVec 32) (_ BitVec 64))) (size!45977 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94076)

(assert (=> start!117642 (= res!922718 (and (bvslt (size!45977 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45977 a!3931)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105)))))

(assert (=> start!117642 e!782491))

(declare-fun array_inv!34371 (array!94076) Bool)

(assert (=> start!117642 (array_inv!34371 a!3931)))

(assert (=> start!117642 true))

(declare-fun b!1380675 () Bool)

(declare-fun res!922719 () Bool)

(assert (=> b!1380675 (=> (not res!922719) (not e!782491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380675 (= res!922719 (not (validKeyInArray!0 (select (arr!45426 a!3931) (bvsub to!105 #b00000000000000000000000000000001)))))))

(declare-fun b!1380676 () Bool)

(assert (=> b!1380676 (= e!782491 (bvsgt from!3309 to!105))))

(assert (= (and start!117642 res!922718) b!1380675))

(assert (= (and b!1380675 res!922719) b!1380676))

(declare-fun m!1265967 () Bool)

(assert (=> start!117642 m!1265967))

(declare-fun m!1265969 () Bool)

(assert (=> b!1380675 m!1265969))

(assert (=> b!1380675 m!1265969))

(declare-fun m!1265971 () Bool)

(assert (=> b!1380675 m!1265971))

(push 1)

(assert (not start!117642))

(assert (not b!1380675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

