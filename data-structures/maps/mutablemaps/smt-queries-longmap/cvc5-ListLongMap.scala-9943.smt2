; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117524 () Bool)

(assert start!117524)

(declare-fun res!922526 () Bool)

(declare-fun e!782077 () Bool)

(assert (=> start!117524 (=> (not res!922526) (not e!782077))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93991 0))(
  ( (array!93992 (arr!45385 (Array (_ BitVec 32) (_ BitVec 64))) (size!45936 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93991)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117524 (= res!922526 (and (bvslt (size!45936 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45936 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117524 e!782077))

(declare-fun array_inv!34330 (array!93991) Bool)

(assert (=> start!117524 (array_inv!34330 a!3961)))

(assert (=> start!117524 true))

(declare-fun b!1380165 () Bool)

(declare-fun res!922527 () Bool)

(assert (=> b!1380165 (=> (not res!922527) (not e!782077))))

(declare-fun isPivot!0 (array!93991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380165 (= res!922527 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun b!1380166 () Bool)

(assert (=> b!1380166 (= e!782077 (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) (size!45936 a!3961)))))

(assert (= (and start!117524 res!922526) b!1380165))

(assert (= (and b!1380165 res!922527) b!1380166))

(declare-fun m!1265427 () Bool)

(assert (=> start!117524 m!1265427))

(declare-fun m!1265429 () Bool)

(assert (=> b!1380165 m!1265429))

(push 1)

(assert (not b!1380165))

(assert (not start!117524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

