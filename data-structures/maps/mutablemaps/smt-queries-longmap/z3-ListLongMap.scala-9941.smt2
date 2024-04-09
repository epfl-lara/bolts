; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117514 () Bool)

(assert start!117514)

(declare-fun res!922491 () Bool)

(declare-fun e!782038 () Bool)

(assert (=> start!117514 (=> (not res!922491) (not e!782038))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93981 0))(
  ( (array!93982 (arr!45380 (Array (_ BitVec 32) (_ BitVec 64))) (size!45931 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93981)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117514 (= res!922491 (and (bvslt (size!45931 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45931 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117514 e!782038))

(declare-fun array_inv!34325 (array!93981) Bool)

(assert (=> start!117514 (array_inv!34325 a!3961)))

(assert (=> start!117514 true))

(declare-fun b!1380112 () Bool)

(assert (=> b!1380112 (= e!782038 false)))

(declare-fun lt!607828 () Bool)

(declare-fun isPivot!0 (array!93981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380112 (= lt!607828 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(assert (= (and start!117514 res!922491) b!1380112))

(declare-fun m!1265377 () Bool)

(assert (=> start!117514 m!1265377))

(declare-fun m!1265379 () Bool)

(assert (=> b!1380112 m!1265379))

(check-sat (not b!1380112) (not start!117514))
