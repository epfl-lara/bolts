; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117528 () Bool)

(assert start!117528)

(declare-fun res!922538 () Bool)

(declare-fun e!782089 () Bool)

(assert (=> start!117528 (=> (not res!922538) (not e!782089))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93995 0))(
  ( (array!93996 (arr!45387 (Array (_ BitVec 32) (_ BitVec 64))) (size!45938 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93995)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117528 (= res!922538 (and (bvslt (size!45938 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45938 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117528 e!782089))

(declare-fun array_inv!34332 (array!93995) Bool)

(assert (=> start!117528 (array_inv!34332 a!3961)))

(assert (=> start!117528 true))

(declare-fun b!1380177 () Bool)

(declare-fun res!922539 () Bool)

(assert (=> b!1380177 (=> (not res!922539) (not e!782089))))

(declare-fun isPivot!0 (array!93995 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380177 (= res!922539 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun b!1380178 () Bool)

(assert (=> b!1380178 (= e!782089 (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) (size!45938 a!3961)))))

(assert (= (and start!117528 res!922538) b!1380177))

(assert (= (and b!1380177 res!922539) b!1380178))

(declare-fun m!1265435 () Bool)

(assert (=> start!117528 m!1265435))

(declare-fun m!1265437 () Bool)

(assert (=> b!1380177 m!1265437))

(push 1)

(assert (not start!117528))

(assert (not b!1380177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

