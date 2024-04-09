; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117478 () Bool)

(assert start!117478)

(declare-fun res!922361 () Bool)

(declare-fun e!781930 () Bool)

(assert (=> start!117478 (=> (not res!922361) (not e!781930))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93945 0))(
  ( (array!93946 (arr!45362 (Array (_ BitVec 32) (_ BitVec 64))) (size!45913 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93945)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117478 (= res!922361 (and (bvslt (size!45913 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45913 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117478 e!781930))

(assert (=> start!117478 true))

(declare-fun array_inv!34307 (array!93945) Bool)

(assert (=> start!117478 (array_inv!34307 a!3985)))

(declare-fun b!1379982 () Bool)

(declare-fun res!922362 () Bool)

(assert (=> b!1379982 (=> (not res!922362) (not e!781930))))

(declare-fun isPivot!0 (array!93945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379982 (= res!922362 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379983 () Bool)

(assert (=> b!1379983 (= e!781930 (and (not (= knownPivot!5 pivot!40)) (or (bvsle to!159 from!3363) (bvsge knownPivot!5 (bvsub to!159 #b00000000000000000000000000000001)))))))

(assert (= (and start!117478 res!922361) b!1379982))

(assert (= (and b!1379982 res!922362) b!1379983))

(declare-fun m!1265257 () Bool)

(assert (=> start!117478 m!1265257))

(declare-fun m!1265259 () Bool)

(assert (=> b!1379982 m!1265259))

(check-sat (not b!1379982) (not start!117478))
(check-sat)
