; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69710 () Bool)

(assert start!69710)

(declare-fun res!554863 () Bool)

(declare-fun e!449268 () Bool)

(assert (=> start!69710 (=> (not res!554863) (not e!449268))))

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(declare-datatypes ((array!44082 0))(
  ( (array!44083 (arr!21107 (Array (_ BitVec 32) (_ BitVec 64))) (size!21528 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44082)

(assert (=> start!69710 (= res!554863 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21528 a!4395)) (bvslt (size!21528 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69710 e!449268))

(assert (=> start!69710 true))

(declare-fun array_inv!16881 (array!44082) Bool)

(assert (=> start!69710 (array_inv!16881 a!4395)))

(declare-fun b!811674 () Bool)

(assert (=> b!811674 (= e!449268 (not (bvsle from!3750 to!546)))))

(declare-fun arraysEqualsFromTo!0 (array!44082 array!44082 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811674 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27672 0))(
  ( (Unit!27673) )
))
(declare-fun lt!364006 () Unit!27672)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44082 (_ BitVec 32) (_ BitVec 32)) Unit!27672)

(assert (=> b!811674 (= lt!364006 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69710 res!554863) b!811674))

(declare-fun m!754231 () Bool)

(assert (=> start!69710 m!754231))

(declare-fun m!754233 () Bool)

(assert (=> b!811674 m!754233))

(declare-fun m!754235 () Bool)

(assert (=> b!811674 m!754235))

(push 1)

(assert (not b!811674))

(assert (not start!69710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

