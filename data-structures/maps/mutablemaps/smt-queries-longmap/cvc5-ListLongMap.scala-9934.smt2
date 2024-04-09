; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117470 () Bool)

(assert start!117470)

(declare-fun res!922344 () Bool)

(declare-fun e!781906 () Bool)

(assert (=> start!117470 (=> (not res!922344) (not e!781906))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-datatypes ((array!93937 0))(
  ( (array!93938 (arr!45358 (Array (_ BitVec 32) (_ BitVec 64))) (size!45909 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93937)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(assert (=> start!117470 (= res!922344 (and (bvslt (size!45909 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45909 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117470 e!781906))

(assert (=> start!117470 true))

(declare-fun array_inv!34303 (array!93937) Bool)

(assert (=> start!117470 (array_inv!34303 a!3985)))

(declare-fun b!1379965 () Bool)

(assert (=> b!1379965 (= e!781906 false)))

(declare-fun lt!607780 () Bool)

(declare-fun isPivot!0 (array!93937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379965 (= lt!607780 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117470 res!922344) b!1379965))

(declare-fun m!1265241 () Bool)

(assert (=> start!117470 m!1265241))

(declare-fun m!1265243 () Bool)

(assert (=> b!1379965 m!1265243))

(push 1)

(assert (not b!1379965))

(assert (not start!117470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

