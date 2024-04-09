; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117512 () Bool)

(assert start!117512)

(declare-fun res!922488 () Bool)

(declare-fun e!782032 () Bool)

(assert (=> start!117512 (=> (not res!922488) (not e!782032))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93979 0))(
  ( (array!93980 (arr!45379 (Array (_ BitVec 32) (_ BitVec 64))) (size!45930 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93979)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117512 (= res!922488 (and (bvslt (size!45930 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45930 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117512 e!782032))

(declare-fun array_inv!34324 (array!93979) Bool)

(assert (=> start!117512 (array_inv!34324 a!3961)))

(assert (=> start!117512 true))

(declare-fun b!1380109 () Bool)

(assert (=> b!1380109 (= e!782032 false)))

(declare-fun lt!607825 () Bool)

(declare-fun isPivot!0 (array!93979 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380109 (= lt!607825 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(assert (= (and start!117512 res!922488) b!1380109))

(declare-fun m!1265373 () Bool)

(assert (=> start!117512 m!1265373))

(declare-fun m!1265375 () Bool)

(assert (=> b!1380109 m!1265375))

(push 1)

(assert (not b!1380109))

(assert (not start!117512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

