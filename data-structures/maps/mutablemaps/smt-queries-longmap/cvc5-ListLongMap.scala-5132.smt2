; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69706 () Bool)

(assert start!69706)

(declare-fun res!554857 () Bool)

(declare-fun e!449256 () Bool)

(assert (=> start!69706 (=> (not res!554857) (not e!449256))))

(declare-datatypes ((array!44078 0))(
  ( (array!44079 (arr!21105 (Array (_ BitVec 32) (_ BitVec 64))) (size!21526 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44078)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69706 (= res!554857 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21526 a!4395)) (bvslt (size!21526 a!4395) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!3750) to!546) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) #b00000000000000000000000000000000)))))

(assert (=> start!69706 e!449256))

(assert (=> start!69706 true))

(declare-fun array_inv!16879 (array!44078) Bool)

(assert (=> start!69706 (array_inv!16879 a!4395)))

(declare-fun b!811668 () Bool)

(assert (=> b!811668 (= e!449256 (not (bvsle from!3750 to!546)))))

(declare-fun arraysEqualsFromTo!0 (array!44078 array!44078 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811668 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546)))

(declare-datatypes ((Unit!27668 0))(
  ( (Unit!27669) )
))
(declare-fun lt!364000 () Unit!27668)

(declare-fun lemmaArrayEqualsFromToReflexivity!0 (array!44078 (_ BitVec 32) (_ BitVec 32)) Unit!27668)

(assert (=> b!811668 (= lt!364000 (lemmaArrayEqualsFromToReflexivity!0 a!4395 (bvadd #b00000000000000000000000000000001 from!3750) to!546))))

(assert (= (and start!69706 res!554857) b!811668))

(declare-fun m!754219 () Bool)

(assert (=> start!69706 m!754219))

(declare-fun m!754221 () Bool)

(assert (=> b!811668 m!754221))

(declare-fun m!754223 () Bool)

(assert (=> b!811668 m!754223))

(push 1)

(assert (not start!69706))

(assert (not b!811668))

(check-sat)

(pop 1)

(push 1)

(check-sat)

