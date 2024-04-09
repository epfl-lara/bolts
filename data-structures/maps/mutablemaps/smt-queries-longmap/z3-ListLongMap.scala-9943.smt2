; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117526 () Bool)

(assert start!117526)

(declare-fun res!922532 () Bool)

(declare-fun e!782083 () Bool)

(assert (=> start!117526 (=> (not res!922532) (not e!782083))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93993 0))(
  ( (array!93994 (arr!45386 (Array (_ BitVec 32) (_ BitVec 64))) (size!45937 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93993)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117526 (= res!922532 (and (bvslt (size!45937 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45937 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117526 e!782083))

(declare-fun array_inv!34331 (array!93993) Bool)

(assert (=> start!117526 (array_inv!34331 a!3961)))

(assert (=> start!117526 true))

(declare-fun b!1380171 () Bool)

(declare-fun res!922533 () Bool)

(assert (=> b!1380171 (=> (not res!922533) (not e!782083))))

(declare-fun isPivot!0 (array!93993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380171 (= res!922533 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun b!1380172 () Bool)

(assert (=> b!1380172 (= e!782083 (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) (size!45937 a!3961)))))

(assert (= (and start!117526 res!922532) b!1380171))

(assert (= (and b!1380171 res!922533) b!1380172))

(declare-fun m!1265431 () Bool)

(assert (=> start!117526 m!1265431))

(declare-fun m!1265433 () Bool)

(assert (=> b!1380171 m!1265433))

(check-sat (not start!117526) (not b!1380171))
(check-sat)
