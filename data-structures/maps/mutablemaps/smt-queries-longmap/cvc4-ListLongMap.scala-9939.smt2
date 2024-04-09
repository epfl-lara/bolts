; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117504 () Bool)

(assert start!117504)

(declare-fun res!922485 () Bool)

(declare-fun e!782018 () Bool)

(assert (=> start!117504 (=> (not res!922485) (not e!782018))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93971 0))(
  ( (array!93972 (arr!45375 (Array (_ BitVec 32) (_ BitVec 64))) (size!45926 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93971)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117504 (= res!922485 (and (bvslt (size!45926 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45926 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117504 e!782018))

(assert (=> start!117504 true))

(declare-fun array_inv!34320 (array!93971) Bool)

(assert (=> start!117504 (array_inv!34320 a!3985)))

(declare-fun b!1380104 () Bool)

(declare-fun res!922484 () Bool)

(assert (=> b!1380104 (=> (not res!922484) (not e!782018))))

(declare-fun isPivot!0 (array!93971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380104 (= res!922484 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380105 () Bool)

(declare-fun res!922483 () Bool)

(assert (=> b!1380105 (=> (not res!922483) (not e!782018))))

(assert (=> b!1380105 (= res!922483 (= knownPivot!5 pivot!40))))

(declare-fun b!1380106 () Bool)

(assert (=> b!1380106 (= e!782018 (not (isPivot!0 a!3985 from!3363 to!159 pivot!40)))))

(assert (= (and start!117504 res!922485) b!1380104))

(assert (= (and b!1380104 res!922484) b!1380105))

(assert (= (and b!1380105 res!922483) b!1380106))

(declare-fun m!1265361 () Bool)

(assert (=> start!117504 m!1265361))

(declare-fun m!1265363 () Bool)

(assert (=> b!1380104 m!1265363))

(declare-fun m!1265365 () Bool)

(assert (=> b!1380106 m!1265365))

(push 1)

(assert (not b!1380106))

(assert (not b!1380104))

(assert (not start!117504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

