; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117314 () Bool)

(assert start!117314)

(declare-fun res!922092 () Bool)

(declare-fun e!781525 () Bool)

(assert (=> start!117314 (=> (not res!922092) (not e!781525))))

(declare-fun from!3388 () (_ BitVec 32))

(declare-datatypes ((array!93826 0))(
  ( (array!93827 (arr!45307 (Array (_ BitVec 32) (_ BitVec 64))) (size!45858 (_ BitVec 32))) )
))
(declare-fun a!4010 () array!93826)

(declare-fun to!184 () (_ BitVec 32))

(declare-fun pivot!64 () (_ BitVec 32))

(assert (=> start!117314 (= res!922092 (and (bvslt (size!45858 a!4010) #b01111111111111111111111111111111) (bvsge from!3388 #b00000000000000000000000000000000) (bvsge to!184 from!3388) (bvsle to!184 (size!45858 a!4010)) (bvsge pivot!64 from!3388) (bvsle pivot!64 to!184) (bvslt pivot!64 to!184)))))

(assert (=> start!117314 e!781525))

(declare-fun array_inv!34252 (array!93826) Bool)

(assert (=> start!117314 (array_inv!34252 a!4010)))

(assert (=> start!117314 true))

(declare-fun b!1379545 () Bool)

(assert (=> b!1379545 (= e!781525 false)))

(declare-fun lt!607621 () Bool)

(declare-fun isPivot!0 (array!93826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1379545 (= lt!607621 (isPivot!0 a!4010 from!3388 to!184 from!3388))))

(assert (= (and start!117314 res!922092) b!1379545))

(declare-fun m!1264773 () Bool)

(assert (=> start!117314 m!1264773))

(declare-fun m!1264775 () Bool)

(assert (=> b!1379545 m!1264775))

(push 1)

(assert (not b!1379545))

(assert (not start!117314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

