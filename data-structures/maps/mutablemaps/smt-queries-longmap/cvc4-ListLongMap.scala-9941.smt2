; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117516 () Bool)

(assert start!117516)

(declare-fun res!922494 () Bool)

(declare-fun e!782044 () Bool)

(assert (=> start!117516 (=> (not res!922494) (not e!782044))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93983 0))(
  ( (array!93984 (arr!45381 (Array (_ BitVec 32) (_ BitVec 64))) (size!45932 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93983)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117516 (= res!922494 (and (bvslt (size!45932 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45932 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117516 e!782044))

(declare-fun array_inv!34326 (array!93983) Bool)

(assert (=> start!117516 (array_inv!34326 a!3961)))

(assert (=> start!117516 true))

(declare-fun b!1380115 () Bool)

(assert (=> b!1380115 (= e!782044 false)))

(declare-fun lt!607831 () Bool)

(declare-fun isPivot!0 (array!93983 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380115 (= lt!607831 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(assert (= (and start!117516 res!922494) b!1380115))

(declare-fun m!1265381 () Bool)

(assert (=> start!117516 m!1265381))

(declare-fun m!1265383 () Bool)

(assert (=> b!1380115 m!1265383))

(push 1)

(assert (not b!1380115))

(assert (not start!117516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

