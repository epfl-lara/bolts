; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117500 () Bool)

(assert start!117500)

(declare-fun res!922467 () Bool)

(declare-fun e!782005 () Bool)

(assert (=> start!117500 (=> (not res!922467) (not e!782005))))

(declare-fun knownPivot!5 () (_ BitVec 32))

(declare-fun pivot!40 () (_ BitVec 32))

(declare-datatypes ((array!93967 0))(
  ( (array!93968 (arr!45373 (Array (_ BitVec 32) (_ BitVec 64))) (size!45924 (_ BitVec 32))) )
))
(declare-fun a!3985 () array!93967)

(declare-fun from!3363 () (_ BitVec 32))

(declare-fun to!159 () (_ BitVec 32))

(assert (=> start!117500 (= res!922467 (and (bvslt (size!45924 a!3985) #b01111111111111111111111111111111) (bvsge from!3363 #b00000000000000000000000000000000) (bvsge to!159 from!3363) (bvsle to!159 (size!45924 a!3985)) (bvsge pivot!40 from!3363) (bvslt pivot!40 to!159) (bvsle knownPivot!5 pivot!40) (bvsge knownPivot!5 from!3363)))))

(assert (=> start!117500 e!782005))

(assert (=> start!117500 true))

(declare-fun array_inv!34318 (array!93967) Bool)

(assert (=> start!117500 (array_inv!34318 a!3985)))

(declare-fun b!1380086 () Bool)

(declare-fun res!922465 () Bool)

(assert (=> b!1380086 (=> (not res!922465) (not e!782005))))

(declare-fun isPivot!0 (array!93967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380086 (= res!922465 (isPivot!0 a!3985 from!3363 to!159 knownPivot!5))))

(declare-fun b!1380087 () Bool)

(declare-fun res!922466 () Bool)

(assert (=> b!1380087 (=> (not res!922466) (not e!782005))))

(assert (=> b!1380087 (= res!922466 (= knownPivot!5 pivot!40))))

(declare-fun b!1380088 () Bool)

(assert (=> b!1380088 (= e!782005 (not (isPivot!0 a!3985 from!3363 to!159 pivot!40)))))

(assert (= (and start!117500 res!922467) b!1380086))

(assert (= (and b!1380086 res!922465) b!1380087))

(assert (= (and b!1380087 res!922466) b!1380088))

(declare-fun m!1265349 () Bool)

(assert (=> start!117500 m!1265349))

(declare-fun m!1265351 () Bool)

(assert (=> b!1380086 m!1265351))

(declare-fun m!1265353 () Bool)

(assert (=> b!1380088 m!1265353))

(push 1)

(assert (not b!1380088))

(assert (not start!117500))

(assert (not b!1380086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

