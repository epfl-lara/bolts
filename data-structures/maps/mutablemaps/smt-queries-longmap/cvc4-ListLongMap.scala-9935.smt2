; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117480 () Bool)

(assert start!117480)

(declare-fun res!922367 () Bool)

(declare-fun e!781936 () Bool)

(assert (=> start!117480 (=> (not res!922367) (not e!781936))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93947 0))(
  ( (array!93948 (arr!45363 (Array (_ BitVec 32) (_ BitVec 64))) (size!45914 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93947)

(declare-fun to!159 () (_ BitVec 32))

(declare-fun from!3363 () (_ BitVec 32))

(assert (=> start!117480 (= res!922367 (and (bvslt (size!45914 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45914 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117480 e!781936))

(assert (=> start!117480 true))

(declare-fun array_inv!34308 (array!93947) Bool)

(assert (=> start!117480 (array_inv!34308 a!3985)))

(declare-fun b!1379988 () Bool)

(declare-fun res!922368 () Bool)

(assert (=> b!1379988 (=> (not res!922368) (not e!781936))))

(declare-fun isPivot!0 (array!93947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379988 (= res!922368 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1379989 () Bool)

(assert (=> b!1379989 (= e!781936 (and (not (= knownPivot!5 pivot!40)) (or (bvsle to!159 from!3363) (bvsge knownPivot!5 (bvsub to!159 #b00000000000000000000000000000001)))))))

(assert (= (and start!117480 res!922367) b!1379988))

(assert (= (and b!1379988 res!922368) b!1379989))

(declare-fun m!1265261 () Bool)

(assert (=> start!117480 m!1265261))

(declare-fun m!1265263 () Bool)

(assert (=> b!1379988 m!1265263))

(push 1)

(assert (not start!117480))

(assert (not b!1379988))

(check-sat)

(pop 1)

(push 1)

(check-sat)

