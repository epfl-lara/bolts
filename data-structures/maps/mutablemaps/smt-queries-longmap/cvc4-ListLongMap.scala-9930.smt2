; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117450 () Bool)

(assert start!117450)

(declare-fun res!922260 () Bool)

(declare-fun e!781837 () Bool)

(assert (=> start!117450 (=> (not res!922260) (not e!781837))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93917 0))(
  ( (array!93918 (arr!45348 (Array (_ BitVec 32) (_ BitVec 64))) (size!45899 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93917)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117450 (= res!922260 (and (bvslt (size!45899 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45899 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117450 e!781837))

(assert (=> start!117450 true))

(declare-fun array_inv!34293 (array!93917) Bool)

(assert (=> start!117450 (array_inv!34293 a!3985)))

(declare-fun b!1379881 () Bool)

(assert (=> b!1379881 (= e!781837 false)))

(declare-fun lt!607750 () Bool)

(declare-fun isPivot!0 (array!93917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379881 (= lt!607750 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(assert (= (and start!117450 res!922260) b!1379881))

(declare-fun m!1265165 () Bool)

(assert (=> start!117450 m!1265165))

(declare-fun m!1265167 () Bool)

(assert (=> b!1379881 m!1265167))

(push 1)

(assert (not start!117450))

(assert (not b!1379881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

