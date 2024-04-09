; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69764 () Bool)

(assert start!69764)

(declare-fun res!554905 () Bool)

(declare-fun e!449364 () Bool)

(assert (=> start!69764 (=> (not res!554905) (not e!449364))))

(declare-datatypes ((array!44121 0))(
  ( (array!44122 (arr!21125 (Array (_ BitVec 32) (_ BitVec 64))) (size!21546 (_ BitVec 32))) )
))
(declare-fun a!4395 () array!44121)

(declare-fun from!3750 () (_ BitVec 32))

(declare-fun to!546 () (_ BitVec 32))

(assert (=> start!69764 (= res!554905 (and (bvsge from!3750 #b00000000000000000000000000000000) (bvslt from!3750 to!546) (bvsle to!546 (size!21546 a!4395)) (bvslt (size!21546 a!4395) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3750) to!546)))))

(assert (=> start!69764 e!449364))

(assert (=> start!69764 true))

(declare-fun array_inv!16899 (array!44121) Bool)

(assert (=> start!69764 (array_inv!16899 a!4395)))

(declare-fun b!811716 () Bool)

(declare-fun arraysEqualsFromTo!0 (array!44121 array!44121 (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!811716 (= e!449364 (not (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546)))))

(assert (= (and start!69764 res!554905) b!811716))

(declare-fun m!754323 () Bool)

(assert (=> start!69764 m!754323))

(declare-fun m!754325 () Bool)

(assert (=> b!811716 m!754325))

(push 1)

(assert (not start!69764))

(assert (not b!811716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!104183 () Bool)

(assert (=> d!104183 (= (array_inv!16899 a!4395) (bvsge (size!21546 a!4395) #b00000000000000000000000000000000))))

(assert (=> start!69764 d!104183))

(declare-fun d!104185 () Bool)

(declare-fun res!554922 () Bool)

(declare-fun e!449382 () Bool)

(assert (=> d!104185 (=> res!554922 e!449382)))

(assert (=> d!104185 (= res!554922 (bvsge from!3750 to!546))))

(assert (=> d!104185 (= (arraysEqualsFromTo!0 a!4395 a!4395 from!3750 to!546) e!449382)))

(declare-fun b!811733 () Bool)

(declare-fun e!449383 () Bool)

(assert (=> b!811733 (= e!449382 e!449383)))

(declare-fun res!554923 () Bool)

(assert (=> b!811733 (=> (not res!554923) (not e!449383))))

(assert (=> b!811733 (= res!554923 (not (not (= (select (arr!21125 a!4395) from!3750) (select (arr!21125 a!4395) from!3750)))))))

(declare-fun b!811734 () Bool)

(assert (=> b!811734 (= e!449383 (arraysEqualsFromTo!0 a!4395 a!4395 (bvadd from!3750 #b00000000000000000000000000000001) to!546))))

(assert (= (and d!104185 (not res!554922)) b!811733))

(assert (= (and b!811733 res!554923) b!811734))

(declare-fun m!754335 () Bool)

(assert (=> b!811733 m!754335))

(assert (=> b!811733 m!754335))

(declare-fun m!754337 () Bool)

(assert (=> b!811734 m!754337))

(assert (=> b!811716 d!104185))

(push 1)

(assert (not b!811734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

